Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan?download=true
inline.NumInlined: 7106
inline.NumDeleted: 3185
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE5allocEj:bb.a
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !774
  %.sroa.speculated46 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %1)
  %i.k = shl i32 %.sroa.speculated46, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.k, i32 4)
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated, i1 true) ; 2 uses
  %narrow.i = sub nuw nsw i32 32, %i.l            ; 3 uses
  %i.m = shl nuw i32 1, %narrow.i                 ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 4                  ; 2 uses
  %i.p = tail call noundef ptr @hb_malloc(i64 noundef %i.o) #14 ; 3 uses
  %.not39.not = icmp eq ptr %i.p, null
  br i1 %.not39.not, label %bb.e, label %._crit_edge, !prof !36

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 8, !tbaa !216
  br label %bb.i

._crit_edge:                                      ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, i8 0, i64 %i.o, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !772  ; 2 uses
  %.not.i42 = icmp eq i32 %i.r, 0
  %i.s = add i32 %i.r, 1
  %spec.select.i = select i1 %.not.i42, i32 0, i32 %i.s ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !217  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.v, align 8, !tbaa !771
  store i32 0, ptr %i.i, align 4, !tbaa !774
  %i.w = add i32 %i.m, -1
  store i32 %i.w, ptr %i.q, align 4, !tbaa !772
  %i.x = icmp eq i32 %i.l, 0
  br i1 %i.x, label %_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE9prime_forEj.exit, label %bb.f, !prof !36

bb.f:                                             ; preds = %._crit_edge
  %i.y = zext nneg i32 %narrow.i to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIj6TripleLb0EE9prime_forEj.prime_mod, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !162
  br label %_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE9prime_forEj.exit

_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE9prime_forEj.exit: ; preds = %._crit_edge, %bb.f
  %.0.i = phi i32 [ %i.aa, %bb.f ], [ 2147483647, %._crit_edge ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.ab, align 8, !tbaa !761
  %.tr = trunc nuw nsw i32 %narrow.i to i16
  %i.ac = shl nuw nsw i16 %.tr, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !777
  store ptr %i.p, ptr %i.t, align 8, !tbaa !217
  %.not60 = icmp eq i32 %spec.select.i, 0
  br i1 %.not60, label %._crit_edge59, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE9prime_forEj.exit
  %wide.trip.count = zext i32 %spec.select.i to i64
  br label %.lr.ph56

.lr.ph58.preheader:                               ; preds = %bb.h
  %wide.trip.count66 = zext i32 %spec.select.i to i64
  br label %.lr.ph58

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph56.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph56
  %i.ai = lshr i32 %i.ag, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE13set_with_hashIjS3_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, i32 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i1 noundef zeroext true) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph56, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph58.preheader, label %.lr.ph56, !llvm.loop !778

._crit_edge59:                                    ; preds = %.lr.ph58, %_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE9prime_forEj.exit
  tail call void @hb_free(ptr noundef %i.u) #14
  br label %bb.i

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %indvars.iv63 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next64, %.lr.ph58 ] ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv63
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !763
  tail call void @hb_blob_destroy(ptr noundef %i.an) #14
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge59, label %.lr.ph58, !llvm.loop !779

bb.i:                                             ; preds = %bb.e, %._crit_edge59, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ true, %._crit_edge59 ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT12MathVariants14closure_glyphsEPK8hb_set_tPS1_(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.hb_map_iter_t.508, align 8  ; 13 uses
  %4 = alloca %struct.hb_map_iter_t.508, align 8  ; 13 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %5 = alloca %struct.hb_filter_iter_t.512, align 8 ; 4 uses
  %6 = alloca %struct.hb_zip_iter_t.516, align 8  ; 12 uses
  %7 = alloca %struct.hb_filter_iter_t.512, align 8 ; 4 uses
  %8 = alloca %struct.hb_zip_iter_t.516, align 8  ; 12 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !780
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.d = load i16, ptr %i.c, align 1, !tbaa !44
  %i.e = tail call noundef i16 @llvm.bswap.i16(i16 %i.d) ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i16, ptr %i.g, align 1, !tbaa !44
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h)
  %i.j = zext i16 %i.i to i32
  %i.k = add nuw nsw i32 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i16, ptr %i.l, align 1, !tbaa !44   ; 2 uses
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i16 @llvm.bswap.i16(i16 %i.m)
  %.sroa.3.8.insert.ext.i.i = zext i16 %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 6 uses
  %i.q = load i16, ptr %i.p, align 1, !tbaa !44, !noalias !781
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q) ; 2 uses
  switch i16 %i.r, label %"_ZNK4$_17clIRKN2OT6Layout6Common8CoverageERK10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEEOSI_OSJ_.exit" [
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !noalias !781, !srcloc !39
  br label %"_ZNK4$_17clIRKN2OT6Layout6Common8CoverageERK10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEEOSI_OSJ_.exit"

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !noalias !781, !srcloc !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 4 uses
  %i.t = load i16, ptr %i.s, align 1, !tbaa !44, !noalias !781
  %.not.i.i.i.i.i = icmp eq i16 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.e, !prof !518

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !noalias !781, !srcloc !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 3 uses
  %i.v = load i16, ptr %i.u, align 1, !tbaa !44, !noalias !781
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = zext i16 %i.w to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.s, align 1, !tbaa !44, !noalias !781
  %i.y = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.y, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !526

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.11.0.i = phi i32 [ %i.x, %bb.e ], [ 0, %bb.d ]
  %i.z = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !44, !noalias !781
  %i.aa = tail call noundef i16 @llvm.bswap.i16(i16 %i.z)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !noalias !781, !srcloc !39
  %.pre11.i.i.i.i.i = load i16, ptr %i.s, align 1, !tbaa !44, !noalias !781
  %i.ab = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.ac = load i16, ptr %i.u, align 1, !tbaa !44, !noalias !781
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac) ; 2 uses
  br i1 %i.ab, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.f, !prof !526

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !noalias !781, !srcloc !39
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.f, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.x, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.x, %bb.f ]
  %i.ae = phi i16 [ %i.aa, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.ad, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.ad, %bb.f ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.u, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !44, !noalias !781
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag)
  %i.ai = icmp ugt i16 %i.ae, %i.ah
  br i1 %i.ai, label %bb.g, label %"_ZNK4$_17clIRKN2OT6Layout6Common8CoverageERK10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEEOSI_OSJ_.exit", !prof !36

bb.g:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.aj = load i16, ptr %i.s, align 1, !tbaa !44, !noalias !781
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = zext i16 %i.ak to i32
  br label %"_ZNK4$_17clIRKN2OT6Layout6Common8CoverageERK10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEEOSI_OSJ_.exit"

"_ZNK4$_17clIRKN2OT6Layout6Common8CoverageERK10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEEOSI_OSJ_.exit": ; preds = %bb.b, %bb.c, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.g
  %.sroa.11.2.i = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.g ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.7.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.al, %bb.g ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.b ], [ %i.p, %bb.c ], [ %i.p, %bb.g ], [ %i.p, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.am = zext i16 %i.r to i32
  store i32 %i.am, ptr %6, align 8
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %.sroa.4100.0..sroa_idx, align 4
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.5101.0..sroa_idx, align 8
  %.sroa.6102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.6102.0..sroa_idx, align 8
  %.sroa.7103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %.sroa.7103.0..sroa_idx, align 4
  %.sroa.8104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.sroa.11.2.i, ptr %.sroa.8104.0..sroa_idx, align 8
  %.sroa.9105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 0, ptr %.sroa.9105.0..sroa_idx, align 4
  %.sroa.10106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.b, ptr %.sroa.10106.0..sroa_idx, align 8
  %.sroa.11107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %.sroa.3.8.insert.ext.i.i, ptr %.sroa.11107.0..sroa_idx, align 8
  call fastcc void @"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISP_Efp_EEEOSP_OSV_"(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.a, ptr nonnull @_ZL8hb_first)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false)
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr @_ZL9hb_second, ptr %.sroa.4111.0..sroa_idx, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr @_ZL6hb_add, ptr %.sroa.5112.0..sroa_idx, align 8
  %.sroa.6113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  store ptr %0, ptr %.sroa.6113.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.h

bb.h:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EERKSA_EdeEv.exit.i.i", %"_ZNK4$_17clIRKN2OT6Layout6Common8CoverageERK10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEEOSI_OSJ_.exit"
  %i.ar = load i32, ptr %4, align 8, !tbaa !788
  switch i32 %i.ar, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EE10hb_apply_tIZNKSZ_14closure_glyphsESJ_PSH_EUlRKSA_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit" [
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.as = load i32, ptr %i.ao, align 8, !tbaa !162
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !432
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.av = load i16, ptr %i.au, align 1, !tbaa !44
  %i.aw = call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i32
  %i.ay = icmp ult i32 %i.as, %i.ax
  %i.az = load i32, ptr %i.ap, align 8
  %i.ba = icmp ne i32 %i.az, 0
  %or.cond.i.i = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond.i.i, label %bb.k, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EE10hb_apply_tIZNKSZ_14closure_glyphsESJ_PSH_EUlRKSA_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit"

bb.k:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.bb = load i32, ptr %4, align 8, !tbaa !788
  switch i32 %i.bb, label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EERKSA_EdeEv.exit.i.i" [
    i32 1, label %bb.l
    i32 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !790
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.be = load i32, ptr %i.ao, align 8, !tbaa !793
  %i.bf = load i16, ptr %i.bd, align 1, !tbaa !44
  %i.bg = call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bh = zext i16 %i.bg to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.be, %i.bh
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EERKSA_EdeEv.exit.i.i", !prof !38

bb.m:                                             ; preds = %bb.l
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  br label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EERKSA_EdeEv.exit.i.i"

bb.n:                                             ; preds = %bb.k
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  br label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EERKSA_EdeEv.exit.i.i"

"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EERKSA_EdeEv.exit.i.i": ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bi = load i32, ptr %i.ap, align 8, !tbaa !794
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bi, 0
  %i.bj = load ptr, ptr %i.aq, align 8
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.bj, !prof !36
  %.val.i.i.i.i = load ptr, ptr %.sroa.6113.0..sroa_idx, align 8, !tbaa !797
  %.val1.i.i.i.i = load i16, ptr %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !44 ; 2 uses
  %i.bk = icmp eq i16 %.val1.i.i.i.i, 0
  %i.bl = call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i)
  %i.bm = zext i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.bm
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bk, ptr @_hb_NullPool, ptr %i.bn, !prof !36
  call void @_ZNK2OT21MathGlyphConstruction14closure_glyphsEP8hb_set_t(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %2)
  %i.bo = call fastcc noundef nonnull align 8 dereferenceable(88) ptr @"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EERKSA_EppEv"(ptr noundef nonnull align 8 dereferenceable(1) %4) ; 0 uses
  br label %bb.h, !llvm.loop !799

"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EE10hb_apply_tIZNKSZ_14closure_glyphsESJ_PSH_EUlRKSA_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit": ; preds = %bb.h, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.o

bb.o:                                             ; preds = %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EE10hb_apply_tIZNKSZ_14closure_glyphsESJ_PSH_EUlRKSA_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit", %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bq = load i16, ptr %i.bp, align 1, !tbaa !44 ; 2 uses
  %.not3 = icmp eq i16 %i.bq, 0
  br i1 %.not3, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = call i16 @llvm.bswap.i16(i16 %i.bq)
  %i.bs = load i16, ptr %i.c, align 1, !tbaa !44
  %i.bt = call noundef i16 @llvm.bswap.i16(i16 %i.bs) ; 2 uses
  %i.bu = zext i16 %i.bt to i32
  %i.bv = load i16, ptr %i.g, align 1, !tbaa !44
  %i.bw = call noundef i16 @llvm.bswap.i16(i16 %i.bv)
  %i.bx = zext i16 %i.bw to i32
  %storemerge.i.i = call i32 @llvm.usub.sat.i32(i32 %i.k, i32 %i.bu)
  %.sroa.speculated.i.i32 = call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.bx)
  %i.by = zext i16 %i.bt to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.by
  %.sroa.3.8.insert.ext.i.i33 = zext nneg i32 %.sroa.speculated.i.i32 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.ca = zext i16 %i.br to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ca ; 6 uses
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !44, !noalias !800
  %i.cd = call noundef i16 @llvm.bswap.i16(i16 %i.cc) ; 2 uses
  switch i16 %i.cd, label %"_ZNK4$_17clIRKN2OT6Layout6Common8CoverageERK10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEEOSI_OSJ_.exit56" [
    i16 1, label %bb.q
    i16 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !noalias !800, !srcloc !39
  br label %"_ZNK4$_17clIRKN2OT6Layout6Common8CoverageERK10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEEOSI_OSJ_.exit56"

bb.r:                                             ; preds = %bb.p
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !noalias !800, !srcloc !39
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 2 ; 4 uses
  %i.cf = load i16, ptr %i.ce, align 1, !tbaa !44, !noalias !800
  %.not.i.i.i.i.i37 = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i.i.i.i37, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i54, label %bb.s, !prof !518

bb.s:                                             ; preds = %bb.r
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !noalias !800, !srcloc !39
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 3 uses
  %i.ch = load i16, ptr %i.cg, align 1, !tbaa !44, !noalias !800
  %i.ci = call noundef i16 @llvm.bswap.i16(i16 %i.ch)
  %i.cj = zext i16 %i.ci to i32                   ; 3 uses
  %.pre8.i.i.i.i.i38 = load i16, ptr %i.ce, align 1, !tbaa !44, !noalias !800
  %i.ck = icmp eq i16 %.pre8.i.i.i.i.i38, 0
  br i1 %i.ck, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i54, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i39, !prof !526

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i54: ; preds = %bb.s, %bb.r
  %.sroa.11.0.i55 = phi i32 [ %i.cj, %bb.s ], [ 0, %bb.r ]
  %i.cl = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !44, !noalias !800
  %i.cm = call noundef i16 @llvm.bswap.i16(i16 %i.cl)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i41

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i39: ; preds = %bb.s
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !noalias !800, !srcloc !39
  %.pre11.i.i.i.i.i40 = load i16, ptr %i.ce, align 1, !tbaa !44, !noalias !800
  %i.cn = icmp eq i16 %.pre11.i.i.i.i.i40, 0
  %i.co = load i16, ptr %i.cg, align 1, !tbaa !44, !noalias !800
  %i.cp = call noundef i16 @llvm.bswap.i16(i16 %i.co) ; 2 uses
  br i1 %i.cn, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i41, label %bb.t, !prof !526

bb.t:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i39
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !noalias !800, !srcloc !39
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i41

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i41: ; preds = %bb.t, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i39, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i54
  %.sroa.11.1.i42 = phi i32 [ %.sroa.11.0.i55, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i54 ], [ %i.cj, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i39 ], [ %i.cj, %bb.t ]
  %i.cq = phi i16 [ %i.cm, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i54 ], [ %i.cp, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i39 ], [ %i.cp, %bb.t ]
  %.0.i6.i.i.i.i.i43 = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i54 ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i39 ], [ %i.cg, %bb.t ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i43, i64 2
  %i.cs = load i16, ptr %i.cr, align 1, !tbaa !44, !noalias !800
  %i.ct = call noundef i16 @llvm.bswap.i16(i16 %i.cs)
  %i.cu = icmp ugt i16 %i.cq, %i.ct
  br i1 %i.cu, label %bb.u, label %"_ZNK4$_17clIRKN2OT6Layout6Common8CoverageERK10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEEOSI_OSJ_.exit56", !prof !36

bb.u:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i41
  %i.cv = load i16, ptr %i.ce, align 1, !tbaa !44, !noalias !800
  %i.cw = call noundef i16 @llvm.bswap.i16(i16 %i.cv)
  %i.cx = zext i16 %i.cw to i32
  br label %"_ZNK4$_17clIRKN2OT6Layout6Common8CoverageERK10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEEOSI_OSJ_.exit56"

"_ZNK4$_17clIRKN2OT6Layout6Common8CoverageERK10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEEOSI_OSJ_.exit56": ; preds = %bb.p, %bb.q, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i41, %bb.u
  %.sroa.11.2.i44 = phi i32 [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.u ], [ %.sroa.11.1.i42, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i41 ]
  %.sroa.7.0.i45 = phi i32 [ 0, %bb.p ], [ 0, %bb.q ], [ %i.cx, %bb.u ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i41 ]
  %.sroa.52.0.i46 = phi ptr [ null, %bb.p ], [ %i.cb, %bb.q ], [ %i.cb, %bb.u ], [ %i.cb, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i41 ]
  %i.cy = zext i16 %i.cd to i32
  store i32 %i.cy, ptr %8, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %.sroa.480.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.52.0.i46, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %.sroa.7.0.i45, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.sroa.11.2.i44, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.bz, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %.sroa.3.8.insert.ext.i.i33, ptr %.sroa.11.0..sroa_idx, align 8
  call fastcc void @"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISP_Efp_EEEOSP_OSV_"(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr nonnull %i.a, ptr nonnull @_ZL8hb_first)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr @_ZL9hb_second, ptr %.sroa.484.0..sroa_idx, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr @_ZL6hb_add, ptr %.sroa.585.0..sroa_idx, align 8
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  store ptr %0, ptr %.sroa.686.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.v

bb.v:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EERKSA_EdeEv.exit.i.i65", %"_ZNK4$_17clIRKN2OT6Layout6Common8CoverageERK10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISI_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISJ_EEE4iterEEEOSI_OSJ_.exit56"
  %i.dd = load i32, ptr %3, align 8, !tbaa !788
  switch i32 %i.dd, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EE10hb_apply_tIZNKSZ_14closure_glyphsESJ_PSH_EUlRKSA_E0_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit" [
    i32 1, label %bb.w
    i32 2, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i63

bb.x:                                             ; preds = %bb.v
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i63

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i63: ; preds = %bb.x, %bb.w
  %i.de = load i32, ptr %i.da, align 8, !tbaa !162
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !432
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dh = load i16, ptr %i.dg, align 1, !tbaa !44
  %i.di = call noundef i16 @llvm.bswap.i16(i16 %i.dh)
  %i.dj = zext i16 %i.di to i32
  %i.dk = icmp ult i32 %i.de, %i.dj
  %i.dl = load i32, ptr %i.db, align 8
  %i.dm = icmp ne i32 %i.dl, 0
  %or.cond.i.i64 = select i1 %i.dk, i1 %i.dm, i1 false
  br i1 %or.cond.i.i64, label %bb.y, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EE10hb_apply_tIZNKSZ_14closure_glyphsESJ_PSH_EUlRKSA_E0_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit"

bb.y:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i63
  %i.dn = load i32, ptr %3, align 8, !tbaa !788
  switch i32 %i.dn, label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EERKSA_EdeEv.exit.i.i65" [
    i32 1, label %bb.z
    i32 2, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.do = load ptr, ptr %i.cz, align 8, !tbaa !790
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  %i.dq = load i32, ptr %i.da, align 8, !tbaa !793
  %i.dr = load i16, ptr %i.dp, align 1, !tbaa !44
  %i.ds = call noundef i16 @llvm.bswap.i16(i16 %i.dr)
  %i.dt = zext i16 %i.ds to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i71 = icmp ult i32 %i.dq, %i.dt
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i71, label %bb.aa, label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EERKSA_EdeEv.exit.i.i65", !prof !38

bb.aa:                                            ; preds = %bb.z
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  br label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EERKSA_EdeEv.exit.i.i65"

bb.ab:                                            ; preds = %bb.y
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  br label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EERKSA_EdeEv.exit.i.i65"

"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EERKSA_EdeEv.exit.i.i65": ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.du = load i32, ptr %i.db, align 8, !tbaa !794
  %.not.i.i.i.i.i.i.i.i.i.i.i.i66 = icmp eq i32 %i.du, 0
  %i.dv = load ptr, ptr %i.dc, align 8
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i67 = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i66, ptr @_hb_NullPool, ptr %i.dv, !prof !36
  %.val.i.i.i.i68 = load ptr, ptr %.sroa.686.0..sroa_idx, align 8, !tbaa !797
  %.val1.i.i.i.i69 = load i16, ptr %spec.select.i.i.i.i.i.i.i.i.i.i.i.i67, align 1, !tbaa !44 ; 2 uses
  %i.dw = icmp eq i16 %.val1.i.i.i.i69, 0
  %i.dx = call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i69)
  %i.dy = zext i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i68, i64 %i.dy
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i70 = select i1 %i.dw, ptr @_hb_NullPool, ptr %i.dz, !prof !36
  call void @_ZNK2OT21MathGlyphConstruction14closure_glyphsEP8hb_set_t(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i70, ptr noundef %2)
  %i.ea = call fastcc noundef nonnull align 8 dereferenceable(88) ptr @"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EERKSA_EppEv"(ptr noundef nonnull align 8 dereferenceable(1) %3) ; 0 uses
  br label %bb.v, !llvm.loop !807

"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EE10hb_apply_tIZNKSZ_14closure_glyphsESJ_PSH_EUlRKSA_E0_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit": ; preds = %bb.v, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.ac

bb.ac:                                            ; preds = %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS3_21MathGlyphConstructionENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSO_0EE12hb_partial_tILj2EPK4$_40PKNS3_12MathVariantsEELST_0ELSO_0EE10hb_apply_tIZNKSZ_14closure_glyphsESJ_PSH_EUlRKSA_E0_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1B_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1B_Efp_EEEOS1B_OS1G_.exit", %bb.o
  ret void
}

declare void @hb_set_union(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISP_Efp_EEEOSP_OSV_"(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr %.0.val, ptr %.8.val) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %.0.val, ptr %i.a, align 8, !tbaa !808, !alias.scope !811
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.8.val, ptr %i.b, align 8, !tbaa !814, !alias.scope !811
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %i.g = load i32, ptr %0, align 8, !tbaa !788, !alias.scope !811
  switch i32 %i.g, label %"_ZN24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6EclI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNSA_8OffsetToINSA_21MathGlyphConstructionENSA_7NumTypeILb1EtLj2EEEvLb1EEEEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISP_S3_S6_LDnEESP_.exit" [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.h = load i32, ptr %i.e, align 8, !tbaa !162, !alias.scope !811
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !432, !alias.scope !811
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i16, ptr %i.j, align 1, !tbaa !44
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = zext i16 %i.l to i32
  %i.n = icmp ult i32 %i.h, %i.m
  br i1 %i.n, label %_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSC_EEcvbEv.exit.i.i, label %"_ZN24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6EclI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNSA_8OffsetToINSA_21MathGlyphConstructionENSA_7NumTypeILb1EtLj2EEEvLb1EEEEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISP_S3_S6_LDnEESP_.exit"

_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSC_EEcvbEv.exit.i.i: ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i
  %i.o = load i32, ptr %i.c, align 8, !tbaa !794, !alias.scope !811
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %"_ZN24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6EclI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNSA_8OffsetToINSA_21MathGlyphConstructionENSA_7NumTypeILb1EtLj2EEEvLb1EEEEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISP_S3_S6_LDnEESP_.exit", label %bb.e

bb.e:                                             ; preds = %_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSC_EEcvbEv.exit.i.i
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !808, !alias.scope !811
  %i.q = load i32, ptr %0, align 8, !tbaa !788, !alias.scope !811
  switch i32 %i.q, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSC_EEdeEv.exit.i.i [
    i32 1, label %bb.f
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !790, !alias.scope !811 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i32, ptr %i.e, align 8, !tbaa !793, !alias.scope !811 ; 2 uses
  %i.u = load i16, ptr %i.s, align 1, !tbaa !44
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = zext i16 %i.v to i32
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.t, %i.w
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i, !prof !38

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.y = zext nneg i32 %i.t to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.y
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %bb.g ], [ @_hb_NullPool, %bb.f ]
  %i.aa = load i16, ptr %.0.i.i.i.i.i.i.i.i.i, align 1, !tbaa !44
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSC_EEdeEv.exit.i.i

bb.h:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !816, !alias.scope !811
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSC_EEdeEv.exit.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS1_21MathGlyphConstructionENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSC_EEdeEv.exit.i.i: ; preds = %bb.h, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.h ], [ %i.ac, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !780 ; 5 uses
  %i.af = lshr i32 %.0.i.i.i.i.i.i.i, 9           ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !289 ; 3 uses
  %i.ak = icmp ult i32 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !148 ; 3 uses
end_hunk_0
