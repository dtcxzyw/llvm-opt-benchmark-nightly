Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_sample?download=true
inline.NumInlined: 1843
inline.NumDeleted: 893
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.am = load i64, ptr %i.al, align 8, !tbaa !204, !alias.scope !421, !noalias !420 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !422
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !53, !alias.scope !420, !noalias !421
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !129, !alias.scope !421, !noalias !420
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !129, !alias.scope !420, !noalias !421
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !204, !alias.scope !421, !noalias !420
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !204, !alias.scope !420, !noalias !421
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !53, !alias.scope !421, !noalias !420
  store i64 0, ptr %i.ar, align 8, !tbaa !204, !alias.scope !421, !noalias !420
  store i8 0, ptr %i.aj, align 8, !tbaa !129, !alias.scope !421, !noalias !420
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !416

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ], [ %i.au, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23
  %.012.i.i.i.i18 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %i.av, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %1, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i19, i64 32, i1 false), !alias.scope !425
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 48 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !203, !alias.scope !423, !noalias !424
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !53, !alias.scope !424, !noalias !423 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 48 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !204, !alias.scope !424, !noalias !423 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false), !alias.scope !425
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i.i17
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !53, !alias.scope !423, !noalias !424
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !129, !alias.scope !424, !noalias !423
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !129, !alias.scope !423, !noalias !424
  %.phi.trans.insert.i.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %.pre.i.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i.i21, align 8, !tbaa !204, !alias.scope !424, !noalias !423
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bh = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 40
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !204, !alias.scope !423, !noalias !424
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !53, !alias.scope !424, !noalias !423
  store i64 0, ptr %i.bi, align 8, !tbaa !204, !alias.scope !424, !noalias !423
  store i8 0, ptr %i.ba, align 8, !tbaa !129, !alias.scope !424, !noalias !423
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i.i24, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !416

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i25 = phi ptr [ %i.av, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ]
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #28
  br label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !208
  store ptr %.0.lcssa.i.i.i.i25, ptr %i.a, align 8, !tbaa !209
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !210
  ret void
}

declare void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt24uniform_int_distributionImEclIN6duckdb12ReservoirRNGEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !70
  %i.c = load i64, ptr %2, align 8, !tbaa !69
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = icmp ult i64 %i.d, 4294967295
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %i.d to i32                ; 3 uses
  %i.g = add nuw i32 %i.f, 1                      ; 2 uses
  %i.h = tail call noundef i32 @_ZN6duckdb12RandomEngine17NextRandomIntegerEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.i = zext i32 %i.h to i64
  %i.j = zext i32 %i.g to i64                     ; 2 uses
  %i.k = mul nuw i64 %i.i, %i.j                   ; 3 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %.not21 = icmp ult i32 %i.f, %i.l
  br i1 %.not21, label %_ZNSt24uniform_int_distributionImE5_S_ndImN6duckdb12ReservoirRNGEjEET1_RT0_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = xor i32 %i.f, -1
  %i.n = urem i32 %i.m, %i.g                      ; 2 uses
  %i.o = icmp ugt i32 %i.n, %i.l
  br i1 %i.o, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionImE5_S_ndImN6duckdb12ReservoirRNGEjEET1_RT0_S4_.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.p = tail call noundef i32 @_ZN6duckdb12RandomEngine17NextRandomIntegerEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.q = zext i32 %i.p to i64
  %i.r = mul nuw i64 %i.q, %i.j                   ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp ugt i32 %i.n, %i.s
  br i1 %i.t, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionImE5_S_ndImN6duckdb12ReservoirRNGEjEET1_RT0_S4_.exit, !llvm.loop !426

_ZNSt24uniform_int_distributionImE5_S_ndImN6duckdb12ReservoirRNGEjEET1_RT0_S4_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.1.i = phi i64 [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %i.r, %.lr.ph.i ]
  %i.u = lshr i64 %.1.i, 32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 4294967295
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.v = lshr i64 %i.d, 32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 0, ptr %3, align 8, !tbaa !69
  store i64 %i.v, ptr %i.w, align 8, !tbaa !70
  %i.x = call noundef i64 @_ZNSt24uniform_int_distributionImEclIN6duckdb12ReservoirRNGEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.y = shl i64 %i.x, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.z = call noundef i32 @_ZN6duckdb12RandomEngine17NextRandomIntegerEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.aa = zext i32 %i.z to i64
  %i.ab = or disjoint i64 %i.y, %i.aa             ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, %i.d
  br i1 %i.ac, label %bb.e, label %.loopexit, !llvm.loop !427

bb.f:                                             ; preds = %bb.d
  %i.ad = tail call noundef i32 @_ZN6duckdb12RandomEngine17NextRandomIntegerEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.ae = zext i32 %i.ad to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %_ZNSt24uniform_int_distributionImE5_S_ndImN6duckdb12ReservoirRNGEjEET1_RT0_S4_.exit
  %.0 = phi i64 [ %i.u, %_ZNSt24uniform_int_distributionImE5_S_ndImN6duckdb12ReservoirRNGEjEET1_RT0_S4_.exit ], [ %i.ae, %bb.f ], [ %i.ab, %bb.e ]
  %i.af = load i64, ptr %2, align 8, !tbaa !69
  %i.ag = add i64 %i.af, %.0
  ret i64 %i.ag
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #23 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i.i23 = freeze i64 %i.c                    ; 2 uses
  %i.d = ashr exact i64 %.fr.i.i23, 4             ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEET_SF_SF_T0_.exit"
  %i.i = icmp eq i64 %i.cp, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42, !llvm.loop !428

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i26.lcssa = phi i64 [ %.fr.i.i23, %.lr.ph ], [ %.fr.i.i, %bb.b ] ; 2 uses
  %storemerge24.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.j = lshr i64 %.fr.i.i26.lcssa, 4             ; 2 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %.fr.i.i26.lcssa, 16
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.aw, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load double, ptr %i.v, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.w = icmp slt i64 %.010.i.i.i, %i.n
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.x = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aa
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  %i.ac = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ac, i64 %i.aa, i64 %i.y ; 4 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i ; 2 uses
  %i.ae = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i ; 2 uses
  %i.af = load double, ptr %i.ad, align 8, !tbaa !60
  store double %i.af, ptr %i.ae, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !59
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !429

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ak = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  %or.cond.i.i.i = select i1 %i.p, i1 %i.ak, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = load double, ptr %i.r, align 8, !tbaa !60
  store double %i.al, ptr %i.s, align 8, !tbaa !58
  %i.am = load i64, ptr %i.t, align 8, !tbaa !55
  store i64 %i.am, ptr %i.u, align 8, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.an = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.011.i.i.i.i.i = phi i64 [ %.0912.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0912.in.i.i.i.i.i = add nsw i64 %.011.i.i.i.i.i, -1
  %.0912.i.i.i.i.i = sdiv i64 %.0912.in.i.i.i.i.i, 2 ; 4 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0912.i.i.i.i.i ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8 ; 2 uses
  %i.ap = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i.i
  br i1 %i.ap, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.011.i.i.i.i.i ; 2 uses
  %i.ar = load double, ptr %i.ao, align 8, !tbaa !60
  store double %i.ar, ptr %i.aq, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %i.as, align 8, !tbaa !59
  %i.at = icmp sgt i64 %.0912.i.i.i.i.i, %.010.i.i.i
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", !llvm.loop !430

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0912.i.i.i.i.i, %bb.f ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store double %.sroa.03.0.copyload.i.i.i, ptr %i.au, align 8, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %i.av, align 8, !tbaa !59
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.aw = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !431

.lr.ph.i9.i:                                      ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.ax, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i" ] ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load double, ptr %i.ax, align 8
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %.sroa.4.0.copyload.i.i12.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8 ; 2 uses
  %i.ay = load double, ptr %0, align 8, !tbaa !60
  store double %i.ay, ptr %i.ax, align 8, !tbaa !58
  %i.az = load i64, ptr %i.g, align 8, !tbaa !55
  store i64 %i.az, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8, !tbaa !59
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.ba, %i.a                     ; 3 uses
  %i.bc = ashr exact i64 %i.bb, 4                 ; 3 uses
  %i.bd = add nsw i64 %i.bc, -1
  %i.be = lshr i64 %i.bd, 1
  %i.bf = icmp sgt i64 %i.bc, 2
  br i1 %i.bf, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i22.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i22.i
  %.037.i.i.i23.i = phi i64 [ %spec.select.i.i.i28.i, %.lr.ph.i.i.i22.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bg = shl i64 %.037.i.i.i23.i, 1              ; 2 uses
  %i.bh = add i64 %i.bg, 2                        ; 2 uses
  %i.bi = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bh
  %i.bj = or disjoint i64 %i.bg, 1                ; 2 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bj
  %.sroa.22.0..sroa_idx.i.i.i.i24.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.22.0.copyload.i.i.i.i25.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i24.i, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i26.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.2.0.copyload.i.i.i.i27.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i26.i, align 8
  %i.bl = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i25.i, %.sroa.2.0.copyload.i.i.i.i27.i
  %spec.select.i.i.i28.i = select i1 %i.bl, i64 %i.bj, i64 %i.bh ; 4 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i28.i ; 2 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i23.i ; 2 uses
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !60
  store double %i.bo, ptr %i.bn, align 8, !tbaa !58
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !59
  %i.bs = icmp slt i64 %spec.select.i.i.i28.i, %i.be
  br i1 %i.bs, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i, !llvm.loop !429

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i22.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i28.i, %.lr.ph.i.i.i22.i ] ; 5 uses
  %i.bt = and i64 %i.bb, 16
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bv = add nsw i64 %i.bc, -2
  %i.bw = ashr exact i64 %i.bv, 1
  %i.bx = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bw
  br i1 %i.bx, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.by = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bz = or disjoint i64 %i.by, 1                ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i ; 2 uses
  %i.cc = load double, ptr %i.ca, align 8, !tbaa !60
  store double %i.cc, ptr %i.cb, align 8, !tbaa !58
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !55
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.011.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bz, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.011.i.i.i.i17.i = phi i64 [ %.0912.i.i56.i.i.i, %bb.i ], [ %.011.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0912.in.i.i.i.i18.i = add nsw i64 %.011.i.i.i.i17.i, -1
  %.0912.i.i56.i.i.i = lshr i64 %.0912.in.i.i.i.i18.i, 1 ; 3 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0912.i.i56.i.i.i ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i19.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i20.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i19.i, align 8 ; 2 uses
  %i.ch = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i.i20.i, %.sroa.4.0.copyload.i.i12.i
  br i1 %i.ch, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.ci = getelementptr inbounds [16 x i8], ptr %0, i64 %.011.i.i.i.i17.i ; 2 uses
  %i.cj = load double, ptr %i.cg, align 8, !tbaa !60
  store double %i.cj, ptr %i.ci, align 8, !tbaa !58
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %.sroa.22.0.copyload.i.i.i.i.i20.i, ptr %i.ck, align 8, !tbaa !59
  %.not7.i.i.i = icmp eq i64 %.0912.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !430

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i21.i = phi i64 [ 0, %bb.h ], [ %.011.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.cl = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i21.i ; 2 uses
  store double %.sroa.03.0.copyload.i.i10.i, ptr %i.cl, align 8, !tbaa !58
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %.sroa.4.0.copyload.i.i12.i, ptr %i.cm, align 8, !tbaa !59
  %i.cn = icmp sgt i64 %i.bb, 16
  br i1 %i.cn, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !432

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2441 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02540 = phi i64 [ %i.cp, %bb.b ], [ %2, %.lr.ph ]
  %i.co = phi i64 [ %i.dw, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cp = add nsw i64 %.02540, -1                 ; 3 uses
  %i.cq = lshr i64 %i.co, 1
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cq ; 5 uses
  %i.cs = getelementptr inbounds i8, ptr %storemerge2441, i64 -16 ; 4 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 5 uses
  %i.ct = icmp ult i64 %.sroa.22.0.copyload.i.i.i, %.sroa.2.0.copyload.i.i.i
  %.sroa.2.0..sroa_idx.i28.i.i = getelementptr inbounds i8, ptr %storemerge2441, i64 -8 ; 3 uses
  %.sroa.2.0.copyload.i29.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i28.i.i, align 8 ; 6 uses
  br i1 %i.ct, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.cu = icmp ult i64 %.sroa.2.0.copyload.i.i.i, %.sroa.2.0.copyload.i29.i.i
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cv = load double, ptr %0, align 8, !tbaa !60
  %i.cw = load double, ptr %i.cr, align 8, !tbaa !60
  store double %i.cw, ptr %0, align 8, !tbaa !60
  store double %i.cv, ptr %i.cr, align 8, !tbaa !60
  %i.cx = load i64, ptr %i.g, align 8, !tbaa !55
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.g, align 8, !tbaa !55
  store i64 %i.cx, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !55
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cy = icmp ult i64 %.sroa.22.0.copyload.i.i.i, %.sroa.2.0.copyload.i29.i.i
  %i.cz = load double, ptr %0, align 8, !tbaa !60 ; 2 uses
  br i1 %i.cy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.da = load double, ptr %i.cs, align 8, !tbaa !60
  store double %i.da, ptr %0, align 8, !tbaa !60
  store double %i.cz, ptr %i.cs, align 8, !tbaa !60
  %i.db = load i64, ptr %i.g, align 8, !tbaa !55
  store i64 %.sroa.2.0.copyload.i29.i.i, ptr %i.g, align 8, !tbaa !55
  store i64 %i.db, ptr %.sroa.2.0..sroa_idx.i28.i.i, align 8, !tbaa !55
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.dc = load double, ptr %i.f, align 8, !tbaa !60
  store double %i.dc, ptr %0, align 8, !tbaa !60
  store double %i.cz, ptr %i.f, align 8, !tbaa !60
  %i.dd = load i64, ptr %i.g, align 8, !tbaa !55
  store i64 %.sroa.22.0.copyload.i.i.i, ptr %i.g, align 8, !tbaa !55
  store i64 %i.dd, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !55
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph42
  %i.de = icmp ult i64 %.sroa.22.0.copyload.i.i.i, %.sroa.2.0.copyload.i29.i.i
  br i1 %i.de, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.df = load double, ptr %0, align 8, !tbaa !60
  %i.dg = load double, ptr %i.f, align 8, !tbaa !60
  store double %i.dg, ptr %0, align 8, !tbaa !60
  store double %i.df, ptr %i.f, align 8, !tbaa !60
  %i.dh = load i64, ptr %i.g, align 8, !tbaa !55
  store i64 %.sroa.22.0.copyload.i.i.i, ptr %i.g, align 8, !tbaa !55
  store i64 %i.dh, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !55
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.di = icmp ult i64 %.sroa.2.0.copyload.i.i.i, %.sroa.2.0.copyload.i29.i.i
  %i.dj = load double, ptr %0, align 8, !tbaa !60 ; 2 uses
  br i1 %i.di, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dk = load double, ptr %i.cs, align 8, !tbaa !60
  store double %i.dk, ptr %0, align 8, !tbaa !60
  store double %i.dj, ptr %i.cs, align 8, !tbaa !60
  %i.dl = load i64, ptr %i.g, align 8, !tbaa !55
  store i64 %.sroa.2.0.copyload.i29.i.i, ptr %i.g, align 8, !tbaa !55
  store i64 %i.dl, ptr %.sroa.2.0..sroa_idx.i28.i.i, align 8, !tbaa !55
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.dm = load double, ptr %i.cr, align 8, !tbaa !60
  store double %i.dm, ptr %0, align 8, !tbaa !60
  store double %i.dj, ptr %i.cr, align 8, !tbaa !60
  %i.dn = load i64, ptr %i.g, align 8, !tbaa !55
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.g, align 8, !tbaa !55
  store i64 %i.dn, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !55
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader", %bb.v
  %.sroa.014.0.i.i = phi ptr [ %i.dp, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2441, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.sroa.2.0.copyload.i.i14.i = load i64, ptr %i.g, align 8 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ], [ %i.dp, %bb.t ] ; 10 uses
  %.sroa.22.0..sroa_idx.i.i15.i = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8
  %.sroa.22.0.copyload.i.i16.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i15.i, align 8 ; 2 uses
  %i.do = icmp ult i64 %.sroa.22.0.copyload.i.i16.i, %.sroa.2.0.copyload.i.i14.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 2 uses
  br i1 %i.do, label %bb.t, label %.preheader.i.i.preheader, !llvm.loop !433

.preheader.i.i.preheader:                         ; preds = %bb.t
  %.sroa.22.0..sroa_idx.i.i15.i.le = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %.sroa.2.0..sroa_idx.i10.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.sroa.2.0.copyload.i11.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i10.i.i, align 8 ; 2 uses
  %i.dq = icmp ult i64 %.sroa.2.0.copyload.i.i14.i, %.sroa.2.0.copyload.i11.i.i
  br i1 %i.dq, label %.preheader.i.i, label %bb.u, !llvm.loop !434

bb.u:                                             ; preds = %.preheader.i.i
  %i.dr = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dr, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEET_SF_SF_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %.sroa.2.0..sroa_idx.i10.i.i.le = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.ds = load double, ptr %.sroa.014.1.i.i, align 8, !tbaa !60
  %i.dt = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !60
  store double %i.dt, ptr %.sroa.014.1.i.i, align 8, !tbaa !60
  store double %i.ds, ptr %.sroa.0.1.i.i, align 8, !tbaa !60
  store i64 %.sroa.2.0.copyload.i11.i.i, ptr %.sroa.22.0..sroa_idx.i.i15.i.le, align 8, !tbaa !55
  store i64 %.sroa.22.0.copyload.i.i16.i, ptr %.sroa.2.0..sroa_idx.i10.i.i.le, align 8, !tbaa !55
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i", !llvm.loop !435

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEET_SF_SF_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2441, i64 noundef %i.cp)
  %i.du = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.dv = sub i64 %i.du, %i.a
  %.fr.i.i = freeze i64 %i.dv                     ; 2 uses
  %i.dw = ashr exact i64 %.fr.i.i, 4              ; 2 uses
  %i.dx = icmp sgt i64 %i.dw, 16
  br i1 %i.dx, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !428

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEET_SF_SF_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb15ReservoirSample16NormalizeWeightsEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #24

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE10_M_emplaceIJRmEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !171
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %1, align 8, !tbaa !55     ; 7 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !170
  %.not.not = icmp eq i64 %i.e, 0
  br i1 %.not.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !168  ; 2 uses
  %i.h = urem i64 %i.c, %i.g                      ; 5 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !167
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !172  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.critedge27, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.034.0.in = phi ptr [ %i.l, %bb.b ], [ %.sroa.034.0, %bb.d ]
  %.sroa.034.0 = load ptr, ptr %.sroa.034.0.in, align 8, !tbaa !171 ; 4 uses
  %.not = icmp eq ptr %.sroa.034.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !55
  %i.o = icmp eq i64 %i.c, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit, label %bb.c, !llvm.loop !436

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !168
  %i.r = urem i64 %i.c, %i.q
  br label %.critedge27

bb.f:                                             ; preds = %.thread
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !171  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !55
  %i.v = icmp eq i64 %i.c, %i.u
  br i1 %i.v, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.w = icmp eq i64 %i.c, %i.z
  br i1 %i.w, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit, label %.lr.ph.i.i, !llvm.loop !6

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.x = load ptr, ptr %.020.i.i, align 8, !tbaa !171 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i, label %.critedge27, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !55   ; 2 uses
  %i.aa = urem i64 %i.z, %i.g
  %.not19.i.i = icmp eq i64 %i.aa, %i.h
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge27, !llvm.loop !6

.critedge27:                                      ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread
  %i.ab = phi i64 [ %i.r, %bb.e ], [ %i.h, %.thread ], [ %i.h, %..loopexit_crit_edge21.i.i ], [ %i.h, %.lr.ph.i.i ]
  %i.ac = invoke ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ab, i64 noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit29

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit29: ; preds = %.critedge27
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #28
  resume { ptr, i32 } %i.ad

_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.042.0.ph = phi ptr [ %.sroa.034.0, %bb.d ], [ %i.s, %bb.f ], [ %i.x, %bb.g ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #28
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge27, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit
  %.sroa.443.055 = phi i8 [ 0, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit ], [ 1, %.critedge27 ]
  %.sroa.042.053 = phi ptr [ %.sroa.042.0.ph, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit ], [ %i.ac, %.critedge27 ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.042.053, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.443.055, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !211
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !168
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !170
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #29 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !211
  invoke void @__cxa_rethrow() #30
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #31
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !168
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !167    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !172  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !171
  store ptr %i.w, ptr %3, align 8, !tbaa !171
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !172
  store ptr %3, ptr %i.x, align 8, !tbaa !171
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !173
  store ptr %i.z, ptr %3, align 8, !tbaa !171
  store ptr %3, ptr %i.y, align 8, !tbaa !173
  %i.aa = load ptr, ptr %3, align 8, !tbaa !171   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !168
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !55
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !172
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !172
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !170
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !170
  ret ptr %3
end_hunk_0
