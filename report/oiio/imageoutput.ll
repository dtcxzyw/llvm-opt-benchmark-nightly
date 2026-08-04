inline.NumInlined: 3702
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E11insert_implImJRKSt21piecewise_construct_tSt5tupleIJRKmEESR_IJEEEEES2_INSM_14robin_iteratorILb0EEEbERKT_DpOT0_:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %.055 = and i64 %i.a, %i.b                      ; 3 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %.055 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !8
  %.not56 = icmp slt i16 %i.f, 0
  br i1 %.not56, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.b, %bb.a
  %.034.lcssa = phi i16 [ 0, %bb.a ], [ %i.m, %bb.b ] ; 2 uses
  %.0.lcssa = phi i64 [ %.055, %bb.a ], [ %.0, %bb.b ]
  %i.g = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.034.lcssa)
  br i1 %i.g, label %.lr.ph67, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.n, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.058 = phi i64 [ %.0, %bb.b ], [ %.055, %bb.a ]
  %.03457 = phi i16 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !102
  %i.k = icmp eq i64 %i.j, %i.a
  br i1 %i.k, label %.loopexit49, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = add i64 %.058, 1
  %i.m = add i16 %.03457, 1                       ; 3 uses
  %.0 = and i64 %i.l, %i.b                        ; 3 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %.0 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !8
  %.not = icmp sgt i16 %i.m, %i.o
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !924

.loopexit:                                        ; preds = %.lr.ph64, %.lr.ph67
  %.236.lcssa = phi i16 [ 0, %.lr.ph67 ], [ %i.v, %.lr.ph64 ] ; 2 uses
  %.2.lcssa = phi i64 [ %.260, %.lr.ph67 ], [ %.2, %.lr.ph64 ]
  %i.p = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.236.lcssa)
  br i1 %i.p, label %.lr.ph67, label %._crit_edge, !llvm.loop !925

.lr.ph67:                                         ; preds = %.preheader, %.loopexit
  %i.q = load i64, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %.260 = and i64 %i.a, %i.q                      ; 3 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %.260
  %i.t = load i16, ptr %i.s, align 8, !tbaa !8
  %.not3761 = icmp slt i16 %i.t, 0
  br i1 %.not3761, label %.loopexit, label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph67, %.lr.ph64
  %.263 = phi i64 [ %.2, %.lr.ph64 ], [ %.260, %.lr.ph67 ]
  %.23662 = phi i16 [ %i.v, %.lr.ph64 ], [ 0, %.lr.ph67 ]
  %i.u = add i64 %.263, 1
  %i.v = add i16 %.23662, 1                       ; 3 uses
  %.2 = and i64 %i.u, %i.q                        ; 3 uses
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %.2
  %i.x = load i16, ptr %i.w, align 8, !tbaa !8
  %.not37 = icmp sgt i16 %i.v, %i.x
  br i1 %.not37, label %.loopexit, label %.lr.ph64, !llvm.loop !926

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.135.lcssa = phi i16 [ %.034.lcssa, %.preheader ], [ %.236.lcssa, %.loopexit ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader ], [ %.2.lcssa, %.loopexit ] ; 3 uses
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %.1.lcssa ; 6 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !8
  %i.ab = icmp eq i16 %i.aa, -1
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i64, ptr %3, align 8, !tbaa !141
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !102
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !927
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !167
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 0, ptr %i.ai, align 8, !tbaa !106
  store i8 0, ptr %i.ah, align 8, !tbaa !34
  store i16 %.135.lcssa, ptr %i.z, align 8, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.aj = trunc i64 %i.a to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #2
  %i.ak = load i64, ptr %3, align 8, !tbaa !141
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8, !tbaa !102
  store i64 %i.am, ptr %5, align 8, !tbaa !927
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !167
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.ap, align 8, !tbaa !106
  store i8 0, ptr %i.ao, align 8, !tbaa !34
  call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E17insert_value_implEmsjRS9_(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %.1.lcssa, i16 noundef signext %.135.lcssa, i32 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %5)
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !30 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ao
  br i1 %i.ar, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKmEESR_IJEEEEEvmsjDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.as = load i64, ptr %i.ao, align 8, !tbaa !34
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #39
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKmEESR_IJEEEEEvmsjDpOT_.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKmEESR_IJEEEEEvmsjDpOT_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  br label %bb.e

bb.e:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKmEESR_IJEEEEEvmsjDpOT_.exit, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !920
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !920
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %.1.lcssa
  br label %.loopexit49

.loopexit49:                                      ; preds = %.lr.ph, %bb.e
  %.pn47 = phi ptr [ %i.ay, %bb.e ], [ %i.h, %.lr.ph ]
  %.pn45 = phi i8 [ 1, %bb.e ], [ 0, %.lr.ph ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i8 } poison, ptr %.pn47, 0
  %.pn = insertvalue { ptr, i8 } %.fca.0.insert.i.pn, i8 %.pn45, 1
  ret { ptr, i8 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !174, !noundef !175
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp sgt i16 %1, 8192
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !920  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27
  %.not = icmp ult i64 %i.f, %i.h
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i64, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.j = add i64 %i.i, -4611686018427387904
  %i.k = icmp ult i64 %i.j, -4611686018427387905
  br i1 %i.k, label %bb.d, label %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #2 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.101)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #43
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #2
  resume { ptr, i32 } %i.m

_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit: ; preds = %bb.c
  %i.n = shl nsw i64 %i.i, 1
  %i.o = add i64 %i.n, 2
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %i.o)
  store i8 0, ptr %i.a, align 8, !tbaa !24
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !25, !range !174, !noundef !175
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.p, align 1, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load float, ptr %i.s, align 8, !tbaa !922 ; 2 uses
  %i.u = fcmp une float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !199  ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = uitofp i64 %i.f to float                 ; 2 uses
  %i.z = uitofp i64 %i.w to float
  %i.aa = fdiv float %i.y, %i.z
  %.0.i = select i1 %i.x, float 0.000000e+00, float %i.aa
  %i.ab = fcmp olt float %.0.i, %i.t
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = add nuw i64 %i.f, 1
  %i.ad = uitofp i64 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load float, ptr %i.ae, align 4, !tbaa !923 ; 2 uses
  %2 = fdiv float %i.ad, %i.af
  %3 = tail call noundef float @llvm.ceil.f32(float %2)
  %4 = fptoui float %3 to i64
  %5 = fdiv float %i.y, %i.af
  %6 = tail call noundef float @llvm.ceil.f32(float %5)
  %i.ag = fptoui float %6 to i64
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %4, i64 %i.ag)
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %.sroa.speculated.i.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.j, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit
  %.0 = phi i1 [ true, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit ], [ true, %bb.j ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tsl::detail_robin_hash::robin_hash", align 8 ; 16 uses
  %3 = alloca %"class.std::allocator.146", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !922
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !923
  call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_EC2EmRKSC_RKSE_RKSF_ff(ptr noundef nonnull align 8 dereferenceable(74) %2, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, float noundef %i.b, float noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !921  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !921  ; 3 uses
  %.not18 = icmp eq ptr %i.g, %i.i
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre20 = load ptr, ptr %i.f, align 8, !tbaa !28
  %.pre21 = load ptr, ptr %i.h, align 8, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.k = phi ptr [ %.pre21, %._crit_edge.loopexit ], [ %i.i, %bb.a ] ; 3 uses
  %i.l = phi ptr [ %.pre20, %._crit_edge.loopexit ], [ %i.g, %bb.a ] ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !102
  %i.m = load i64, ptr %0, align 8, !tbaa !102
  store i64 %i.m, ptr %2, align 8, !tbaa !102
  store i64 %.sroa.0.0.copyload.i.i, ptr %0, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.n, align 8, !tbaa !921
  store ptr %i.l, ptr %i.n, align 8, !tbaa !28
  store ptr %i.k, ptr %i.o, align 8, !tbaa !29
  store <2 x ptr> %i.r, ptr %i.f, align 8, !tbaa !921
  %i.s = load <2 x ptr>, ptr %i.q, align 8, !tbaa !921
  %i.t = load <2 x ptr>, ptr %i.p, align 8, !tbaa !921
  store <2 x ptr> %i.s, ptr %i.p, align 8, !tbaa !921
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !921
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !102
  %i.w = load <2 x i64>, ptr %i.u, align 8, !tbaa !102
  store i64 %i.v, ptr %i.u, align 8, !tbaa !102
  store <2 x i64> %i.w, ptr %i.e, align 8, !tbaa !102
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.z = load i64, ptr %i.x, align 8, !tbaa !102
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !102
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !102
  store i64 %i.z, ptr %i.y, align 8, !tbaa !102
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.a, align 8, !tbaa !26
  %i.ad = load <2 x float>, ptr %i.ab, align 8, !tbaa !26
  store <2 x float> %i.ac, ptr %i.ab, align 8, !tbaa !26
  store <2 x float> %i.ad, ptr %i.a, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 8, !tbaa !470, !range !174, !noundef !175
  %i.ah = load i8, ptr %i.af, align 8, !tbaa !470, !range !174, !noundef !175
  store i8 %i.ah, ptr %i.ae, align 8, !tbaa !470
  store i8 %i.ag, ptr %i.af, align 8, !tbaa !470
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 73 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !470, !range !174, !noundef !175
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !470, !range !174, !noundef !175
  store i8 %i.al, ptr %i.ai, align 1, !tbaa !470
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !470
  %.not4.i.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESB_EvT_SD_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.au, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEvPT_.exit.i.i.i.i ], [ %i.l, %._crit_edge ] ; 5 uses
  %i.am = load i16, ptr %.05.i.i.i.i, align 8, !tbaa !8
  %i.an = icmp eq i16 %i.am, -1
  br i1 %i.an, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE13destroy_valueEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !34
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #39
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE13destroy_valueEv.exit.i.i.i.i.i.i.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE13destroy_valueEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  store i16 -1, ptr %.05.i.i.i.i, align 8, !tbaa !8
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEvPT_.exit.i.i.i.i: ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE13destroy_valueEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.n, align 8, !tbaa !28
  br label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESB_EvT_SD_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESB_EvT_SD_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge
  %i.av = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.l, %._crit_edge ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i1.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESB_EvT_SD_RSaIT0_E.exit.i.i
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #39
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESB_EvT_SD_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.015.019 = phi ptr [ %i.g, %.lr.ph ], [ %i.cj, %bb.l ] ; 7 uses
  %i.ba = load i16, ptr %.sroa.015.019, align 8, !tbaa !8
  %i.bb = icmp eq i16 %i.ba, -1
  br i1 %i.bb, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 8 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !102
  %i.be = load i64, ptr %2, align 8, !tbaa !196   ; 2 uses
  %i.bf = and i64 %i.be, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 16 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.bh = phi i64 [ %i.be, %bb.e ], [ %i.cc, %bb.k ]
  %.011.i = phi i16 [ 0, %bb.e ], [ %i.cd, %bb.k ] ; 4 uses
  %.0.i = phi i64 [ %i.bf, %bb.e ], [ %i.cf, %bb.k ] ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.bi, i64 %.0.i ; 9 uses
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !8  ; 2 uses
  %i.bl = icmp sgt i16 %.011.i, %i.bk
  br i1 %i.bl, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bm = icmp eq i16 %i.bk, -1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bo = load i64, ptr %i.bc, align 8, !tbaa !102 ; 2 uses
  br i1 %i.bm, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !927
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 3 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !167
  %i.br = load ptr, ptr %i.bg, align 8, !tbaa !30 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 32 ; 5 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !106 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.bx, i1 false)
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E22insert_value_on_rehashEmsjOS9_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !30
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !34
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !34
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E22insert_value_on_rehashEmsjOS9_.exit

bb.j:                                             ; preds = %bb.g
  %i.bz = load i64, ptr %i.bn, align 8, !tbaa !102
  store i64 %i.bz, ptr %i.bc, align 8, !tbaa !102
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !102
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.ca) #2
  %i.cb = load i16, ptr %i.bj, align 8, !tbaa !929
  store i16 %.011.i, ptr %i.bj, align 8, !tbaa !929
  %.pre = load i64, ptr %2, align 8, !tbaa !196
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.cc = phi i64 [ %.pre, %bb.j ], [ %i.bh, %bb.f ] ; 2 uses
  %.1.i = phi i16 [ %i.cb, %bb.j ], [ %.011.i, %bb.f ]
  %i.cd = add i16 %.1.i, 1
  %i.ce = add i64 %.0.i, 1
  %i.cf = and i64 %i.cc, %i.ce
  br label %bb.f, !llvm.loop !930

_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E22insert_value_on_rehashEmsjOS9_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 24 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !106
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !106
  store ptr %i.bs, ptr %i.bg, align 8, !tbaa !30
  store i64 0, ptr %i.cg, align 8, !tbaa !106
  store i8 0, ptr %i.bs, align 8, !tbaa !34
  store i16 %.011.i, ptr %i.bj, align 8, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E22insert_value_on_rehashEmsjOS9_.exit, %bb.d
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.cj, %i.i
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #32

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E17insert_value_implEmsjRS9_(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, i16 noundef signext %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %1 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %4, align 8, !tbaa !102
  %i.f = load i64, ptr %i.d, align 8, !tbaa !102
  store i64 %i.f, ptr %4, align 8, !tbaa !102
  store i64 %i.e, ptr %i.d, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #2
  %i.i = load i16, ptr %i.c, align 8, !tbaa !929
  store i16 %2, ptr %i.c, align 8, !tbaa !929
  %i.j = add i64 %1, 1
  %i.k = load i64, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.l = and i64 %i.k, %i.j                       ; 2 uses
  %storemerge17 = add i16 %i.i, 1                 ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.l ; 3 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.p = icmp eq i16 %i.o, -1
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.r = phi ptr [ %i.m, %.lr.ph ], [ %i.ac, %bb.f ]
  %i.s = phi i64 [ %i.k, %.lr.ph ], [ %i.ad, %bb.f ]
  %i.t = phi i16 [ %i.o, %.lr.ph ], [ %i.ah, %bb.f ]
  %i.u = phi ptr [ %i.n, %.lr.ph ], [ %i.ag, %bb.f ] ; 4 uses
  %storemerge19 = phi i16 [ %storemerge17, %.lr.ph ], [ %storemerge, %bb.f ] ; 4 uses
  %.018 = phi i64 [ %i.l, %.lr.ph ], [ %i.af, %bb.f ]
  %i.v = icmp sgt i16 %storemerge19, %i.t
  br i1 %i.v, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.w = icmp sgt i16 %storemerge19, 8192
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.q, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.y = load i64, ptr %4, align 8, !tbaa !102
  %i.z = load i64, ptr %i.x, align 8, !tbaa !102
  store i64 %i.z, ptr %4, align 8, !tbaa !102
  store i64 %i.y, ptr %i.x, align 8, !tbaa !102
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.aa) #2
  %i.ab = load i16, ptr %i.u, align 8, !tbaa !929
  store i16 %storemerge19, ptr %i.u, align 8, !tbaa !929
  %.pre = load i64, ptr %0, align 8, !tbaa !196
  %.pre23 = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.ac = phi ptr [ %.pre23, %bb.e ], [ %i.r, %bb.b ] ; 2 uses
  %i.ad = phi i64 [ %.pre, %bb.e ], [ %i.s, %bb.b ] ; 2 uses
  %.1 = phi i16 [ %i.ab, %bb.e ], [ %storemerge19, %bb.b ]
  %i.ae = add i64 %.018, 1
  %i.af = and i64 %i.ad, %i.ae                    ; 2 uses
  %storemerge = add i16 %.1, 1                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %i.af ; 3 uses
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !8  ; 2 uses
  %i.ai = icmp eq i16 %i.ah, -1
  br i1 %i.ai, label %._crit_edge, label %bb.b, !llvm.loop !931

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %storemerge.lcssa = phi i16 [ %storemerge17, %bb.a ], [ %storemerge, %bb.f ]
  %.lcssa = phi ptr [ %i.n, %bb.a ], [ %i.ag, %bb.f ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.ak = load i64, ptr %4, align 8, !tbaa !927
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !927
  %i.al = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !167
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !30  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !106 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge
  store ptr %i.an, ptr %i.al, align 8, !tbaa !30
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !34
  store i64 %i.au, ptr %i.am, align 8, !tbaa !34
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !106
  %i.ax = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !106
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !30
  store i64 0, ptr %i.av, align 8, !tbaa !106
  store i8 0, ptr %i.ao, align 8, !tbaa !34
  store i16 %storemerge.lcssa, ptr %.lcssa, align 8, !tbaa !8
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_19ImageSpec12getattributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPvb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, ptr noundef, i1 noundef zeroext) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E17erase_from_bucketENSM_14robin_iteratorILb0EEE(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !8
  %i.b = icmp eq i16 %i.a, -1
  br i1 %i.b, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE13destroy_valueEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !34
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #39
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE13destroy_valueEv.exit.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE13destroy_valueEv.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store i16 -1, ptr %1, align 8, !tbaa !8
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit: ; preds = %bb.a, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE13destroy_valueEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !920
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !920
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13   ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 48                  ; 2 uses
  %i.r = add nsw i64 %i.q, 1
  %i.s = load i64, ptr %0, align 8, !tbaa !196
  %i.t = and i64 %i.r, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !8    ; 2 uses
  %i.w = icmp sgt i16 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit15
  %i.x = phi i16 [ %i.bi, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit15 ], [ %i.v, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit ]
  %i.y = phi ptr [ %i.bh, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit15 ], [ %i.u, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit ] ; 5 uses
  %i.z = phi ptr [ %i.bd, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit15 ], [ %i.m, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit ]
  %.017 = phi i64 [ %.01116, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit15 ], [ %i.q, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit ]
  %.01116 = phi i64 [ %i.bg, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit15 ], [ %i.t, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit ] ; 3 uses
  %i.aa = add nsw i16 %i.x, -1
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %.017 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !927
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !927
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !167
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !30 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !106 ; 2 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !30
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !34
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !34
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !106
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !106
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !30
  store i64 0, ptr %i.aq, align 8, !tbaa !106
  store i8 0, ptr %i.aj, align 8, !tbaa !34
  store i16 %i.aa, ptr %i.ab, align 8, !tbaa !8
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !13  ; 3 uses
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %.01116 ; 4 uses
  %i.av = load i16, ptr %i.au, align 8, !tbaa !8
  %i.aw = icmp eq i16 %i.av, -1
  br i1 %i.aw, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit15, label %bb.d

bb.d:                                             ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !30 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE13destroy_valueEv.exit.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i12: ; preds = %bb.d
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !34
  %i.bc = add i64 %i.bb, 1
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #39
  %.pre.pre = load ptr, ptr %i.l, align 8, !tbaa !13
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE13destroy_valueEv.exit.i13

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE13destroy_valueEv.exit.i13: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i12
  %.pre = phi ptr [ %.pre.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i12 ], [ %i.at, %bb.d ]
  store i16 -1, ptr %i.au, align 8, !tbaa !8
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit15

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit15: ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE13destroy_valueEv.exit.i13
  %i.bd = phi ptr [ %i.at, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit ], [ %.pre, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE13destroy_valueEv.exit.i13 ] ; 2 uses
  %i.be = add i64 %.01116, 1
  %i.bf = load i64, ptr %0, align 8, !tbaa !196
  %i.bg = and i64 %i.bf, %i.be                    ; 2 uses
  %i.bh = getelementptr inbounds nuw [48 x i8], ptr %i.bd, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !8  ; 2 uses
  %i.bj = icmp sgt i16 %i.bi, 0
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !932

._crit_edge:                                      ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit15, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE5clearEv.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 1, ptr %i.bk, align 1, !tbaa !25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #38

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #32

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree noreturn }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold noreturn }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #31 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree nounwind }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #39 = { builtin nounwind }
attributes #40 = { allocsize(0) }
attributes #41 = { builtin allocsize(0) }
attributes #42 = { noreturn nounwind }
attributes #43 = { noreturn }
attributes #44 = { nounwind willreturn memory(read) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEE", !10, i64 0, !11, i64 2, !5, i64 8}
!10 = !{!"short", !5, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{!9, !11, i64 2}
!13 = !{!14, !21, i64 32}
!14 = !{!"_ZTSN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_EE", !15, i64 0, !17, i64 8, !21, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !23, i64 64, !23, i64 68, !11, i64 72, !11, i64 73}
!15 = !{!"_ZTSN3tsl2rh26power_of_two_growth_policyILm2EEE", !16, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSSt6vectorIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EE", !18, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EE", !19, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EE12_Vector_implE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"p1 _ZTSN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEE", !22, i64 0}
!22 = !{!"any pointer", !5, i64 0}
!23 = !{!"float", !5, i64 0}
!24 = !{!14, !11, i64 72}
!25 = !{!14, !11, i64 73}
!26 = !{!23, !23, i64 0}
!27 = !{!14, !16, i64 56}
!28 = !{!20, !21, i64 0}
!29 = !{!20, !21, i64 8}
!30 = !{!31, !33, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !16, i64 8, !5, i64 16}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!33 = !{!"p1 omnipotent char", !22, i64 0}
!34 = !{!5, !5, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!20, !21, i64 16}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTSN11OpenImageIO4v3_110Filesystem7IOProxyE", !22, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !6, i64 0}
!42 = distinct !{null, null, null}
!43 = !{!44, !16, i64 0}
!44 = !{!"_ZTSN11OpenImageIO4v3_111ImageOutput4ImplE", !16, i64 0, !4, i64 8, !39, i64 16, !45, i64 24}
!45 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EE", !46, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_ELb1ELb1EE", !47, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EE", !48, i64 0}
!48 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EEE", !49, i64 0}
!49 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_110Filesystem7IOProxyESt14default_deleteIS3_EEE", !50, i64 0}
!50 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_110Filesystem7IOProxyELb0EE", !39, i64 0}
!51 = !{!44, !4, i64 8}
!52 = !{!53, !22, i64 0}
!53 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_111ImageOutput4ImplEELb0EE", !22, i64 0}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_111ImageOutput4ImplELb0EE", !56, i64 0}
!56 = !{!"p1 _ZTSN11OpenImageIO4v3_111ImageOutput4ImplE", !22, i64 0}
!57 = !{!58, !59, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !22, i64 0}
!60 = !{!58, !59, i64 8}
!61 = distinct !{!61, !36}
!62 = !{!58, !59, i64 16}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!65 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!66 = !{!64, !65, i64 8}
!67 = distinct !{!67, !36}
!68 = !{!64, !65, i64 16}
!69 = !{!70, !71, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!71 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !22, i64 0}
!72 = !{!70, !71, i64 16}
!73 = !{!56, !56, i64 0}
!74 = !{!22, !22, i64 0}
!75 = !{!76, !33, i64 0}
!76 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !33, i64 0, !16, i64 8}
!77 = !{!76, !16, i64 8}
!78 = !{!79, !4, i64 20}
!79 = !{!"_ZTSN11OpenImageIO4v3_111ImageOutputE", !80, i64 8, !92, i64 168}
!80 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !81, i64 64, !82, i64 72, !85, i64 96, !4, i64 120, !4, i64 124, !11, i64 128, !88, i64 136}
!81 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!82 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !83, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !84, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !70, i64 0}
!85 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !86, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !64, i64 0}
!88 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !89, i64 0}
!89 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !90, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !91, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !58, i64 0}
!92 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_EE", !93, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_ELb1ELb1EE", !94, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_EE", !95, i64 0}
!95 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_111ImageOutput4ImplEPFvS4_EEE", !96, i64 0}
!96 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_111ImageOutput4ImplEPFvS4_EEE", !97, i64 0, !55, i64 8}
!97 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_111ImageOutput4ImplEEEE", !53, i64 0}
!98 = !{!99, !22, i64 0}
!99 = !{!"_ZTSN11OpenImageIO4v3_110image_spanIKSt4byteLm4EEE", !22, i64 0, !100, i64 8, !101, i64 40, !4, i64 56}
!100 = !{!"_ZTSSt5arrayIlLm4EE", !5, i64 0}
!101 = !{!"_ZTSSt5arrayIjLm4EE", !5, i64 0}
!102 = !{!16, !16, i64 0}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!105 = distinct !{!105, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!106 = !{!31, !16, i64 8}
!107 = !{!99, !4, i64 56}
!108 = !{!80, !4, i64 60}
!109 = !{!79, !4, i64 68}
!110 = distinct !{!110, !36}
!111 = !{!79, !4, i64 24}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!114 = distinct !{!114, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_ELi2ELi0ELy17EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!117 = distinct !{!117, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_ELi2ELi0ELy17EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!118 = !{!116, !113}
!119 = !{!80, !4, i64 48}
!120 = !{!80, !4, i64 0}
!121 = !{!80, !4, i64 4}
!122 = !{!80, !4, i64 52}
!123 = !{!80, !4, i64 8}
!124 = !{!80, !4, i64 56}
!125 = !{!80, !4, i64 16}
!126 = !{!80, !4, i64 20}
!127 = !{!79, !4, i64 60}
!128 = !{!79, !4, i64 64}
!129 = !{!79, !4, i64 56}
!130 = distinct !{!130, !36}
!131 = distinct !{!131, !36}
!132 = distinct !{!132, !36}
!133 = !{!79, !4, i64 28}
!134 = !{!79, !4, i64 8}
!135 = !{!79, !4, i64 12}
!136 = !{!79, !4, i64 16}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!139 = distinct !{!139, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!140 = !{!"branch_weights", i32 1, i32 1023}
!141 = !{!142, !142, i64 0}
!142 = !{!"p1 long", !22, i64 0}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZSt16forward_as_tupleIJRKmEESt5tupleIJDpOT_EES5_: argument 0"}
!145 = distinct !{!145, !"_ZSt16forward_as_tupleIJRKmEESt5tupleIJDpOT_EES5_"}
!146 = !{!70, !71, i64 8}
!147 = !{!81, !5, i64 0}
end_hunk_0
