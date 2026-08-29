Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-layout?download=true
inline.NumInlined: 8393
inline.NumDeleted: 3725
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN12hb_bit_set_t7compactER11hb_vector_tIjLb0EEj:bb.a

bb.c:                                             ; preds = %bb.b
  %i.z = zext i32 %.01222.i to i64                ; 2 uses
  %i.aa = icmp samesign ugt i64 %indvars.iv.i, %i.z
  br i1 %i.aa, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.ab = zext i32 %i.s to i64
  %.not.i13.i = icmp samesign ult i64 %indvars.iv.i, %i.ab
  br i1 %.not.i13.i, label %bb.f, label %bb.e, !prof !47

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(72) @_hb_NullPool, i64 72, i1 false)
  %.pre.i10 = load i32, ptr %i.m, align 4, !tbaa !44
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %indvars.iv.i
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit.i

_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit.i: ; preds = %bb.f, %bb.e
  %i.ae = phi i32 [ %.pre.i10, %bb.e ], [ %i.s, %bb.f ]
  %.0.i14.i = phi ptr [ @_hb_CrapPool, %bb.e ], [ %i.ad, %bb.f ]
  %.not.i15.i = icmp ult i32 %.01222.i, %i.ae
  br i1 %.not.i15.i, label %bb.h, label %bb.g, !prof !47

bb.g:                                             ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(72) @_hb_NullPool, i64 72, i1 false)
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit17.i

bb.h:                                             ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit.i
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.af, i64 %i.z
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit17.i

_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit17.i: ; preds = %bb.h, %bb.g
  %.0.i16.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %i.ag, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i16.i, ptr noundef nonnull align 8 dereferenceable(72) %.0.i14.i, i64 72, i1 false), !tbaa.struct !212
  %.pre26.i = load i32, ptr %i.c, align 4, !tbaa !113
  %.pre27.i = load ptr, ptr %i.a, align 8
  %.pre29.i = zext i32 %.pre26.i to i64
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit17.i, %bb.c
  %.pre-phi.i = phi i64 [ %.pre29.i, %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit17.i ], [ %i.u, %bb.c ]
  %i.ah = phi ptr [ %.pre27.i, %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit17.i ], [ %i.v, %bb.c ]
  %.not.i18.i = icmp samesign ult i64 %indvars.iv.i, %.pre-phi.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  %.0.i19.i = select i1 %.not.i18.i, ptr %i.ai, ptr @_hb_NullPool, !prof !47
  %i.aj = load i32, ptr %.0.i19.i, align 4, !tbaa !60 ; 2 uses
  %i.ak = load i32, ptr %i.p, align 4, !tbaa !41
  %.not.i20.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i20.i, label %bb.k, label %bb.j, !prof !47

bb.j:                                             ; preds = %bb.i
  store i64 %i.q, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit.i

bb.k:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit.i

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit.i: ; preds = %bb.k, %bb.j
  %.0.i21.i = phi ptr [ @_hb_CrapPool, %bb.j ], [ %i.an, %bb.k ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 4
  store i32 %.01222.i, ptr %i.ao, align 4, !tbaa !53
  %i.ap = add i32 %.01222.i, 1
  %.pre28.i = load i32, ptr %i.m, align 4, !tbaa !153
  br label %bb.l

bb.l:                                             ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit.i, %bb.b
  %i.aq = phi i32 [ %i.s, %bb.b ], [ %.pre28.i, %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit.i ] ; 2 uses
  %.1.i = phi i32 [ %.01222.i, %bb.b ], [ %i.ap, %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next.i, %i.ar
  br i1 %i.as, label %bb.b, label %_ZN12hb_bit_set_t13compact_pagesERK11hb_vector_tIjLb0EE.exit, !llvm.loop !214

_ZN12hb_bit_set_t13compact_pagesERK11hb_vector_tIjLb0EE.exit: ; preds = %bb.l, %._crit_edge
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZN11hb_vector_tIjLb0EEixEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11hb_vector_tIjLb0EEixEi.exit ] ; 4 uses
  %i.at = load i32, ptr %i.g, align 4, !tbaa !41
  %i.au = zext i32 %i.at to i64
  %.not.i11 = icmp samesign ult i64 %indvars.iv, %i.au
  br i1 %.not.i11, label %bb.o, label %bb.n, !prof !47

bb.n:                                             ; preds = %bb.m
  store i64 %i.h, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit

bb.o:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !53
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit: ; preds = %bb.n, %bb.o
  %i.ax = phi i32 [ %i.l, %bb.n ], [ %.pre, %bb.o ] ; 2 uses
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !113
  %.not.i12 = icmp ult i32 %i.ax, %i.ay
  br i1 %.not.i12, label %bb.q, label %bb.p, !prof !47

bb.p:                                             ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit
  store i32 %i.j, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.q:                                             ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.p, %bb.q
  %.0.i13 = phi ptr [ @_hb_CrapPool, %bb.p ], [ %i.ba, %bb.q ]
  %i.bb = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bb, ptr %.0.i13, align 4, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !215
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT12LigCaretList25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !22     ; 2 uses
  %i.b = icmp eq i16 %i.a, 0
  %i.c = tail call i16 @llvm.bswap.i16(i16 %i.a)
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %.0.i.i = select i1 %i.b, ptr @_hb_NullPool, ptr %i.e, !prof !33 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %.0.i.i, align 1, !tbaa !22, !noalias !216 ; 2 uses
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g) ; 4 uses
  switch i16 %i.h, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEESB_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEEOSH_OSI_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !216, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEESB_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEEOSH_OSI_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !216, !srcloc !21
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.j = load i16, ptr %i.i, align 1, !tbaa !22, !noalias !216
  %.not.i.i.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.d, !prof !223

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !216, !srcloc !21
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.l = load i16, ptr %i.k, align 1, !tbaa !22, !noalias !216
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.i, align 1, !tbaa !22, !noalias !216
  %i.o = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.o, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.11.0.i = phi i32 [ %i.n, %bb.d ], [ 0, %bb.c ]
  %i.p = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !216
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !216, !srcloc !21
  %.pre11.i.i.i.i.i = load i16, ptr %i.i, align 1, !tbaa !22, !noalias !216
  %i.r = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.s = load i16, ptr %i.k, align 1, !tbaa !22, !noalias !216
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s) ; 2 uses
  br i1 %i.r, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !224

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !216, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.n, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.n, %bb.e ]
  %i.u = phi i16 [ %i.q, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.t, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.t, %bb.e ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.k, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.w = load i16, ptr %i.v, align 1, !tbaa !22, !noalias !216
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = icmp ugt i16 %i.u, %i.x
  br i1 %i.y, label %bb.f, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEESB_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEEOSH_OSI_.exit", !prof !33

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.z = load i16, ptr %i.i, align 1, !tbaa !22, !noalias !216
  %i.aa = tail call noundef i16 @llvm.bswap.i16(i16 %i.z)
  %i.ab = zext i16 %i.aa to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEESB_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEEOSH_OSI_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEESB_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEEOSH_OSI_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.11.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ] ; 4 uses
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ab, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i16, ptr %i.f, align 1, !tbaa !22, !noalias !225
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.37.sroa.0.0.extract.trunc = zext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.52.0.i, i64 2 ; 11 uses
  %i.ah = icmp eq i16 %i.g, 256                   ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.52.0.i, i64 4 ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS0_8LigGlyphENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEESB_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEEOSH_OSI_.exit"
  %.sroa.37.sroa.0.0 = phi i32 [ %.sroa.37.sroa.0.0.extract.trunc, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEESB_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEEOSH_OSI_.exit" ], [ %i.dm, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS0_8LigGlyphENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 4 uses
  %.sroa.34.0 = phi ptr [ %i.ac, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEESB_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEEOSH_OSI_.exit" ], [ %i.dn, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS0_8LigGlyphENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 2 uses
  %.sroa.27.0 = phi i32 [ %.sroa.11.2.i, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEESB_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEEOSH_OSI_.exit" ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS0_8LigGlyphENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 6 uses
  %.sroa.22.0 = phi i32 [ 0, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEESB_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEEOSH_OSI_.exit" ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS0_8LigGlyphENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 6 uses
  %.sroa.13.0 = phi i32 [ %.sroa.7.0.i, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEESB_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEEOSH_OSI_.exit" ], [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS0_8LigGlyphENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 11 uses
  switch i16 %i.h, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_8LigGlyphENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12LigCaretListEELST_0ELSO_0EE10hb_apply_tIZNKSZ_25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRKSA_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1C_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1C_Efp_EEEOS1C_OS1H_.exit" [
    i16 1, label %bb.h
    i16 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.aj = load i16, ptr %i.ag, align 1, !tbaa !22
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = zext i16 %i.ak to i32
  %i.am = icmp uge i32 %.sroa.13.0, %i.al
  %.not.i.i.i = icmp eq i32 %.sroa.37.sroa.0.0, 0
  %or.cond = select i1 %i.am, i1 true, i1 %.not.i.i.i
  br i1 %or.cond, label %.split.i.preheader, label %bb.j

bb.j:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10
  br i1 %i.ah, label %bb.k, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSC_EEdeEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.an = load i16, ptr %i.ag, align 1, !tbaa !22
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.13.0, %i.ap
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i, !prof !47

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.aq = zext nneg i32 %.sroa.13.0 to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.aq
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.l ], [ @_hb_NullPool, %bb.k ]
  %i.as = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  %i.at = tail call noundef i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = zext i16 %i.at to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSC_EEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSC_EEdeEv.exit.i.i.i: ; preds = %bb.j, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.au, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i ], [ %.sroa.27.0, %bb.j ] ; 3 uses
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !132 ; 5 uses
  %i.aw = lshr i32 %.0.i.i.i.i.i.i.i.i, 9         ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !46 ; 3 uses
  %i.bb = icmp ult i32 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !42 ; 3 uses
  br i1 %i.bb, label %bb.m, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSC_EEdeEv.exit.i.i.i
  %i.be = zext i32 %i.ay to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !48
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bg, %i.aw
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.m, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSC_EEdeEv.exit.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ba, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bh = add nsw i32 %i.ba, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.q, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ %i.bh, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bi = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = lshr i32 %i.bi, 1                       ; 4 uses
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !48 ; 2 uses
  %i.bo = icmp slt i32 %i.aw, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = add nsw i32 %i.bj, -1
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aw, %i.bn
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = add nuw nsw i32 %i.bj, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.p ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %i.bp, %bb.n ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !50

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  store atomic i32 %i.bj, ptr %i.ax monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.m
  %i.br = phi i64 [ %i.bk, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.be, %bb.m ]
  %.sink.in.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %.sink.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i.i.i6.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i6.i.i.i, label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i", label %bb.r

bb.r:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !53
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = lshr i32 %.0.i.i.i.i.i.i.i.i, 6
  %i.bz = and i32 %i.by, 7
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !54
  %i.cd = and i32 %.0.i.i.i.i.i.i.i.i, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 %i.cc, %i.ce
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = and i8 %i.cg, 1
  br label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i"

"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i": ; preds = %bb.q, %bb.r, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i5.i.i.i = phi i8 [ %i.ch, %bb.r ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.q ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !36, !range !38, !noundef !39
  %.not8.i.i.i = icmp eq i8 %i.cj, %.0.i.i.i.i.i.i.i5.i.i.i
  br i1 %.not8.i.i.i, label %bb.s, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_8LigGlyphENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISP_Efp_EEEOSP_OSV_.exit"

bb.s:                                             ; preds = %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i"
  switch i16 %i.h, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS0_8LigGlyphENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit [
    i16 1, label %bb.t
    i16 2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ck = add nuw nsw i32 %.sroa.13.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS0_8LigGlyphENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit

bb.u:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.cl = load i16, ptr %i.ag, align 1, !tbaa !22
  %i.cm = tail call noundef i16 @llvm.bswap.i16(i16 %i.cl)
  %i.cn = zext i16 %i.cm to i32
  %.not.i.i.i.i.i17 = icmp ult i32 %.sroa.13.0, %i.cn
  br i1 %.not.i.i.i.i.i17, label %bb.v, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !47

bb.v:                                             ; preds = %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.co = zext nneg i32 %.sroa.13.0 to i64
  %i.cp = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.co
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi ptr [ %i.cp, %bb.v ], [ @_hb_Null_OT_RangeRecord, %bb.u ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.cr = load i16, ptr %i.cq, align 1, !tbaa !22
  %i.cs = tail call noundef i16 @llvm.bswap.i16(i16 %i.cr)
  %i.ct = zext i16 %i.cs to i32
  %.not.i.i.i.i18 = icmp ult i32 %.sroa.27.0, %i.ct
  br i1 %.not.i.i.i.i18, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.cu = add nuw nsw i32 %.sroa.13.0, 1          ; 4 uses
  %i.cv = load i16, ptr %i.ag, align 1, !tbaa !22
  %i.cw = tail call noundef i16 @llvm.bswap.i16(i16 %i.cv)
  %i.cx = zext i16 %i.cw to i32                   ; 2 uses
  %i.cy = icmp ult i32 %i.cu, %i.cx
  br i1 %i.cy, label %bb.x, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS0_8LigGlyphENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit

bb.x:                                             ; preds = %bb.w
end_hunk_0
begin_hunk_1_@_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE13intersect_setIR8hb_set_tTnPN12hb_enable_ifIXsr13hb_is_sink_ofIT_jEE5valueEvE4typeELPv0EEEvRKS6_OS9_:bb.a
  %i.kl = sub nsw i64 %i.kh, %wide.trip.count.i.i40
  %i.km = icmp ugt i64 %i.kl, -4
  br i1 %i.km, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %.lr.ph.i.i39.new

.lr.ph.i.i39.new:                                 ; preds = %.prol.loopexit272, %.lr.ph.i.i39.new
  %indvars.iv.i.i41 = phi i64 [ %indvars.iv.next.i.i42.3, %.lr.ph.i.i39.new ], [ %indvars.iv.i.i41.unr, %.prol.loopexit272 ] ; 5 uses
  %i.kn = getelementptr inbounds nuw [72 x i8], ptr %i.kg, i64 %indvars.iv.i.i41 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ko, i8 0, i64 64, i1 false), !tbaa !54
  store i32 0, ptr %i.kn, align 8, !tbaa !167
  %i.kp = getelementptr inbounds nuw [72 x i8], ptr %i.kg, i64 %indvars.iv.i.i41 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 72
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kr, i8 0, i64 64, i1 false), !tbaa !54
  store i32 0, ptr %i.kq, align 8, !tbaa !167
  %i.ks = getelementptr inbounds nuw [72 x i8], ptr %i.kg, i64 %indvars.iv.i.i41 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 144
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ku, i8 0, i64 64, i1 false), !tbaa !54
  store i32 0, ptr %i.kt, align 8, !tbaa !167
  %i.kv = getelementptr inbounds nuw [72 x i8], ptr %i.kg, i64 %indvars.iv.i.i41 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 216
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kx, i8 0, i64 64, i1 false), !tbaa !54
  store i32 0, ptr %i.kw, align 8, !tbaa !167
  %indvars.iv.next.i.i42.3 = add nuw nsw i64 %indvars.iv.i.i41, 4 ; 2 uses
  %exitcond.not.i.i43.3 = icmp eq i64 %indvars.iv.next.i.i42.3, %wide.trip.count.i.i40
  br i1 %exitcond.not.i.i43.3, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %.lr.ph.i.i39.new, !llvm.loop !184

_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i: ; preds = %.prol.loopexit272, %.lr.ph.i.i39.new, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit91.thread
  store i32 %i.jf, ptr %i.v, align 4, !tbaa !44
  br label %_ZN12hb_bit_set_t6resizeEjbb.exit

_ZN12hb_bit_set_t6resizeEjbb.exit:                ; preds = %bb.bk, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, %.critedge.i37, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit91.thread116
  store i8 0, ptr %i.p, align 8, !tbaa !25
  br label %_ZN8hb_set_tlsEj.exit

bb.bw:                                            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb.exit.thread, %bb.bi, %bb.bj
  store i32 %i.gl, ptr %i.t, align 4, !tbaa !41
  %i.ky = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.kz = zext i32 %i.ga to i64                   ; 2 uses
  %i.la = getelementptr inbounds nuw [72 x i8], ptr %i.ky, i64 %i.kz ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lb, i8 0, i64 64, i1 false), !tbaa !54
  store i32 0, ptr %i.la, align 8, !tbaa !167
  %i.lc = load ptr, ptr %i.u, align 8, !tbaa !171
  %i.ld = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i.i to i64 ; 3 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.ld ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = sub i32 %i.ga, %storemerge.i.i.ph.sink.i.i.ph.i.i
  %i.lh = shl i32 %i.lg, 3
  %i.li = zext i32 %i.lh to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lf, ptr align 4 %i.le, i64 %i.li, i1 false)
  %i.lj = load ptr, ptr %i.u, align 8, !tbaa !171
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.ld
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %i.kz, 32
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.fs to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.lk, align 4
  %.pre20.i.i = load ptr, ptr %i.u, align 8, !tbaa !171
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i: ; preds = %bb.ar, %bb.bw
  %.pre-phi.i.i = phi i64 [ %i.ld, %bb.bw ], [ %i.ge, %bb.ar ]
  %i.ll = phi ptr [ %.pre20.i.i, %bb.bw ], [ %i.fw, %bb.ar ]
  %storemerge.i.i.ph.sink.i.i17.i.i = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i.i, %bb.bw ], [ %i.gd, %bb.ar ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i.i, ptr %i.s monotonic, align 8
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %.pre-phi.i.i
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i

_ZN12hb_bit_set_t8page_forEjb.exit.i:             ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i, %bb.ap
  %.sink30.i.i = phi ptr [ %i.lm, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i ], [ %i.fy, %bb.ap ]
  %.sink.i.i18 = load ptr, ptr %i.x, align 8, !tbaa !52 ; 2 uses
  %.not.i19 = icmp eq ptr %.sink.i.i18, null
  br i1 %.not.i19, label %_ZN8hb_set_tlsEj.exit, label %bb.bx, !prof !179

bb.bx:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i
  %i.ln = getelementptr inbounds nuw i8, ptr %.sink30.i.i, i64 4
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !53
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i18, i64 %i.lp ; 2 uses
  %i.lr = and i32 %.2, 63
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = shl nuw i64 1, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.lv = lshr i32 %.2, 6
  %i.lw = and i32 %i.lv, 7
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.lx ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !54
  %i.ma = or i64 %i.lz, %i.lt
  store i64 %i.ma, ptr %i.ly, align 8, !tbaa !54
  store i32 -1, ptr %i.lq, align 8, !tbaa !167
  br label %_ZN8hb_set_tlsEj.exit

_ZN8hb_set_tlsEj.exit:                            ; preds = %bb.al, %bb.bx, %_ZN12hb_bit_set_t8page_forEjb.exit.i, %bb.an, %_ZN12hb_bit_set_t6resizeEjbb.exit, %bb.am, %_ZN12hb_bit_set_t8page_forEjb.exit.i32, %._crit_edge.i.i21, %bb.af
  br label %bb.d, !llvm.loop !261

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIjLb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, %bb.q, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit, %.critedge31.i
  %i.mb = getelementptr inbounds nuw i8, ptr %.014140, i64 6 ; 2 uses
  %.not = icmp eq ptr %i.mb, %i.i
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GPOS_impl16SinglePosFormat225collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_zip_iter_t.202, align 8  ; 6 uses
  %3 = alloca %struct.hb_filter_iter_t.198, align 8 ; 7 uses
  %4 = alloca %struct.hb_zip_iter_t.202, align 8  ; 12 uses
  %5 = alloca %struct.hb_filter_iter_t.198, align 8 ; 9 uses
  %6 = alloca %struct.hb_map_iter_t.206, align 8  ; 10 uses
  %7 = alloca %struct.hb_map_iter_t.206, align 8  ; 10 uses
  %8 = alloca %struct.hb_array_t.193, align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22
  %i.c = icmp ugt i16 %i.b, 4095
  br i1 %i.c, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 1, !tbaa !22   ; 2 uses
  %i.f = icmp eq i16 %i.e, 0
  %i.g = tail call i16 @llvm.bswap.i16(i16 %i.e)
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %.0.i.i = select i1 %i.f, ptr @_hb_NullPool, ptr %i.i, !prof !33 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.k = load i16, ptr %i.j, align 1, !tbaa !22
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %.sroa.2.0.insert.ext.i = zext i16 %i.l to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %i.m = load i16, ptr %.0.i.i, align 1, !tbaa !22, !noalias !262
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m) ; 2 uses
  switch i16 %i.n, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit" [
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !262, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !262, !srcloc !21
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.p = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !262
  %.not.i.i.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.e, !prof !223

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !262, !srcloc !21
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.r = load i16, ptr %i.q, align 1, !tbaa !22, !noalias !262
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.t = zext i16 %i.s to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !262
  %i.u = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.11.0.i = phi i32 [ %i.t, %bb.e ], [ 0, %bb.d ]
  %i.v = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !262
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !262, !srcloc !21
  %.pre11.i.i.i.i.i = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !262
  %i.x = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.y = load i16, ptr %i.q, align 1, !tbaa !22, !noalias !262
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y) ; 2 uses
  br i1 %i.x, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.f, !prof !224

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !262, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.f, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.t, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.t, %bb.f ]
  %i.aa = phi i16 [ %i.w, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.z, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.z, %bb.f ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !22, !noalias !262
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = icmp ugt i16 %i.aa, %i.ad
  br i1 %i.ae, label %bb.g, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit", !prof !33

bb.g:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.af = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !262
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit": ; preds = %bb.b, %bb.c, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.g
  %.sroa.11.2.i = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.g ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.b ], [ %.0.i.i, %bb.c ], [ %.0.i.i, %bb.g ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.7.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.ah, %bb.g ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ai = zext i16 %i.n to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !269
  store i32 %i.ai, ptr %4, align 8, !noalias !269
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa.435.0..sroa_idx, align 4, !noalias !269
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.536.0..sroa_idx, align 8, !noalias !269
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.637.0..sroa_idx, align 8, !noalias !269
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %.sroa.738.0..sroa_idx, align 4, !noalias !269
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.sroa.11.2.i, ptr %.sroa.839.0..sroa_idx, align 8, !noalias !269
  %.sroa.940.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %.sroa.940.0..sroa_idx, align 4, !noalias !269
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %.sroa.2.0.insert.shift.i, ptr %.sroa.1041.0..sroa_idx, align 8, !noalias !269
  %.sroa.1142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 1, ptr %.sroa.1142.0..sroa_idx, align 8, !noalias !269
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EEC2ERKS8_SC_SF_"(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull readonly align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 1 dereferenceable(1) @_ZL8hb_first)
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !269
  %i.ak = load i32, ptr %5, align 8, !tbaa !272
  switch i32 %i.ak, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit.thread" [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i

bb.i:                                             ; preds = %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !60
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !149
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !22
  %i.ar = call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.as = zext i16 %i.ar to i32
  %i.at = icmp ult i32 %i.an, %i.as
  br i1 %i.at, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit", label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit.thread"

"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit": ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !274
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !276
  %.not = icmp eq i32 %i.av, %i.ax
  br i1 %.not, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit.thread", label %bb.j

bb.j:                                             ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit"
  %i.ay = load i16, ptr %i.a, align 1, !tbaa !22
  %i.az = lshr i16 %i.ay, 8
  %i.ba = zext nneg i16 %i.az to i32              ; 2 uses
  %i.bb = and i32 %i.ba, 15
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !213
  %i.bf = zext i8 %i.be to i32
  %i.bg = lshr i32 %i.ba, 4
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !213
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nuw nsw i32 %i.bk, %i.bf            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i16, ptr %i.j, align 1, !tbaa !22
  %i.bo = call noundef i16 @llvm.bswap.i16(i16 %i.bn)
  %i.bp = zext i16 %i.bo to i32
  %i.bq = mul nuw nsw i32 %i.bl, %i.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull readonly align 8 dereferenceable(64) %5, i64 64, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr @_ZL9hb_second, ptr %i.br, align 8, !tbaa !277, !alias.scope !279
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull readonly align 8 dereferenceable(72) %6, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10, !noalias !284
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10, !noalias !291
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  call void @_ZNK2OT6Layout6Common8Coverage6iter_t7__end__Ev(ptr dead_on_unwind nonnull writable sret(%"struct.OT::Layout::Common::Coverage::iter_t") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %6), !noalias !291
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !276, !noalias !302
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !303, !noalias !302
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 %i.bt to i64 ; 2 uses
  %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i, 32
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i, ptr %i.bw, align 8, !alias.scope !304, !noalias !291
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.bv, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !304, !noalias !291
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !305, !noalias !291
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.val.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !tbaa !309, !noalias !291
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EEC2ERKS8_SC_SF_"(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(44) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull align 1 dereferenceable(1) %.val.i.i.i.i.i), !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10, !noalias !291
  %.sroa.0.0.copyload = load i32, ptr %3, align 8 ; 2 uses
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.417.0.copyload = load i32, ptr %.sroa.417.0..sroa_idx, align 8 ; 2 uses
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.619.0.copyload = load i32, ptr %.sroa.619.0..sroa_idx, align 8
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.720.0.copyload = load i32, ptr %.sroa.720.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10, !noalias !284
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.k

bb.k:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit", %bb.j
  %i.cf = load i32, ptr %7, align 8, !tbaa !272
  %.not.i.i.i.i = icmp eq i32 %i.cf, %.sroa.0.0.copyload
  br i1 %.not.i.i.i.i, label %bb.l, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit", !prof !47

bb.l:                                             ; preds = %bb.k
  switch i32 %.sroa.0.0.copyload, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread" [
    i32 1, label %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i
    i32 2, label %.split.i.i.i
  ]

.split.i.i.i:                                     ; preds = %bb.l
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.cg = load i32, ptr %i.ca, align 8, !tbaa !311
  %.not.i.i.i.i.i14 = icmp ne i32 %i.cg, %.sroa.417.0.copyload
  %i.ch = load i32, ptr %i.cb, align 8
  %i.ci = icmp ne i32 %i.ch, %.sroa.619.0.copyload
  %i.cj = select i1 %.not.i.i.i.i.i14, i1 true, i1 %i.ci
  br i1 %i.cj, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit", label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"

_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i: ; preds = %bb.l
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ck = load i32, ptr %i.ca, align 8, !tbaa !314
  %.not.i.i.i = icmp eq i32 %i.ck, %.sroa.417.0.copyload
  br i1 %.not.i.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread", label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit": ; preds = %bb.k, %.split.i.i.i, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i
  %i.cl = load i32, ptr %i.cc, align 8, !tbaa !274
  %.not44 = icmp eq i32 %i.cl, %.sroa.720.0.copyload
  br i1 %.not44, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread", label %bb.m

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread": ; preds = %bb.l, %.split.i.i.i, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit.thread"

bb.m:                                             ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"
  %i.cm = load i32, ptr %7, align 8, !tbaa !272
  switch i32 %i.cm, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit" [
    i32 1, label %bb.n
    i32 2, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.cn = load ptr, ptr %i.cd, align 8, !tbaa !317
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.cp = load i32, ptr %i.ca, align 8, !tbaa !314
  %i.cq = load i16, ptr %i.co, align 1, !tbaa !22
  %i.cr = call noundef i16 @llvm.bswap.i16(i16 %i.cq)
  %i.cs = zext i16 %i.cr to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.cp, %i.cs
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.o, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit", !prof !47

bb.o:                                             ; preds = %bb.n
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"

bb.p:                                             ; preds = %bb.m
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit": ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.cc, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.ct = mul i32 %.val.i.i.i.i.i.i.i.i, %i.bl    ; 2 uses
  %storemerge.i.i = call i32 @llvm.usub.sat.i32(i32 %i.bq, i32 %i.ct)
  %.sroa.speculated.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.bl)
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.cu
  %.sroa.3.8.insert.ext.i.i = zext nneg i32 %.sroa.speculated.i.i to i64
  store ptr %i.cv, ptr %8, align 8
  store i64 %.sroa.3.8.insert.ext.i.i, ptr %i.ce, align 8
  call void @_ZNK2OT6Layout9GPOS_impl11ValueFormat25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tEPKNS1_9ValueBaseERK10hb_array_tIKNS_7NumTypeILb1EtLj2EEEE(ptr noundef nonnull align 1 dereferenceable(2) %i.a, ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %i.cw = call fastcc noundef nonnull align 8 dereferenceable(72) ptr @"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEppEv"(ptr noundef nonnull align 1 dereferenceable(1) %7) ; 0 uses
  br label %bb.k

"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit.thread": ; preds = %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit", %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit", %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.q
end_hunk_1
begin_hunk_2_@"_ZN16hb_filter_iter_tIN23hb_bit_set_invertible_t6iter_tER8hb_set_tRK4$_19LPv0EEC2ERKS1_S3_S6_":bb.a
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ac = add nsw i32 %i.w, -1
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.j, %i.aa
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nuw nsw i32 %i.w, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.223.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.f ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.ac, %bb.d ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !50

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  store atomic i32 %i.w, ptr %i.k monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.ae = phi i64 [ %i.x, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i ], [ %i.r, %bb.c ]
  %.sink.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sink.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit", label %bb.h

bb.h:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !53
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = lshr i32 %i.h, 6
  %i.am = and i32 %i.al, 7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !54
  %i.aq = and i32 %i.h, 63
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = lshr i64 %i.ap, %i.ar
  %i.at = trunc i64 %i.as to i8
  %i.au = and i8 %i.at, 1
  br label %"_ZNK4$_23clIR8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit"

"_ZNK4$_23clIR8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit": ; preds = %bb.g, %._crit_edge.i.i.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i8 [ %i.au, %bb.h ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !36, !range !38, !noundef !39
  %.not4 = icmp eq i8 %i.aw, %.0.i.i.i.i.i.i.i
  br i1 %.not4, label %bb.i, label %.critedge

bb.i:                                             ; preds = %"_ZNK4$_23clIR8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit"
  %i.ax = load ptr, ptr %0, align 8, !tbaa !147   ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !36, !range !38, !noundef !39
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.k, label %bb.j, !prof !33

bb.j:                                             ; preds = %bb.i
  %i.bb = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.ax, ptr noundef nonnull %i.e) ; 0 uses
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bc = load i32, ptr %i.e, align 8, !tbaa !60  ; 5 uses
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !60
  %i.bd = icmp eq i32 %i.bc, -2
  br i1 %i.bd, label %bb.l, label %bb.m, !prof !33

bb.l:                                             ; preds = %bb.k
  store i32 -1, ptr %i.e, align 8, !tbaa !60
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.bc, ptr %i.b, align 4, !tbaa !60
  %i.be = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.ax, ptr noundef nonnull %i.b) ; 0 uses
  %i.bf = add i32 %i.bc, 1                        ; 2 uses
  %i.bg = load i32, ptr %i.b, align 4, !tbaa !60
  %i.bh = icmp ult i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.bc, ptr %i.b, align 4, !tbaa !60
  %i.bi = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.ax, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !60
  %i.bk = add i32 %i.bj, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i.i.i = phi i32 [ %i.bk, %bb.n ], [ %i.bf, %bb.m ]
  store i32 %.sink.i.i.i, ptr %i.e, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i

_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i:   ; preds = %bb.p, %bb.j
  %i.bl = load i32, ptr %i.g, align 4, !tbaa !148 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i, label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit, label %bb.q, !prof !33

bb.q:                                             ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i
  %i.bm = add i32 %i.bl, -1
  store i32 %i.bm, ptr %i.g, align 4, !tbaa !148
  br label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit

_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit: ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i, %bb.q
  %i.bn = load i32, ptr %i.e, align 8, !tbaa !139 ; 2 uses
  %.not = icmp eq i32 %i.bn, -1
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !382

.critedge:                                        ; preds = %"_ZNK4$_23clIR8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit", %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GPOS_impl17CursivePosFormat125collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !33 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i16, ptr %.0.i.i, align 1, !tbaa !22, !noalias !383
  %.fr78 = freeze i16 %i.h                        ; 2 uses
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.fr78) ; 4 uses
  switch i16 %i.i, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS2_9GPOS_impl15EntryExitRecordENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEEOSG_OSH_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !383, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS2_9GPOS_impl15EntryExitRecordENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEEOSG_OSH_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !383, !srcloc !21
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.k = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !383
  %.not.i.i.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.d, !prof !223

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !383, !srcloc !21
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.m = load i16, ptr %i.l, align 1, !tbaa !22, !noalias !383
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = zext i16 %i.n to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !383
  %i.p = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.p, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.11.0.i = phi i32 [ %i.o, %bb.d ], [ 0, %bb.c ]
  %i.q = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !383
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !383, !srcloc !21
  %.pre11.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !383
  %i.s = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.t = load i16, ptr %i.l, align 1, !tbaa !22, !noalias !383
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t) ; 2 uses
  br i1 %i.s, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !224

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !383, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.o, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.o, %bb.e ]
  %i.v = phi i16 [ %i.r, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.u, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.u, %bb.e ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.l, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.x = load i16, ptr %i.w, align 1, !tbaa !22, !noalias !383
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = icmp ugt i16 %i.v, %i.y
  br i1 %i.z, label %bb.f, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS2_9GPOS_impl15EntryExitRecordENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEEOSG_OSH_.exit", !prof !33

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.aa = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !383
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS2_9GPOS_impl15EntryExitRecordENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEEOSG_OSH_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS2_9GPOS_impl15EntryExitRecordENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEEOSG_OSH_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.11.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ] ; 4 uses
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ac, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ae = load i16, ptr %i.g, align 1, !tbaa !22, !noalias !390
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.37.sroa.0.0.extract.trunc = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.52.0.i, i64 2 ; 11 uses
  %i.ai = icmp eq i16 %.fr78, 256                 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.52.0.i, i64 4 ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl15EntryExitRecordEEE8__next__Ev.exit, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS2_9GPOS_impl15EntryExitRecordENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEEOSG_OSH_.exit"
  %.sroa.37.sroa.0.0 = phi i32 [ %.sroa.37.sroa.0.0.extract.trunc, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS2_9GPOS_impl15EntryExitRecordENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEEOSG_OSH_.exit" ], [ %i.dn, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl15EntryExitRecordEEE8__next__Ev.exit ] ; 4 uses
  %.sroa.34.0 = phi ptr [ %i.ad, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS2_9GPOS_impl15EntryExitRecordENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEEOSG_OSH_.exit" ], [ %i.do, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl15EntryExitRecordEEE8__next__Ev.exit ] ; 2 uses
  %.sroa.27.0 = phi i32 [ %.sroa.11.2.i, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS2_9GPOS_impl15EntryExitRecordENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEEOSG_OSH_.exit" ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl15EntryExitRecordEEE8__next__Ev.exit ] ; 6 uses
  %.sroa.22.0 = phi i32 [ 0, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS2_9GPOS_impl15EntryExitRecordENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEEOSG_OSH_.exit" ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl15EntryExitRecordEEE8__next__Ev.exit ] ; 6 uses
  %.sroa.13.0 = phi i32 [ %.sroa.7.0.i, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS2_9GPOS_impl15EntryExitRecordENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISH_EEE4iterEEEOSG_OSH_.exit" ], [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl15EntryExitRecordEEE8__next__Ev.exit ] ; 11 uses
  switch i16 %i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl15EntryExitRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_17CursivePosFormat125collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS10_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS10_Efp_EEEOS10_OS15_.exit" [
    i16 1, label %bb.h
    i16 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ak = load i16, ptr %i.ah, align 1, !tbaa !22
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = icmp uge i32 %.sroa.13.0, %i.am
  %.not.i.i.i = icmp eq i32 %.sroa.37.sroa.0.0, 0
  %or.cond = select i1 %i.an, i1 true, i1 %.not.i.i.i
  br i1 %or.cond, label %.split.i.preheader, label %bb.j

bb.j:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10
  br i1 %i.ai, label %bb.k, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl15EntryExitRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ao = load i16, ptr %i.ah, align 1, !tbaa !22
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.13.0, %i.aq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i, !prof !47

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ar = zext nneg i32 %.sroa.13.0 to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ar
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.as, %bb.l ], [ @_hb_NullPool, %bb.k ]
  %i.at = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  %i.au = tail call noundef i16 @llvm.bswap.i16(i16 %i.at)
  %i.av = zext i16 %i.au to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl15EntryExitRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl15EntryExitRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i.i: ; preds = %bb.j, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.av, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i ], [ %.sroa.27.0, %bb.j ] ; 3 uses
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !132 ; 5 uses
  %i.ax = lshr i32 %.0.i.i.i.i.i.i.i.i, 9         ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.az = load atomic i32, ptr %i.ay monotonic, align 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !46 ; 3 uses
  %i.bc = icmp ult i32 %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 3 uses
  br i1 %i.bc, label %bb.m, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl15EntryExitRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i.i
  %i.bf = zext i32 %i.az to i64                   ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !48
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bh, %i.ax
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.m, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl15EntryExitRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.bb, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = add nsw i32 %i.bb, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.q, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ %i.bi, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bj = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bk = lshr i32 %i.bj, 1                       ; 4 uses
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !48 ; 2 uses
  %i.bp = icmp slt i32 %i.ax, %i.bo
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = add nsw i32 %i.bk, -1
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ax, %i.bo
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = add nuw nsw i32 %i.bk, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.br, %bb.p ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %i.bq, %bb.n ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !50

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  store atomic i32 %i.bk, ptr %i.ay monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.m
  %i.bs = phi i64 [ %i.bl, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bf, %bb.m ]
  %.sink.in.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %.sink.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i.i.i6.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i6.i.i.i, label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i", label %bb.r

bb.r:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !53
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = lshr i32 %.0.i.i.i.i.i.i.i.i, 6
  %i.ca = and i32 %i.bz, 7
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !54
  %i.ce = and i32 %.0.i.i.i.i.i.i.i.i, 63
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = lshr i64 %i.cd, %i.cf
  %i.ch = trunc i64 %i.cg to i8
  %i.ci = and i8 %i.ch, 1
  br label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i"

"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i": ; preds = %bb.q, %bb.r, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i5.i.i.i = phi i8 [ %i.ci, %bb.r ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.q ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !36, !range !38, !noundef !39
  %.not8.i.i.i = icmp eq i8 %i.ck, %.0.i.i.i.i.i.i.i5.i.i.i
  br i1 %.not8.i.i.i, label %bb.s, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl15EntryExitRecordEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit"

bb.s:                                             ; preds = %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i"
  switch i16 %i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl15EntryExitRecordEEE8__next__Ev.exit [
    i16 1, label %bb.t
    i16 2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.cl = add nuw nsw i32 %.sroa.13.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl15EntryExitRecordEEE8__next__Ev.exit

bb.u:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.cm = load i16, ptr %i.ah, align 1, !tbaa !22
  %i.cn = tail call noundef i16 @llvm.bswap.i16(i16 %i.cm)
  %i.co = zext i16 %i.cn to i32
  %.not.i.i.i.i.i10 = icmp ult i32 %.sroa.13.0, %i.co
  br i1 %.not.i.i.i.i.i10, label %bb.v, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !47

bb.v:                                             ; preds = %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.cp = zext nneg i32 %.sroa.13.0 to i64
  %i.cq = getelementptr inbounds nuw [6 x i8], ptr %i.aj, i64 %i.cp
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi ptr [ %i.cq, %bb.v ], [ @_hb_Null_OT_RangeRecord, %bb.u ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.cs = load i16, ptr %i.cr, align 1, !tbaa !22
  %i.ct = tail call noundef i16 @llvm.bswap.i16(i16 %i.cs)
  %i.cu = zext i16 %i.ct to i32
  %.not.i.i.i.i = icmp ult i32 %.sroa.27.0, %i.cu
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.cv = add nuw nsw i32 %.sroa.13.0, 1          ; 4 uses
  %i.cw = load i16, ptr %i.ah, align 1, !tbaa !22
  %i.cx = tail call noundef i16 @llvm.bswap.i16(i16 %i.cw)
  %i.cy = zext i16 %i.cx to i32                   ; 2 uses
  %i.cz = icmp ult i32 %i.cv, %i.cy
  br i1 %i.cz, label %bb.x, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl15EntryExitRecordEEE8__next__Ev.exit

bb.x:                                             ; preds = %bb.w
end_hunk_2
begin_hunk_3_@_ZNK2OT6Layout9GPOS_impl17CursivePosFormat125collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE:bb.a
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = lshr i32 %.0.i.i.i.i.i.i.i.i.i.i.i.us, 6
  %i.hr = and i32 %i.hq, 7
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hs
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !54
  %i.hv = and i32 %.0.i.i.i.i.i.i.i.i.i.i.i.us, 63
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = lshr i64 %i.hu, %i.hw
  %i.hy = trunc i64 %i.hx to i8
  %i.hz = and i8 %i.hy, 1
  br label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i.i.i.i.us"

"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i.i.i.i.us": ; preds = %bb.ap, %bb.aq, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %.0.i.i.i.i.i.i.i2.i.i.i.i.i.i.us = phi i8 [ %i.hz, %bb.aq ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us ], [ 0, %bb.ap ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.ib = load i8, ptr %i.ia, align 8, !tbaa !36, !range !38, !noundef !39
  %.not5.i.i.i.i.i.i.us = icmp eq i8 %i.ib, %.0.i.i.i.i.i.i.i2.i.i.i.i.i.i.us
  br i1 %.not5.i.i.i.i.i.i.us, label %"_ZNK4$_21clIRZNK2OT6Layout9GPOS_impl17CursivePosFormat125collect_variation_indicesEPNS1_38hb_collect_variation_indices_context_tEEUlRKNS3_15EntryExitRecordEE_JS9_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSC_DpOSF_.exit.i.i.us", label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl15EntryExitRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EppEv.exit.i.i.loopexit.us", !llvm.loop !392

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl15EntryExitRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EppEv.exit.i.i.loopexit.us": ; preds = %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i.i.i.i.i.us", %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i2.i.i.us
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10
  %i.ic = load i16, ptr %i.ah, align 1, !tbaa !22
  %i.id = tail call noundef i16 @llvm.bswap.i16(i16 %i.ic)
  %i.ie = zext i16 %i.id to i32
  %i.if = icmp ult i32 %i.fy, %i.ie
  %i.ig = icmp ne i32 %i.fw, 0
  %or.cond.i.i.us = select i1 %i.if, i1 %i.ig, i1 false
  br i1 %or.cond.i.i.us, label %.lr.ph.split.us, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl15EntryExitRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_17CursivePosFormat125collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS10_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS10_Efp_EEEOS10_OS15_.exit", !llvm.loop !393

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl15EntryExitRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_17CursivePosFormat125collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS10_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS10_Efp_EEEOS10_OS15_.exit": ; preds = %bb.g, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl15EntryExitRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EppEv.exit.i.i.loopexit.us", %.split.i.preheader, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl15EntryExitRecordEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GPOS_impl13AnchorFormat325collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !33 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.h = load i16, ptr %i.g, align 1, !tbaa !22
  %cond.i = icmp eq i16 %i.h, 128
  br i1 %cond.i, label %bb.b, label %_ZNK2OT6Device25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !157  ; 2 uses
  %i.k = load i32, ptr %.0.i.i, align 1, !tbaa !34
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.o = load i8, ptr %i.n, align 8, !tbaa !36, !range !38, !noundef !39
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d, !prof !33

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.m, i32 noundef %i.l)
  br label %_ZNK2OT6Device25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.m, i32 noundef %i.l)
  br label %_ZNK2OT6Device25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit

_ZNK2OT6Device25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i16, ptr %i.q, align 1, !tbaa !22   ; 2 uses
  %i.s = icmp eq i16 %i.r, 0
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.r)
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %.0.i.i3 = select i1 %i.s, ptr @_hb_NullPool, ptr %i.v, !prof !33 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i3, i64 4
  %i.x = load i16, ptr %i.w, align 1, !tbaa !22
  %cond.i4 = icmp eq i16 %i.x, 128
  br i1 %cond.i4, label %bb.e, label %_ZNK2OT6Device25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit5

bb.e:                                             ; preds = %_ZNK2OT6Device25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !157  ; 2 uses
  %i.aa = load i32, ptr %.0.i.i3, align 1, !tbaa !34
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !36, !range !38, !noundef !39
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %bb.g, !prof !33

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.ac, i32 noundef %i.ab)
  br label %_ZNK2OT6Device25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit5

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.ac, i32 noundef %i.ab)
  br label %_ZNK2OT6Device25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit5

_ZNK2OT6Device25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit5: ; preds = %_ZNK2OT6Device25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INS0_10SmallTypesEE25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_zip_iter_t.202, align 8  ; 6 uses
  %3 = alloca %struct.hb_filter_iter_t.198, align 8 ; 7 uses
  %4 = alloca %struct.hb_zip_iter_t.202, align 8  ; 12 uses
  %5 = alloca %struct.hb_map_iter_t.269, align 8  ; 11 uses
  %6 = alloca %struct.hb_filter_iter_t.271, align 8 ; 4 uses
  %7 = alloca %struct.hb_zip_iter_t.275, align 8  ; 12 uses
  %8 = alloca %struct.hb_map_t, align 8           ; 12 uses
  %9 = alloca %struct.hb_map_iter_t.206, align 8  ; 10 uses
  %10 = alloca %struct.hb_filter_iter_t.198, align 8 ; 4 uses
  %11 = alloca %struct.hb_vector_t.287, align 8   ; 8 uses
  %12 = alloca %struct.hb_map_iter_t.206, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !33 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load i16, ptr %i.g, align 1, !tbaa !22   ; 2 uses
  %i.i = icmp eq i16 %i.h, 0
  %i.j = tail call i16 @llvm.bswap.i16(i16 %i.h)
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %.0.i.i33 = select i1 %i.i, ptr @_hb_NullPool, ptr %i.l, !prof !33 ; 2 uses
  %i.m = load i16, ptr %.0.i.i, align 1, !tbaa !22, !noalias !394
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m) ; 2 uses
  switch i16 %i.n, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !394, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !394, !srcloc !21
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.p = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !394
  %.not.i.i.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.d, !prof !223

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !394, !srcloc !21
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.r = load i16, ptr %i.q, align 1, !tbaa !22, !noalias !394
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.t = zext i16 %i.s to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !394
  %i.u = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.11.0.i = phi i32 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %i.v = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !394
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !394, !srcloc !21
  %.pre11.i.i.i.i.i = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !394
  %i.x = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.y = load i16, ptr %i.q, align 1, !tbaa !22, !noalias !394
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y) ; 2 uses
  br i1 %i.x, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !224

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !394, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.t, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.t, %bb.e ]
  %i.aa = phi i16 [ %i.w, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.z, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.z, %bb.e ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.q, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !22, !noalias !394
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = icmp ugt i16 %i.aa, %i.ad
  br i1 %i.ae, label %bb.f, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit", !prof !33

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.af = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !394
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.11.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ah, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ai = zext i16 %i.n to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i33, i64 2
  %i.ak = load i16, ptr %.0.i.i33, align 1, !tbaa !22, !noalias !401
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i16 %i.al to i64
  store i32 %i.ai, ptr %7, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %.sroa.4142.0..sroa_idx, align 4
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.5143.0..sroa_idx, align 8
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.6144.0..sroa_idx, align 8
  %.sroa.7145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %.sroa.7145.0..sroa_idx, align 4
  %.sroa.8146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.sroa.11.2.i, ptr %.sroa.8146.0..sroa_idx, align 8
  %.sroa.9147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 0, ptr %.sroa.9147.0..sroa_idx, align 4
  %.sroa.10148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.aj, ptr %.sroa.10148.0..sroa_idx, align 8
  %.sroa.11149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sroa.2.8.insert.ext.i.i.i.i.i, ptr %.sroa.11149.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call fastcc void @"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_"(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr nonnull %i.am, ptr nonnull @_ZL8hb_first)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false)
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr @_ZL9hb_second, ptr %.sroa.4151.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %bb.g

bb.g:                                             ; preds = %"_ZNK4$_21clIRZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INS2_10SmallTypesEE25collect_variation_indicesEPNS1_38hb_collect_variation_indices_context_tEEUlRKNS3_10MarkRecordEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i", %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit"
  %i.ar = load i32, ptr %5, align 8, !tbaa !272
  switch i32 %i.ar, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkBasePosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit" [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.as = load i32, ptr %i.ao, align 8, !tbaa !60
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.av = load i16, ptr %i.au, align 1, !tbaa !22
  %i.aw = call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i32
  %i.ay = icmp ult i32 %i.as, %i.ax
  %i.az = load i32, ptr %i.ap, align 8
  %i.ba = icmp ne i32 %i.az, 0
  %or.cond.i.i = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond.i.i, label %bb.j, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkBasePosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit"

bb.j:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i
  %i.bb = load i32, ptr %5, align 8, !tbaa !272
  switch i32 %i.bb, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i" [
    i32 1, label %bb.k
    i32 2, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !317
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.be = load i32, ptr %i.ao, align 8, !tbaa !314
  %i.bf = load i16, ptr %i.bd, align 1, !tbaa !22
  %i.bg = call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bh = zext i16 %i.bg to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.be, %i.bh
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i", !prof !47

bb.l:                                             ; preds = %bb.k
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i"

bb.m:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i": ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.bi = load i32, ptr %i.ap, align 8, !tbaa !402
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bi, 0
  %i.bj = load ptr, ptr %i.aq, align 8
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.bj, !prof !33
  %i.bk = getelementptr i8, ptr %spec.select.i.i.i.i.i.i.i.i.i.i, i64 2
  %.val2.i.i = load i16, ptr %i.bk, align 1, !tbaa !22 ; 2 uses
  %i.bl = load i16, ptr %i.g, align 1, !tbaa !22  ; 2 uses
  %i.bm = icmp eq i16 %i.bl, 0
  %i.bn = call i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bo = zext i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  %.0.i.i.i.i.i.i.i = select i1 %i.bm, ptr @_hb_NullPool, ptr %i.bp, !prof !33
  %i.bq = icmp eq i16 %.val2.i.i, 0
  %i.br = call i16 @llvm.bswap.i16(i16 %.val2.i.i)
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 %i.bs
  %.0.i.i.i.i.i.i.i.i = select i1 %i.bq, ptr @_hb_NullPool, ptr %i.bt, !prof !33 ; 2 uses
  %i.bu = load i16, ptr %.0.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  %cond.i.i.i.i.i.i.i = icmp eq i16 %i.bu, 768
  br i1 %cond.i.i.i.i.i.i.i, label %bb.n, label %"_ZNK4$_21clIRZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INS2_10SmallTypesEE25collect_variation_indicesEPNS1_38hb_collect_variation_indices_context_tEEUlRKNS3_10MarkRecordEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i"

bb.n:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  call void @_ZNK2OT6Layout9GPOS_impl13AnchorFormat325collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i.i.i.i.i, ptr noundef %1)
  br label %"_ZNK4$_21clIRZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INS2_10SmallTypesEE25collect_variation_indicesEPNS1_38hb_collect_variation_indices_context_tEEUlRKNS3_10MarkRecordEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i"

"_ZNK4$_21clIRZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INS2_10SmallTypesEE25collect_variation_indicesEPNS1_38hb_collect_variation_indices_context_tEEUlRKNS3_10MarkRecordEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i": ; preds = %bb.n, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i"
  %i.bv = call fastcc noundef nonnull align 8 dereferenceable(72) ptr @"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EppEv"(ptr noundef nonnull align 8 dereferenceable(1) %5) ; 0 uses
  br label %bb.g, !llvm.loop !405

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkBasePosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit": ; preds = %bb.g, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store atomic i32 1, ptr %8 monotonic, align 8
  store atomic i8 1, ptr %i.bw monotonic, align 4
  store atomic ptr null, ptr %i.bx monotonic, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 1, ptr %i.by, align 8, !tbaa !152
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 18
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  store ptr null, ptr %i.ca, align 8, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bz, i8 0, i64 18, i1 false)
  %i.cb = load i16, ptr %i.a, align 1, !tbaa !22  ; 2 uses
  %i.cc = icmp eq i16 %i.cb, 0
  %i.cd = call i16 @llvm.bswap.i16(i16 %i.cb)
  %i.ce = zext i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %.0.i.i36 = select i1 %i.cc, ptr @_hb_NullPool, ptr %i.cf, !prof !33
  %i.cg = load i16, ptr %i.g, align 1, !tbaa !22  ; 2 uses
  %i.ch = icmp eq i16 %i.cg, 0
  %i.ci = call i16 @llvm.bswap.i16(i16 %i.cg)
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  %.0.i.i37 = select i1 %i.ch, ptr @_hb_NullPool, ptr %i.ck, !prof !33
  %i.cl = load ptr, ptr %i.am, align 8, !tbaa !159
  call void @_ZN2OT6Layout9GPOS_impl35Markclass_closure_and_remap_indexesERKNS0_6Common8CoverageERKNS1_9MarkArrayERK8hb_set_tP8hb_map_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i36, ptr noundef nonnull align 1 dereferenceable(6) %.0.i.i37, ptr noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull %8)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 1, !tbaa !22 ; 2 uses
  %i.co = icmp eq i16 %i.cn, 0
  %i.cp = call i16 @llvm.bswap.i16(i16 %i.cn)
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  %.0.i.i38 = select i1 %i.co, ptr @_hb_NullPool, ptr %i.cr, !prof !33
  %i.cs = load i16, ptr %.0.i.i38, align 1, !tbaa !22
  %i.ct = call noundef i16 @llvm.bswap.i16(i16 %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cv = load i16, ptr %i.cu, align 1, !tbaa !22 ; 2 uses
  %i.cw = icmp eq i16 %i.cv, 0
  %i.cx = call i16 @llvm.bswap.i16(i16 %i.cv)
  %i.cy = zext i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy
  %.0.i.i39 = select i1 %i.cw, ptr @_hb_NullPool, ptr %i.cz, !prof !33 ; 6 uses
  %.sroa.2.0.insert.ext.i = zext i16 %i.ct to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %i.da = load i16, ptr %.0.i.i39, align 1, !tbaa !22, !noalias !406
  %i.db = call noundef i16 @llvm.bswap.i16(i16 %i.da) ; 2 uses
  switch i16 %i.db, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit" [
    i16 1, label %bb.o
    i16 2, label %bb.p
  ]

bb.o:                                             ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkBasePosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !406, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"

bb.p:                                             ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkBasePosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !406, !srcloc !21
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 2 ; 4 uses
  %i.dd = load i16, ptr %i.dc, align 1, !tbaa !22, !noalias !406
  %.not.i.i.i.i.i42 = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i.i.i.i42, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i59, label %bb.q, !prof !223

bb.q:                                             ; preds = %bb.p
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !406, !srcloc !21
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 4 ; 3 uses
  %i.df = load i16, ptr %i.de, align 1, !tbaa !22, !noalias !406
  %i.dg = call noundef i16 @llvm.bswap.i16(i16 %i.df)
  %i.dh = zext i16 %i.dg to i32                   ; 3 uses
  %.pre8.i.i.i.i.i43 = load i16, ptr %i.dc, align 1, !tbaa !22, !noalias !406
  %i.di = icmp eq i16 %.pre8.i.i.i.i.i43, 0
  br i1 %i.di, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i59, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i44, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i59: ; preds = %bb.q, %bb.p
  %.sroa.11.0.i60 = phi i32 [ %i.dh, %bb.q ], [ 0, %bb.p ]
  %i.dj = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !406
  %i.dk = call noundef i16 @llvm.bswap.i16(i16 %i.dj)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i44: ; preds = %bb.q
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !406, !srcloc !21
  %.pre11.i.i.i.i.i45 = load i16, ptr %i.dc, align 1, !tbaa !22, !noalias !406
  %i.dl = icmp eq i16 %.pre11.i.i.i.i.i45, 0
  %i.dm = load i16, ptr %i.de, align 1, !tbaa !22, !noalias !406
  %i.dn = call noundef i16 @llvm.bswap.i16(i16 %i.dm) ; 2 uses
  br i1 %i.dl, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46, label %bb.r, !prof !224

bb.r:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i44
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !406, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46: ; preds = %bb.r, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i44, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i59
  %.sroa.11.1.i47 = phi i32 [ %.sroa.11.0.i60, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i59 ], [ %i.dh, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i44 ], [ %i.dh, %bb.r ]
  %i.do = phi i16 [ %i.dk, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i59 ], [ %i.dn, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i44 ], [ %i.dn, %bb.r ]
  %.0.i6.i.i.i.i.i48 = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i59 ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i44 ], [ %i.de, %bb.r ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i48, i64 2
  %i.dq = load i16, ptr %i.dp, align 1, !tbaa !22, !noalias !406
  %i.dr = call noundef i16 @llvm.bswap.i16(i16 %i.dq)
  %i.ds = icmp ugt i16 %i.do, %i.dr
  br i1 %i.ds, label %bb.s, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit", !prof !33

bb.s:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46
  %i.dt = load i16, ptr %i.dc, align 1, !tbaa !22, !noalias !406
  %i.du = call noundef i16 @llvm.bswap.i16(i16 %i.dt)
  %i.dv = zext i16 %i.du to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit": ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkBasePosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit", %bb.o, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46, %bb.s
  %.sroa.11.2.i49 = phi i32 [ 0, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkBasePosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit" ], [ 0, %bb.o ], [ 0, %bb.s ], [ %.sroa.11.1.i47, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46 ]
  %.sroa.52.0.i50 = phi ptr [ null, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkBasePosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit" ], [ %.0.i.i39, %bb.o ], [ %.0.i.i39, %bb.s ], [ %.0.i.i39, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46 ]
  %.sroa.7.0.i51 = phi i32 [ 0, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkBasePosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit" ], [ 0, %bb.o ], [ %i.dv, %bb.s ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46 ]
  %i.dw = zext i16 %i.db to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !413
  store i32 %i.dw, ptr %4, align 8, !noalias !413
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa.4120.0..sroa_idx, align 4, !noalias !413
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.52.0.i50, ptr %.sroa.5121.0..sroa_idx, align 8, !noalias !413
  %.sroa.6122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.7.0.i51, ptr %.sroa.6122.0..sroa_idx, align 8, !noalias !413
  %.sroa.7123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %.sroa.7123.0..sroa_idx, align 4, !noalias !413
  %.sroa.8124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.sroa.11.2.i49, ptr %.sroa.8124.0..sroa_idx, align 8, !noalias !413
  %.sroa.9125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %.sroa.9125.0..sroa_idx, align 4, !noalias !413
  %.sroa.10126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %.sroa.2.0.insert.shift.i, ptr %.sroa.10126.0..sroa_idx, align 8, !noalias !413
  %.sroa.11127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 1, ptr %.sroa.11127.0..sroa_idx, align 8, !noalias !413
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EEC2ERKS8_SC_SF_"(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull readonly align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 1 dereferenceable(1) @_ZL8hb_first)
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull readonly align 8 dereferenceable(64) %10, i64 64, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr @_ZL9hb_second, ptr %i.dx, align 8, !tbaa !277, !alias.scope !416
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull readonly align 8 dereferenceable(72) %9, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10, !noalias !421
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10, !noalias !428
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  call void @_ZNK2OT6Layout6Common8Coverage6iter_t7__end__Ev(ptr dead_on_unwind nonnull writable sret(%"struct.OT::Layout::Common::Coverage::iter_t") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %9), !noalias !428
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !276, !noalias !439
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !303, !noalias !439
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 %i.dz to i64 ; 2 uses
  %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i, 32
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i, ptr %i.ec, align 8, !alias.scope !440, !noalias !428
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.eb, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !440, !noalias !428
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !305, !noalias !428
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 56
  %.val.i.i.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !309, !noalias !428
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EEC2ERKS8_SC_SF_"(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(44) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull align 1 dereferenceable(1) %.val.i.i.i.i.i), !noalias !421
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10, !noalias !428
  %.sroa.095.0.copyload = load i32, ptr %3, align 8 ; 2 uses
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.497.0.copyload = load i32, ptr %.sroa.497.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.6100.0.copyload = load i32, ptr %.sroa.6100.0..sroa_idx, align 8
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.7102.0.copyload = load i32, ptr %.sroa.7102.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10, !noalias !421
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.en = load i32, ptr @_hb_NullPool, align 16
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"
  %i.eq = load i32, ptr %12, align 8, !tbaa !272
  %.not.i.i.i.i = icmp eq i32 %i.eq, %.sroa.095.0.copyload
  br i1 %.not.i.i.i.i, label %bb.u, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit", !prof !47

bb.u:                                             ; preds = %bb.t
  switch i32 %.sroa.095.0.copyload, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread" [
    i32 1, label %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i
    i32 2, label %.split.i.i.i
  ]

.split.i.i.i:                                     ; preds = %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.er = load i32, ptr %i.eg, align 8, !tbaa !311
  %.not.i.i.i.i.i63 = icmp ne i32 %i.er, %.sroa.497.0.copyload
  %i.es = load i32, ptr %i.eh, align 8
  %i.et = icmp ne i32 %i.es, %.sroa.6100.0.copyload
  %i.eu = select i1 %.not.i.i.i.i.i63, i1 true, i1 %i.et
  br i1 %i.eu, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit", label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"

_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i: ; preds = %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ev = load i32, ptr %i.eg, align 8, !tbaa !314
  %.not.i.i.i = icmp eq i32 %i.ev, %.sroa.497.0.copyload
  br i1 %.not.i.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread", label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit": ; preds = %bb.t, %.split.i.i.i, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i
  %i.ew = load i32, ptr %i.ei, align 8, !tbaa !274
  %.not = icmp eq i32 %i.ew, %.sroa.7102.0.copyload
  br i1 %.not, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread", label %bb.aa

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread": ; preds = %bb.u, %.split.i.i.i, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  %i.ex = load i16, ptr %i.cm, align 1, !tbaa !22 ; 2 uses
  %i.ey = icmp eq i16 %i.ex, 0
  %i.ez = call i16 @llvm.bswap.i16(i16 %i.ex)
  %i.fa = zext i16 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 %i.fa
  %.0.i.i64 = select i1 %i.ey, ptr @_hb_NullPool, ptr %i.fb, !prof !33 ; 2 uses
  %i.fc = load ptr, ptr %i.ep, align 8, !tbaa !441 ; 2 uses
  %i.fd = load i32, ptr %i.eo, align 4, !tbaa !443 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.fd to i64
  %i.fe = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i, 2
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fe
  %.not9.i = icmp eq i32 %i.fd, 0
  br i1 %.not9.i, label %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i64, i64 2
  br label %bb.v

bb.v:                                             ; preds = %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i, %.lr.ph.i
  %.010.i = phi ptr [ %i.fc, %.lr.ph.i ], [ %i.fq, %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i ] ; 2 uses
  %i.fh = load i32, ptr %.010.i, align 4, !tbaa !60
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 1, !tbaa !22 ; 2 uses
  %i.fl = icmp eq i16 %i.fk, 0
  %i.fm = call i16 @llvm.bswap.i16(i16 %i.fk)
  %i.fn = zext i16 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i64, i64 %i.fn
  %.0.i.i.i = select i1 %i.fl, ptr @_hb_NullPool, ptr %i.fo, !prof !33 ; 2 uses
  %i.fp = load i16, ptr %.0.i.i.i, align 1, !tbaa !22
  %cond.i.i = icmp eq i16 %i.fp, 768
  br i1 %cond.i.i, label %bb.w, label %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i

bb.w:                                             ; preds = %bb.v
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  call void @_ZNK2OT6Layout9GPOS_impl13AnchorFormat325collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i, ptr noundef %1)
  br label %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i

_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i: ; preds = %bb.w, %bb.v
  %i.fq = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.fq, %i.ff
  br i1 %.not.i, label %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, label %bb.v

_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit: ; preds = %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"
  %i.fr = load i32, ptr %11, align 8, !tbaa !444
  %i.fs = add i32 %i.fr, -1
  %spec.select.i.i.i = icmp ult i32 %i.fs, -2
  br i1 %spec.select.i.i.i, label %bb.x, label %_ZN11hb_vector_tIjLb1EED2Ev.exit

bb.x:                                             ; preds = %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit
  store i32 0, ptr %i.eo, align 4, !tbaa !443
  %i.ft = load ptr, ptr %i.ep, align 8, !tbaa !441
  call void @hb_free(ptr noundef %i.ft) #10
  br label %_ZN11hb_vector_tIjLb1EED2Ev.exit

_ZN11hb_vector_tIjLb1EED2Ev.exit:                 ; preds = %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  store atomic i32 -57005, ptr %8 monotonic, align 8
  %i.fu = load atomic ptr, ptr %i.bx acquire, align 8 ; 5 uses
  %.not.i.i.i65 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i65, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN11hb_vector_tIjLb1EED2Ev.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 8 dereferenceable(56) %i.fu)
  %i.fw = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.fu) #10 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.fu) #10
  store atomic ptr null, ptr %i.bx monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i: ; preds = %bb.y, %_ZN11hb_vector_tIjLb1EED2Ev.exit
  %i.fx = load ptr, ptr %i.ca, align 8, !tbaa !56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i, label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit, label %bb.z, !prof !33

bb.z:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i
  call void @hb_free(ptr noundef nonnull %i.fx) #10
  br label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit

_ZN12hb_hashmap_tIjjLb1EED2Ev.exit:               ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  ret void

bb.aa:                                            ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"
  %i.fy = load i32, ptr %12, align 8, !tbaa !272
  switch i32 %i.fy, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit" [
    i32 1, label %bb.ab
    i32 2, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.fz = load ptr, ptr %i.ej, align 8, !tbaa !317
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gb = load i32, ptr %i.eg, align 8, !tbaa !314
  %i.gc = load i16, ptr %i.ga, align 1, !tbaa !22
  %i.gd = call noundef i16 @llvm.bswap.i16(i16 %i.gc)
  %i.ge = zext i16 %i.gd to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.gb, %i.ge
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit", !prof !47

bb.ac:                                            ; preds = %bb.ab
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"
end_hunk_3
begin_hunk_4_@_ZN11hb_vector_tIjLb1EE5allocEjb:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !60
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !33

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !482

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !33

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !441
  tail call void @hb_free(ptr noundef %i.m) #10
  br label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !441  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #10 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !33

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !443  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !33

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !441
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 309237645241) %i.v, i1 false), !alias.scope !483
  br label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #10 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, !prof !65

_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !444   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !441
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !444
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INS0_10SmallTypesEE25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_zip_iter_t.202, align 8  ; 6 uses
  %3 = alloca %struct.hb_filter_iter_t.198, align 8 ; 7 uses
  %4 = alloca %struct.hb_zip_iter_t.202, align 8  ; 12 uses
  %5 = alloca %struct.hb_map_iter_t.269, align 8  ; 11 uses
  %6 = alloca %struct.hb_filter_iter_t.271, align 8 ; 4 uses
  %7 = alloca %struct.hb_zip_iter_t.275, align 8  ; 12 uses
  %8 = alloca %struct.hb_map_t, align 8           ; 12 uses
  %9 = alloca %struct.hb_map_iter_t.206, align 8  ; 10 uses
  %10 = alloca %struct.hb_filter_iter_t.198, align 8 ; 4 uses
  %11 = alloca %struct.hb_map_iter_t.206, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !33 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load i16, ptr %i.g, align 1, !tbaa !22   ; 2 uses
  %i.i = icmp eq i16 %i.h, 0
  %i.j = tail call i16 @llvm.bswap.i16(i16 %i.h)
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %.0.i.i56 = select i1 %i.i, ptr @_hb_NullPool, ptr %i.l, !prof !33 ; 2 uses
  %i.m = load i16, ptr %.0.i.i, align 1, !tbaa !22, !noalias !487
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m) ; 2 uses
  switch i16 %i.n, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !487, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !487, !srcloc !21
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.p = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !487
  %.not.i.i.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.d, !prof !223

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !487, !srcloc !21
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.r = load i16, ptr %i.q, align 1, !tbaa !22, !noalias !487
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.t = zext i16 %i.s to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !487
  %i.u = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.11.0.i = phi i32 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %i.v = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !487
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !487, !srcloc !21
  %.pre11.i.i.i.i.i = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !487
  %i.x = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.y = load i16, ptr %i.q, align 1, !tbaa !22, !noalias !487
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y) ; 2 uses
  br i1 %i.x, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !224

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !487, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.t, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.t, %bb.e ]
  %i.aa = phi i16 [ %i.w, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.z, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.z, %bb.e ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.q, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !22, !noalias !487
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = icmp ugt i16 %i.aa, %i.ad
  br i1 %i.ae, label %bb.f, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit", !prof !33

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.af = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !487
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.11.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ah, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ai = zext i16 %i.n to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i56, i64 2
  %i.ak = load i16, ptr %.0.i.i56, align 1, !tbaa !22, !noalias !494
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i16 %i.al to i64
  store i32 %i.ai, ptr %7, align 8
  %.sroa.4371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %.sroa.4371.0..sroa_idx, align 4
  %.sroa.5372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.5372.0..sroa_idx, align 8
  %.sroa.6373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.6373.0..sroa_idx, align 8
  %.sroa.7374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %.sroa.7374.0..sroa_idx, align 4
  %.sroa.8375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.sroa.11.2.i, ptr %.sroa.8375.0..sroa_idx, align 8
  %.sroa.9376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 0, ptr %.sroa.9376.0..sroa_idx, align 4
  %.sroa.10377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.aj, ptr %.sroa.10377.0..sroa_idx, align 8
  %.sroa.11378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sroa.2.8.insert.ext.i.i.i.i.i, ptr %.sroa.11378.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call fastcc void @"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_"(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr nonnull %i.am, ptr nonnull @_ZL8hb_first)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false)
  %.sroa.4380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr @_ZL9hb_second, ptr %.sroa.4380.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %bb.g

bb.g:                                             ; preds = %"_ZNK4$_21clIRZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INS2_10SmallTypesEE25collect_variation_indicesEPNS1_38hb_collect_variation_indices_context_tEEUlRKNS3_10MarkRecordEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i", %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit"
  %i.ar = load i32, ptr %5, align 8, !tbaa !272
  switch i32 %i.ar, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_19MarkLigPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit" [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.as = load i32, ptr %i.ao, align 8, !tbaa !60
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.av = load i16, ptr %i.au, align 1, !tbaa !22
  %i.aw = call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i32
  %i.ay = icmp ult i32 %i.as, %i.ax
  %i.az = load i32, ptr %i.ap, align 8
  %i.ba = icmp ne i32 %i.az, 0
  %or.cond.i.i = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond.i.i, label %bb.j, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_19MarkLigPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit"

bb.j:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i
  %i.bb = load i32, ptr %5, align 8, !tbaa !272
  switch i32 %i.bb, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i" [
    i32 1, label %bb.k
    i32 2, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !317
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.be = load i32, ptr %i.ao, align 8, !tbaa !314
  %i.bf = load i16, ptr %i.bd, align 1, !tbaa !22
  %i.bg = call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bh = zext i16 %i.bg to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.be, %i.bh
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i", !prof !47

bb.l:                                             ; preds = %bb.k
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i"

bb.m:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i": ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.bi = load i32, ptr %i.ap, align 8, !tbaa !402
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bi, 0
  %i.bj = load ptr, ptr %i.aq, align 8
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.bj, !prof !33
  %i.bk = getelementptr i8, ptr %spec.select.i.i.i.i.i.i.i.i.i.i, i64 2
  %.val2.i.i = load i16, ptr %i.bk, align 1, !tbaa !22 ; 2 uses
  %i.bl = load i16, ptr %i.g, align 1, !tbaa !22  ; 2 uses
  %i.bm = icmp eq i16 %i.bl, 0
  %i.bn = call i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bo = zext i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  %.0.i.i.i.i.i.i.i = select i1 %i.bm, ptr @_hb_NullPool, ptr %i.bp, !prof !33
  %i.bq = icmp eq i16 %.val2.i.i, 0
  %i.br = call i16 @llvm.bswap.i16(i16 %.val2.i.i)
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 %i.bs
  %.0.i.i.i.i.i.i.i.i = select i1 %i.bq, ptr @_hb_NullPool, ptr %i.bt, !prof !33 ; 2 uses
  %i.bu = load i16, ptr %.0.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  %cond.i.i.i.i.i.i.i = icmp eq i16 %i.bu, 768
  br i1 %cond.i.i.i.i.i.i.i, label %bb.n, label %"_ZNK4$_21clIRZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INS2_10SmallTypesEE25collect_variation_indicesEPNS1_38hb_collect_variation_indices_context_tEEUlRKNS3_10MarkRecordEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i"

bb.n:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  call void @_ZNK2OT6Layout9GPOS_impl13AnchorFormat325collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i.i.i.i.i, ptr noundef %1)
  br label %"_ZNK4$_21clIRZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INS2_10SmallTypesEE25collect_variation_indicesEPNS1_38hb_collect_variation_indices_context_tEEUlRKNS3_10MarkRecordEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i"

"_ZNK4$_21clIRZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INS2_10SmallTypesEE25collect_variation_indicesEPNS1_38hb_collect_variation_indices_context_tEEUlRKNS3_10MarkRecordEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i": ; preds = %bb.n, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i"
  %i.bv = call fastcc noundef nonnull align 8 dereferenceable(72) ptr @"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EppEv"(ptr noundef nonnull align 8 dereferenceable(1) %5) ; 0 uses
  br label %bb.g, !llvm.loop !495

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_19MarkLigPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit": ; preds = %bb.g, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store atomic i32 1, ptr %8 monotonic, align 8
  store atomic i8 1, ptr %i.bw monotonic, align 4
  store atomic ptr null, ptr %i.bx monotonic, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 1, ptr %i.by, align 8, !tbaa !152
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 18
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  store ptr null, ptr %i.ca, align 8, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bz, i8 0, i64 18, i1 false)
  %i.cb = load i16, ptr %i.a, align 1, !tbaa !22  ; 2 uses
  %i.cc = icmp eq i16 %i.cb, 0
  %i.cd = call i16 @llvm.bswap.i16(i16 %i.cb)
  %i.ce = zext i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %.0.i.i59 = select i1 %i.cc, ptr @_hb_NullPool, ptr %i.cf, !prof !33
  %i.cg = load i16, ptr %i.g, align 1, !tbaa !22  ; 2 uses
  %i.ch = icmp eq i16 %i.cg, 0
  %i.ci = call i16 @llvm.bswap.i16(i16 %i.cg)
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  %.0.i.i60 = select i1 %i.ch, ptr @_hb_NullPool, ptr %i.ck, !prof !33
  %i.cl = load ptr, ptr %i.am, align 8, !tbaa !159
  call void @_ZN2OT6Layout9GPOS_impl35Markclass_closure_and_remap_indexesERKNS0_6Common8CoverageERKNS1_9MarkArrayERK8hb_set_tP8hb_map_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i59, ptr noundef nonnull align 1 dereferenceable(6) %.0.i.i60, ptr noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull %8)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 1, !tbaa !22 ; 2 uses
  %i.co = icmp eq i16 %i.cn, 0
  %i.cp = call i16 @llvm.bswap.i16(i16 %i.cn)
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  %.0.i.i61 = select i1 %i.co, ptr @_hb_NullPool, ptr %i.cr, !prof !33
  %i.cs = load i16, ptr %.0.i.i61, align 1, !tbaa !22
  %i.ct = call noundef i16 @llvm.bswap.i16(i16 %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cv = load i16, ptr %i.cu, align 1, !tbaa !22 ; 2 uses
  %i.cw = icmp eq i16 %i.cv, 0
  %i.cx = call i16 @llvm.bswap.i16(i16 %i.cv)
  %i.cy = zext i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy
  %.0.i.i62 = select i1 %i.cw, ptr @_hb_NullPool, ptr %i.cz, !prof !33 ; 6 uses
  %.sroa.2.0.insert.ext.i = zext i16 %i.ct to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %i.da = load i16, ptr %.0.i.i62, align 1, !tbaa !22, !noalias !496
  %i.db = call noundef i16 @llvm.bswap.i16(i16 %i.da) ; 2 uses
  switch i16 %i.db, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit" [
    i16 1, label %bb.o
    i16 2, label %bb.p
  ]

bb.o:                                             ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_19MarkLigPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !496, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"

bb.p:                                             ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_19MarkLigPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !496, !srcloc !21
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i62, i64 2 ; 4 uses
  %i.dd = load i16, ptr %i.dc, align 1, !tbaa !22, !noalias !496
  %.not.i.i.i.i.i65 = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i.i.i.i65, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i82, label %bb.q, !prof !223

bb.q:                                             ; preds = %bb.p
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !496, !srcloc !21
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i62, i64 4 ; 3 uses
  %i.df = load i16, ptr %i.de, align 1, !tbaa !22, !noalias !496
  %i.dg = call noundef i16 @llvm.bswap.i16(i16 %i.df)
  %i.dh = zext i16 %i.dg to i32                   ; 3 uses
  %.pre8.i.i.i.i.i66 = load i16, ptr %i.dc, align 1, !tbaa !22, !noalias !496
  %i.di = icmp eq i16 %.pre8.i.i.i.i.i66, 0
  br i1 %i.di, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i82, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i67, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i82: ; preds = %bb.q, %bb.p
  %.sroa.11.0.i83 = phi i32 [ %i.dh, %bb.q ], [ 0, %bb.p ]
  %i.dj = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !496
  %i.dk = call noundef i16 @llvm.bswap.i16(i16 %i.dj)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i69

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i67: ; preds = %bb.q
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !496, !srcloc !21
  %.pre11.i.i.i.i.i68 = load i16, ptr %i.dc, align 1, !tbaa !22, !noalias !496
  %i.dl = icmp eq i16 %.pre11.i.i.i.i.i68, 0
  %i.dm = load i16, ptr %i.de, align 1, !tbaa !22, !noalias !496
  %i.dn = call noundef i16 @llvm.bswap.i16(i16 %i.dm) ; 2 uses
  br i1 %i.dl, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i69, label %bb.r, !prof !224

bb.r:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i67
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !496, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i69

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i69: ; preds = %bb.r, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i67, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i82
  %.sroa.11.1.i70 = phi i32 [ %.sroa.11.0.i83, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i82 ], [ %i.dh, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i67 ], [ %i.dh, %bb.r ]
  %i.do = phi i16 [ %i.dk, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i82 ], [ %i.dn, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i67 ], [ %i.dn, %bb.r ]
  %.0.i6.i.i.i.i.i71 = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i82 ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i67 ], [ %i.de, %bb.r ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i71, i64 2
  %i.dq = load i16, ptr %i.dp, align 1, !tbaa !22, !noalias !496
  %i.dr = call noundef i16 @llvm.bswap.i16(i16 %i.dq)
  %i.ds = icmp ugt i16 %i.do, %i.dr
  br i1 %i.ds, label %bb.s, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit", !prof !33

bb.s:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i69
  %i.dt = load i16, ptr %i.dc, align 1, !tbaa !22, !noalias !496
  %i.du = call noundef i16 @llvm.bswap.i16(i16 %i.dt)
  %i.dv = zext i16 %i.du to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit": ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_19MarkLigPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit", %bb.o, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i69, %bb.s
  %.sroa.11.2.i72 = phi i32 [ 0, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_19MarkLigPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit" ], [ 0, %bb.o ], [ 0, %bb.s ], [ %.sroa.11.1.i70, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i69 ]
  %.sroa.52.0.i73 = phi ptr [ null, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_19MarkLigPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit" ], [ %.0.i.i62, %bb.o ], [ %.0.i.i62, %bb.s ], [ %.0.i.i62, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i69 ]
  %.sroa.7.0.i74 = phi i32 [ 0, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_19MarkLigPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit" ], [ 0, %bb.o ], [ %i.dv, %bb.s ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i69 ]
  %i.dw = zext i16 %i.db to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !503
  store i32 %i.dw, ptr %4, align 8, !noalias !503
  %.sroa.4349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa.4349.0..sroa_idx, align 4, !noalias !503
  %.sroa.5350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.52.0.i73, ptr %.sroa.5350.0..sroa_idx, align 8, !noalias !503
  %.sroa.6351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.7.0.i74, ptr %.sroa.6351.0..sroa_idx, align 8, !noalias !503
  %.sroa.7352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %.sroa.7352.0..sroa_idx, align 4, !noalias !503
  %.sroa.8353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.sroa.11.2.i72, ptr %.sroa.8353.0..sroa_idx, align 8, !noalias !503
  %.sroa.9354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %.sroa.9354.0..sroa_idx, align 4, !noalias !503
  %.sroa.10355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %.sroa.2.0.insert.shift.i, ptr %.sroa.10355.0..sroa_idx, align 8, !noalias !503
  %.sroa.11356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 1, ptr %.sroa.11356.0..sroa_idx, align 8, !noalias !503
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EEC2ERKS8_SC_SF_"(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull readonly align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 1 dereferenceable(1) @_ZL8hb_first)
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull readonly align 8 dereferenceable(64) %10, i64 64, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr @_ZL9hb_second, ptr %i.dx, align 8, !tbaa !277, !alias.scope !506
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %i.dy = load i16, ptr %i.cm, align 1, !tbaa !22 ; 2 uses
  %i.dz = icmp eq i16 %i.dy, 0
  %i.ea = call i16 @llvm.bswap.i16(i16 %i.dy)
  %i.eb = zext i16 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %i.eb
  %.0.i.i86 = select i1 %i.dz, ptr @_hb_NullPool, ptr %i.ec, !prof !33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull readonly align 8 dereferenceable(72) %9, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10, !noalias !511
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10, !noalias !518
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  call void @_ZNK2OT6Layout6Common8Coverage6iter_t7__end__Ev(ptr dead_on_unwind nonnull writable sret(%"struct.OT::Layout::Common::Coverage::iter_t") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %9), !noalias !518
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !276, !noalias !529
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !303, !noalias !529
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 %i.ee to i64 ; 2 uses
  %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i, 32
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i, ptr %i.eh, align 8, !alias.scope !530, !noalias !518
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.eg, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !530, !noalias !518
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !305, !noalias !518
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 56
  %.val.i.i.i.i.i = load ptr, ptr %i.ek, align 8, !tbaa !309, !noalias !518
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EEC2ERKS8_SC_SF_"(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(44) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull align 1 dereferenceable(1) %.val.i.i.i.i.i), !noalias !511
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10, !noalias !518
  %.sroa.0324.0.copyload = load i32, ptr %3, align 8 ; 2 uses
  %.sroa.4326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.4326.0.copyload = load i32, ptr %.sroa.4326.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.6329.0.copyload = load i32, ptr %.sroa.6329.0..sroa_idx, align 8
  %.sroa.7331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.7331.0.copyload = load i32, ptr %.sroa.7331.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10, !noalias !511
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.i86, i64 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.et = load i32, ptr @_hb_NullPool, align 16
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZN11hb_vector_tIjLb1EED2Ev.exit, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"
  %i.ev = load i32, ptr %11, align 8, !tbaa !272
  %.not.i.i.i.i = icmp eq i32 %i.ev, %.sroa.0324.0.copyload
  br i1 %.not.i.i.i.i, label %bb.u, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit", !prof !47

bb.u:                                             ; preds = %bb.t
  switch i32 %.sroa.0324.0.copyload, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread" [
    i32 1, label %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i
    i32 2, label %.split.i.i.i
  ]

.split.i.i.i:                                     ; preds = %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ew = load i32, ptr %i.el, align 8, !tbaa !311
  %.not.i.i.i.i.i87 = icmp ne i32 %i.ew, %.sroa.4326.0.copyload
  %i.ex = load i32, ptr %i.em, align 8
  %i.ey = icmp ne i32 %i.ex, %.sroa.6329.0.copyload
  %i.ez = select i1 %.not.i.i.i.i.i87, i1 true, i1 %i.ey
  br i1 %i.ez, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit", label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"

_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i: ; preds = %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.fa = load i32, ptr %i.el, align 8, !tbaa !314
  %.not.i.i.i = icmp eq i32 %i.fa, %.sroa.4326.0.copyload
  br i1 %.not.i.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread", label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit": ; preds = %bb.t, %.split.i.i.i, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i
  %i.fb = load i32, ptr %i.en, align 8, !tbaa !274
  %.not = icmp eq i32 %i.fb, %.sroa.7331.0.copyload
  br i1 %.not, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread", label %bb.x

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread": ; preds = %bb.u, %.split.i.i.i, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  store atomic i32 -57005, ptr %8 monotonic, align 8
  %i.fc = load atomic ptr, ptr %i.bx acquire, align 8 ; 5 uses
  %.not.i.i.i88 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i88, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(56) %i.fc)
  %i.fe = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.fc) #10 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.fc) #10
  store atomic ptr null, ptr %i.bx monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i: ; preds = %bb.v, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"
  %i.ff = load ptr, ptr %i.ca, align 8, !tbaa !56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i, label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit, label %bb.w, !prof !33

bb.w:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i
  call void @hb_free(ptr noundef nonnull %i.ff) #10
  br label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit

_ZN12hb_hashmap_tIjjLb1EED2Ev.exit:               ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  ret void

bb.x:                                             ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"
  %i.fg = load i32, ptr %11, align 8, !tbaa !272
  switch i32 %i.fg, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit" [
    i32 1, label %bb.y
    i32 2, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.fh = load ptr, ptr %i.eo, align 8, !tbaa !317
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fj = load i32, ptr %i.el, align 8, !tbaa !314
  %i.fk = load i16, ptr %i.fi, align 1, !tbaa !22
  %i.fl = call noundef i16 @llvm.bswap.i16(i16 %i.fk)
  %i.fm = zext i16 %i.fl to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.fj, %i.fm
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.z, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit", !prof !47

bb.z:                                             ; preds = %bb.y
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"

bb.aa:                                            ; preds = %bb.x
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit": ; preds = %bb.x, %bb.y, %bb.z, %bb.aa
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.en, align 8, !tbaa !60 ; 4 uses
  %i.fn = load i16, ptr %.0.i.i86, align 1, !tbaa !22
  %i.fo = call noundef i16 @llvm.bswap.i16(i16 %i.fn)
  %i.fp = zext i16 %i.fo to i32
  %.not.i = icmp ult i32 %.val.i.i.i.i.i.i.i.i, %i.fp
  br i1 %.not.i, label %bb.ab, label %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit, !prof !47

bb.ab:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.fq = zext nneg i32 %.val.i.i.i.i.i.i.i.i to i64
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.fq
  %i.fs = load i16, ptr %i.fr, align 1, !tbaa !22 ; 2 uses
  %i.ft = icmp eq i16 %i.fs, 0
  %i.fu = call i16 @llvm.bswap.i16(i16 %i.fs)
  %i.fv = zext i16 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i.i86, i64 %i.fv
  %.0.i.i.i = select i1 %i.ft, ptr @_hb_NullPool, ptr %i.fw, !prof !33
  br label %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit

_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit: ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit", %bb.ab
  %.0.i = phi ptr [ %.0.i.i.i, %bb.ab ], [ @_hb_NullPool, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit" ]
  %i.fx = load i16, ptr %.0.i, align 1, !tbaa !22 ; 2 uses
  %i.fy = call noundef i16 @llvm.bswap.i16(i16 %i.fx)
  %.sroa.0311.0.extract.trunc = zext i16 %i.fy to i32
  %.not432466 = icmp eq i16 %i.fx, 0
  br i1 %.not432466, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit"
  %i.fz = add i32 %.sroa.0.4, -1
  %i.ga = icmp ult i32 %i.fz, -2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit
  %.sroa.0.0.lcssa = phi i1 [ false, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit ], [ %i.ga, %._crit_edge.loopexit ]
  %.sroa.8.0.lcssa = phi i32 [ 0, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit ], [ %.sroa.8.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.14.0.lcssa = phi ptr [ null, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit ], [ %.sroa.14.4, %._crit_edge.loopexit ] ; 3 uses
  %i.gb = load i16, ptr %.0.i.i86, align 1, !tbaa !22
  %i.gc = call noundef i16 @llvm.bswap.i16(i16 %i.gb)
  %i.gd = zext i16 %i.gc to i32
  %.not.i95 = icmp ult i32 %.val.i.i.i.i.i.i.i.i, %i.gd
  br i1 %.not.i95, label %bb.ac, label %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit98, !prof !47

bb.ac:                                            ; preds = %._crit_edge
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ge = zext nneg i32 %.val.i.i.i.i.i.i.i.i to i64
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.ge
  %i.gg = load i16, ptr %i.gf, align 1, !tbaa !22 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INS0_10SmallTypesEE25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE:bb.a

_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %bb.de, %bb.dd
  %i.za = phi ptr [ null, %bb.de ], [ %.sroa.14.1, %bb.dd ]
  %i.zb = shl nuw i32 %i.yr, 2
  %i.zc = zext i32 %i.zb to i64
  %i.zd = call ptr @hb_realloc(ptr noundef %i.za, i64 noundef %i.zc) #10 ; 2 uses
  %.not22.i = icmp eq ptr %i.zd, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %.critedge.i.i.i.i, !prof !65

_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %bb.df, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.ze = xor i32 %.sroa.0.1, -1
  br label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit

_ZN11hb_vector_tIjLb1EE5allocEjb.exit:            ; preds = %bb.db, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %.critedge.i
  %.sroa.0.5 = phi i32 [ %.sroa.0.1, %bb.db ], [ %i.ze, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i ], [ %i.yu, %.critedge.i ]
  store i32 %i.et, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i, %bb.dg, %bb.dh, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.dc
  %.pre-phi = phi i32 [ %.pre, %bb.dc ], [ 1, %bb.dg ], [ %.pre, %bb.dh ], [ %.pre, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.pre, %.lr.ph.i.i ]
  %.sroa.0.3 = phi i32 [ %.sroa.0.1, %bb.dc ], [ %i.yr, %bb.dg ], [ %i.yr, %bb.dh ], [ %i.yr, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.0.1, %.lr.ph.i.i ]
  %.sroa.14.3 = phi ptr [ %.sroa.14.1, %bb.dc ], [ %i.yx, %bb.dg ], [ %i.yx, %bb.dh ], [ %i.zd, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.14.1, %.lr.ph.i.i ] ; 2 uses
  %i.zf = zext i32 %.sroa.8.1 to i64
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.3, i64 %i.zf
  store i32 %i.yn, ptr %i.zg, align 4, !tbaa !60
  br label %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i

_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i:    ; preds = %.critedge.i.i.i.i, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit
  %.sroa.0.2 = phi i32 [ %.sroa.0.3, %.critedge.i.i.i.i ], [ %.sroa.0.5, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit ] ; 5 uses
  %.sroa.8.2 = phi i32 [ %.pre-phi, %.critedge.i.i.i.i ], [ %.sroa.8.1, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit ] ; 5 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.3, %.critedge.i.i.i.i ], [ %.sroa.14.1, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit ] ; 5 uses
  %i.zh = add i32 %i.yj, 1                        ; 2 uses
  %.not2.i.i.i.i.i.i = icmp eq i32 %i.zh, %i.xj
  br i1 %.not2.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i
  %i.zi = load ptr, ptr %i.ca, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.zi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i
  %i.zj = load i32, ptr %i.er, align 8, !tbaa !59
  %i.zk = load i32, ptr %i.es, align 4
  br label %bb.di

bb.di:                                            ; preds = %.backedge.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i
  %i.zl = phi i32 [ %i.zh, %.lr.ph.split.i.i.i.i.i.i ], [ %i.aah, %.backedge.i.i.i.i.i.i ] ; 6 uses
  %i.zm = mul i32 %i.zl, 506952113
  %i.zn = and i32 %i.zm, 1073741823
  %i.zo = urem i32 %i.zn, %i.zj                   ; 2 uses
  %i.zp = zext nneg i32 %i.zo to i64
  %i.zq = getelementptr inbounds nuw [12 x i8], ptr %i.zi, i64 %i.zp ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 4
  %i.zs = load i32, ptr %i.zr, align 4            ; 2 uses
  %i.zt = and i32 %i.zs, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.zt, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.di
  %i.zu = load i32, ptr %i.zq, align 4, !tbaa !60
  %i.zv = icmp eq i32 %i.zu, %i.zl
  br i1 %i.zv, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.dj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.zw = load i32, ptr %i.aac, align 4, !tbaa !60
  %i.zx = icmp eq i32 %i.zw, %i.zl
  br i1 %i.zx, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !61

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.dj
  %.01016.i20.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aaa, %bb.dj ], [ %i.zo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.zy, %bb.dj ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.zy = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.zz = add i32 %i.zy, %.01016.i20.i.i.i.i.i.i.i.i.i.i
  %i.aaa = and i32 %i.zz, %i.zk                   ; 2 uses
  %i.aab = zext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [12 x i8], ptr %i.zi, i64 %i.aab ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 4
  %i.aae = load i32, ptr %i.aad, align 4          ; 2 uses
  %i.aaf = and i32 %i.aae, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i118 = icmp eq i32 %i.aaf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i118, label %.backedge.i.i.i.i.i.i, label %bb.dj, !llvm.loop !61

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.zs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aae, %bb.dj ]
  %i.aag = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.aag, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i", label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, %bb.di
  %i.aah = add i32 %i.zl, 1                       ; 2 uses
  %.not.i.i.i.i.i.i119 = icmp eq i32 %i.aah, %i.xj
  br i1 %.not.i.i.i.i.i.i119, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %bb.di, !llvm.loop !451

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i
  %.not.i.i120 = icmp eq i32 %i.zl, %i.xj
  br i1 %.not.i.i120, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i, !llvm.loop !561

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit": ; preds = %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i", %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i, %.lr.ph.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i", %.backedge.i.i.i.i.i.i, %.lr.ph.i.i.i, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit"
  %.sroa.0.4 = phi i32 [ %.sroa.0.0467, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ], [ %.sroa.0.2, %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i ], [ %.sroa.0.2, %.backedge.i.i.i.i.i.i ], [ %.sroa.0.0467, %.lr.ph.i.i.i ], [ %.sroa.0.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.0.2, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0467, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i" ] ; 2 uses
  %.sroa.8.3 = phi i32 [ %.sroa.8.0468, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ], [ %.sroa.8.2, %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i ], [ %.sroa.8.2, %.backedge.i.i.i.i.i.i ], [ %.sroa.8.0468, %.lr.ph.i.i.i ], [ %.sroa.8.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.8.2, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.8.0468, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i" ] ; 2 uses
  %.sroa.14.4 = phi ptr [ %.sroa.14.0469, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ], [ %.sroa.14.2, %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i ], [ %.sroa.14.2, %.backedge.i.i.i.i.i.i ], [ %.sroa.14.0469, %.lr.ph.i.i.i ], [ %.sroa.14.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.14.2, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.14.0469, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i" ] ; 2 uses
  %i.aai = add i64 %.sroa.0313.0470, 1            ; 2 uses
  %.sroa.0313.0.extract.trunc = trunc i64 %i.aai to i32 ; 2 uses
  %.not432 = icmp eq i32 %.sroa.0313.0.extract.trunc, %.sroa.0311.0.extract.trunc
  br i1 %.not432, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INS0_10SmallTypesEE25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_zip_iter_t.202, align 8  ; 6 uses
  %3 = alloca %struct.hb_filter_iter_t.198, align 8 ; 7 uses
  %4 = alloca %struct.hb_zip_iter_t.202, align 8  ; 12 uses
  %5 = alloca %struct.hb_map_iter_t.269, align 8  ; 11 uses
  %6 = alloca %struct.hb_filter_iter_t.271, align 8 ; 4 uses
  %7 = alloca %struct.hb_zip_iter_t.275, align 8  ; 12 uses
  %8 = alloca %struct.hb_map_t, align 8           ; 12 uses
  %9 = alloca %struct.hb_map_iter_t.206, align 8  ; 10 uses
  %10 = alloca %struct.hb_filter_iter_t.198, align 8 ; 4 uses
  %11 = alloca %struct.hb_vector_t.287, align 8   ; 8 uses
  %12 = alloca %struct.hb_map_iter_t.206, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !33 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load i16, ptr %i.g, align 1, !tbaa !22   ; 2 uses
  %i.i = icmp eq i16 %i.h, 0
  %i.j = tail call i16 @llvm.bswap.i16(i16 %i.h)
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %.0.i.i33 = select i1 %i.i, ptr @_hb_NullPool, ptr %i.l, !prof !33 ; 2 uses
  %i.m = load i16, ptr %.0.i.i, align 1, !tbaa !22, !noalias !562
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m) ; 2 uses
  switch i16 %i.n, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !562, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !562, !srcloc !21
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.p = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !562
  %.not.i.i.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.d, !prof !223

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !562, !srcloc !21
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.r = load i16, ptr %i.q, align 1, !tbaa !22, !noalias !562
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.t = zext i16 %i.s to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !562
  %i.u = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.11.0.i = phi i32 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %i.v = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !562
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !562, !srcloc !21
  %.pre11.i.i.i.i.i = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !562
  %i.x = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.y = load i16, ptr %i.q, align 1, !tbaa !22, !noalias !562
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y) ; 2 uses
  br i1 %i.x, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !224

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !562, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.t, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.t, %bb.e ]
  %i.aa = phi i16 [ %i.w, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.z, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.z, %bb.e ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.q, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !22, !noalias !562
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = icmp ugt i16 %i.aa, %i.ad
  br i1 %i.ae, label %bb.f, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit", !prof !33

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.af = load i16, ptr %i.o, align 1, !tbaa !22, !noalias !562
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.11.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ah, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ai = zext i16 %i.n to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i33, i64 2
  %i.ak = load i16, ptr %.0.i.i33, align 1, !tbaa !22, !noalias !569
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i16 %i.al to i64
  store i32 %i.ai, ptr %7, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %.sroa.4142.0..sroa_idx, align 4
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.5143.0..sroa_idx, align 8
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.6144.0..sroa_idx, align 8
  %.sroa.7145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %.sroa.7145.0..sroa_idx, align 4
  %.sroa.8146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.sroa.11.2.i, ptr %.sroa.8146.0..sroa_idx, align 8
  %.sroa.9147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 0, ptr %.sroa.9147.0..sroa_idx, align 4
  %.sroa.10148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.aj, ptr %.sroa.10148.0..sroa_idx, align 8
  %.sroa.11149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sroa.2.8.insert.ext.i.i.i.i.i, ptr %.sroa.11149.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call fastcc void @"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_"(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr nonnull %i.am, ptr nonnull @_ZL8hb_first)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false)
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr @_ZL9hb_second, ptr %.sroa.4151.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %bb.g

bb.g:                                             ; preds = %"_ZNK4$_21clIRZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INS2_10SmallTypesEE25collect_variation_indicesEPNS1_38hb_collect_variation_indices_context_tEEUlRKNS3_10MarkRecordEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i", %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit"
  %i.ar = load i32, ptr %5, align 8, !tbaa !272
  switch i32 %i.ar, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkMarkPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit" [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.as = load i32, ptr %i.ao, align 8, !tbaa !60
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.av = load i16, ptr %i.au, align 1, !tbaa !22
  %i.aw = call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i32
  %i.ay = icmp ult i32 %i.as, %i.ax
  %i.az = load i32, ptr %i.ap, align 8
  %i.ba = icmp ne i32 %i.az, 0
  %or.cond.i.i = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond.i.i, label %bb.j, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkMarkPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit"

bb.j:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i
  %i.bb = load i32, ptr %5, align 8, !tbaa !272
  switch i32 %i.bb, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i" [
    i32 1, label %bb.k
    i32 2, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !317
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.be = load i32, ptr %i.ao, align 8, !tbaa !314
  %i.bf = load i16, ptr %i.bd, align 1, !tbaa !22
  %i.bg = call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bh = zext i16 %i.bg to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.be, %i.bh
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i", !prof !47

bb.l:                                             ; preds = %bb.k
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i"

bb.m:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i": ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.bi = load i32, ptr %i.ap, align 8, !tbaa !402
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bi, 0
  %i.bj = load ptr, ptr %i.aq, align 8
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.bj, !prof !33
  %i.bk = getelementptr i8, ptr %spec.select.i.i.i.i.i.i.i.i.i.i, i64 2
  %.val2.i.i = load i16, ptr %i.bk, align 1, !tbaa !22 ; 2 uses
  %i.bl = load i16, ptr %i.g, align 1, !tbaa !22  ; 2 uses
  %i.bm = icmp eq i16 %i.bl, 0
  %i.bn = call i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bo = zext i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  %.0.i.i.i.i.i.i.i = select i1 %i.bm, ptr @_hb_NullPool, ptr %i.bp, !prof !33
  %i.bq = icmp eq i16 %.val2.i.i, 0
  %i.br = call i16 @llvm.bswap.i16(i16 %.val2.i.i)
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 %i.bs
  %.0.i.i.i.i.i.i.i.i = select i1 %i.bq, ptr @_hb_NullPool, ptr %i.bt, !prof !33 ; 2 uses
  %i.bu = load i16, ptr %.0.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  %cond.i.i.i.i.i.i.i = icmp eq i16 %i.bu, 768
  br i1 %cond.i.i.i.i.i.i.i, label %bb.n, label %"_ZNK4$_21clIRZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INS2_10SmallTypesEE25collect_variation_indicesEPNS1_38hb_collect_variation_indices_context_tEEUlRKNS3_10MarkRecordEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i"

bb.n:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  call void @_ZNK2OT6Layout9GPOS_impl13AnchorFormat325collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i.i.i.i.i, ptr noundef %1)
  br label %"_ZNK4$_21clIRZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INS2_10SmallTypesEE25collect_variation_indicesEPNS1_38hb_collect_variation_indices_context_tEEUlRKNS3_10MarkRecordEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i"

"_ZNK4$_21clIRZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INS2_10SmallTypesEE25collect_variation_indicesEPNS1_38hb_collect_variation_indices_context_tEEUlRKNS3_10MarkRecordEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i": ; preds = %bb.n, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EdeEv.exit.i.i"
  %i.bv = call fastcc noundef nonnull align 8 dereferenceable(72) ptr @"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EERSB_EppEv"(ptr noundef nonnull align 8 dereferenceable(1) %5) ; 0 uses
  br label %bb.g, !llvm.loop !570

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkMarkPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit": ; preds = %bb.g, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store atomic i32 1, ptr %8 monotonic, align 8
  store atomic i8 1, ptr %i.bw monotonic, align 4
  store atomic ptr null, ptr %i.bx monotonic, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 1, ptr %i.by, align 8, !tbaa !152
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 18
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  store ptr null, ptr %i.ca, align 8, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bz, i8 0, i64 18, i1 false)
  %i.cb = load i16, ptr %i.a, align 1, !tbaa !22  ; 2 uses
  %i.cc = icmp eq i16 %i.cb, 0
  %i.cd = call i16 @llvm.bswap.i16(i16 %i.cb)
  %i.ce = zext i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %.0.i.i36 = select i1 %i.cc, ptr @_hb_NullPool, ptr %i.cf, !prof !33
  %i.cg = load i16, ptr %i.g, align 1, !tbaa !22  ; 2 uses
  %i.ch = icmp eq i16 %i.cg, 0
  %i.ci = call i16 @llvm.bswap.i16(i16 %i.cg)
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  %.0.i.i37 = select i1 %i.ch, ptr @_hb_NullPool, ptr %i.ck, !prof !33
  %i.cl = load ptr, ptr %i.am, align 8, !tbaa !159
  call void @_ZN2OT6Layout9GPOS_impl35Markclass_closure_and_remap_indexesERKNS0_6Common8CoverageERKNS1_9MarkArrayERK8hb_set_tP8hb_map_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i36, ptr noundef nonnull align 1 dereferenceable(6) %.0.i.i37, ptr noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull %8)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 1, !tbaa !22 ; 2 uses
  %i.co = icmp eq i16 %i.cn, 0
  %i.cp = call i16 @llvm.bswap.i16(i16 %i.cn)
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  %.0.i.i38 = select i1 %i.co, ptr @_hb_NullPool, ptr %i.cr, !prof !33
  %i.cs = load i16, ptr %.0.i.i38, align 1, !tbaa !22
  %i.ct = call noundef i16 @llvm.bswap.i16(i16 %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cv = load i16, ptr %i.cu, align 1, !tbaa !22 ; 2 uses
  %i.cw = icmp eq i16 %i.cv, 0
  %i.cx = call i16 @llvm.bswap.i16(i16 %i.cv)
  %i.cy = zext i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy
  %.0.i.i39 = select i1 %i.cw, ptr @_hb_NullPool, ptr %i.cz, !prof !33 ; 6 uses
  %.sroa.2.0.insert.ext.i = zext i16 %i.ct to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %i.da = load i16, ptr %.0.i.i39, align 1, !tbaa !22, !noalias !571
  %i.db = call noundef i16 @llvm.bswap.i16(i16 %i.da) ; 2 uses
  switch i16 %i.db, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit" [
    i16 1, label %bb.o
    i16 2, label %bb.p
  ]

bb.o:                                             ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkMarkPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !571, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"

bb.p:                                             ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkMarkPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !571, !srcloc !21
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 2 ; 4 uses
  %i.dd = load i16, ptr %i.dc, align 1, !tbaa !22, !noalias !571
  %.not.i.i.i.i.i42 = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i.i.i.i42, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i59, label %bb.q, !prof !223

bb.q:                                             ; preds = %bb.p
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !571, !srcloc !21
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 4 ; 3 uses
  %i.df = load i16, ptr %i.de, align 1, !tbaa !22, !noalias !571
  %i.dg = call noundef i16 @llvm.bswap.i16(i16 %i.df)
  %i.dh = zext i16 %i.dg to i32                   ; 3 uses
  %.pre8.i.i.i.i.i43 = load i16, ptr %i.dc, align 1, !tbaa !22, !noalias !571
  %i.di = icmp eq i16 %.pre8.i.i.i.i.i43, 0
  br i1 %i.di, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i59, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i44, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i59: ; preds = %bb.q, %bb.p
  %.sroa.11.0.i60 = phi i32 [ %i.dh, %bb.q ], [ 0, %bb.p ]
  %i.dj = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !571
  %i.dk = call noundef i16 @llvm.bswap.i16(i16 %i.dj)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i44: ; preds = %bb.q
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !571, !srcloc !21
  %.pre11.i.i.i.i.i45 = load i16, ptr %i.dc, align 1, !tbaa !22, !noalias !571
  %i.dl = icmp eq i16 %.pre11.i.i.i.i.i45, 0
  %i.dm = load i16, ptr %i.de, align 1, !tbaa !22, !noalias !571
  %i.dn = call noundef i16 @llvm.bswap.i16(i16 %i.dm) ; 2 uses
  br i1 %i.dl, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46, label %bb.r, !prof !224

bb.r:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i44
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !571, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46: ; preds = %bb.r, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i44, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i59
  %.sroa.11.1.i47 = phi i32 [ %.sroa.11.0.i60, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i59 ], [ %i.dh, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i44 ], [ %i.dh, %bb.r ]
  %i.do = phi i16 [ %i.dk, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i59 ], [ %i.dn, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i44 ], [ %i.dn, %bb.r ]
  %.0.i6.i.i.i.i.i48 = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i59 ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i44 ], [ %i.de, %bb.r ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i48, i64 2
  %i.dq = load i16, ptr %i.dp, align 1, !tbaa !22, !noalias !571
  %i.dr = call noundef i16 @llvm.bswap.i16(i16 %i.dq)
  %i.ds = icmp ugt i16 %i.do, %i.dr
  br i1 %i.ds, label %bb.s, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit", !prof !33

bb.s:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46
  %i.dt = load i16, ptr %i.dc, align 1, !tbaa !22, !noalias !571
  %i.du = call noundef i16 @llvm.bswap.i16(i16 %i.dt)
  %i.dv = zext i16 %i.du to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit": ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkMarkPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit", %bb.o, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46, %bb.s
  %.sroa.11.2.i49 = phi i32 [ 0, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkMarkPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit" ], [ 0, %bb.o ], [ 0, %bb.s ], [ %.sroa.11.1.i47, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46 ]
  %.sroa.52.0.i50 = phi ptr [ null, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkMarkPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit" ], [ %.0.i.i39, %bb.o ], [ %.0.i.i39, %bb.s ], [ %.0.i.i39, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46 ]
  %.sroa.7.0.i51 = phi i32 [ 0, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSL_0EE10hb_apply_tIZNKS9_20MarkMarkPosFormat1_2INS4_10SmallTypesEE25collect_variation_indicesEPNS3_38hb_collect_variation_indices_context_tEEUlRSB_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit" ], [ 0, %bb.o ], [ %i.dv, %bb.s ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i46 ]
  %i.dw = zext i16 %i.db to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !578
  store i32 %i.dw, ptr %4, align 8, !noalias !578
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa.4120.0..sroa_idx, align 4, !noalias !578
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.52.0.i50, ptr %.sroa.5121.0..sroa_idx, align 8, !noalias !578
  %.sroa.6122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.7.0.i51, ptr %.sroa.6122.0..sroa_idx, align 8, !noalias !578
  %.sroa.7123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %.sroa.7123.0..sroa_idx, align 4, !noalias !578
  %.sroa.8124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.sroa.11.2.i49, ptr %.sroa.8124.0..sroa_idx, align 8, !noalias !578
  %.sroa.9125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %.sroa.9125.0..sroa_idx, align 4, !noalias !578
  %.sroa.10126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %.sroa.2.0.insert.shift.i, ptr %.sroa.10126.0..sroa_idx, align 8, !noalias !578
  %.sroa.11127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 1, ptr %.sroa.11127.0..sroa_idx, align 8, !noalias !578
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EEC2ERKS8_SC_SF_"(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull readonly align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 1 dereferenceable(1) @_ZL8hb_first)
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull readonly align 8 dereferenceable(64) %10, i64 64, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr @_ZL9hb_second, ptr %i.dx, align 8, !tbaa !277, !alias.scope !581
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull readonly align 8 dereferenceable(72) %9, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10, !noalias !586
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10, !noalias !593
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  call void @_ZNK2OT6Layout6Common8Coverage6iter_t7__end__Ev(ptr dead_on_unwind nonnull writable sret(%"struct.OT::Layout::Common::Coverage::iter_t") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %9), !noalias !593
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !276, !noalias !604
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !303, !noalias !604
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 %i.dz to i64 ; 2 uses
  %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i, 32
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i, ptr %i.ec, align 8, !alias.scope !605, !noalias !593
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.eb, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !605, !noalias !593
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !305, !noalias !593
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 56
  %.val.i.i.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !309, !noalias !593
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EEC2ERKS8_SC_SF_"(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(44) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull align 1 dereferenceable(1) %.val.i.i.i.i.i), !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10, !noalias !593
  %.sroa.095.0.copyload = load i32, ptr %3, align 8 ; 2 uses
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.497.0.copyload = load i32, ptr %.sroa.497.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.6100.0.copyload = load i32, ptr %.sroa.6100.0..sroa_idx, align 8
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.7102.0.copyload = load i32, ptr %.sroa.7102.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10, !noalias !586
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.en = load i32, ptr @_hb_NullPool, align 16
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit"
  %i.eq = load i32, ptr %12, align 8, !tbaa !272
  %.not.i.i.i.i = icmp eq i32 %i.eq, %.sroa.095.0.copyload
  br i1 %.not.i.i.i.i, label %bb.u, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit", !prof !47

bb.u:                                             ; preds = %bb.t
  switch i32 %.sroa.095.0.copyload, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread" [
    i32 1, label %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i
    i32 2, label %.split.i.i.i
  ]

.split.i.i.i:                                     ; preds = %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.er = load i32, ptr %i.eg, align 8, !tbaa !311
  %.not.i.i.i.i.i63 = icmp ne i32 %i.er, %.sroa.497.0.copyload
  %i.es = load i32, ptr %i.eh, align 8
  %i.et = icmp ne i32 %i.es, %.sroa.6100.0.copyload
  %i.eu = select i1 %.not.i.i.i.i.i63, i1 true, i1 %i.et
  br i1 %i.eu, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit", label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"

_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i: ; preds = %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ev = load i32, ptr %i.eg, align 8, !tbaa !314
  %.not.i.i.i = icmp eq i32 %i.ev, %.sroa.497.0.copyload
  br i1 %.not.i.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread", label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit": ; preds = %bb.t, %.split.i.i.i, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i
  %i.ew = load i32, ptr %i.ei, align 8, !tbaa !274
  %.not = icmp eq i32 %i.ew, %.sroa.7102.0.copyload
  br i1 %.not, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread", label %bb.aa

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread": ; preds = %bb.u, %.split.i.i.i, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  %i.ex = load i16, ptr %i.cm, align 1, !tbaa !22 ; 2 uses
  %i.ey = icmp eq i16 %i.ex, 0
  %i.ez = call i16 @llvm.bswap.i16(i16 %i.ex)
  %i.fa = zext i16 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 %i.fa
  %.0.i.i64 = select i1 %i.ey, ptr @_hb_NullPool, ptr %i.fb, !prof !33 ; 2 uses
  %i.fc = load ptr, ptr %i.ep, align 8, !tbaa !441 ; 2 uses
  %i.fd = load i32, ptr %i.eo, align 4, !tbaa !443 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.fd to i64
  %i.fe = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i, 2
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fe
  %.not9.i = icmp eq i32 %i.fd, 0
  br i1 %.not9.i, label %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i64, i64 2
  br label %bb.v

bb.v:                                             ; preds = %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i, %.lr.ph.i
  %.010.i = phi ptr [ %i.fc, %.lr.ph.i ], [ %i.fq, %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i ] ; 2 uses
  %i.fh = load i32, ptr %.010.i, align 4, !tbaa !60
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 1, !tbaa !22 ; 2 uses
  %i.fl = icmp eq i16 %i.fk, 0
  %i.fm = call i16 @llvm.bswap.i16(i16 %i.fk)
  %i.fn = zext i16 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i64, i64 %i.fn
  %.0.i.i.i = select i1 %i.fl, ptr @_hb_NullPool, ptr %i.fo, !prof !33 ; 2 uses
  %i.fp = load i16, ptr %.0.i.i.i, align 1, !tbaa !22
  %cond.i.i = icmp eq i16 %i.fp, 768
  br i1 %cond.i.i, label %bb.w, label %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i

bb.w:                                             ; preds = %bb.v
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  call void @_ZNK2OT6Layout9GPOS_impl13AnchorFormat325collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i, ptr noundef %1)
  br label %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i

_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i: ; preds = %bb.w, %bb.v
  %i.fq = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.fq, %i.ff
  br i1 %.not.i, label %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, label %bb.v

_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit: ; preds = %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit.thread"
  %i.fr = load i32, ptr %11, align 8, !tbaa !444
  %i.fs = add i32 %i.fr, -1
  %spec.select.i.i.i = icmp ult i32 %i.fs, -2
  br i1 %spec.select.i.i.i, label %bb.x, label %_ZN11hb_vector_tIjLb1EED2Ev.exit

bb.x:                                             ; preds = %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit
  store i32 0, ptr %i.eo, align 4, !tbaa !443
  %i.ft = load ptr, ptr %i.ep, align 8, !tbaa !441
  call void @hb_free(ptr noundef %i.ft) #10
  br label %_ZN11hb_vector_tIjLb1EED2Ev.exit

_ZN11hb_vector_tIjLb1EED2Ev.exit:                 ; preds = %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  store atomic i32 -57005, ptr %8 monotonic, align 8
  %i.fu = load atomic ptr, ptr %i.bx acquire, align 8 ; 5 uses
  %.not.i.i.i65 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i65, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN11hb_vector_tIjLb1EED2Ev.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 8 dereferenceable(56) %i.fu)
  %i.fw = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.fu) #10 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.fu) #10
  store atomic ptr null, ptr %i.bx monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i: ; preds = %bb.y, %_ZN11hb_vector_tIjLb1EED2Ev.exit
  %i.fx = load ptr, ptr %i.ca, align 8, !tbaa !56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i, label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit, label %bb.z, !prof !33

bb.z:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i
  call void @hb_free(ptr noundef nonnull %i.fx) #10
  br label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit

_ZN12hb_hashmap_tIjjLb1EED2Ev.exit:               ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  ret void

bb.aa:                                            ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSH_0EEneERKSN_.exit"
  %i.fy = load i32, ptr %12, align 8, !tbaa !272
  switch i32 %i.fy, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit" [
    i32 1, label %bb.ab
    i32 2, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.fz = load ptr, ptr %i.ej, align 8, !tbaa !317
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gb = load i32, ptr %i.eg, align 8, !tbaa !314
  %i.gc = load i16, ptr %i.ga, align 1, !tbaa !22
  %i.gd = call noundef i16 @llvm.bswap.i16(i16 %i.gc)
  %i.ge = zext i16 %i.gd to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.gb, %i.ge
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit", !prof !47

bb.ac:                                            ; preds = %bb.ab
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEdeEv.exit"
end_hunk_5
begin_hunk_6_@_ZNK2OT6Layout9GSUB_impl19SubstLookupSubTable8dispatchINS_23hb_intersects_context_tEJEEENT_8return_tEPS5_jDpOT0_:bb.a

bb.s:                                             ; preds = %bb.q
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !883
  %i.ax = tail call noundef zeroext i1 @_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(20) %.tr, ptr noundef %i.aw)
  br label %_ZNK2OT6Layout9GSUB_impl13MultipleSubst8dispatchINS_23hb_intersects_context_tEJEEENT_8return_tEPS5_DpOT0_.exit

bb.t:                                             ; preds = %bb.q
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !883
  %i.ba = tail call noundef zeroext i1 @_ZNK2OT19ChainContextFormat310intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(20) %.tr, ptr noundef %i.az)
  br label %_ZNK2OT6Layout9GSUB_impl13MultipleSubst8dispatchINS_23hb_intersects_context_tEJEEENT_8return_tEPS5_DpOT0_.exit

bb.u:                                             ; preds = %tailrecurse
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.bb = load i16, ptr %.tr, align 1, !tbaa !22
  %cond.i27 = icmp eq i16 %i.bb, 256
  br i1 %cond.i27, label %_ZNK2OT16ExtensionFormat1INS_6Layout9GSUB_impl14ExtensionSubstEE8dispatchINS_23hb_intersects_context_tEJEEENT_8return_tEPS7_DpOT0_.exit.i, label %_ZNK2OT6Layout9GSUB_impl13MultipleSubst8dispatchINS_23hb_intersects_context_tEJEEENT_8return_tEPS5_DpOT0_.exit

_ZNK2OT16ExtensionFormat1INS_6Layout9GSUB_impl14ExtensionSubstEE8dispatchINS_23hb_intersects_context_tEJEEENT_8return_tEPS7_DpOT0_.exit.i: ; preds = %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !inline_history !887, !srcloc !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.bd = load i32, ptr %i.bc, align 1, !tbaa !34 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = tail call i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr, i64 %i.bg
  %.0.i.i.i.i = select i1 %i.be, ptr @_hb_NullPool, ptr %i.bh, !prof !33
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.bj = load i16, ptr %i.bi, align 1, !tbaa !22
  %i.bk = tail call noundef i16 @llvm.bswap.i16(i16 %i.bj)
  %i.bl = zext i16 %i.bk to i32
  br label %tailrecurse

bb.v:                                             ; preds = %tailrecurse
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.bm = load i16, ptr %.tr, align 1, !tbaa !22
  %cond.i17 = icmp eq i16 %i.bm, 256
  br i1 %cond.i17, label %bb.w, label %_ZNK2OT6Layout9GSUB_impl13MultipleSubst8dispatchINS_23hb_intersects_context_tEJEEENT_8return_tEPS5_DpOT0_.exit

bb.w:                                             ; preds = %bb.v
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !883
  %i.bp = tail call noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl30ReverseChainSingleSubstFormat110intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(16) %.tr, ptr noundef %i.bo)
  br label %_ZNK2OT6Layout9GSUB_impl13MultipleSubst8dispatchINS_23hb_intersects_context_tEJEEENT_8return_tEPS5_DpOT0_.exit

_ZNK2OT6Layout9GSUB_impl13MultipleSubst8dispatchINS_23hb_intersects_context_tEJEEENT_8return_tEPS5_DpOT0_.exit: ; preds = %bb.u, %tailrecurse, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.q ], [ %i.a, %bb.b ], [ %i.bp, %bb.w ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.v ], [ false, %bb.c ], [ %i.n, %bb.f ], [ %i.m, %bb.e ], [ false, %bb.g ], [ %i.aa, %bb.j ], [ %i.z, %bb.i ], [ %i.ae, %bb.l ], [ %i.ap, %bb.p ], [ %i.aj, %bb.n ], [ %i.am, %bb.o ], [ %i.ba, %bb.t ], [ %i.au, %bb.r ], [ %i.ax, %bb.s ], [ false, %tailrecurse ], [ false, %bb.u ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl11SingleSubst8dispatchINS_23hb_intersects_context_tEJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !22
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  switch i16 %i.b, label %_ZN2OT23hb_intersects_context_t8dispatchINS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEbRKT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !883  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 1, !tbaa !22   ; 2 uses
  %i.g = icmp eq i16 %i.f, 0
  %i.h = tail call i16 @llvm.bswap.i16(i16 %i.f)
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %.0.i.i.i.i = select i1 %i.g, ptr @_hb_NullPool, ptr %i.j, !prof !33 ; 3 uses
  %i.k = load i16, ptr %.0.i.i.i.i, align 1, !tbaa !22
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  switch i16 %i.l, label %_ZN2OT23hb_intersects_context_t8dispatchINS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEbRKT_.exit [
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.m = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, ptr noundef %i.d)
  br label %_ZN2OT23hb_intersects_context_t8dispatchINS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEbRKT_.exit

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.n = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, ptr noundef %i.d)
  br label %_ZN2OT23hb_intersects_context_t8dispatchINS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEbRKT_.exit

bb.e:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !883  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.r = load i16, ptr %i.q, align 1, !tbaa !22   ; 2 uses
  %i.s = icmp eq i16 %i.r, 0
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.r)
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %.0.i.i.i.i5 = select i1 %i.s, ptr @_hb_NullPool, ptr %i.v, !prof !33 ; 3 uses
  %i.w = load i16, ptr %.0.i.i.i.i5, align 1, !tbaa !22
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  switch i16 %i.x, label %_ZN2OT23hb_intersects_context_t8dispatchINS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEbRKT_.exit [
    i16 1, label %bb.f
    i16 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.y = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i5, ptr noundef %i.p)
  br label %_ZN2OT23hb_intersects_context_t8dispatchINS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEbRKT_.exit

bb.g:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.z = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i5, ptr noundef %i.p)
  br label %_ZN2OT23hb_intersects_context_t8dispatchINS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEbRKT_.exit

_ZN2OT23hb_intersects_context_t8dispatchINS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEbRKT_.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.n, %bb.d ], [ %i.m, %bb.c ], [ %i.z, %bb.g ], [ %i.y, %bb.f ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl22LigatureSubstFormat1_2INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !33 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i16, ptr %.0.i.i, align 1, !tbaa !22, !noalias !888 ; 2 uses
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h) ; 4 uses
  switch i16 %i.i, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !888, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !888, !srcloc !21
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.k = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !888
  %.not.i.i.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.d, !prof !223

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !888, !srcloc !21
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.m = load i16, ptr %i.l, align 1, !tbaa !22, !noalias !888
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = zext i16 %i.n to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !888
  %i.p = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.p, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.11.0.i = phi i32 [ %i.o, %bb.d ], [ 0, %bb.c ]
  %i.q = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !888
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !888, !srcloc !21
  %.pre11.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !888
  %i.s = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.t = load i16, ptr %i.l, align 1, !tbaa !22, !noalias !888
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t) ; 2 uses
  br i1 %i.s, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !224

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !888, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.o, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.o, %bb.e ]
  %i.v = phi i16 [ %i.r, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.u, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.u, %bb.e ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.l, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.x = load i16, ptr %i.w, align 1, !tbaa !22, !noalias !888
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = icmp ugt i16 %i.v, %i.y
  br i1 %i.z, label %bb.f, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit", !prof !33

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.aa = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !888
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.11.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ] ; 4 uses
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ac, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ae = load i16, ptr %i.g, align 1, !tbaa !22, !noalias !895
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %.sroa.37.sroa.0.0.extract.trunc = zext i16 %i.af to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.52.0.i, i64 2 ; 11 uses
  %i.ah = icmp eq i16 %i.h, 256                   ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.52.0.i, i64 4 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sink.in.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"
  %.sroa.37.sroa.0.0 = phi i32 [ %.sroa.37.sroa.0.0.extract.trunc, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %i.dl, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 4 uses
  %.sroa.34.0 = phi ptr [ %i.ad, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %i.dm, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 2 uses
  %.sroa.27.0 = phi i32 [ %.sroa.11.2.i, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 6 uses
  %.sroa.22.0 = phi i32 [ 0, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 6 uses
  %.sroa.13.0 = phi i32 [ %.sroa.7.0.i, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 11 uses
  switch i16 %i.i, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EEZNKSA_22LigatureSubstFormat1_2ISC_E10intersectsEPSL_EUlRSH_E_LSV_0ELSQ_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS17_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS17_Efp_EEEOS17_OS1C_.exit" [
    i16 1, label %bb.h
    i16 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.an = load i16, ptr %i.ag, align 1, !tbaa !22
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i32
  %i.aq = icmp uge i32 %.sroa.13.0, %i.ap
  %.not.i.i.i = icmp eq i32 %.sroa.37.sroa.0.0, 0
  %or.cond = select i1 %i.aq, i1 true, i1 %.not.i.i.i
  br i1 %or.cond, label %.split.preheader.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10
  br i1 %i.ah, label %bb.k, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ar = load i16, ptr %i.ag, align 1, !tbaa !22
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.13.0, %i.at
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i, !prof !47

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.au = zext nneg i32 %.sroa.13.0 to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.au
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %bb.l ], [ @_hb_NullPool, %bb.k ]
  %i.aw = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = zext i16 %i.ax to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i: ; preds = %bb.j, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ay, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i ], [ %.sroa.27.0, %bb.j ] ; 3 uses
  %i.az = lshr i32 %.0.i.i.i.i.i.i.i.i, 9         ; 3 uses
  %i.ba = load atomic i32, ptr %i.aj monotonic, align 4 ; 2 uses
  %i.bb = load i32, ptr %i.ak, align 4, !tbaa !46 ; 3 uses
  %i.bc = icmp ult i32 %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !42 ; 3 uses
  br i1 %i.bc, label %bb.m, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i
  %i.be = zext i32 %i.ba to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !48
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bg, %i.az
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.m, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.bb, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bh = add nsw i32 %i.bb, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.q, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ %i.bh, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bi = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = lshr i32 %i.bi, 1                       ; 4 uses
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !48 ; 2 uses
  %i.bo = icmp slt i32 %i.az, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = add nsw i32 %i.bj, -1
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.az, %i.bn
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = add nuw nsw i32 %i.bj, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.p ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %i.bp, %bb.n ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !50

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  store atomic i32 %i.bj, ptr %i.aj monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.m
  %i.br = phi i64 [ %i.bk, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.be, %bb.m ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i.i.i6.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i6.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i", label %bb.r

bb.r:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !53
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = lshr i32 %.0.i.i.i.i.i.i.i.i, 6
  %i.bz = and i32 %i.by, 7
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !54
  %i.cd = and i32 %.0.i.i.i.i.i.i.i.i, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 %i.cc, %i.ce
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = and i8 %i.cg, 1
  br label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"

"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i": ; preds = %bb.q, %bb.r, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i5.i.i.i = phi i8 [ %i.ch, %bb.r ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.q ]
  %i.ci = load i8, ptr %i.am, align 8, !tbaa !36, !range !38, !noundef !39
  %.not8.i.i.i = icmp eq i8 %i.ci, %.0.i.i.i.i.i.i.i5.i.i.i
  br i1 %.not8.i.i.i, label %bb.s, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSR_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISR_Efp_EEEOSR_OSX_.exit"

bb.s:                                             ; preds = %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"
  switch i16 %i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit [
    i16 1, label %bb.t
    i16 2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.cj = add nuw nsw i32 %.sroa.13.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit

bb.u:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ck = load i16, ptr %i.ag, align 1, !tbaa !22
  %i.cl = tail call noundef i16 @llvm.bswap.i16(i16 %i.ck)
  %i.cm = zext i16 %i.cl to i32
  %.not.i.i.i.i.i11 = icmp ult i32 %.sroa.13.0, %i.cm
  br i1 %.not.i.i.i.i.i11, label %bb.v, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !47

bb.v:                                             ; preds = %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.cn = zext nneg i32 %.sroa.13.0 to i64
  %i.co = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.cn
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi ptr [ %i.co, %bb.v ], [ @_hb_Null_OT_RangeRecord, %bb.u ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.cq = load i16, ptr %i.cp, align 1, !tbaa !22
  %i.cr = tail call noundef i16 @llvm.bswap.i16(i16 %i.cq)
  %i.cs = zext i16 %i.cr to i32
  %.not.i.i.i.i12 = icmp ult i32 %.sroa.27.0, %i.cs
  br i1 %.not.i.i.i.i12, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.ct = add nuw nsw i32 %.sroa.13.0, 1          ; 4 uses
  %i.cu = load i16, ptr %i.ag, align 1, !tbaa !22
  %i.cv = tail call noundef i16 @llvm.bswap.i16(i16 %i.cu)
  %i.cw = zext i16 %i.cv to i32                   ; 2 uses
  %i.cx = icmp ult i32 %i.ct, %i.cw
  br i1 %i.cx, label %bb.x, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.cy = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.cy
end_hunk_6
begin_hunk_7_@_ZNK2OT6Layout9GSUB_impl22LigatureSubstFormat1_2INS0_10SmallTypesEE10intersectsEPK8hb_set_t:bb.a
  %i.ij = zext nneg i32 %.sroa.14.380.i.i to i64
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ij
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ik, %bb.aq ], [ @_hb_NullPool, %bb.ap ]
  %i.il = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  %i.im = tail call noundef i16 @llvm.bswap.i16(i16 %i.il)
  %i.in = zext i16 %i.im to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ao
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.in, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.28.274.i.i, %bb.ao ] ; 3 uses
  %i.io = lshr i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 9 ; 3 uses
  %i.ip = load atomic i32, ptr %i.aj monotonic, align 4 ; 2 uses
  %i.iq = load i32, ptr %i.ak, align 4, !tbaa !46 ; 3 uses
  %i.ir = icmp ult i32 %i.ip, %i.iq
  %i.is = load ptr, ptr %i.al, align 8, !tbaa !42 ; 3 uses
  br i1 %i.ir, label %bb.ar, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !47

bb.ar:                                            ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i
  %i.it = zext i32 %i.ip to i64                   ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !48
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.iv, %i.io
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %bb.ar, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.iq, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iw = add nsw i32 %i.iq, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.av, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av ], [ %i.iw, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ix = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iy = lshr i32 %i.ix, 1                       ; 4 uses
  %i.iz = zext nneg i32 %i.iy to i64              ; 2 uses
  %i.ja = shl nuw nsw i64 %i.iz, 3
  %i.jb = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !48 ; 2 uses
  %i.jd = icmp slt i32 %i.io, %i.jc
  br i1 %i.jd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.je = add nsw i32 %i.iy, -1
  br label %bb.av

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.io, %i.jc
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jf = add nuw nsw i32 %i.iy, 1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jf, %bb.au ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.as ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.au ], [ %i.je, %bb.as ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !50

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  store atomic i32 %i.iy, ptr %i.aj monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ar
  %i.jg = phi i64 [ %i.iz, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.it, %bb.ar ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i.i.i3.i.i.i.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i3.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !53
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = lshr i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.jo = and i32 %i.jn, 7
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jp
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !54
  %i.js = and i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 63
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = lshr i64 %i.jr, %i.jt
  %i.jv = trunc i64 %i.ju to i8
  %i.jw = and i8 %i.jv, 1
  br label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i"

"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i": ; preds = %bb.av, %bb.aw, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i2.i.i.i.i.i.i.i.i = phi i8 [ %i.jw, %bb.aw ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.av ]
  %i.jx = load i8, ptr %i.am, align 8, !tbaa !36, !range !38, !noundef !39
  %.not5.i.i.i.i.i.i.i.i = icmp eq i8 %i.jx, %.0.i.i.i.i.i.i.i2.i.i.i.i.i.i.i.i
  br i1 %.not5.i.i.i.i.i.i.i.i, label %.loopexit.i.i.split, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EEZNKSA_22LigatureSubstFormat1_2ISC_E10intersectsEPSL_EUlRSH_E_LSV_0ELSQ_0EEbEppEv.exit.i.i", !llvm.loop !899

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EEZNKSA_22LigatureSubstFormat1_2ISC_E10intersectsEPSL_EUlRSH_E_LSV_0ELSQ_0EEbEppEv.exit.i.i": ; preds = %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i", %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i5.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10
  %i.jy = load i16, ptr %i.ag, align 1, !tbaa !22
  %i.jz = tail call noundef i16 @llvm.bswap.i16(i16 %i.jy)
  %i.ka = zext i16 %i.jz to i32
  %i.kb = icmp ult i32 %.sroa.14.380.i.i, %i.ka
  %i.kc = icmp ne i32 %.sroa.36.283.i.i, 0
  %or.cond.i.i = select i1 %i.kb, i1 %i.kc, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EEZNKSA_22LigatureSubstFormat1_2ISC_E10intersectsEPSL_EUlRSH_E_LSV_0ELSQ_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS17_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS17_Efp_EEEOS17_OS1C_.exit", !llvm.loop !900

"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EEZNKSA_22LigatureSubstFormat1_2ISC_E10intersectsEPSL_EUlRSH_E_LSV_0ELSQ_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS17_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS17_Efp_EEEOS17_OS1C_.exit": ; preds = %bb.g, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EEZNKSA_22LigatureSubstFormat1_2ISC_E10intersectsEPSL_EUlRSH_E_LSV_0ELSQ_0EEbEppEv.exit.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.us.i.i.i.i, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSR_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISR_Efp_EEEOSR_OSX_.exit", %.split.preheader.i.i
  %i.kd = phi i1 [ false, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSR_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISR_Efp_EEEOSR_OSX_.exit" ], [ true, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i.i ], [ false, %.split.preheader.i.i ], [ false, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EEZNKSA_22LigatureSubstFormat1_2ISC_E10intersectsEPSL_EUlRSH_E_LSV_0ELSQ_0EEbEppEv.exit.i.i" ], [ true, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.us.i.i.i.i ], [ false, %bb.g ]
  ret i1 %i.kd
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT16ContextFormat1_4INS_6Layout10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_map_iter_t.676, align 8  ; 15 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %"struct.OT::ContextClosureLookupContext", align 8 ; 4 uses
  %4 = alloca %struct.hb_filter_iter_t.682, align 8 ; 4 uses
  %5 = alloca %struct.hb_zip_iter_t.686, align 8  ; 12 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) @__const._ZNK2OT16ContextFormat1_4INS_6Layout10SmallTypesEE10intersectsEPK8hb_set_t.lookup_context, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 1, !tbaa !22   ; 2 uses
  %i.d = icmp eq i16 %i.c, 0
  %i.e = tail call i16 @llvm.bswap.i16(i16 %i.c)
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %.0.i.i = select i1 %i.d, ptr @_hb_NullPool, ptr %i.g, !prof !33 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !22, !noalias !901
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i) ; 2 uses
  switch i16 %i.j, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_7RuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !901, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_7RuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !901, !srcloc !21
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.l = load i16, ptr %i.k, align 1, !tbaa !22, !noalias !901
  %.not.i.i.i.i.i = icmp eq i16 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.d, !prof !223

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !901, !srcloc !21
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.n = load i16, ptr %i.m, align 1, !tbaa !22, !noalias !901
  %i.o = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = zext i16 %i.o to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.k, align 1, !tbaa !22, !noalias !901
  %i.q = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.11.0.i = phi i32 [ %i.p, %bb.d ], [ 0, %bb.c ]
  %i.r = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !901
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !901, !srcloc !21
  %.pre11.i.i.i.i.i = load i16, ptr %i.k, align 1, !tbaa !22, !noalias !901
  %i.t = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.u = load i16, ptr %i.m, align 1, !tbaa !22, !noalias !901
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u) ; 2 uses
  br i1 %i.t, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !224

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !901, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.p, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.p, %bb.e ]
  %i.w = phi i16 [ %i.s, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.v, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.v, %bb.e ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.m, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.y = load i16, ptr %i.x, align 1, !tbaa !22, !noalias !901
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = icmp ugt i16 %i.w, %i.z
  br i1 %i.aa, label %bb.f, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_7RuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit", !prof !33

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.ab = load i16, ptr %i.k, align 1, !tbaa !22, !noalias !901
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = zext i16 %i.ac to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_7RuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_7RuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.11.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ad, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ae = zext i16 %i.j to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ag = load i16, ptr %i.h, align 1, !tbaa !22, !noalias !908
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag)
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i16 %i.ah to i64
  store i32 %i.ae, ptr %5, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa.427.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.sroa.11.2.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.af, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %.sroa.2.8.insert.ext.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx, align 8
  call fastcc void @"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_7RuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSW_"(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %1, ptr nonnull @_ZL8hb_first)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @_ZL9hb_second, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @_ZL6hb_add, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  store ptr %0, ptr %.sroa.637.0..sroa_idx, align 8
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  store ptr %i.a, ptr %.sroa.738.0..sroa_idx, align 8
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  store ptr %3, ptr %.sroa.839.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.loopexit6.i.i, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_7RuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit"
  %i.am = load i32, ptr %2, align 8, !tbaa !272
  switch i32 %i.am, label %"_ZorI13hb_map_iter_tIS0_IS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EEZNKS11_10intersectsEPSK_EUlRKSC_E_LSU_0ELSP_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1F_6item_tEEE5valueEvE4typeELSP_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1F_Efp_EEEOS1F_OS1K_.exit" [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.an = load i32, ptr %i.aj, align 8, !tbaa !60
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !149
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !22
  %i.ar = call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.as = zext i16 %i.ar to i32
  %i.at = icmp ult i32 %i.an, %i.as
  %i.au = load i32, ptr %i.ak, align 8
  %i.av = icmp ne i32 %i.au, 0
  %or.cond.i.i = select i1 %i.at, i1 %i.av, i1 false
  br i1 %or.cond.i.i, label %bb.j, label %"_ZorI13hb_map_iter_tIS0_IS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EEZNKS11_10intersectsEPSK_EUlRKSC_E_LSU_0ELSP_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1F_6item_tEEE5valueEvE4typeELSP_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1F_Efp_EEEOS1F_OS1K_.exit"

bb.j:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = load i32, ptr %2, align 8, !tbaa !272
  switch i32 %i.aw, label %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i.i.i" [
    i32 1, label %bb.k
    i32 2, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ax = load ptr, ptr %i.ai, align 8, !tbaa !317
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = load i32, ptr %i.aj, align 8, !tbaa !314
  %i.ba = load i16, ptr %i.ay, align 1, !tbaa !22
  %i.bb = call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bc = zext i16 %i.bb to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.az, %i.bc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i.i.i", !prof !47

bb.l:                                             ; preds = %bb.k
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i.i.i"

bb.m:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i.i.i"

"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i.i.i": ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.bd = load i32, ptr %i.ak, align 8, !tbaa !909
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bd, 0
  %i.be = load ptr, ptr %i.al, align 8
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.be, !prof !33
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.637.0..sroa_idx, align 8, !tbaa !912
  %.val1.i.i.i.i.i.i = load i16, ptr %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22 ; 2 uses
  %i.bf = icmp eq i16 %.val1.i.i.i.i.i.i, 0
  %i.bg = call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i)
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.bh
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bf, ptr @_hb_NullPool, ptr %i.bi, !prof !33 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.738.0..sroa_idx, align 8, !tbaa !914
  %.val1.i.i.i.i = load ptr, ptr %.sroa.839.0..sroa_idx, align 8, !tbaa !917 ; 3 uses
  %.val.val.i.i.i.i = load ptr, ptr %.val.i.i.i.i, align 8, !tbaa !132
  %i.bj = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22 ; 2 uses
  %.not9.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not9.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit6.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i.i.i"
  %i.bk = call noundef i16 @llvm.bswap.i16(i16 %i.bj)
  %.sroa.430.8.extract.trunc.i.i.i.i.i.i.i.i.i.i = zext i16 %i.bk to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 32
  br label %bb.n

bb.n:                                             ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EEZNKSI_10intersectsEPK8hb_set_tRNS2_27ContextClosureLookupContextEEUlRKS7_E_LSM_0ELSN_0EEbEppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EEZNKSI_10intersectsEPK8hb_set_tRNS2_27ContextClosureLookupContextEEUlRKS7_E_LSM_0ELSN_0EEbEppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.6.010.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.430.8.extract.trunc.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cg, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EEZNKSI_10intersectsEPK8hb_set_tRNS2_27ContextClosureLookupContextEEUlRKS7_E_LSM_0ELSN_0EEbEppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22 ; 2 uses
  %i.bn = icmp eq i16 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.bo = call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bp
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bn, ptr @_hb_NullPool, ptr %i.bq, !prof !33 ; 2 uses
  %i.br = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  %i.bs = call noundef i16 @llvm.bswap.i16(i16 %i.br) ; 2 uses
  %i.bt = zext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bv = call i32 @llvm.usub.sat.i32(i32 %i.bt, i32 1)
  %i.bw = load ptr, ptr %.val1.i.i.i.i, align 8, !tbaa !918
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !922
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !923
  %i.bz = shl nuw nsw i32 %i.bv, 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i32 %i.bz to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.bs, 2
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tIS0_IS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EEZNKS11_10intersectsEPSK_EUlRKSC_E_LSU_0ELSP_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1F_6item_tEEE5valueEvE4typeELSP_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1F_Efp_EEEOS1F_OS1K_.exit", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.01523.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.ca
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tIS0_IS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EEZNKS11_10intersectsEPSK_EUlRKSC_E_LSU_0ELSP_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1F_6item_tEEE5valueEvE4typeELSP_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1F_Efp_EEEOS1F_OS1K_.exit", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.o
  %.01523.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cb, %bb.o ], [ %i.bu, %bb.n ] ; 2 uses
  %i.cc = load i16, ptr %.01523.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  %i.cd = call noundef i16 @llvm.bswap.i16(i16 %i.cc)
  %i.ce = zext i16 %i.cd to i32
  %i.cf = call noundef zeroext i1 %i.bw(ptr noundef %.val.val.i.i.i.i, i32 noundef %i.ce, ptr noundef %i.bx, ptr noundef %i.by) #10, !inline_history !924
  br i1 %i.cf, label %bb.o, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EEZNKSI_10intersectsEPK8hb_set_tRNS2_27ContextClosureLookupContextEEUlRKS7_E_LSM_0ELSN_0EEbEppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EEZNKSI_10intersectsEPK8hb_set_tRNS2_27ContextClosureLookupContextEEUlRKS7_E_LSM_0ELSN_0EEbEppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = add i32 %.sroa.6.010.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit6.i.i, label %bb.n, !llvm.loop !925

.loopexit6.i.i:                                   ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EEZNKSI_10intersectsEPK8hb_set_tRNS2_27ContextClosureLookupContextEEUlRKS7_E_LSM_0ELSN_0EEbEppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i.i.i"
  %i.ch = call fastcc noundef nonnull align 8 dereferenceable(88) ptr @"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EppEv"(ptr noundef nonnull align 8 dereferenceable(104) %2) ; 0 uses
  br label %bb.g, !llvm.loop !926

"_ZorI13hb_map_iter_tIS0_IS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EEZNKS11_10intersectsEPSK_EUlRKSC_E_LSU_0ELSP_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1F_6item_tEEE5valueEvE4typeELSP_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1F_Efp_EEEOS1F_OS1K_.exit": ; preds = %bb.g, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n, %bb.o
  %i.ci = phi i1 [ true, %bb.o ], [ true, %bb.n ], [ false, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %i.ci
}

; Function Attrs: inlinehint mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2OTL16intersects_glyphEPK8hb_set_tjPKvPv(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #8 {
bb.a:
  %i.a = lshr i32 %1, 9                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46   ; 3 uses
  %i.f = icmp ult i32 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 3 uses
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i.i.i.i, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.i = zext i32 %i.c to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !48
  %.not.i.i.i.i.i.i = icmp eq i32 %i.k, %i.a
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.b, %bb.a
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.e, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

end_hunk_7
begin_hunk_8_@_ZZNK2OT16ContextFormat2_5INS_6Layout10SmallTypesEE10intersectsEPK8hb_set_tENKUl9hb_pair_tIjRKNS_7RuleSetIS2_EEEE_clESC_:bb.a
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %i.bk
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr @_hb_NullPool, ptr %i.bl, !prof !33 ; 2 uses
  %i.bm = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  %i.bn = tail call noundef i16 @llvm.bswap.i16(i16 %i.bm) ; 2 uses
  %i.bo = zext i16 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bq = tail call i32 @llvm.usub.sat.i32(i32 %i.bo, i32 1)
  %i.br = load ptr, ptr %i.bd, align 8, !tbaa !918
  %i.bs = load ptr, ptr %i.bg, align 8, !tbaa !922
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !923
  %i.bu = shl nuw nsw i32 %i.bq, 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i32 %i.bu to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.bn, 2 ; 3 uses
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE10intersectsEPK8hb_set_tRNS_27ContextClosureLookupContextE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.01523.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.bv
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE10intersectsEPK8hb_set_tRNS_27ContextClosureLookupContextE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.j, %bb.k
  %.01523.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bw, %bb.k ], [ %i.bp, %bb.j ] ; 2 uses
  %i.bx = load i16, ptr %.01523.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  %i.by = tail call noundef i16 @llvm.bswap.i16(i16 %i.bx)
  %i.bz = zext i16 %i.by to i32
  %i.ca = tail call noundef zeroext i1 %i.br(ptr noundef %i.bb, i32 noundef %i.bz, ptr noundef %i.bs, ptr noundef %i.bt) #10, !inline_history !962
  br i1 %i.ca, label %bb.k, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EEZNKSI_10intersectsEPK8hb_set_tRNS2_27ContextClosureLookupContextEEUlRKS7_E_LSM_0ELSN_0EEbEppEv.exit.i.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EEZNKSI_10intersectsEPK8hb_set_tRNS2_27ContextClosureLookupContextEEUlRKS7_E_LSM_0ELSN_0EEbEppEv.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = add i32 %.sroa.6.010.i.i.i, -1          ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.not.i.i.i, label %_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE10intersectsEPK8hb_set_tRNS_27ContextClosureLookupContextE.exit, label %bb.j, !llvm.loop !925

_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE10intersectsEPK8hb_set_tRNS_27ContextClosureLookupContextE.exit: ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EEZNKSI_10intersectsEPK8hb_set_tRNS2_27ContextClosureLookupContextEEUlRKS7_E_LSM_0ELSN_0EEbEppEv.exit.i.i.i", %bb.j, %bb.k, %bb.a, %bb.i, %.split, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, %_ZNK2OT8ClassDef16intersects_classEPK8hb_set_tj.exit
  %i.cc = phi i1 [ false, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit ], [ false, %_ZNK2OT8ClassDef16intersects_classEPK8hb_set_tj.exit ], [ false, %.split ], [ true, %bb.k ], [ false, %bb.a ], [ false, %bb.i ], [ %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j ], [ %.not22.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EEZNKSI_10intersectsEPK8hb_set_tRNS2_27ContextClosureLookupContextEEUlRKS7_E_LSM_0ELSN_0EEbEppEv.exit.i.i.i" ]
  ret i1 %i.cc
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT14ContextFormat310intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !33 ; 3 uses
  %i.g = load i16, ptr %.0.i.i, align 1, !tbaa !22
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g)
  switch i16 %i.h, label %_ZN2OTL18context_intersectsINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_RNS_27ContextClosureLookupContextE.exit [
    i16 1, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
    i16 2, label %.split
  ]

.split:                                           ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.i = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %1)
  br i1 %i.i, label %bb.b, label %_ZN2OTL18context_intersectsINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_RNS_27ContextClosureLookupContextE.exit

_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit: ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.j = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %1)
  br i1 %i.j, label %bb.b, label %_ZN2OTL18context_intersectsINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_RNS_27ContextClosureLookupContextE.exit

bb.b:                                             ; preds = %.split, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i16, ptr %i.k, align 1, !tbaa !22
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l) ; 2 uses
  %i.n = zext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = tail call i32 @llvm.usub.sat.i32(i32 %i.n, i32 1)
  %i.q = shl nuw nsw i32 %i.p, 1
  %.idx.i.i = zext nneg i32 %i.q to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  %.not22.i.i = icmp ult i16 %i.m, 2
  br i1 %.not22.i.i, label %_ZN2OTL18context_intersectsINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_RNS_27ContextClosureLookupContextE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.split9, %_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.01523.i.i, i64 2 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %_ZN2OTL18context_intersectsINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_RNS_27ContextClosureLookupContextE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.01523.i.i = phi ptr [ %i.s, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.t = load i16, ptr %.01523.i.i, align 1, !tbaa !22 ; 2 uses
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = icmp eq i16 %i.t, 0
  %i.w = zext i16 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %.0.i.i.i = select i1 %i.v, ptr @_hb_NullPool, ptr %i.x, !prof !33 ; 3 uses
  %i.y = load i16, ptr %.0.i.i.i, align 1, !tbaa !22
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  switch i16 %i.z, label %_ZN2OTL18context_intersectsINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_RNS_27ContextClosureLookupContextE.exit [
    i16 1, label %_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit
    i16 2, label %.split9
  ]

.split9:                                          ; preds = %.lr.ph.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.aa = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i, ptr noundef %1)
  br i1 %i.aa, label %bb.c, label %_ZN2OTL18context_intersectsINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_RNS_27ContextClosureLookupContextE.exit

_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit: ; preds = %.lr.ph.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ab = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i, ptr noundef %1)
  br i1 %i.ab, label %bb.c, label %_ZN2OTL18context_intersectsINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_RNS_27ContextClosureLookupContextE.exit

_ZN2OTL18context_intersectsINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_RNS_27ContextClosureLookupContextE.exit: ; preds = %.lr.ph.i.i, %.split9, %_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit, %bb.c, %bb.a, %bb.b, %.split, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
  %.0 = phi i1 [ false, %.split ], [ false, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit ], [ false, %bb.a ], [ true, %bb.b ], [ false, %.lr.ph.i.i ], [ false, %.split9 ], [ true, %bb.c ], [ false, %_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT21ChainContextFormat1_4INS_6Layout10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_map_iter_t.734, align 8  ; 15 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %"struct.OT::ChainContextClosureLookupContext", align 8 ; 4 uses
  %4 = alloca %struct.hb_filter_iter_t.740, align 8 ; 4 uses
  %5 = alloca %struct.hb_zip_iter_t.744, align 8  ; 12 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) @__const._ZNK2OT21ChainContextFormat1_4INS_6Layout10SmallTypesEE10intersectsEPK8hb_set_t.lookup_context, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 1, !tbaa !22   ; 2 uses
  %i.d = icmp eq i16 %i.c, 0
  %i.e = tail call i16 @llvm.bswap.i16(i16 %i.c)
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %.0.i.i = select i1 %i.d, ptr @_hb_NullPool, ptr %i.g, !prof !33 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !22, !noalias !963
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i) ; 2 uses
  switch i16 %i.j, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !963, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !963, !srcloc !21
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.l = load i16, ptr %i.k, align 1, !tbaa !22, !noalias !963
  %.not.i.i.i.i.i = icmp eq i16 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.d, !prof !223

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !963, !srcloc !21
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.n = load i16, ptr %i.m, align 1, !tbaa !22, !noalias !963
  %i.o = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = zext i16 %i.o to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.k, align 1, !tbaa !22, !noalias !963
  %i.q = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.11.0.i = phi i32 [ %i.p, %bb.d ], [ 0, %bb.c ]
  %i.r = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !963
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !963, !srcloc !21
  %.pre11.i.i.i.i.i = load i16, ptr %i.k, align 1, !tbaa !22, !noalias !963
  %i.t = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.u = load i16, ptr %i.m, align 1, !tbaa !22, !noalias !963
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u) ; 2 uses
  br i1 %i.t, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !224

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !963, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.p, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.p, %bb.e ]
  %i.w = phi i16 [ %i.s, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.v, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.v, %bb.e ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.m, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.y = load i16, ptr %i.x, align 1, !tbaa !22, !noalias !963
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = icmp ugt i16 %i.w, %i.z
  br i1 %i.aa, label %bb.f, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit", !prof !33

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.ab = load i16, ptr %i.k, align 1, !tbaa !22, !noalias !963
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = zext i16 %i.ac to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.11.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ad, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ae = zext i16 %i.j to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ag = load i16, ptr %i.h, align 1, !tbaa !22, !noalias !970
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag)
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i16 %i.ah to i64
  store i32 %i.ae, ptr %5, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa.428.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.sroa.11.2.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.af, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %.sroa.2.8.insert.ext.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx, align 8
  call fastcc void @"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSW_"(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %1, ptr nonnull @_ZL8hb_first)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @_ZL9hb_second, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @_ZL6hb_add, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  store ptr %0, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  store ptr %i.a, ptr %.sroa.739.0..sroa_idx, align 8
  %.sroa.840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  store ptr %3, ptr %.sroa.840.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i.i, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit"
  %i.am = load i32, ptr %2, align 8, !tbaa !272
  switch i32 %i.am, label %"_ZorI13hb_map_iter_tIS0_IS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EEZNKS11_10intersectsEPSK_EUlRKSC_E_LSU_0ELSP_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1F_6item_tEEE5valueEvE4typeELSP_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1F_Efp_EEEOS1F_OS1K_.exit" [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.an = load i32, ptr %i.aj, align 8, !tbaa !60
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !149
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !22
  %i.ar = call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.as = zext i16 %i.ar to i32
  %i.at = icmp ult i32 %i.an, %i.as
  %i.au = load i32, ptr %i.ak, align 8
  %i.av = icmp ne i32 %i.au, 0
  %or.cond.i.i = select i1 %i.at, i1 %i.av, i1 false
  br i1 %or.cond.i.i, label %bb.j, label %"_ZorI13hb_map_iter_tIS0_IS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EEZNKS11_10intersectsEPSK_EUlRKSC_E_LSU_0ELSP_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1F_6item_tEEE5valueEvE4typeELSP_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1F_Efp_EEEOS1F_OS1K_.exit"

bb.j:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = load i32, ptr %2, align 8, !tbaa !272
  switch i32 %i.aw, label %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i.i.i" [
    i32 1, label %bb.k
    i32 2, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ax = load ptr, ptr %i.ai, align 8, !tbaa !317
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = load i32, ptr %i.aj, align 8, !tbaa !314
  %i.ba = load i16, ptr %i.ay, align 1, !tbaa !22
  %i.bb = call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bc = zext i16 %i.bb to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.az, %i.bc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i.i.i", !prof !47

bb.l:                                             ; preds = %bb.k
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i.i.i"

bb.m:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i.i.i"

"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i.i.i": ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.bd = load i32, ptr %i.ak, align 8, !tbaa !971
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bd, 0
  %i.be = load ptr, ptr %i.al, align 8
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.be, !prof !33
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.638.0..sroa_idx, align 8, !tbaa !974
  %.val1.i.i.i.i.i.i = load i16, ptr %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22 ; 2 uses
  %i.bf = icmp eq i16 %.val1.i.i.i.i.i.i, 0
  %i.bg = call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i)
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.bh
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bf, ptr @_hb_NullPool, ptr %i.bi, !prof !33 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.739.0..sroa_idx, align 8, !tbaa !976
  %.val1.i.i.i.i = load ptr, ptr %.sroa.840.0..sroa_idx, align 8, !tbaa !979 ; 9 uses
  %.val.val.i.i.i.i = load ptr, ptr %.val.i.i.i.i, align 8, !tbaa !132 ; 3 uses
  %i.bj = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22 ; 2 uses
  %.not5.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not5.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i.i:         ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i.i.i"
  %i.bk = call noundef i16 @llvm.bswap.i16(i16 %i.bj)
  %.sroa.430.8.extract.trunc.i.i.i.i.i.i.i.i.i.i = zext i16 %i.bk to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 64
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EEZNKSI_10intersectsEPK8hb_set_tRNS2_32ChainContextClosureLookupContextEEUlRKS7_E_LSM_0ELSN_0EEbEppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.pn.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EEZNKSI_10intersectsEPK8hb_set_tRNS2_32ChainContextClosureLookupContextEEUlRKS7_E_LSM_0ELSN_0EEbEppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.06.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dq, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EEZNKSI_10intersectsEPK8hb_set_tRNS2_32ChainContextClosureLookupContextEEUlRKS7_E_LSM_0ELSN_0EEbEppEv.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.430.8.extract.trunc.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.pn.i.i.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22 ; 2 uses
  %i.br = icmp eq i16 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.bs = call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bt
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.br, ptr @_hb_NullPool, ptr %i.bu, !prof !33 ; 3 uses
  %i.bv = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22 ; 2 uses
  %i.bw = call noundef i16 @llvm.bswap.i16(i16 %i.bv)
  %i.bx = zext i16 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 1, !tbaa !22 ; 2 uses
  %i.cc = call noundef i16 @llvm.bswap.i16(i16 %i.cb) ; 3 uses
  %i.cd = zext i16 %i.cc to i64
  %.not.i.i.i.i.i.i = icmp eq i16 %i.cb, 0
  %i.ce = shl nuw nsw i64 %i.cd, 1
  %i.cf = select i1 %.not.i.i.i.i.i.i, i64 2, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.ci = zext i16 %i.cc to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.ck = load i16, ptr %i.cg, align 1, !tbaa !22 ; 2 uses
  %i.cl = call noundef i16 @llvm.bswap.i16(i16 %i.ck)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 2 uses
  %i.cn = load ptr, ptr %.val1.i.i.i.i, align 8, !tbaa !980 ; 2 uses
  %i.co = load ptr, ptr %i.bl, align 8, !tbaa !149
  %i.cp = load ptr, ptr %i.bm, align 8, !tbaa !149
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.by
  %.not22.i.i.i.i.i = icmp eq i16 %i.bv, 0
  br i1 %.not22.i.i.i.i.i, label %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.01523.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cr = load i16, ptr %.01523.i.i.i.i.i, align 1, !tbaa !22
  %i.cs = call noundef i16 @llvm.bswap.i16(i16 %i.cr)
  %i.ct = zext i16 %i.cs to i32
  %i.cu = call noundef zeroext i1 %i.cn(ptr noundef %.val.val.i.i.i.i, i32 noundef %i.ct, ptr noundef %i.co, ptr noundef %i.cp) #10, !inline_history !982 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.01523.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i17 = icmp ne ptr %i.cv, %i.cq
  %or.cond.not.i.i.i.i = select i1 %i.cu, i1 %.not.i.i.i.i.i17, i1 false
  br i1 %or.cond.not.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.loopexit.i.i.i.i

_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.val1.i.i.i.i, align 8, !tbaa !980
  br label %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.i.i.i.i

_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.i.i.i.i: ; preds = %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.loopexit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cw = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i, %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.loopexit.i.i.i.i ] ; 2 uses
  %.not.lcssa.i.i.i.i.i = phi i1 [ true, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cu, %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.loopexit.i.i.i.i ] ; 2 uses
  %i.cx = call i32 @llvm.usub.sat.i32(i32 %i.ci, i32 1)
  %i.cy = load ptr, ptr %i.bn, align 8, !tbaa !149
  %i.cz = load ptr, ptr %i.bo, align 8, !tbaa !149
  %i.da = shl nuw nsw i32 %i.cx, 1
  %.idx.i23.i.i.i.i = zext nneg i32 %i.da to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i23.i.i.i.i
  %.not22.i24.i.i.i.i = icmp ult i16 %i.cc, 2
  br i1 %.not22.i24.i.i.i.i, label %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit29.i.i.i.i, label %.lr.ph.i25.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i25.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.01523.i26.i.i.i.i, i64 2 ; 2 uses
  %.not.i28.i.i.i.i = icmp eq ptr %i.dc, %i.db
  br i1 %.not.i28.i.i.i.i, label %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit29.loopexit.i.i.i.i, label %.lr.ph.i25.i.i.i.i

.lr.ph.i25.i.i.i.i:                               ; preds = %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.i.i.i.i, %bb.n
  %.01523.i26.i.i.i.i = phi ptr [ %i.dc, %bb.n ], [ %i.cj, %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.i.i.i.i ] ; 2 uses
  %i.dd = load i16, ptr %.01523.i26.i.i.i.i, align 1, !tbaa !22
  %i.de = call noundef i16 @llvm.bswap.i16(i16 %i.dd)
  %i.df = zext i16 %i.de to i32
  %i.dg = call noundef zeroext i1 %i.cw(ptr noundef %.val.val.i.i.i.i, i32 noundef %i.df, ptr noundef %i.cy, ptr noundef %i.cz) #10, !inline_history !982
  br i1 %i.dg, label %bb.n, label %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit29.loopexit.i.i.i.i
end_hunk_8
begin_hunk_9_@_ZNK2OT7Context8dispatchINS_28hb_closure_lookups_context_tEJEEENT_8return_tEPS3_DpOT0_:bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  tail call void @_ZNK2OT16ContextFormat2_5INS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(60) %1)
  br label %_ZN2OT28hb_closure_lookups_context_t8dispatchINS_14ContextFormat3EEE10hb_empty_tRKT_.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !873
  %i.e = tail call noundef zeroext i1 @_ZNK2OT14ContextFormat310intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %i.d)
  br i1 %i.e, label %bb.e, label %_ZN2OT28hb_closure_lookups_context_t8dispatchINS_14ContextFormat3EEE10hb_empty_tRKT_.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !22
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g)
  %i.i = zext i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i16, ptr %i.l, align 1, !tbaa !22   ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.m, 0
  br i1 %.not.i.i.i, label %_ZN2OT28hb_closure_lookups_context_t8dispatchINS_14ContextFormat3EEE10hb_empty_tRKT_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %wide.trip.count.i.i.i = zext i16 %i.n to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i16, ptr %i.p, align 1, !tbaa !22
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i32
  tail call void @_ZN2OT28hb_closure_lookups_context_t7recurseEj(ptr noundef nonnull align 8 dereferenceable(60) %1, i32 noundef %i.s)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN2OT28hb_closure_lookups_context_t8dispatchINS_14ContextFormat3EEE10hb_empty_tRKT_.exit, label %.lr.ph.i.i.i, !llvm.loop !1006

_ZN2OT28hb_closure_lookups_context_t8dispatchINS_14ContextFormat3EEE10hb_empty_tRKT_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT12ChainContext8dispatchINS_28hb_closure_lookups_context_tEJEEENT_8return_tEPS3_DpOT0_(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !22
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  switch i16 %i.b, label %_ZN2OT28hb_closure_lookups_context_t8dispatchINS_19ChainContextFormat3EEE10hb_empty_tRKT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.c
    i16 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  tail call void @_ZNK2OT21ChainContextFormat1_4INS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(60) %1)
  br label %_ZN2OT28hb_closure_lookups_context_t8dispatchINS_19ChainContextFormat3EEE10hb_empty_tRKT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  tail call void @_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tE(ptr noundef nonnull align 1 dereferenceable(14) %0, ptr noundef nonnull align 8 dereferenceable(60) %1)
  br label %_ZN2OT28hb_closure_lookups_context_t8dispatchINS_19ChainContextFormat3EEE10hb_empty_tRKT_.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !873
  %i.e = tail call noundef zeroext i1 @_ZNK2OT19ChainContextFormat310intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef %i.d)
  br i1 %i.e, label %bb.e, label %_ZN2OT28hb_closure_lookups_context_t8dispatchINS_19ChainContextFormat3EEE10hb_empty_tRKT_.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.g = load i16, ptr %i.f, align 1, !tbaa !22
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g)
  %i.i = zext i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.m = load i16, ptr %i.l, align 1, !tbaa !22
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = zext i16 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  %i.s = load i16, ptr %i.r, align 1, !tbaa !22
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.y = load i16, ptr %i.x, align 1, !tbaa !22   ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %_ZN2OT28hb_closure_lookups_context_t8dispatchINS_19ChainContextFormat3EEE10hb_empty_tRKT_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %wide.trip.count.i.i.i = zext i16 %i.z to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !22
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = zext i16 %i.ad to i32
  tail call void @_ZN2OT28hb_closure_lookups_context_t7recurseEj(ptr noundef nonnull align 8 dereferenceable(60) %1, i32 noundef %i.ae)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN2OT28hb_closure_lookups_context_t8dispatchINS_19ChainContextFormat3EEE10hb_empty_tRKT_.exit, label %.lr.ph.i.i.i, !llvm.loop !1006

_ZN2OT28hb_closure_lookups_context_t8dispatchINS_19ChainContextFormat3EEE10hb_empty_tRKT_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT16ContextFormat1_4INS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_map_iter_t.678, align 8  ; 13 uses
  %3 = alloca %"struct.OT::ContextClosureLookupContext", align 8 ; 4 uses
  %4 = alloca %struct.hb_filter_iter_t.682, align 8 ; 4 uses
  %5 = alloca %struct.hb_zip_iter_t.686, align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) @__const._ZNK2OT16ContextFormat1_4INS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tE.lookup_context, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !33 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i16, ptr %.0.i.i, align 1, !tbaa !22, !noalias !1007
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h) ; 2 uses
  switch i16 %i.i, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_7RuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1007, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_7RuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1007, !srcloc !21
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.k = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !1007
  %.not.i.i.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.d, !prof !223

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1007, !srcloc !21
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.m = load i16, ptr %i.l, align 1, !tbaa !22, !noalias !1007
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = zext i16 %i.n to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !1007
  %i.p = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.p, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.11.0.i = phi i32 [ %i.o, %bb.d ], [ 0, %bb.c ]
  %i.q = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !1007
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1007, !srcloc !21
  %.pre11.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !1007
  %i.s = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.t = load i16, ptr %i.l, align 1, !tbaa !22, !noalias !1007
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t) ; 2 uses
  br i1 %i.s, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !224

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1007, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.o, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.o, %bb.e ]
  %i.v = phi i16 [ %i.r, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.u, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.u, %bb.e ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.l, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.x = load i16, ptr %i.w, align 1, !tbaa !22, !noalias !1007
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = icmp ugt i16 %i.v, %i.y
  br i1 %i.z, label %bb.f, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_7RuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit", !prof !33

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.aa = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !1007
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_7RuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_7RuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.11.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ac, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ad = zext i16 %i.i to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.af = load i16, ptr %i.g, align 1, !tbaa !22, !noalias !1014
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i16 %i.ag to i64
  store i32 %i.ad, ptr %5, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa.426.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.sroa.11.2.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ae, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %.sroa.2.8.insert.ext.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !873
  call fastcc void @"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_7RuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSW_"(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %i.ai, ptr nonnull @_ZL8hb_first)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @_ZL9hb_second, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @_ZL6hb_add, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  store ptr %0, ptr %.sroa.632.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i", %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_7RuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit"
  %i.an = load i32, ptr %2, align 8, !tbaa !272
  switch i32 %i.an, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EE10hb_apply_tIZNKS11_15closure_lookupsEPNS3_28hb_closure_lookups_context_tEEUlRKSC_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1E_6item_tEEE5valueEvE4typeELSP_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1E_Efp_EEEOS1E_OS1J_.exit" [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ao = load i32, ptr %i.ak, align 8, !tbaa !60
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !149
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !22
  %i.as = call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i32
  %i.au = icmp ult i32 %i.ao, %i.at
  %i.av = load i32, ptr %i.al, align 8
  %i.aw = icmp ne i32 %i.av, 0
  %or.cond.i.i = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond.i.i, label %bb.j, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EE10hb_apply_tIZNKS11_15closure_lookupsEPNS3_28hb_closure_lookups_context_tEEUlRKSC_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1E_6item_tEEE5valueEvE4typeELSP_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1E_Efp_EEEOS1E_OS1J_.exit"

bb.j:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ax = load i32, ptr %2, align 8, !tbaa !272
  switch i32 %i.ax, label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i" [
    i32 1, label %bb.k
    i32 2, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !317
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i32, ptr %i.ak, align 8, !tbaa !314
  %i.bb = load i16, ptr %i.az, align 1, !tbaa !22
  %i.bc = call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = zext i16 %i.bc to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.ba, %i.bd
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i", !prof !47

bb.l:                                             ; preds = %bb.k
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i"

bb.m:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i"

"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i": ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.be = load i32, ptr %i.al, align 8, !tbaa !909
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.be, 0
  %i.bf = load ptr, ptr %i.am, align 8
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.bf, !prof !33
  %.val.i.i.i.i = load ptr, ptr %.sroa.632.0..sroa_idx, align 8, !tbaa !912
  %.val1.i.i.i.i = load i16, ptr %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22 ; 2 uses
  %i.bg = icmp eq i16 %.val1.i.i.i.i, 0
  %i.bh = call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i)
  %i.bi = zext i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.bi
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bg, ptr @_hb_NullPool, ptr %i.bj, !prof !33
  call void @_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tERNS_27ContextClosureLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.bk = call fastcc noundef nonnull align 8 dereferenceable(88) ptr @"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EppEv"(ptr noundef nonnull align 8 dereferenceable(1) %2) ; 0 uses
  br label %bb.g, !llvm.loop !1015

"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_7RuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_16ContextFormat1_4ISB_EEELSU_0ELSP_0EE10hb_apply_tIZNKS11_15closure_lookupsEPNS3_28hb_closure_lookups_context_tEEUlRKSC_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1E_6item_tEEE5valueEvE4typeELSP_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1E_Efp_EEEOS1E_OS1J_.exit": ; preds = %bb.g, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tERNS_27ContextClosureLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !877
  %i.c = icmp ugt i32 %i.b, 35000
  br i1 %i.c, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSI_15closure_lookupsEPNS2_28hb_closure_lookups_context_tERNS2_27ContextClosureLookupContextEEUlRKS7_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSZ_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISZ_Efp_EEEOSZ_OS14_.exit", label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %0, align 1, !tbaa !22     ; 2 uses
  %.not13.i.i = icmp eq i16 %i.d, 0
  br i1 %.not13.i.i, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSI_15closure_lookupsEPNS2_28hb_closure_lookups_context_tERNS2_27ContextClosureLookupContextEEUlRKS7_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSZ_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISZ_Efp_EEEOSZ_OS14_.exit", label %.lr.ph.split.i.preheader.i

.lr.ph.split.i.preheader.i:                       ; preds = %bb.b
  %i.e = tail call noundef i16 @llvm.bswap.i16(i16 %i.d)
  %.sroa.429.8.extract.trunc = zext i16 %i.e to i32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i", %.lr.ph.split.i.preheader.i
  %.val1014.i.i = phi i32 [ %i.da, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i" ], [ %.sroa.429.8.extract.trunc, %.lr.ph.split.i.preheader.i ]
  %.pn = phi ptr [ %i.l, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i" ], [ %0, %.lr.ph.split.i.preheader.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  %.val1.i.i.i.i = load i16, ptr %i.l, align 1, !tbaa !22 ; 2 uses
  %i.m = icmp eq i16 %.val1.i.i.i.i, 0
  %i.n = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i)
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.p, !prof !33 ; 4 uses
  %i.q = load i32, ptr %i.a, align 8, !tbaa !877
  %i.r = icmp ugt i32 %i.q, 35000
  br i1 %i.r, label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i", label %bb.c, !prof !33

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !873
  %i.t = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22 ; 2 uses
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t) ; 3 uses
  %i.v = zext i16 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 3 uses
  %i.x = tail call i32 @llvm.usub.sat.i32(i32 %i.v, i32 1)
  %i.y = load ptr, ptr %2, align 8, !tbaa !918
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !922
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !923
  %i.ab = shl nuw nsw i32 %i.x, 1
  %.idx.i.i.i.i.i.i.i.i.i = zext nneg i32 %i.ab to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i.i.i.i.i.i.i.i.i
  %.not22.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.u, 2
  br i1 %.not22.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.01523.i.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.c, %bb.d
  %.01523.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.w, %bb.c ] ; 2 uses
  %i.ae = load i16, ptr %.01523.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i32
  %i.ah = tail call noundef zeroext i1 %i.y(ptr noundef %i.s, i32 noundef %i.ag, ptr noundef %i.z, ptr noundef %i.aa) #10, !inline_history !1016
  br i1 %i.ah, label %bb.d, label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i"

.loopexit.loopexit.i.i.i.i.i.i:                   ; preds = %bb.d
  %.pre.i.i.i.i.i.i = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22 ; 2 uses
  %.pre10.i.i.i.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i.i.i.i.i)
  br label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.loopexit.loopexit.i.i.i.i.i.i, %bb.c
  %.pre-phi.i.i.i.i.i.i = phi i16 [ %.pre10.i.i.i.i.i.i, %.loopexit.loopexit.i.i.i.i.i.i ], [ %i.u, %bb.c ]
  %i.ai = phi i16 [ %.pre.i.i.i.i.i.i, %.loopexit.loopexit.i.i.i.i.i.i ], [ %i.t, %bb.c ]
  %i.aj = zext i16 %.pre-phi.i.i.i.i.i.i to i64
  %.not.i.i.i.i3.i.i = icmp eq i16 %i.ai, 0
  %i.ak = shl nuw nsw i64 %i.aj, 1
  %i.al = add nuw nsw i64 %i.ak, 4294967294
  %i.am = and i64 %i.al, 4294967294
  %i.an = select i1 %.not.i.i.i.i3.i.i, i64 0, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2
end_hunk_9
begin_hunk_10_@_ZNK2OT16ContextFormat2_5INS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tE:bb.a
    i16 2, label %.split.i.i.i
  ]

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1019, !srcloc !21
  %i.ai = trunc i32 %.sroa.048.sroa.0.0 to i16
  %i.aj = call noundef zeroext i1 @_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i16, ptr noundef %.val6.val.val.i.i.i, i16 noundef zeroext %i.ai), !noalias !1019
  br i1 %i.aj, label %"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSA_EE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS16_Efp_EEEOS16_OS1B_.exit", label %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i"

"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.i.i.i": ; preds = %.lr.ph.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1019, !srcloc !21
  %i.ak = trunc i32 %.sroa.048.sroa.0.0 to i16
  %i.al = call noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i16, ptr noundef %.val6.val.val.i.i.i, i16 noundef zeroext %i.ak), !noalias !1019
  br i1 %i.al, label %"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSA_EE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS16_Efp_EEEOS16_OS1B_.exit", label %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i"

"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i": ; preds = %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.i.i.i", %.split.i.i.i, %.lr.ph.i.i.i
  %i.am = add i32 %.sroa.048.sroa.0.0, 1
  %i.an = add i32 %.sroa.10.sroa.0.0, -1          ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.749.0, i64 2
  %i.ap = icmp eq i32 %i.an, 0
  br i1 %i.ap, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit", label %.lr.ph.i.i.i, !llvm.loop !1024

"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSA_EE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS16_Efp_EEEOS16_OS1B_.exit": ; preds = %.split.i.i.i, %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.i.i.i"
  %.not25.i.i = icmp eq i32 %.sroa.10.sroa.0.0, 0
  br i1 %.not25.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit", label %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i"

"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i": ; preds = %"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSA_EE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS16_Efp_EEEOS16_OS1B_.exit"
  %.val1.i.i.i.i.i.i.i.i.i18.i = load i16, ptr %.sroa.749.0, align 1, !tbaa !22 ; 2 uses
  %i.aq = icmp eq i16 %.val1.i.i.i.i.i.i.i.i.i18.i, 0
  %i.ar = call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i.i.i18.i)
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i19.i = select i1 %i.aq, ptr @_hb_NullPool, ptr %i.at, !prof !33
  call void @_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tERNS_27ContextClosureLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i19.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.au = add i32 %.sroa.10.sroa.0.0, -1          ; 2 uses
  %.not.i.i.i.i9.i21.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i.i9.i21.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i", %.lr.ph.i.i.backedge
  %.pn.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.backedge ], [ %.sroa.749.0, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i" ]
  %i.av = phi i32 [ %.be, %.lr.ph.i.i.backedge ], [ %i.au, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i" ] ; 2 uses
  %.pn52.i.i = phi i32 [ %i.aw, %.lr.ph.i.i.backedge ], [ %.sroa.048.sroa.0.0, %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i" ]
  %i.aw = add i32 %.pn52.i.i, 1                   ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2 ; 2 uses
  %.val2.val.val.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !873 ; 2 uses
  %i.ay = load i16, ptr %.0.i.i16, align 1, !tbaa !22
  %i.az = call noundef i16 @llvm.bswap.i16(i16 %i.ay)
  switch i16 %i.az, label %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.backedge.i.i.i.i.i.i" [
    i16 1, label %.split7.i.i.i.i.i.i
    i16 2, label %.split.i.i.i.i.i.i
  ]

.split7.i.i.i.i.i.i:                              ; preds = %.lr.ph.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ba = trunc i32 %i.aw to i16
  %i.bb = call noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i16, ptr noundef %.val2.val.val.i.i.i.i.i.i, i16 noundef zeroext %i.ba)
  br i1 %i.bb, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EESY_EppEv.exit.i.i", label %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.backedge.i.i.i.i.i.i"

.split.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.bc = trunc i32 %i.aw to i16
  %i.bd = call noundef zeroext i1 @_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i16, ptr noundef %.val2.val.val.i.i.i.i.i.i, i16 noundef zeroext %i.bc)
  br i1 %i.bd, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EESY_EppEv.exit.i.i", label %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.backedge.i.i.i.i.i.i"

"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.backedge.i.i.i.i.i.i": ; preds = %.split.i.i.i.i.i.i, %.split7.i.i.i.i.i.i, %.lr.ph.i.i
  %i.be = add i32 %i.av, -1                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit", label %.lr.ph.i.i.backedge

.lr.ph.i.i.backedge:                              ; preds = %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.backedge.i.i.i.i.i.i", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EESY_EppEv.exit.i.i"
  %.be = phi i32 [ %i.be, %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.backedge.i.i.i.i.i.i" ], [ %i.bj, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EESY_EppEv.exit.i.i" ]
  br label %.lr.ph.i.i, !llvm.loop !1025

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EESY_EppEv.exit.i.i": ; preds = %.split.i.i.i.i.i.i, %.split7.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.ax, align 1, !tbaa !22 ; 2 uses
  %i.bf = icmp eq i16 %.val1.i.i.i.i.i.i.i.i.i.i, 0
  %i.bg = call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i.i.i.i)
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bf, ptr @_hb_NullPool, ptr %i.bi, !prof !33
  call void @_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tERNS_27ContextClosureLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.bj = add i32 %i.av, -1                       ; 2 uses
  %.not.i.i.i.i9.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i9.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit", label %.lr.ph.i.i.backedge

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit": ; preds = %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.i.i.i", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EESY_EppEv.exit.i.i", %"_ZNK4$_23clIRZNK2OT16ContextFormat2_5INS1_6Layout10SmallTypesEE15closure_lookupsEPNS1_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKNS1_7RuleSetIS4_EEEE_SD_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSH_OSI_.exit.backedge.i.i.i.i.i.i", %bb.b, %"_ZorI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIZNKSL_15closure_lookupsEPNS5_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSA_EE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS16_Efp_EEEOS16_OS1B_.exit", %"_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS5_7RuleSetINS5_6Layout10SmallTypesEEENS5_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_16ContextFormat2_5IS9_EEEL24hb_function_sortedness_t0ELPv0EEE9hb_pair_tIjRKSA_EEppEv.exit.lr.ph.i.i.i.i.i.preheader.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  store atomic i32 -57005, ptr %2 monotonic, align 8
  %i.bk = load atomic ptr, ptr %i.t acquire, align 8 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit"
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(56) %i.bk)
  %i.bm = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.bk) #10 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.bk) #10
  store atomic ptr null, ptr %i.t monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i: ; preds = %bb.c, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjES0_I10hb_array_tIKN2OT8OffsetToINS6_7RuleSetINS6_6Layout10SmallTypesEEENS6_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS6_16ContextFormat2_5ISA_EEEL24hb_function_sortedness_t0ELPv0EEEZNKSM_15closure_lookupsEPNS6_28hb_closure_lookups_context_tEEUl9hb_pair_tIjRKSB_EE_RK4$_19LSR_0EERK3$_7LSQ_0ELSR_0EE10hb_apply_tIZNKSM_15closure_lookupsESV_EUlSY_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1D_6item_tEEE5valueEvE4typeELSR_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1D_Efp_EEEOS1D_OS1I_.exit"
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !56  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit, label %bb.d, !prof !33

bb.d:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i
  call void @hb_free(ptr noundef nonnull %i.bn) #10
  br label %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit

_ZN12hb_hashmap_tIjjLb1EED2Ev.exit:               ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread: ; preds = %bb.a, %.split, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit, %_ZN12hb_hashmap_tIjjLb1EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT21ChainContextFormat1_4INS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_map_iter_t.736, align 8  ; 13 uses
  %3 = alloca %"struct.OT::ChainContextClosureLookupContext", align 8 ; 4 uses
  %4 = alloca %struct.hb_filter_iter_t.740, align 8 ; 4 uses
  %5 = alloca %struct.hb_zip_iter_t.744, align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) @__const._ZNK2OT21ChainContextFormat1_4INS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tE.lookup_context, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !22   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !33 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i16, ptr %.0.i.i, align 1, !tbaa !22, !noalias !1026
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h) ; 2 uses
  switch i16 %i.i, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1026, !srcloc !21
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1026, !srcloc !21
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.k = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !1026
  %.not.i.i.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.d, !prof !223

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1026, !srcloc !21
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.m = load i16, ptr %i.l, align 1, !tbaa !22, !noalias !1026
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = zext i16 %i.n to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !1026
  %i.p = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.p, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !224

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.11.0.i = phi i32 [ %i.o, %bb.d ], [ 0, %bb.c ]
  %i.q = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !22, !noalias !1026
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1026, !srcloc !21
  %.pre11.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !1026
  %i.s = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.t = load i16, ptr %i.l, align 1, !tbaa !22, !noalias !1026
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t) ; 2 uses
  br i1 %i.s, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !224

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !1026, !srcloc !21
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.o, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.o, %bb.e ]
  %i.v = phi i16 [ %i.r, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.u, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.u, %bb.e ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.l, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.x = load i16, ptr %i.w, align 1, !tbaa !22, !noalias !1026
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = icmp ugt i16 %i.v, %i.y
  br i1 %i.z, label %bb.f, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit", !prof !33

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.aa = load i16, ptr %i.j, align 1, !tbaa !22, !noalias !1026
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.11.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ac, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ad = zext i16 %i.i to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.af = load i16, ptr %i.g, align 1, !tbaa !22, !noalias !1033
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i16 %i.ag to i64
  store i32 %i.ad, ptr %5, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa.426.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.sroa.11.2.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ae, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %.sroa.2.8.insert.ext.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !873
  call fastcc void @"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSW_"(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %i.ai, ptr nonnull @_ZL8hb_first)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @_ZL9hb_second, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @_ZL6hb_add, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  store ptr %0, ptr %.sroa.632.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i", %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS1_12ChainRuleSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESD_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEEOSJ_OSK_.exit"
  %i.an = load i32, ptr %2, align 8, !tbaa !272
  switch i32 %i.an, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EE10hb_apply_tIZNKS11_15closure_lookupsEPNS3_28hb_closure_lookups_context_tEEUlRKSC_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1E_6item_tEEE5valueEvE4typeELSP_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1E_Efp_EEEOS1E_OS1J_.exit" [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ao = load i32, ptr %i.ak, align 8, !tbaa !60
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !149
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !22
  %i.as = call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i32
  %i.au = icmp ult i32 %i.ao, %i.at
  %i.av = load i32, ptr %i.al, align 8
  %i.aw = icmp ne i32 %i.av, 0
  %or.cond.i.i = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond.i.i, label %bb.j, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EE10hb_apply_tIZNKS11_15closure_lookupsEPNS3_28hb_closure_lookups_context_tEEUlRKSC_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1E_6item_tEEE5valueEvE4typeELSP_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1E_Efp_EEEOS1E_OS1J_.exit"

bb.j:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ax = load i32, ptr %2, align 8, !tbaa !272
  switch i32 %i.ax, label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i" [
    i32 1, label %bb.k
    i32 2, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !317
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i32, ptr %i.ak, align 8, !tbaa !314
  %i.bb = load i16, ptr %i.az, align 1, !tbaa !22
  %i.bc = call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = zext i16 %i.bc to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.ba, %i.bd
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i", !prof !47

bb.l:                                             ; preds = %bb.k
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i"

bb.m:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  br label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i"

"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EdeEv.exit.i.i": ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.be = load i32, ptr %i.al, align 8, !tbaa !971
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.be, 0
  %i.bf = load ptr, ptr %i.am, align 8
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.bf, !prof !33
  %.val.i.i.i.i = load ptr, ptr %.sroa.632.0..sroa_idx, align 8, !tbaa !974
  %.val1.i.i.i.i = load i16, ptr %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22 ; 2 uses
  %i.bg = icmp eq i16 %.val1.i.i.i.i, 0
  %i.bh = call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i)
  %i.bi = zext i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.bi
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bg, ptr @_hb_NullPool, ptr %i.bj, !prof !33
  call void @_ZNK2OT12ChainRuleSetINS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tERNS_32ChainContextClosureLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.bk = call fastcc noundef nonnull align 8 dereferenceable(88) ptr @"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EERKSC_EppEv"(ptr noundef nonnull align 8 dereferenceable(1) %2) ; 0 uses
  br label %bb.g, !llvm.loop !1034

"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_12ChainRuleSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE12hb_partial_tILj2EPK4$_40PKNS3_21ChainContextFormat1_4ISB_EEELSU_0ELSP_0EE10hb_apply_tIZNKS11_15closure_lookupsEPNS3_28hb_closure_lookups_context_tEEUlRKSC_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1E_6item_tEEE5valueEvE4typeELSP_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1E_Efp_EEEOS1E_OS1J_.exit": ; preds = %bb.g, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT12ChainRuleSetINS_6Layout10SmallTypesEE15closure_lookupsEPNS_28hb_closure_lookups_context_tERNS_32ChainContextClosureLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !877
  %i.c = icmp ugt i32 %i.b, 35000
  br i1 %i.c, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSI_15closure_lookupsEPNS2_28hb_closure_lookups_context_tERNS2_32ChainContextClosureLookupContextEEUlRKS7_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSZ_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISZ_Efp_EEEOSZ_OS14_.exit", label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %0, align 1, !tbaa !22     ; 2 uses
  %.not11.i.i = icmp eq i16 %i.d, 0
  br i1 %.not11.i.i, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSI_15closure_lookupsEPNS2_28hb_closure_lookups_context_tERNS2_32ChainContextClosureLookupContextEEUlRKS7_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSZ_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISZ_Efp_EEEOSZ_OS14_.exit", label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %bb.b
  %i.e = tail call noundef i16 @llvm.bswap.i16(i16 %i.d)
  %.sroa.429.8.extract.trunc = zext i16 %i.e to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i"
  %.val812.i.i = phi i32 [ %i.cu, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i" ], [ %.sroa.429.8.extract.trunc, %.lr.ph.split.i.i.preheader ]
  %.pn = phi ptr [ %i.j, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i" ], [ %0, %.lr.ph.split.i.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  %.val1.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !22 ; 2 uses
  %i.k = icmp eq i16 %.val1.i.i.i.i, 0
  %i.l = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i)
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.k, ptr @_hb_NullPool, ptr %i.n, !prof !33 ; 3 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !877
  %i.p = icmp ugt i32 %i.o, 35000
  br i1 %i.p, label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i", label %bb.c, !prof !33

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !873
  %i.r = tail call noundef zeroext i1 @_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE10intersectsEPK8hb_set_tRNS_32ChainContextClosureLookupContextE(ptr noundef nonnull align 1 dereferenceable(18) %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(80) %2)
  br i1 %i.r, label %bb.d, label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i"

bb.d:                                             ; preds = %bb.c
  %i.s = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.y = load i16, ptr %i.x, align 1, !tbaa !22   ; 2 uses
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i64
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.y, 0
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 2, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ac ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !22
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 1, !tbaa !22 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i", label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.d
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %wide.trip.count.i.i.i.i.i.i.i = zext i16 %i.al to i64
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN2OT28hb_closure_lookups_context_t7recurseEj.exit.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i, %_ZN2OT28hb_closure_lookups_context_t7recurseEj.exit.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 6
  %i.ao = load i16, ptr %i.an, align 1, !tbaa !22
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i32                   ; 4 uses
  %i.ar = load i32, ptr %i.g, align 8, !tbaa !874
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = load ptr, ptr %i.h, align 8
  %.not.i.i.i = icmp eq ptr %i.at, null
  %i.au = select i1 %i.as, i1 true, i1 %.not.i.i.i, !prof !33
  %i.av = load i32, ptr %i.a, align 8
end_hunk_10
