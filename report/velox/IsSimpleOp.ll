inline.NumInlined: 1074
inline.NumDeleted: 540
begin_hunk_0_@_ZN4geos9operation5valid10IsSimpleOp22isSimpleLinearGeometryERKNS_4geom8GeometryE:bb.a
  %.pn16 = phi { ptr, i32 } [ %i.cd, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i29 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit30, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdlPv(ptr noundef nonnull %i.ce) #21
  br label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit30

_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit30: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit30, %bb.d
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit30 ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn16.pn

bb.u:                                             ; preds = %bb.a, %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %.1 = phi i1 [ %.not35, %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp17isSimplePolygonalERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.27", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN4geos4geom4util24LinearComponentExtracter8getLinesERKNS0_8GeometryERSt6vectorIPKNS0_10LineStringESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !65     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65   ; 2 uses
  %.not17 = icmp eq ptr %i.a, %i.c
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.019 = phi i1 [ true, %.lr.ph ], [ %.2, %bb.e ]
  %.sroa.014.018 = phi ptr [ %i.a, %.lr.ph ], [ %i.j, %bb.e ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.014.018, align 8, !tbaa !68
  %i.g = invoke noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp22isSimpleLinearGeometryERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.h = load i8, ptr %i.d, align 1, !range !52
  %i.i = trunc nuw i8 %i.h to i1
  %cond = select i1 %i.g, i1 true, i1 %i.i
  %.2 = select i1 %i.g, i1 %.019, i1 false        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.j, %i.c
  %or.cond.not = select i1 %cond, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.d, label %._crit_edge.loopexit

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load ptr, ptr %2, align 8, !tbaa !70
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.l = phi ptr [ %i.a, %bb.b ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.3 = phi i1 [ true, %bb.b ], [ %.2, %._crit_edge.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.l) #21
  br label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i1 %.3

bb.h:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.e, %bb.c ]
  %i.m = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdlPv(ptr noundef nonnull %i.m) #21
  br label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13

_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit13: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.f = add nuw i64 %.0910, 1                    ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.k = icmp ult i64 %i.f, %i.j
  br i1 %i.k, label %bb.c, label %._crit_edge, !llvm.loop !72

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.011 = phi i1 [ true, %.lr.ph ], [ %.2, %bb.b ]
  %.0910 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.0910)
  %i.p = tail call noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp13computeSimpleERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.o) ; 2 uses
  %i.q = load i8, ptr %i.e, align 1, !range !52
  %i.r = trunc nuw i8 %i.q to i1
  %cond = select i1 %i.p, i1 true, i1 %i.r
  %.2 = select i1 %i.p, i1 %.011, i1 false        ; 3 uses
  br i1 %cond, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ %.2, %bb.b ], [ %.2, %bb.c ]
  ret i1 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setIN4geos4geom10CoordinateENS2_8HashCodeESt8equal_toIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !91 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #21
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !92

_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !81
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.h) #21
  br label %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

declare void @_ZN4geos4geom4util24LinearComponentExtracter8getLinesERKNS0_8GeometryERSt6vectorIPKNS0_10LineStringESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid10IsSimpleOp17removeRepeatedPtsERKNS_4geom8GeometryE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.40") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.59", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %.preheader unwind label %bb.b ; 2 uses

.preheader:                                       ; preds = %bb.a
  %.not27 = icmp eq i64 %i.d, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.c:                                             ; preds = %.lr.ph, %.thread
  %3 = phi ptr [ null, %.lr.ph ], [ %9, %.thread ] ; 15 uses
  %4 = phi ptr [ null, %.lr.ph ], [ %10, %.thread ] ; 7 uses
  %5 = phi ptr [ null, %.lr.ph ], [ %11, %.thread ] ; 5 uses
  %.01326 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %.thread ] ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.01326)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.n = call ptr @__dynamic_cast(ptr nonnull %i.k, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom10LineStringE, i64 0) #20 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = invoke noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4geos9operation5valid20RepeatedPointRemover20removeRepeatedPointsEPKNS_4geom18CoordinateSequenceE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.59") align 8 %2, ptr noundef %i.o)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr %2, align 8, !tbaa !130    ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !130
  %.not.i = icmp eq ptr %5, %4
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.p, ptr %5, align 8, !tbaa !130
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.e, align 8, !tbaa !129
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.r = ptrtoint ptr %4 to i64                   ; 3 uses
  %i.s = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #23
          to label %.noexc19 unwind label %.thread37 ; 13 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  store ptr %i.p, ptr %i.ac, align 8, !tbaa !130
  %.not10.i.i.i.i.i.i = icmp eq ptr %3, %4
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc19
  %i.ad = add i64 %i.r, -8
  %i.ae = sub i64 %i.ad, %i.s                     ; 3 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.ab, i64 8
  %i.ah = add i64 %i.r, -8
  %i.ai = sub i64 %i.ah, %i.s
  %i.aj = and i64 %i.ai, -8                       ; 2 uses
  %scevgep40.a = getelementptr i8, ptr %scevgep, i64 %i.aj
  %scevgep41.a = getelementptr i8, ptr %3, i64 8
  %scevgep42 = getelementptr i8, ptr %scevgep41.a, i64 %i.aj
  %bound0 = icmp ult ptr %i.ab, %scevgep42
  %bound1 = icmp ult ptr %3, %scevgep40.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check43 = icmp ult i64 %i.ae, 120
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ag, 12
  %n.vec = and i64 %i.ag, 4611686018427387888     ; 4 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.ab, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %3, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.an ; 4 uses
  %next.gep44 = getelementptr i8, ptr %3, i64 %i.an ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.ao = getelementptr i8, ptr %next.gep44, i64 32
  %i.ap = getelementptr i8, ptr %next.gep44, i64 64
  %i.aq = getelementptr i8, ptr %next.gep44, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep44, align 8, !tbaa !130, !alias.scope !139, !noalias !134
  %wide.load45.a = load <4 x i64>, ptr %i.ao, align 8, !tbaa !130, !alias.scope !139, !noalias !134
  %wide.load46.a = load <4 x i64>, ptr %i.ap, align 8, !tbaa !130, !alias.scope !139, !noalias !134
  %wide.load47 = load <4 x i64>, ptr %i.aq, align 8, !tbaa !130, !alias.scope !139, !noalias !134
  %i.ar = getelementptr i8, ptr %next.gep, i64 32
  %i.as = getelementptr i8, ptr %next.gep, i64 64
  %i.at = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !130, !alias.scope !142, !noalias !139
  store <4 x i64> %wide.load45.a, ptr %i.ar, align 8, !tbaa !130, !alias.scope !142, !noalias !139
  store <4 x i64> %wide.load46.a, ptr %i.as, align 8, !tbaa !130, !alias.scope !142, !noalias !139
  store <4 x i64> %wide.load47, ptr %i.at, align 8, !tbaa !130, !alias.scope !142, !noalias !139
  %i.au = getelementptr i8, ptr %next.gep44, i64 32
  %i.av = getelementptr i8, ptr %next.gep44, i64 64
  %i.aw = getelementptr i8, ptr %next.gep44, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep44, align 8, !tbaa !130, !alias.scope !139, !noalias !134
  store <4 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !130, !alias.scope !139, !noalias !134
  store <4 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !130, !alias.scope !139, !noalias !134
  store <4 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !130, !alias.scope !139, !noalias !134
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !147

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.ag, 4611686018427387900   ; 3 uses
  %i.ay = shl i64 %n.vec50, 3                     ; 2 uses
  %i.az = getelementptr i8, ptr %i.ab, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %3, i64 %i.ay
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %i.bb = shl i64 %index51, 3                     ; 2 uses
  %next.gep52.a = getelementptr i8, ptr %i.ab, i64 %i.bb
  %next.gep53 = getelementptr i8, ptr %3, i64 %i.bb ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %wide.load54 = load <4 x i64>, ptr %next.gep53, align 8, !tbaa !130, !alias.scope !139, !noalias !134
  store <4 x i64> %wide.load54, ptr %next.gep52.a, align 8, !tbaa !130, !alias.scope !142, !noalias !139
  store <4 x ptr> splat (ptr null), ptr %next.gep53, align 8, !tbaa !130, !alias.scope !139, !noalias !134
  %index.next55 = add nuw i64 %index51, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !148

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.ag, %n.vec50
  br i1 %cmp.n56, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.ab, %vector.memcheck ], [ %i.al, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %3, %iter.check ], [ %3, %vector.memcheck ], [ %i.am, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !137, !noalias !134
  store i64 %i.bd, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !134, !noalias !137
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !137, !noalias !134
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, %4
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !149

_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ab, %.noexc19 ], [ %i.az, %vec.epilog.middle.block ], [ %i.al, %middle.block ], [ %i.bf, %.lr.ph.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %3, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %3) #21
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !126
  store ptr %i.bg, ptr %i.e, align 8, !tbaa !129
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z ; 2 uses
  store ptr %i.bh, ptr %i.f, align 8, !tbaa !150
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.j
  %6 = phi ptr [ %i.ab, %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %3, %bb.j ]
  %7 = phi ptr [ %i.bh, %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %4, %bb.j ]
  %8 = phi ptr [ %i.bg, %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %i.q, %bb.j ]
  %i.bi = load ptr, ptr %2, align 8, !tbaa !130   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bi, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom23CoordinateArraySequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom23CoordinateArraySequenceEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(40) %i.bi) #20, !inline_history !151
  br label %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN4geos4geom23CoordinateArraySequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.thread

bb.n:                                             ; preds = %bb.h, %bb.g
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit23

.thread37:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit23

bb.o:                                             ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !130   ; 3 uses
  %.not.i21 = icmp eq ptr %.pre, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit23, label %_ZNKSt14default_deleteIN4geos4geom23CoordinateArraySequenceEEclEPS2_.exit.i22

_ZNKSt14default_deleteIN4geos4geom23CoordinateArraySequenceEEclEPS2_.exit.i22: ; preds = %bb.o
  %i.bn = load ptr, ptr %.pre, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(40) %.pre) #20, !inline_history !151
  br label %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit23

_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit23: ; preds = %.thread37, %_ZNKSt14default_deleteIN4geos4geom23CoordinateArraySequenceEEclEPS2_.exit.i22, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.n ], [ %lpad.loopexit.split-lp, %bb.o ], [ %lpad.loopexit.split-lp, %_ZNKSt14default_deleteIN4geos4geom23CoordinateArraySequenceEEclEPS2_.exit.i22 ], [ %lpad.loopexit, %.thread37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.p

.thread:                                          ; preds = %bb.d, %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit, %bb.f
  %9 = phi ptr [ %3, %bb.d ], [ %6, %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit ], [ %3, %bb.f ]
  %10 = phi ptr [ %4, %bb.d ], [ %7, %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit ], [ %4, %bb.f ]
  %11 = phi ptr [ %5, %bb.d ], [ %8, %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit ], [ %5, %bb.f ]
  %i.bq = add nuw i64 %.01326, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !152

bb.p:                                             ; preds = %bb.e, %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit23, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn, %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit23 ], [ %i.m, %bb.e ]
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %.pn.pn.pn

._crit_edge:                                      ; preds = %.thread, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid10IsSimpleOp20createSegmentStringsERSt6vectorISt10unique_ptrINS_4geom23CoordinateArraySequenceESt14default_deleteIS6_EESaIS9_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.45") align 8 initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !153  ; 2 uses
  %.not14 = icmp eq ptr %i.a, %i.c
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit
  %i.f = phi ptr [ null, %.lr.ph ], [ %i.bd, %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit ] ; 13 uses
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.be, %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit ] ; 5 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.bf, %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit ] ; 3 uses
  %.sroa.011.015 = phi ptr [ %i.a, %.lr.ph ], [ %i.bg, %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit ] ; 2 uses
  %i.i = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.c unwind label %bb.h       ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %.sroa.011.015, align 8, !tbaa !130
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4geos6noding18BasicSegmentStringE, i64 16), ptr null>, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !7
  %.not.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.h, align 8, !tbaa !95
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !123
  br label %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #23
          to label %.noexc9 unwind label %.loopexit ; 13 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.i, ptr %i.x, align 8, !tbaa !95
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc9
  %i.y = add i64 %i.m, -8
  %i.z = sub i64 %i.y, %i.n                       ; 3 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.z, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.w, i64 8
  %i.ac = add i64 %i.m, -8
  %i.ad = sub i64 %i.ac, %i.n
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %scevgep22 = getelementptr i8, ptr %scevgep, i64 %i.ae
  %scevgep23 = getelementptr i8, ptr %i.f, i64 8
  %scevgep24 = getelementptr i8, ptr %scevgep23, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep24
  %bound1 = icmp ult ptr %i.f, %scevgep22
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check25 = icmp ult i64 %i.z, 120
  br i1 %min.iters.check25, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, 4611686018427387888     ; 4 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.f, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 4 uses
  %next.gep26 = getelementptr i8, ptr %i.f, i64 %i.ai ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.aj = getelementptr i8, ptr %next.gep26, i64 32
  %i.ak = getelementptr i8, ptr %next.gep26, i64 64
  %i.al = getelementptr i8, ptr %next.gep26, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep26, align 8, !tbaa !95, !alias.scope !159, !noalias !154
  %wide.load27 = load <4 x i64>, ptr %i.aj, align 8, !tbaa !95, !alias.scope !159, !noalias !154
  %wide.load28 = load <4 x i64>, ptr %i.ak, align 8, !tbaa !95, !alias.scope !159, !noalias !154
  %wide.load29 = load <4 x i64>, ptr %i.al, align 8, !tbaa !95, !alias.scope !159, !noalias !154
  %i.am = getelementptr i8, ptr %next.gep, i64 32
  %i.an = getelementptr i8, ptr %next.gep, i64 64
  %i.ao = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !95, !alias.scope !162, !noalias !159
  store <4 x i64> %wide.load27, ptr %i.am, align 8, !tbaa !95, !alias.scope !162, !noalias !159
  store <4 x i64> %wide.load28, ptr %i.an, align 8, !tbaa !95, !alias.scope !162, !noalias !159
  store <4 x i64> %wide.load29, ptr %i.ao, align 8, !tbaa !95, !alias.scope !162, !noalias !159
  %i.ap = getelementptr i8, ptr %next.gep26, i64 32
  %i.aq = getelementptr i8, ptr %next.gep26, i64 64
  %i.ar = getelementptr i8, ptr %next.gep26, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep26, align 8, !tbaa !95, !alias.scope !159, !noalias !154
  store <4 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !95, !alias.scope !159, !noalias !154
  store <4 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !95, !alias.scope !159, !noalias !154
  store <4 x ptr> splat (ptr null), ptr %i.ar, align 8, !tbaa !95, !alias.scope !159, !noalias !154
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !147

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.ab, 4611686018427387900   ; 3 uses
  %i.at = shl i64 %n.vec32, 3                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.w, i64 %i.at   ; 2 uses
  %i.av = getelementptr i8, ptr %i.f, i64 %i.at
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 2 uses
  %i.aw = shl i64 %index33, 3                     ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.w, i64 %i.aw
  %next.gep35 = getelementptr i8, ptr %i.f, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %wide.load36 = load <4 x i64>, ptr %next.gep35, align 8, !tbaa !95, !alias.scope !159, !noalias !154
  store <4 x i64> %wide.load36, ptr %next.gep34, align 8, !tbaa !95, !alias.scope !162, !noalias !159
  store <4 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !95, !alias.scope !159, !noalias !154
  %index.next37 = add nuw i64 %index33, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !165

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n38 = icmp eq i64 %i.ab, %n.vec32
  br i1 %cmp.n38, label %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.w, %iter.check ], [ %i.w, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.f, %iter.check ], [ %i.f, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.ay = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !95, !alias.scope !157, !noalias !154
  store i64 %i.ay, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !95, !alias.scope !154, !noalias !157
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !95, !alias.scope !157, !noalias !154
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !166

_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc9
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.w, %.noexc9 ], [ %i.au, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #21
  br label %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.w, ptr %0, align 8, !tbaa !121
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !123
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u ; 2 uses
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !167
  br label %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.d
  %i.bd = phi ptr [ %i.w, %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %i.f, %bb.d ]
  %i.be = phi ptr [ %i.bc, %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %i.g, %bb.d ]
  %i.bf = phi ptr [ %i.bb, %_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %i.l, %bb.d ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bg, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.h:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos6noding15SinglePassNoder21setSegmentIntersectorEPNS0_18SegmentIntersectorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !116
  ret void
}

declare void @_ZN4geos6noding12MCIndexNoder12computeNodesEPSt6vectorIPNS0_13SegmentStringESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder15hasIntersectionEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117, !nonnull !53, !align !56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.f = icmp ne ptr %i.d, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos6noding12MCIndexNoderD2Ev(ptr noundef nonnull align 8 dereferenceable(161) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4geos6noding12MCIndexNoderE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #21
  br label %_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEED2Ev.exit

_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #21
  br label %_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EED2Ev.exit

_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EED2Ev.exit: ; preds = %_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos6noding18SegmentIntersectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !121    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !95 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4geos6noding13SegmentStringEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4geos6noding13SegmentStringEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.d) #20, !inline_history !168
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4geos6noding13SegmentStringEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !125

_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !121
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #21
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !126    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EEEvPT_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !280

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #21
  br label %_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !81
  store ptr %.0.i, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #16

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !11, i64 16}
!8 = !{!"_ZTSN4geos6noding18BasicSegmentStringE", !9, i64 0, !11, i64 16}
!9 = !{!"_ZTSN4geos6noding13SegmentStringE", !10, i64 8}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !10, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !6, i64 0}
!14 = !{!15, !35, i64 136}
!15 = !{!"_ZTSN4geos6noding12MCIndexNoderE", !16, i64 0, !19, i64 16, !24, i64 40, !35, i64 136, !4, i64 144, !36, i64 152, !37, i64 160}
!16 = !{!"_ZTSN4geos6noding15SinglePassNoderE", !17, i64 0, !18, i64 8}
!17 = !{!"_ZTSN4geos6noding5NoderE"}
!18 = !{!"p1 _ZTSN4geos6noding18SegmentIntersectorE", !10, i64 0}
!19 = !{!"_ZTSSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE", !20, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIN4geos5index5chain13MonotoneChainESaIS3_EE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN4geos5index5chain13MonotoneChainESaIS3_EE12_Vector_implE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN4geos5index5chain13MonotoneChainESaIS3_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 _ZTSN4geos5index5chain13MonotoneChainE", !10, i64 0}
!24 = !{!"_ZTSN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE", !25, i64 0, !26, i64 8}
!25 = !{!"_ZTSN4geos5index12SpatialIndexE"}
!26 = !{!"_ZTSN4geos5index7strtree19TemplateSTRtreeImplIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE", !27, i64 0, !29, i64 40, !33, i64 64, !34, i64 72, !34, i64 80}
!27 = !{!"_ZTSSt5mutex", !28, i64 0}
!28 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!29 = !{!"_ZTSSt6vectorIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEESaIS9_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTSN4geos5index7strtree15TemplateSTRNodeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE", !10, i64 0}
!34 = !{!"long", !5, i64 0}
!35 = !{!"p1 _ZTSSt6vectorIPN4geos6noding13SegmentStringESaIS3_EE", !10, i64 0}
!36 = !{!"double", !5, i64 0}
!37 = !{!"bool", !5, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTSN4geos4geom8GeometryE", !10, i64 0}
!40 = distinct !{null, null}
!41 = !{!42, !37, i64 8}
!42 = !{!"_ZTSN4geos9operation5valid10IsSimpleOpE", !39, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !43, i64 16, !37, i64 40}
!43 = !{!"_ZTSSt6vectorIN4geos4geom10CoordinateESaIS2_EE", !44, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE12_Vector_implE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !10, i64 0}
!48 = !{!42, !37, i64 9}
!49 = !{!42, !37, i64 10}
!50 = !{!42, !37, i64 40}
!51 = !{!46, !47, i64 0}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!46, !47, i64 8}
!55 = !{!42, !39, i64 0}
!56 = !{i64 8}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN4geos9operation5valid10IsSimpleOp20getNonSimpleLocationEv: argument 0"}
!59 = distinct !{!59, !"_ZN4geos9operation5valid10IsSimpleOp20getNonSimpleLocationEv"}
!60 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !61}
!61 = !{!36, !36, i64 0}
!62 = !{!63, !36, i64 16}
!63 = !{!"_ZTSN4geos4geom10CoordinateE", !36, i64 0, !36, i64 8, !36, i64 16}
!64 = !{ptr @_ZN4geos9operation5valid10IsSimpleOp26isSimpleGeometryCollectionERKNS_4geom8GeometryE}
!65 = !{!66, !66, i64 0}
!66 = !{!"p2 _ZTSN4geos4geom10LineStringE", !67, i64 0}
!67 = !{!"any p2 pointer", !10, i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTSN4geos4geom10LineStringE", !10, i64 0}
!70 = !{!71, !66, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10LineStringESaIS4_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!75, !76, i64 0}
!75 = !{!"_ZTSSt10_HashtableIN4geos4geom10CoordinateES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_8HashCodeENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE", !76, i64 0, !34, i64 8, !77, i64 16, !34, i64 24, !79, i64 32, !78, i64 48}
!76 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !67, i64 0}
!77 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !78, i64 0}
!78 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!79 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !80, i64 0, !34, i64 8}
!80 = !{!"float", !5, i64 0}
!81 = !{!75, !34, i64 8}
!82 = !{!79, !80, i64 0}
!83 = !{!46, !47, i64 16}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!86 = distinct !{!86, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!87 = distinct !{!87, !86, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!88 = distinct !{!88, !73}
!89 = distinct !{!89, !73}
!90 = !{!75, !78, i64 16}
!91 = !{!77, !78, i64 0}
!92 = distinct !{!92, !73}
!93 = !{!94, !94, i64 0}
!94 = !{!"p1 _ZTSSt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS2_EE", !10, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"p1 _ZTSN4geos6noding13SegmentStringE", !10, i64 0}
!97 = !{!98, !99, i64 8}
!98 = !{!"_ZTSNSt12_Vector_baseIPN4geos6noding13SegmentStringESaIS3_EE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
!99 = !{!"p2 _ZTSN4geos6noding13SegmentStringE", !67, i64 0}
!100 = !{!98, !99, i64 0}
!101 = !{!98, !99, i64 16}
!102 = !{!103, !37, i64 8}
!103 = !{!"_ZTSN4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinderE", !104, i64 0, !37, i64 8, !37, i64 9, !105, i64 16, !106, i64 24}
!104 = !{!"_ZTSN4geos6noding18SegmentIntersectorE"}
!105 = !{!"p1 _ZTSSt6vectorIN4geos4geom10CoordinateESaIS2_EE", !10, i64 0}
!106 = !{!"_ZTSN4geos9algorithm15LineIntersectorE", !107, i64 0, !34, i64 8, !5, i64 16, !5, i64 48, !5, i64 96, !37, i64 128}
!107 = !{!"p1 _ZTSN4geos4geom14PrecisionModelE", !10, i64 0}
!108 = !{!103, !37, i64 9}
!109 = !{!105, !105, i64 0}
!110 = !{!106, !37, i64 128}
!111 = !{!26, !34, i64 72}
!112 = !{!26, !34, i64 80}
!113 = !{!15, !4, i64 144}
!114 = !{!15, !36, i64 152}
!115 = !{!15, !37, i64 160}
!116 = !{!16, !18, i64 8}
!117 = !{!103, !105, i64 16}
!118 = !{!32, !33, i64 0}
!119 = !{ptr @_ZN4geos6noding12MCIndexNoderD2Ev}
!120 = !{!22, !23, i64 0}
!121 = !{!122, !94, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!123 = !{!122, !94, i64 8}
!124 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!125 = distinct !{!125, !73}
!126 = !{!127, !128, i64 0}
!127 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!128 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EE", !10, i64 0}
!129 = !{!127, !128, i64 8}
!130 = !{!131, !131, i64 0}
!131 = !{!"p1 _ZTSN4geos4geom23CoordinateArraySequenceE", !10, i64 0}
!132 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!133 = distinct !{!133, !73}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!136 = distinct !{!136, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!137 = !{!138}
!138 = distinct !{!138, !136, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!139 = !{!138, !140}
!140 = distinct !{!140, !141}
!141 = distinct !{!141, !"LVerDomain"}
!142 = !{!135, !143}
!143 = distinct !{!143, !141}
!144 = distinct !{!144, !73, !145, !146}
!145 = !{!"llvm.loop.isvectorized", i32 1}
!146 = !{!"llvm.loop.unroll.runtime.disable"}
!147 = !{!"branch_weights", i32 4, i32 12}
!148 = distinct !{!148, !73, !145, !146}
!149 = distinct !{!149, !73, !145}
!150 = !{!127, !128, i64 16}
!151 = distinct !{null, null}
!152 = distinct !{!152, !73}
!153 = !{!128, !128, i64 0}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!156 = distinct !{!156, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!157 = !{!158}
!158 = distinct !{!158, !156, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos6noding13SegmentStringESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!159 = !{!158, !160}
!160 = distinct !{!160, !161}
!161 = distinct !{!161, !"LVerDomain"}
!162 = !{!155, !163}
!163 = distinct !{!163, !161}
!164 = distinct !{!164, !73, !145, !146}
!165 = distinct !{!165, !73, !145, !146}
!166 = distinct !{!166, !73, !145}
!167 = !{!122, !94, i64 16}
!168 = distinct !{null, null, null, null, null}
!169 = distinct !{null, null, null, null, null}
!170 = !{!47, !47, i64 0}
!171 = !{!172, !174}
!172 = distinct !{!172, !173, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!173 = distinct !{!173, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!174 = distinct !{!174, !173, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!175 = !{!106, !34, i64 8}
!176 = !{!63, !36, i64 0}
!177 = distinct !{!177, !73}
!178 = !{ptr @_ZNK4geos9operation5valid10IsSimpleOp27NonSimpleIntersectionFinder22isIntersectionEndpointEPKNS_6noding13SegmentStringEmRKNS_9algorithm15LineIntersectorEm}
!179 = distinct !{null}
!180 = !{!181, !36, i64 8}
!181 = !{!"_ZTSN4geos4geom8EnvelopeE", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!182 = !{!32, !33, i64 8}
!183 = !{!32, !33, i64 16}
!184 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !61, i64 24, i64 8, !61}
!185 = !{!5, !5, i64 0}
!186 = !{!187, !33, i64 40}
!187 = !{!"_ZTSN4geos5index7strtree15TemplateSTRNodeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE", !181, i64 0, !5, i64 32, !33, i64 40}
!188 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !61, i64 24, i64 8, !61, i64 32, i64 8, !185, i64 40, i64 8, !189}
!189 = !{!33, !33, i64 0}
!190 = !{!191, !193}
!191 = distinct !{!191, !192, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!192 = distinct !{!192, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_"}
!193 = distinct !{!193, !192, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!194 = distinct !{!194, !73}
!195 = !{!196, !196, i64 0}
!196 = !{!"p1 _ZTSSt6vectorIPvSaIS0_EE", !10, i64 0}
!197 = !{!198, !198, i64 0}
!198 = !{!"p1 _ZTSN4geos5index11ItemVisitorE", !10, i64 0}
!199 = !{!26, !33, i64 64}
!200 = !{!181, !36, i64 0}
!201 = !{!181, !36, i64 16}
!202 = !{!181, !36, i64 24}
!203 = !{!23, !23, i64 0}
!204 = distinct !{null, null, null}
!205 = !{!206, !196, i64 0}
!206 = !{!"_ZTSZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE5queryEPKNS_4geom8EnvelopeERSt6vectorIPvSaISE_EEEUlS6_E_", !196, i64 0}
!207 = !{!208, !67, i64 8}
!208 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!209 = !{!208, !67, i64 16}
!210 = !{!10, !10, i64 0}
!211 = !{!208, !67, i64 0}
!212 = distinct !{!212, !73}
!213 = distinct !{!213, !73}
!214 = !{!215, !217}
!215 = distinct !{!215, !216, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!216 = distinct !{!216, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_"}
!217 = distinct !{!217, !216, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!218 = !{!219, !33, i64 0}
!219 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN4geos5index7strtree15TemplateSTRNodeIPKNS2_5chain13MonotoneChainENS3_14EnvelopeTraitsEEESt6vectorISA_SaISA_EEEE", !33, i64 0}
!220 = distinct !{!220, !73}
!221 = distinct !{!221, !73}
!222 = !{!34, !34, i64 0}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN4geos5index7strtree15TemplateSTRNodeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE18boundsFromChildrenEPKS8_SA_: argument 0"}
!225 = distinct !{!225, !"_ZN4geos5index7strtree15TemplateSTRNodeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE18boundsFromChildrenEPKS8_SA_"}
!226 = distinct !{!226, !73}
!227 = distinct !{!227, !73}
!228 = distinct !{!228, !73}
!229 = distinct !{!229, !73}
!230 = distinct !{!230, !73}
!231 = distinct !{!231, !73}
!232 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !185, i64 24, i64 8, !189}
!233 = distinct !{!233, !73}
!234 = distinct !{!234, !73}
!235 = distinct !{!235, !73}
!236 = distinct !{!236, !73}
!237 = distinct !{!237, !73}
!238 = distinct !{!238, !73}
!239 = distinct !{!239, !73}
!240 = distinct !{!240, !73}
!241 = distinct !{!241, !73}
!242 = distinct !{!242, !73}
!243 = distinct !{!243, !73}
!244 = distinct !{!244, !73}
!245 = !{i64 0, i64 8, !185, i64 8, i64 8, !189}
!246 = distinct !{!246, !73}
!247 = distinct !{!247, !73}
!248 = distinct !{!248, !73}
!249 = distinct !{!249, !73}
!250 = distinct !{!250, !73}
!251 = distinct !{!251, !73}
!252 = distinct !{!252, !73}
!253 = !{!254}
!254 = distinct !{!254, !255, !"_ZN4geos5index7strtree15TemplateSTRNodeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE18boundsFromChildrenEPKS8_SA_: argument 0"}
!255 = distinct !{!255, !"_ZN4geos5index7strtree15TemplateSTRNodeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE18boundsFromChildrenEPKS8_SA_"}
!256 = !{!257, !259}
!257 = distinct !{!257, !258, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!258 = distinct !{!258, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_"}
!259 = distinct !{!259, !258, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!260 = !{!261, !263}
!261 = distinct !{!261, !262, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!262 = distinct !{!262, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_"}
!263 = distinct !{!263, !262, !"_ZSt19__relocate_object_aIN4geos5index7strtree15TemplateSTRNodeIPKNS1_5chain13MonotoneChainENS2_14EnvelopeTraitsEEES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!264 = !{!265, !198, i64 0}
!265 = !{!"_ZTSZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE5queryEPKNS_4geom8EnvelopeERNS0_11ItemVisitorEEUlS6_E_", !198, i64 0}
!266 = distinct !{null, null}
!267 = distinct !{!267, !73}
!268 = distinct !{!268, !73}
!269 = !{!75, !34, i64 24}
!270 = distinct !{!270, !73}
!271 = !{!63, !36, i64 8}
!272 = !{!78, !78, i64 0}
!273 = !{!274, !34, i64 0}
!274 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !34, i64 0}
!275 = distinct !{!275, !73}
!276 = distinct !{!276, !73}
!277 = !{!79, !34, i64 8}
!278 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!279 = !{!75, !78, i64 48}
!280 = distinct !{!280, !73}
end_hunk_1
