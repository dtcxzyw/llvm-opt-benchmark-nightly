inline.NumInlined: 1642
inline.NumDeleted: 696
begin_hunk_0_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_:bb.a
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.q
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !37
  %i.aj = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !314

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i64 %i.q, ptr %i.ak, align 8, !tbaa !37
  %.not.us = icmp eq i64 %.08.us, 0
  %i.al = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !322

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.08 = phi i64 [ %i.bk, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.08
  %i.an = load i64, ptr %i.am, align 8, !tbaa !37 ; 2 uses
  %i.ao = icmp slt i64 %.08, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.ap = shl i64 %.035.i, 1                      ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = load i64, ptr %i.ar, align 8, !tbaa !37
  %i.av = load i64, ptr %i.at, align 8, !tbaa !37
  %i.aw = icmp ult i64 %i.au, %i.av
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !37
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.035.i
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !37
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !313

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load i64, ptr %i.n, align 8, !tbaa !37
  store i64 %i.bc, ptr %i.o, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.08
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !37 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !37
  %i.bi = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !314

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i64 %i.an, ptr %i.bj, align 8, !tbaa !37
  %.not = icmp eq i64 %.08, 0
  %i.bk = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !322

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !194    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
  unreachable

_ZNKSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !186
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !186
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !179
  store ptr %i.w, ptr %i.u, align 8, !tbaa !179
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !328
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !186, !alias.scope !326, !noalias !323
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !186, !alias.scope !323, !noalias !326
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !179, !alias.scope !326, !noalias !323
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !179, !alias.scope !323, !noalias !326
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !alias.scope !326, !noalias !323
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !329

_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ae, %.lr.ph.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.an, %.lr.ph.i.i.i.i17 ], [ %i.af, %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.am, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i19, i64 16, i1 false), !alias.scope !335
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 16 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !186, !alias.scope !333, !noalias !330
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !186, !alias.scope !330, !noalias !333
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !179, !alias.scope !333, !noalias !330
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !179, !alias.scope !330, !noalias !333
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false), !alias.scope !333, !noalias !330
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !329

_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.af, %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.an, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6duckdb17MetadataBlockInfoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #24
  br label %_ZNSt12_Vector_baseIN6duckdb17MetadataBlockInfoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb17MetadataBlockInfoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !194
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !191
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !193
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::MetadataBlockInfo", align 8 ; 6 uses
  %4 = alloca %"struct.duckdb::MetadataBlockInfo", align 8 ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 640
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEET_SE_SE_T0_.exit"
  %i.k = icmp eq i64 %i.am, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph43, !llvm.loop !336

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa39 = phi i64 [ %i.c, %.lr.ph ], [ %i.co, %bb.b ]
  %storemerge24.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.l = udiv exact i64 %.lcssa39, 40             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.m = add nsw i64 %i.l, -2
  %i.n = lshr i64 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb17MetadataBlockInfoD2Ev.exit12.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.n, %._crit_edge ], [ %i.w, %_ZN6duckdb17MetadataBlockInfoD2Ev.exit12.i.i.i ] ; 4 uses
  %i.q = getelementptr inbounds [40 x i8], ptr %0, i64 %.010.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !179
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !186
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.u, ptr %i.o, align 8, !tbaa !186
  store ptr %i.t, ptr %i.p, align 8, !tbaa !179
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_SF_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %i.l, ptr noundef %4)
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !175  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb17MetadataBlockInfoD2Ev.exit12.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #24
  br label %_ZN6duckdb17MetadataBlockInfoD2Ev.exit12.i.i.i

_ZN6duckdb17MetadataBlockInfoD2Ev.exit12.i.i.i:   ; preds = %bb.d, %bb.c
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.w = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_RT0_.exit.i.i", label %bb.c, !llvm.loop !337

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_RT0_.exit.i.i": ; preds = %_ZN6duckdb17MetadataBlockInfoD2Ev.exit12.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.e

bb.e:                                             ; preds = %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_RT0_.exit.i11.i", %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_RT0_.exit.i.i" ], [ %i.z, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_RT0_.exit.i11.i" ] ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !179
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ad, %i.a                     ; 2 uses
  %i.af = sdiv exact i64 %i.ae, 40
  %i.ag = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !186
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 16, i1 false)
  %i.ah = load <2 x ptr>, ptr %i.f, align 8, !tbaa !186
  store <2 x ptr> %i.ah, ptr %i.aa, align 8, !tbaa !186
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !179
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !179
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.ag, ptr %i.x, align 8, !tbaa !186
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !179
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_SF_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.af, ptr noundef %3)
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i.i.i.i10.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i10.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_RT0_.exit.i11.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.aj) #24
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_RT0_.exit.i11.i"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_RT0_.exit.i11.i": ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ak = icmp sgt i64 %i.ae, 40
  br i1 %i.ak, label %bb.e, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !338

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2442 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 7 uses
  %.02541 = phi i64 [ %i.am, %bb.b ], [ %2, %.lr.ph ]
  %i.al = phi i64 [ %i.co, %bb.b ], [ %i.c, %.lr.ph ]
  %i.am = add nsw i64 %.02541, -1                 ; 3 uses
  %i.an = udiv i64 %i.al, 80
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.an ; 9 uses
  %i.ap = getelementptr inbounds i8, ptr %storemerge2442, i64 -40 ; 5 uses
  %.val.i.i.i = load i64, ptr %i.e, align 8, !tbaa !180 ; 3 uses
  %.val1.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !180 ; 3 uses
  %i.aq = icmp slt i64 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i64, ptr %i.ap, align 8, !tbaa !180 ; 4 uses
  br i1 %i.aq, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph43
  %i.ar = icmp slt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %0, align 8
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !179
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.f, align 8, !tbaa !186
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 16, i1 false)
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !186
  store <2 x ptr> %i.aw, ptr %i.f, align 8, !tbaa !186
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !179
  store ptr %i.ax, ptr %i.g, align 8, !tbaa !179
  store <16 x i8> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ao, align 8
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !186
  store ptr %i.as, ptr %i.au, align 8, !tbaa !179
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.i:                                             ; preds = %bb.g
  %i.ay = icmp slt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.0.i.i30.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %0, align 8
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !179
  %i.ba = getelementptr inbounds i8, ptr %storemerge2442, i64 -24 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %storemerge2442, i64 -8 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.f, align 8, !tbaa !186
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 16, i1 false)
  %i.bd = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !186
  store <2 x ptr> %i.bd, ptr %i.f, align 8, !tbaa !186
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !179
  store ptr %i.be, ptr %i.g, align 8, !tbaa !179
  store <16 x i8> %.sroa.0.i.i30.i.i.sroa.0.0.copyload, ptr %i.ap, align 8
  store <2 x ptr> %i.bc, ptr %i.ba, align 8, !tbaa !186
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !179
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.k:                                             ; preds = %bb.i
  %.sroa.0.i.i31.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %0, align 8
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !179
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 16, i1 false)
  %i.bg = load <2 x ptr>, ptr %i.h, align 8, !tbaa !186
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !179
  store ptr %i.bh, ptr %i.g, align 8, !tbaa !179
  store <16 x i8> %.sroa.0.i.i31.i.i.sroa.0.0.copyload, ptr %i.e, align 8
  %i.bi = load <2 x ptr>, ptr %i.f, align 8, !tbaa !186
  store <2 x ptr> %i.bg, ptr %i.f, align 8, !tbaa !186
  store <2 x ptr> %i.bi, ptr %i.h, align 8, !tbaa !186
  store ptr %i.bf, ptr %i.i, align 8, !tbaa !179
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.l:                                             ; preds = %.lr.ph43
  %i.bj = icmp slt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.0.i.i34.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %0, align 8
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !179
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 16, i1 false)
  %i.bl = load <2 x ptr>, ptr %i.h, align 8, !tbaa !186
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !179
  store ptr %i.bm, ptr %i.g, align 8, !tbaa !179
  store <16 x i8> %.sroa.0.i.i34.i.i.sroa.0.0.copyload, ptr %i.e, align 8
  %i.bn = load <2 x ptr>, ptr %i.f, align 8, !tbaa !186
  store <2 x ptr> %i.bl, ptr %i.f, align 8, !tbaa !186
  store <2 x ptr> %i.bn, ptr %i.h, align 8, !tbaa !186
  store ptr %i.bk, ptr %i.i, align 8, !tbaa !179
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.bo = icmp slt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.0.i.i37.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %0, align 8
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !179
  %i.bq = getelementptr inbounds i8, ptr %storemerge2442, i64 -24 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %storemerge2442, i64 -8 ; 2 uses
  %i.bs = load <2 x ptr>, ptr %i.f, align 8, !tbaa !186
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 16, i1 false)
  %i.bt = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !186
  store <2 x ptr> %i.bt, ptr %i.f, align 8, !tbaa !186
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !179
  store ptr %i.bu, ptr %i.g, align 8, !tbaa !179
  store <16 x i8> %.sroa.0.i.i37.i.i.sroa.0.0.copyload, ptr %i.ap, align 8
  store <2 x ptr> %i.bs, ptr %i.bq, align 8, !tbaa !186
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !179
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  %.sroa.0.i.i38.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %0, align 8
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !179
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.by = load <2 x ptr>, ptr %i.f, align 8, !tbaa !186
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 16, i1 false)
  %i.bz = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !186
  store <2 x ptr> %i.bz, ptr %i.f, align 8, !tbaa !186
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !179
  store ptr %i.ca, ptr %i.g, align 8, !tbaa !179
  store <16 x i8> %.sroa.0.i.i38.i.i.sroa.0.0.copyload, ptr %i.ao, align 8
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !186
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !179
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader": ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader", %bb.s
  %.sroa.012.0.i.i = phi ptr [ %i.cc, %bb.s ], [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.s ], [ %storemerge2442, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ]
  %.val1.i.i14.i = load i64, ptr %0, align 8, !tbaa !180 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i" ], [ %i.cc, %bb.q ] ; 11 uses
  %.val.i.i15.i = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !180
  %i.cb = icmp slt i64 %.val.i.i15.i, %.val1.i.i14.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 40 ; 2 uses
  br i1 %i.cb, label %bb.q, label %.preheader.i.i, !llvm.loop !339

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.q ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 6 uses
  %.val1.i9.i.i = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !180
  %i.cd = icmp slt i64 %.val1.i.i14.i, %.val1.i9.i.i
  br i1 %i.cd, label %.preheader.i.i, label %bb.r, !llvm.loop !340

bb.r:                                             ; preds = %.preheader.i.i
  %i.ce = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ce, label %bb.s, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEET_SE_SE_T0_.exit"

bb.s:                                             ; preds = %bb.r
  %.sroa.0.i.i.i13.i.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.012.1.i.i, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !179
  %i.ci = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.ck = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !186
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.1.i.i, i64 16, i1 false)
  %i.cl = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !186
  store <2 x ptr> %i.cl, ptr %i.cf, align 8, !tbaa !186
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !179
  store ptr %i.cm, ptr %i.cg, align 8, !tbaa !179
  store <16 x i8> %.sroa.0.i.i.i13.i.sroa.0.0.copyload, ptr %.sroa.0.1.i.i, align 8
  store <2 x ptr> %i.ck, ptr %i.ci, align 8, !tbaa !186
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !179
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", !llvm.loop !341

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEET_SE_SE_T0_.exit": ; preds = %bb.r
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2442, i64 noundef %i.am)
  %i.cn = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.co = sub i64 %i.cn, %i.a                     ; 3 uses
  %i.cp = icmp sgt i64 %i.co, 640
  br i1 %i.cp, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !336

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEET_SE_SE_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_RT0_.exit.i11.i", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_SF_T1_T2_"(ptr captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull captures(none) %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit
  %.048 = phi i64 [ %spec.select, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.048, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [40 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [40 x i8], ptr %0, i64 %i.g
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !180
  %.val1.i = load i64, ptr %i.h, align 8, !tbaa !180
  %i.i = icmp slt i64 %.val.i, %.val1.i
  %spec.select = select i1 %i.i, i64 %i.g, i64 %i.e ; 4 uses
  %i.j = getelementptr inbounds [40 x i8], ptr %0, i64 %spec.select ; 3 uses
  %i.k = getelementptr inbounds [40 x i8], ptr %0, i64 %.048 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !175  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !186
  store <2 x ptr> %i.p, ptr %i.l, align 8, !tbaa !186
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !179
  store ptr %i.r, ptr %i.o, align 8, !tbaa !179
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #24
  br label %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit

_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit:        ; preds = %.lr.ph, %bb.b
  %i.s = icmp slt i64 %spec.select, %i.b
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !342

._crit_edge:                                      ; preds = %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit ] ; 5 uses
  %i.t = and i64 %2, 1
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.c, label %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit26

bb.c:                                             ; preds = %._crit_edge
  %i.v = add nsw i64 %2, -2
  %i.w = ashr exact i64 %i.v, 1
  %i.x = icmp eq i64 %.0.lcssa, %i.w
  br i1 %i.x, label %bb.d, label %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit26

bb.d:                                             ; preds = %bb.c
  %i.y = shl nsw i64 %.0.lcssa, 1
  %i.z = or disjoint i64 %i.y, 1                  ; 3 uses
  %i.aa = getelementptr inbounds [40 x i8], ptr %0, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !175 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ag = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !186
  store <2 x ptr> %i.ag, ptr %i.ac, align 8, !tbaa !186
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !179
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !179
  %.not.i.i.i.i.i.i.i25 = icmp eq ptr %i.ae, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i25, label %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit26, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.ae) #24
  br label %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit26

_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit26:      ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.c ], [ %i.z, %bb.d ], [ %i.z, %bb.e ] ; 3 uses
  %i.aj = load <2 x i64>, ptr %3, align 8
  %.sroa.0.0.copyload30 = load i64, ptr %3, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !186
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !179
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.ao = icmp sgt i64 %.1, %1
  br i1 %i.ao, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit26, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i
  %.010.i = phi i64 [ %.0911.i, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i ], [ %.1, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit26 ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.ap = getelementptr inbounds [40 x i8], ptr %0, i64 %.0911.i ; 4 uses
  %.val.i.i = load i64, ptr %i.ap, align 8, !tbaa !180
  %i.aq = icmp slt i64 %.val.i.i, %.sroa.0.0.copyload30
  br i1 %i.aq, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds [40 x i8], ptr %0, i64 %.010.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !175 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !186
  store <2 x ptr> %i.aw, ptr %i.as, align 8, !tbaa !186
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !179
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !179
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #24
  br label %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i

_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i:      ; preds = %bb.g, %bb.f
  %i.az = icmp sgt i64 %.0911.i, %1
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i, !llvm.loop !343

.critedge.i:                                      ; preds = %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i, %.lr.ph.i, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit26
  %.0.lcssa.i = phi i64 [ %.1, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit26 ], [ %.010.i, %.lr.ph.i ], [ %.0911.i, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i ]
  %i.ba = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa.i ; 3 uses
  store <2 x i64> %i.aj, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !175 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store <2 x ptr> %i.al, ptr %i.bb, align 8, !tbaa !186
  store ptr %i.an, ptr %i.bd, align 8, !tbaa !179
  %.not.i.i.i.i.i.i.i10.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i10.i, label %_ZN6duckdb17MetadataBlockInfoD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bc) #24
  br label %_ZN6duckdb17MetadataBlockInfoD2Ev.exit

_ZN6duckdb17MetadataBlockInfoD2Ev.exit:           ; preds = %.critedge.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_"(ptr %0, ptr readnone captures(address) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit21, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.012.022 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not23 = icmp eq ptr %.sroa.012.022, %1
  br i1 %.not23, label %.loopexit21, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit"
  %.sroa.012.025 = phi ptr [ %.sroa.012.022, %.lr.ph ], [ %.sroa.012.0, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit" ] ; 7 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.012.025, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit" ] ; 7 uses
  %.val.i = load i64, ptr %.sroa.012.025, align 8, !tbaa !180 ; 4 uses
  %.val1.i = load i64, ptr %0, align 8, !tbaa !180
  %i.e = icmp slt i64 %.val.i, %.val1.i
  %i.f = getelementptr inbounds nuw i8, ptr %.pn24, i64 56 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn24, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn24, i64 72 ; 3 uses
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.0.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.012.025, align 8
  %i.i = load <2 x ptr>, ptr %i.f, align 8, !tbaa !186
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !179
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.k = ptrtoint ptr %.sroa.012.025 to i64
  %i.l = sub i64 %i.k, %i.b                       ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24, i64 80
  %i.o = udiv exact i64 %i.l, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.y, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.q, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i ], [ %i.n, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.p, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.012.025, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 16, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !175  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !186
  store <2 x ptr> %i.v, ptr %i.r, align 8, !tbaa !186
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !179
  store ptr %i.x, ptr %i.u, align 8, !tbaa !179
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #24
  br label %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i

_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.y = add nsw i64 %.010.i.i.i.i.i, -1
  %i.z = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !344

.loopexit:                                        ; preds = %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i, %bb.c
  store <16 x i8> %.sroa.0.sroa.0.0.copyload, ptr %0, align 8
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !175 ; 2 uses
  store <2 x ptr> %i.i, ptr %i.c, align 8, !tbaa !186
  store ptr %i.j, ptr %i.d, align 8, !tbaa !179
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit", label %bb.e

bb.e:                                             ; preds = %.loopexit
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #24
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit"

bb.f:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn24, i64 48
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !175 ; 2 uses
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !178 ; 2 uses
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !179 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.val2.i15.i = load i64, ptr %.pn24, align 8, !tbaa !180
  %i.ae = icmp slt i64 %.val.i, %.val2.i15.i
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !175
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !178
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !179
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit"

.lr.ph.i:                                         ; preds = %bb.f, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i
  %.sroa.0.017.i = phi ptr [ %.sroa.0.0.i, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i ], [ %.pn24, %bb.f ] ; 8 uses
  %.sroa.011.016.i = phi ptr [ %.sroa.0.017.i, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i ], [ %.sroa.012.025, %bb.f ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.011.016.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.017.i, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.011.016.i, i64 -24 ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !175 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i, i64 32
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !186
  store <2 x ptr> %i.aj, ptr %i.af, align 8, !tbaa !186
  %i.ak = getelementptr inbounds i8, ptr %.sroa.011.016.i, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !179
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !179
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #24
  br label %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i

_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i:      ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.017.i, i64 -40 ; 2 uses
  %.val2.i.i = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !180
  %i.am = icmp slt i64 %.val.i, %.val2.i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !187

._crit_edge.i:                                    ; preds = %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !175 ; 2 uses
  store i64 %.val.i, ptr %.sroa.0.017.i, align 8
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx7.i, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 32
  store ptr %i.ab, ptr %.phi.trans.insert.i, align 8, !tbaa !175
  store ptr %i.ac, ptr %i.an, align 8, !tbaa !178
  store ptr %i.ad, ptr %i.ao, align 8, !tbaa !179
  %.not.i.i.i.i.i.i.i1.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i.i.i.i1.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  tail call void @_ZdlPv(ptr noundef nonnull %.pre.i) #24
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit"

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit": ; preds = %.loopexit, %bb.e, %bb.h, %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.012.0 = getelementptr inbounds nuw i8, ptr %.sroa.012.025, i64 40 ; 2 uses
  %.not = icmp eq ptr %.sroa.012.0, %1
  br i1 %.not, label %.loopexit21, label %bb.b, !llvm.loop !345

.loopexit21:                                      ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit", %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !200    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
  unreachable

_ZNKSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !26
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !26
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNSt16allocator_traitsISaIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3
  br label %_ZNSt16allocator_traitsISaIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16allocator_traitsISaIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt16allocator_traitsISaIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !26, !alias.scope !349, !noalias !346
  store ptr null, ptr %i.z, align 8, !tbaa !27, !alias.scope !349, !noalias !346
  store <2 x ptr> %i.aa, ptr %.012.i.i.i.i, align 8, !tbaa !26, !alias.scope !346, !noalias !349
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !129, !alias.scope !349, !noalias !346
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i.i26, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !351

_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNSt16allocator_traitsISaIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit ], [ %i.ac, %.lr.ph.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i27, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i.i28
  %.012.i.i.i.i29 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i28 ], [ %i.ad, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i.i30 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i28 ], [ %1, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i.i30, align 8, !tbaa !26, !alias.scope !355, !noalias !352
  store ptr null, ptr %i.ae, align 8, !tbaa !27, !alias.scope !355, !noalias !352
  store <2 x ptr> %i.af, ptr %.012.i.i.i.i29, align 8, !tbaa !26, !alias.scope !352, !noalias !355
  store ptr null, ptr %.0911.i.i.i.i30, align 8, !tbaa !129, !alias.scope !355, !noalias !352
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 16 ; 2 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i31, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33, label %.lr.ph.i.i.i.i28, !llvm.loop !351

_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33: ; preds = %.lr.ph.i.i.i.i28, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i.i32 = phi ptr [ %i.ad, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i.i28 ]
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #24
  br label %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !200
  store ptr %.0.lcssa.i.i.i.i32, ptr %i.a, align 8, !tbaa !196
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !199
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_6vectorINS_16MetaBlockPointerELb1ESaIS2_EEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !222
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19
end_hunk_0
