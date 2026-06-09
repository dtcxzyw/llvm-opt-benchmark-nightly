inline.NumInlined: 38702
inline.NumDeleted: 13171
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft15SuccessorBlocksERKNS2_9OperationE:bb.a
    i8 -128, label %bb.f
    i8 -127, label %bb.f
    i8 -126, label %bb.f
    i8 -125, label %bb.f
    i8 -124, label %bb.f
    i8 -123, label %bb.f
    i8 -122, label %bb.f
    i8 -121, label %bb.f
    i8 -120, label %bb.f
    i8 -119, label %bb.f
    i8 -118, label %bb.f
    i8 -117, label %bb.f
    i8 -116, label %bb.f
    i8 -115, label %bb.f
    i8 -114, label %bb.f
    i8 -113, label %bb.f
    i8 -112, label %bb.f
    i8 -111, label %bb.f
    i8 -110, label %bb.f
    i8 -109, label %bb.f
    i8 -108, label %bb.f
    i8 -107, label %bb.f
    i8 -106, label %bb.f
    i8 -105, label %bb.f
    i8 -104, label %bb.f
    i8 -103, label %bb.f
    i8 -102, label %bb.f
    i8 -101, label %bb.f
    i8 -100, label %bb.f
    i8 -99, label %bb.f
    i8 -98, label %bb.f
    i8 -97, label %bb.f
    i8 -96, label %bb.f
    i8 -95, label %bb.f
    i8 -94, label %bb.f
    i8 -93, label %bb.f
    i8 -92, label %bb.f
    i8 -91, label %bb.f
    i8 -90, label %bb.f
    i8 -89, label %bb.f
    i8 -88, label %bb.f
    i8 -87, label %bb.f
    i8 -86, label %bb.f
    i8 -85, label %bb.f
  ]

_ZSt18uninitialized_moveIPKPN2v88internal8compiler10turboshaft5BlockEPS5_ET0_T_SA_S9_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.f, ptr %i.e, align 8
  %i.g = load <2 x ptr>, ptr %i.b, align 8
  store <2 x ptr> %i.g, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.h, ptr %i.d, align 8
  br label %bb.h

_ZSt18uninitialized_moveIPKPN2v88internal8compiler10turboshaft5BlockEPS5_ET0_T_SA_S9_.exit26: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.n, ptr %i.m, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %i.l, align 8
  br label %bb.h

_ZSt18uninitialized_moveIPKPN2v88internal8compiler10turboshaft5BlockEPS5_ET0_T_SA_S9_.exit27: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.q, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.t, ptr %i.s, align 8
  %i.u = load <2 x ptr>, ptr %i.p, align 8
  store <2 x ptr> %i.u, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.v, ptr %i.r, align 8
  br label %bb.h

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.x, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aa, ptr %i.z, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ab, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ae, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %.idx = shl nuw nsw i64 %i.ai, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %.not49 = icmp eq i64 %i.ai, 0
  br i1 %.not49, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit

._crit_edge:                                      ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit29
  %.pre = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.pre54 = load ptr, ptr %i.ad, align 8
  %i.am = icmp eq ptr %.pre, %.pre54
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  br i1 %i.am, label %bb.d, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit, !prof !55

bb.d:                                             ; preds = %._crit_edge
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.pre.i.i = load ptr, ptr %i.ac, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit

_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit: ; preds = %._crit_edge.thread, %._crit_edge, %bb.d
  %i.ap = phi ptr [ %i.ao, %bb.d ], [ %i.ao, %._crit_edge ], [ %i.al, %._crit_edge.thread ]
  %i.aq = phi ptr [ %.pre.i.i, %bb.d ], [ %.pre, %._crit_edge ], [ %i.ab, %._crit_edge.thread ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.ac, align 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.h

.lr.ph:                                           ; preds = %bb.c, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit29
  %.050 = phi ptr [ %i.az, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit29 ], [ %i.ag, %bb.c ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.050, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.av = load ptr, ptr %i.ad, align 8
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.e, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit29, !prof !5

bb.e:                                             ; preds = %.lr.ph
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.pre.i.i28 = load ptr, ptr %i.ac, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit29

_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit29: ; preds = %.lr.ph, %bb.e
  %i.ax = phi ptr [ %.pre.i.i28, %bb.e ], [ %i.au, %.lr.ph ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.ac, align 8
  store ptr %i.at, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.050, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.aj
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #21
  unreachable

bb.g:                                             ; preds = %bb.a
  unreachable

bb.h:                                             ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE9push_backES6_.exit, %bb.b, %_ZSt18uninitialized_moveIPKPN2v88internal8compiler10turboshaft5BlockEPS5_ET0_T_SA_S9_.exit27, %_ZSt18uninitialized_moveIPKPN2v88internal8compiler10turboshaft5BlockEPS5_ET0_T_SA_S9_.exit26, %_ZSt18uninitialized_moveIPKPN2v88internal8compiler10turboshaft5BlockEPS5_ET0_T_SA_S9_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft22SparseOpIndexSideTableINS2_10BlockIndexEE6removeENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i = select i1 %i.g, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.h, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %sext.i = shl i64 %i.j, 48
  %i.k = ashr exact i64 %sext.i, 48
  %i.l = zext i32 %1 to i64
  %i.m = xor i64 %i.k, %i.l
  %i.n = zext i64 %i.m to i128
  %i.o = mul nuw nsw i128 %i.n, 8779197792823184629 ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o
  %i.r = trunc i128 %i.q to i64                   ; 2 uses
  %i.s = lshr i64 %i.r, 57
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.u, align 8 ; 3 uses
  %i.v = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.r, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.a        ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.z = load <16 x i8>, ptr %i.y, align 1        ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.w, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not47.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not47.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.048.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.6.0.i.i, %i.ad
  %i.af = and i64 %i.ae, %i.a                     ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp eq i32 %i.ah, %1
  br i1 %i.ai, label %.thread33.i.i, label %bb.f, !prof !8

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.af ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.al = add i16 %.sroa.017.048.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.048.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ap = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !56

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ak, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.aj, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_8iteratorERSH_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorESN_.exit, !prof !5

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorESN_.exit
  tail call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE5eraseENSK_8iteratorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull %i.ar, ptr %i.as)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iteratorESN_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #23
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.410") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !57
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.c, align 8, !noalias !57
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %2, align 4, !noalias !57
  %i.g = load i32, ptr %i.f, align 8, !noalias !57
  %i.h = icmp eq i32 %i.g, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.h, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !57
  store ptr %1, ptr %3, align 8, !noalias !57
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.i, align 8, !noalias !57
  %i.j = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #20, !noalias !57 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !57
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !57
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load ptr, ptr %i.l, align 8, !noalias !57
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i, i64 %i.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !noalias !62 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !62
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !62
  %sext.i = shl i64 %i.p, 48
  %i.q = ashr exact i64 %sext.i, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %2, align 4, !noalias !62 ; 2 uses
  %i.r = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.s = xor i64 %i.q, %i.r
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw nsw i128 %i.t, 8779197792823184629 ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = xor i128 %i.v, %i.u
  %i.x = trunc i128 %i.w to i64                   ; 3 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.aa, align 8, !noalias !62 ; 3 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.x, %bb.f ], [ %i.bb, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.ba, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1), !noalias !62
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !noalias !62 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not65.i = icmp eq i16 %i.ah, 0
  br i1 %.not65.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.035.066.i = phi i16 [ %i.aq, %.critedge.i ], [ %i.ah, %bb.g ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0.i, %i.aj
  %i.al = and i64 %i.ak, %i.a                     ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !noalias !62
  %i.ao = icmp eq i32 %i.an, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ao, label %.critedge21.i, label %.critedge.i, !prof !8

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ap = add i16 %.sroa.035.066.i, -1
  %i.aq = and i16 %i.ap, %.sroa.035.066.i         ; 2 uses
  %.not.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.g
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.as, 0
  br i1 %.not57.i, label %bb.h, label %.thread.i, !prof !5

.thread.i:                                        ; preds = %.critedge19.i
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.7.0.i, %i.au
  %i.aw = and i64 %i.av, %i.a
  %i.ax = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i64 %i.aw, i64 %.sroa.15.0.i) #20, !noalias !62 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.n, align 8, !noalias !62
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.ax
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.aa, align 8, !noalias !62
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.ax
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge19.i
  %i.ba = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.7.0.i
  br label %bb.g

.critedge21.i:                                    ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit: ; preds = %.thread.i, %.critedge21.i
  %.sink83.i = phi ptr [ %i.ay, %.thread.i ], [ %i.bd, %.critedge21.i ] ; 2 uses
  %.sink81.i = phi ptr [ %i.az, %.thread.i ], [ %i.bc, %.critedge21.i ]
  %.sink.i = phi i8 [ 1, %.thread.i ], [ 0, %.critedge21.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink83.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_.exit: ; preds = %bb.e, %bb.d, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit
  %.sink83.i.sink = phi ptr [ %.sink83.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit ], [ %i.k, %bb.e ], [ @_ZN4absl18container_internal11kSooControlE, %bb.c ], [ @_ZN4absl18container_internal11kSooControlE, %bb.d ]
  %.sink81.i.sink = phi ptr [ %.sink81.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit ], [ %i.m, %bb.e ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  %.sink.i.sink = phi i8 [ %.sink.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit ], [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  store ptr %.sink83.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81.i.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.sink, ptr %i.be, align 8
  ret void
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !65
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.b, align 4
  %i.c = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.d = xor i64 %1, %i.c
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw nsw i128 %i.e, 8779197792823184629 ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f
  %i.i = trunc i128 %i.h to i64
  ret i64 %i.i
}

declare noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE5eraseENSK_8iteratorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #20
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.b, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #20
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = load i8, ptr %1, align 1
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator14assert_is_fullEPKc.exit, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10) #20
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator14assert_is_fullEPKc.exit: ; preds = %bb.e
  %i.e = load i64, ptr %0, align 8
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator14assert_is_fullEPKc.exit
  tail call void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext true, i64 noundef 8) #20
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE15erase_meta_onlyENSK_14const_iteratorE.exit

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE8iterator14assert_is_fullEPKc.exit
  tail call void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, i64 noundef 8) #20
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE15erase_meta_onlyENSK_14const_iteratorE.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE15erase_meta_onlyENSK_14const_iteratorE.exit: ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i64 noundef) local_unnamed_addr #2

declare void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4                 ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw [5 x i8], ptr @_ZN2v88internal8compiler10turboshaftL22kOperationEffectsTableE, i64 %i.b ; 2 uses
  %.sroa.0.0.copyload26 = load i32, ptr %i.c, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %i.d = trunc nuw i8 %.sroa.4.0.copyload to i1
  br i1 %i.d, label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.r [
    i8 77, label %bb.c
    i8 78, label %bb.d
    i8 93, label %bb.e
    i8 95, label %bb.f
    i8 72, label %switch.lookup
    i8 100, label %bb.g
    i8 101, label %bb.h
    i8 -85, label %bb.i
    i8 8, label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit
    i8 23, label %bb.j
    i8 24, label %bb.k
    i8 25, label %bb.l
    i8 28, label %bb.m
    i8 29, label %bb.n
    i8 45, label %bb.o
    i8 46, label %bb.p
    i8 50, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i8, ptr %i.e, align 4               ; 2 uses
  %i.g = and i8 %i.f, 4                           ; 2 uses
  %.not.i = icmp eq i8 %i.g, 0
  %spec.select.i = select i1 %.not.i, i8 3, i8 67 ; 2 uses
  %i.h = and i8 %i.f, 64
  %.not2.i = icmp eq i8 %i.h, 0                   ; 3 uses
  %.sroa.0.0.insert.insert.i17.i.i = or disjoint i8 %spec.select.i, 12
  %.sroa.014.1.i = select i1 %.not2.i, i8 %spec.select.i, i8 %.sroa.0.0.insert.insert.i17.i.i
  %.sroa.6.1.i = select i1 %.not2.i, i32 19456, i32 20224
  %.sroa.8.1.i = select i1 %.not2.i, i8 %i.g, i8 4
  %.sroa.8.0.insert.ext.i = zext nneg i8 %.sroa.8.1.i to i32
  %.sroa.8.0.insert.shift.i = shl nuw nsw i32 %.sroa.8.0.insert.ext.i, 16
  %.sroa.6.0.insert.insert.i = or disjoint i32 %.sroa.8.0.insert.shift.i, %.sroa.6.1.i
  %.sroa.014.0.insert.ext.i = zext nneg i8 %.sroa.014.1.i to i32
  %.sroa.014.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.insert.i, %.sroa.014.0.insert.ext.i
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i8, ptr %i.i, align 4               ; 2 uses
  %i.k = and i8 %i.j, 4
  %.not.i1 = icmp eq i8 %i.k, 0
  %spec.select.i2 = select i1 %.not.i1, i8 12, i8 79
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i8, ptr %i.l, align 4, !range !28, !noundef !6 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = shl nuw nsw i8 %i.m, 5
  %spec.select60.i = or disjoint i8 %spec.select.i2, %i.o ; 2 uses
  %spec.select61.i = select i1 %i.n, i32 286464, i32 282368
  %i.p = and i8 %i.j, 64
  %.not3.i = icmp eq i8 %i.p, 0
  %i.q = or i8 %spec.select60.i, 3
  %.sroa.021.2.i = select i1 %.not3.i, i8 %spec.select60.i, i8 %i.q
  %.sroa.021.0.insert.ext.i = zext nneg i8 %.sroa.021.2.i to i32
  %.sroa.021.0.insert.insert.i = or disjoint i32 %spec.select61.i, %.sroa.021.0.insert.ext.i
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.r, align 8
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i3 = load i32, ptr %i.s, align 4
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

switch.lookup:                                    ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.t, align 4
  %i.v = zext nneg i8 %i.u to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv, i64 %i.v
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 2
  %.sroa.015.0.insert.insert.i = select i1 %i.y, i32 282447, i32 282383
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.h:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = icmp eq i8 %i.aa, 8
  %spec.select.i4 = select i1 %i.ab, i32 282380, i32 282383
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.i:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = icmp eq i8 %i.ad, 2
  %spec.select.i5 = select i1 %i.ae, i32 486483, i32 487263
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.j:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21WasmJSLoweringReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE4BindEPNS2_5BlockE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE27SealAndSaveVariableSnapshotEv(ptr noundef nonnull align 8 dereferenceable(880) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 4
  store i64 %i.l, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.n, %i.p
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %i.q = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.n, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr %i.s, ptr %i.t, align 8
  store ptr %i.q, ptr %i.o, align 8
  %i.u = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.012.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.aa = load ptr, ptr %.012.i, align 8          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 -1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  store i32 -1, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.p
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.ae = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 4 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -32
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.an, 16
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 16, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.ak, align 8
  store ptr %i.ap, ptr %i.ai, align 8
  store ptr %i.ai, ptr %i.ak, align 8
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i

_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i: ; preds = %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  store ptr %i.at, ptr %i.ah, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 480
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i

_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i: ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i, %bb.d
  %storemerge.i.i = phi ptr [ %i.aj, %bb.d ], [ %i.aw, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i ]
  store ptr %storemerge.i.i, ptr %i.af, align 8
  store ptr %i.ae, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit: ; preds = %._crit_edge.i, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i
  %.sroa.0.0.i = phi ptr [ %i.ae, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i ], [ %i.u, %._crit_edge.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 4
  %i.ba = zext i32 %.sroa.0.0.copyload.i to i64   ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 4
  %.not.i1 = icmp ugt i64 %i.bi, %i.ba
  br i1 %.not.i1, label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit, label %bb.h, !prof !8

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.bk = lshr i64 %i.ba, 1
  %i.bl = add nuw nsw i64 %i.ba, 32
  %i.bm = add nuw nsw i64 %i.bl, %i.bk
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bd, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 4
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bt)
  %.pre.i2 = load ptr, ptr %i.bd, align 8
  br label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit

_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit, %bb.h
  %i.bu = phi ptr [ %.pre.i2, %bb.h ], [ %i.be, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit ]
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.ba ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !28, !noundef !6
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = ptrtoint ptr %.sroa.0.0.i to i64
  br i1 %i.by, label %_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit
  store i8 1, ptr %i.bw, align 8
  br label %_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit

_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit, %bb.i
  store i64 %i.bz, ptr %i.bv, align 8
  store ptr null, ptr %i.ax, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey.579", align 8 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !noalias !123 ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !130
  %.not.i.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !130 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4, !noalias !130
  %i.f = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4, !noalias !130
  %i.g = icmp eq i32 %i.f, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.g, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_.exit, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !130
  store ptr %0, ptr %2, align 8, !noalias !130
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.h, align 8, !noalias !130
  %i.i = call { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft10BlockIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #20, !noalias !130
  %i.j = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !130
  br label %bb.f

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !133 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !133
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !133
  %sext.i = shl i64 %i.m, 48
  %i.n = ashr exact i64 %sext.i, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4, !noalias !133 ; 2 uses
  %i.o = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.p = xor i64 %i.n, %i.o
  %i.q = zext i64 %i.p to i128
  %i.r = mul nuw nsw i128 %i.q, 8779197792823184629 ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = xor i128 %i.s, %i.r
  %i.u = trunc i128 %i.t to i64                   ; 3 uses
  %i.v = lshr i64 %i.u, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.x, align 8, !noalias !133 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i
  %.pn.i = phi i64 [ %i.u, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i ], [ %i.ar, %bb.e ]
  %.sroa.15.0.i = phi i64 [ 0, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i ], [ %i.aq, %bb.e ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1), !noalias !133
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !noalias !133 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.ae, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.an, %.critedge.i ], [ %i.ae, %bb.d ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.7.0.i, %i.ag
  %i.ai = and i64 %i.ah, %i.a
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !133
  %i.al = icmp eq i32 %i.ak, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.al, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_.exit, label %.critedge.i, !prof !8

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.am = add i16 %.sroa.035.065.i, -1
  %i.an = and i16 %i.am, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.an, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.d
  %i.ao = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.ap, 0
  br i1 %.not57.i, label %bb.e, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i._crit_edge.i, !prof !5

bb.e:                                             ; preds = %.critedge19.i
  %i.aq = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.7.0.i
  br label %bb.d

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i._crit_edge.i: ; preds = %.critedge19.i
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %.sroa.7.0.i, %i.at
  %i.av = and i64 %i.au, %i.a
  %i.aw = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.u, i64 %i.av, i64 %.sroa.15.0.i) #20, !noalias !133 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.k, align 8, !noalias !133
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.aw
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.x, align 8, !noalias !133
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i._crit_edge.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i
  %.sroa.6.0 = phi ptr [ %i.j, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i ], [ %i.ax, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i._crit_edge.i ] ; 3 uses
  %i.ay = load i32, ptr %1, align 4, !noalias !136
  store i32 %i.ay, ptr %.sroa.6.0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 40
  store i8 0, ptr %i.az, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_.exit: ; preds = %.lr.ph.i, %bb.c, %bb.f
  %.sroa.6.1 = phi ptr [ %.sroa.6.0, %bb.f ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.c ], [ %i.aj, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.6.1, i64 8
  ret ptr %i.ba
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21WasmJSLoweringReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerES3_S5_EEEEEEEEEE23RecordOldEpochAndSetNewEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.486", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.e, align 4
  %i.f = zext i32 %.sroa.0.0.copyload.i to i64    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2
  %.not.i = icmp ugt i64 %i.n, %i.f
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableIiNS2_10BlockIndexEEixES5_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = lshr i64 %i.f, 1
  %i.q = add nuw nsw i64 %i.f, 32
  %i.r = add nuw nsw i64 %i.q, %i.p
  tail call void @_ZN2v88internal10ZoneVectorIiE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.i, align 8
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2
  tail call void @_ZN2v88internal10ZoneVectorIiE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.y)
  %.pre.i = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableIiNS2_10BlockIndexEEixES5_.exit

_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableIiNS2_10BlockIndexEEixES5_.exit: ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %.pre.i, %bb.c ], [ %i.j, %bb.b ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.f
  store i32 %i.d, ptr %i.aa, align 4
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableIiNS2_10BlockIndexEEixES5_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !alias.scope !137
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !137
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.ae, ptr %i.ad, align 8, !alias.scope !137
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.05.i = load ptr, ptr %i.af, align 8, !noalias !137 ; 2 uses
  %.not6.i = icmp eq ptr %.05.i, null
  br i1 %.not6.i, label %._crit_edge, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i
  %.pre.i18 = load ptr, ptr %2, align 8, !alias.scope !137 ; 4 uses
  %.pre8.i = load ptr, ptr %i.ac, align 8, !alias.scope !137 ; 3 uses
  %i.ag = icmp ne ptr %.pre.i18, %.pre8.i
  %.012.i.i.i = getelementptr inbounds i8, ptr %.pre8.i, i64 -8 ; 2 uses
  %i.ah = icmp ult ptr %.pre.i18, %.012.i.i.i
  %or.cond.i.i.i = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %.lr.ph.i.i.i
  %.014.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i.i, %._crit_edge.i ] ; 3 uses
  %.0913.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.pre.i18, %._crit_edge.i ] ; 3 uses
  %i.ai = load ptr, ptr %.0913.i.i.i, align 8
  %i.aj = load ptr, ptr %.014.i.i.i, align 8
  store ptr %i.aj, ptr %.0913.i.i.i, align 8
  store ptr %i.ai, ptr %.014.i.i.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8 ; 2 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i, i64 -8 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %.0.i.i.i
  br i1 %i.al, label %.lr.ph.i.i.i, label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit, !llvm.loop !140

.lr.ph.i:                                         ; preds = %bb.d, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i
  %.07.i = phi ptr [ %.0.i, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i ], [ %.05.i, %bb.d ] ; 2 uses
  %i.am = load ptr, ptr %i.ac, align 8, !alias.scope !137 ; 2 uses
  %i.an = load ptr, ptr %i.ad, align 8, !alias.scope !137
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i, !prof !5

bb.e:                                             ; preds = %.lr.ph.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %.pre.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !137
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i

_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i: ; preds = %bb.e, %.lr.ph.i
  %i.ap = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.aq, ptr %i.ac, align 8, !alias.scope !137
  store ptr %.07.i, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  %.0.i = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i17 = icmp eq ptr %.0.i, null
  br i1 %.not.i17, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !141

_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = load ptr, ptr %2, align 8
  %.pre34 = load ptr, ptr %i.ac, align 8
  br label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit

_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit, %._crit_edge.i
  %i.as = phi ptr [ %.pre34, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit ], [ %.pre8.i, %._crit_edge.i ] ; 2 uses
  %i.at = phi ptr [ %.pre, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit ], [ %.pre.i18, %._crit_edge.i ] ; 2 uses
  %.not1531 = icmp eq ptr %i.at, %i.as
  br i1 %.not1531, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.pre35 = load ptr, ptr %i.aw, align 8          ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.j, %bb.d, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit
  %.030.lcssa = phi i32 [ 0, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit ], [ 0, %bb.d ], [ %.1, %bb.j ] ; 2 uses
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  store i32 %.030.lcssa, ptr %i.ay, align 4
  store ptr %1, ptr %i.a, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load i8, ptr %i.az, align 8
  %i.bb = icmp eq i8 %i.ba, 1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %i.bc = phi ptr [ %.pre35, %.lr.ph ], [ %i.cr, %bb.j ]
  %i.bd = phi ptr [ %.pre35, %.lr.ph ], [ %i.cs, %bb.j ] ; 2 uses
  %.033 = phi ptr [ %i.at, %.lr.ph ], [ %i.ct, %bb.j ] ; 2 uses
  %.03032 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.j ] ; 2 uses
  %i.be = load ptr, ptr %.033, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 52 ; 2 uses
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.bf, align 4
  %i.bg = zext i32 %.sroa.0.0.copyload.i19 to i64 ; 4 uses
  %i.bh = load ptr, ptr %i.av, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bd to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 2
  %.not.i20 = icmp ugt i64 %i.bl, %i.bg
  br i1 %.not.i20, label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableIiNS2_10BlockIndexEEixES5_.exit22, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.bm = lshr i64 %i.bg, 1
  %i.bn = add nuw nsw i64 %i.bg, 32
  %i.bo = add nuw nsw i64 %i.bn, %i.bm
  call void @_ZN2v88internal10ZoneVectorIiE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.bo)
  %i.bp = load ptr, ptr %i.ax, align 8
  %i.bq = load ptr, ptr %i.aw, align 8
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 2
  call void @_ZN2v88internal10ZoneVectorIiE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.bu)
  %.pre.i21 = load ptr, ptr %i.aw, align 8        ; 2 uses
  br label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableIiNS2_10BlockIndexEEixES5_.exit22

_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableIiNS2_10BlockIndexEEixES5_.exit22: ; preds = %bb.f, %bb.g
  %i.bv = phi ptr [ %.pre.i21, %bb.g ], [ %i.bc, %bb.f ] ; 3 uses
  %i.bw = phi ptr [ %.pre.i21, %bb.g ], [ %i.bd, %bb.f ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bg
  %i.by = load i32, ptr %i.bx, align 4
  %.not16 = icmp eq i32 %i.by, 0
  br i1 %.not16, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableIiNS2_10BlockIndexEEixES5_.exit22
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.bf, align 4
  %i.bz = zext i32 %.sroa.0.0.copyload.i23 to i64 ; 4 uses
  %i.ca = load ptr, ptr %i.av, align 8
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bv to i64
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEE28ReduceInputGraphJSStackCheckENS2_7OpIndexERKNS2_14JSStackCheckOpE:bb.a
  %i.u = load i16, ptr %i.t, align 2
  %i.v = icmp ugt i16 %i.u, 1
  br i1 %i.v, label %_ZNK2v88internal8compiler10turboshaft14JSStackCheckOp11frame_stateEv.exit.i.i.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEE30ReduceJSStackCheckContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_14JSStackCheckOpE.exit.i

_ZNK2v88internal8compiler10turboshaft14JSStackCheckOp11frame_stateEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i.i.i = load i32, ptr %i.w, align 4 ; 2 uses
  %.not.i.i5.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i4.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i5.i.i.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEE30ReduceJSStackCheckContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_14JSStackCheckOpE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft14JSStackCheckOp11frame_stateEv.exit.i.i.i.i.i.i.i
  %i.x = lshr i32 %.sroa.0.0.copyload.i.i4.i.i.i.i.i.i.i, 4
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aa, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEE30ReduceJSStackCheckContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_14JSStackCheckOpE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.y ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8
  %i.ae = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ae, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #24
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.af, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEE30ReduceJSStackCheckContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_14JSStackCheckOpE.exit.i

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEE30ReduceJSStackCheckContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_14JSStackCheckOpE.exit.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.e, %_ZNK2v88internal8compiler10turboshaft14JSStackCheckOp11frame_stateEv.exit.i.i.i.i.i.i.i, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit.i.i.i.i.i.i.i
  %.sroa.03.0.i.i.i.i.i.i.i.i.i = phi i32 [ -1, %_ZNK2v88internal8compiler10turboshaft14JSStackCheckOp11frame_stateEv.exit.i.i.i.i.i.i.i ], [ %i.aa, %bb.e ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i.i.i.i ], [ -1, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit.i.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = tail call i32 @_ZN2v88internal8compiler10turboshaft25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE18ReduceJSStackCheckENS2_1VINS0_7ContextEEENS2_9OptionalVINS2_10FrameStateEEENS2_14JSStackCheckOp4KindE(ptr noundef nonnull align 8 dereferenceable(880) %0, i32 %.sroa.014.0.i.i.i.i.i.i.i.i.i, i32 %.sroa.03.0.i.i.i.i.i.i.i.i.i, i8 noundef zeroext %i.ah)
  br label %_ZN2v88internal8compiler10turboshaft26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE25ReduceInputGraphOperationINS2_14JSStackCheckOpENS2_21UniformReducerAdapterIS3_SS_E30ReduceJSStackCheckContinuationEEENS2_7OpIndexESZ_RKT_.exit

_ZN2v88internal8compiler10turboshaft26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S5_S6_S7_S8_SA_SC_EEEEEEEEEEEEEEEEEEEEEEEE25ReduceInputGraphOperationINS2_14JSStackCheckOpENS2_21UniformReducerAdapterIS3_SS_E30ReduceJSStackCheckContinuationEEENS2_7OpIndexESZ_RKT_.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEE30ReduceJSStackCheckContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_14JSStackCheckOpE.exit.i
  %.sroa.05.0.i = phi i32 [ %i.ai, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEE30ReduceJSStackCheckContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_14JSStackCheckOpE.exit.i ], [ -1, %bb.a ]
  ret i32 %.sroa.05.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE33AssembleOutputGraphCheckExceptionERKNS2_16CheckExceptionOpE(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4 ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.f, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.i, align 4
  %i.j = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.j
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  store ptr %i.n, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit.thread38, label %bb.b

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit.thread38: ; preds = %bb.a
  store ptr %i.p, ptr %i.o, align 8
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit20

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = tail call i32 @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE22VisitOpNoMappingUpdateILb0EEENS2_7OpIndexESW_PKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(1088) %0, i32 %.sroa.0.0.copyload.i, ptr noundef %i.s), !inline_history !434 ; 3 uses
  %i.u = load ptr, ptr %i.d, align 8, !nonnull !6, !align !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = zext i32 %.sroa.0.0.copyload.i to i64
  %i.z = add i64 %i.x, %i.y
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = icmp eq i8 %i.ab, 92
  br i1 %i.ac, label %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i.thread, label %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i

_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i: ; preds = %bb.b
  %i.ad = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.aa), !inline_history !434
  %i.ae = extractvalue { ptr, i64 } %i.ad, 1
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = icmp ne i32 %i.t, -1
  %or.cond = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i.thread: ; preds = %bb.b
  %.old.not = icmp eq i32 %i.t, -1
  br i1 %.old.not, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i.thread
  tail call void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE21CreateOldToNewMappingENS2_7OpIndexESV_(ptr noundef nonnull align 8 dereferenceable(1088) %0, i32 %.sroa.0.0.copyload.i, i32 %i.t), !inline_history !434
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i.thread, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = lshr i32 %.sroa.0.0.copyload.i, 4
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2
  %i.an = zext i16 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 3
  %i.ap = add i32 %i.ao, %.sroa.0.0.copyload.i    ; 2 uses
  store ptr %i.p, ptr %i.o, align 8
  %.not4244 = icmp eq i32 %i.ap, %.sroa.0.0.copyload.i12
  br i1 %.not4244, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit20, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit, %bb.f
  %.sroa.024.145 = phi i32 [ %i.bn, %bb.f ], [ %i.ap, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit ] ; 5 uses
  %i.aq = load ptr, ptr %i.q, align 8
  %.not43 = icmp eq ptr %i.aq, null
  br i1 %.not43, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit20, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = tail call i32 @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE22VisitOpNoMappingUpdateILb0EEENS2_7OpIndexESW_PKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(1088) %0, i32 %.sroa.024.145, ptr noundef %i.ar), !inline_history !434 ; 3 uses
  %i.at = load ptr, ptr %i.d, align 8, !nonnull !6, !align !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = zext i32 %.sroa.024.145 to i64
  %i.ay = add i64 %i.aw, %i.ax
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load i8, ptr %i.az, align 4
  %i.bb = icmp eq i8 %i.ba, 92
  br i1 %i.bb, label %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18.thread, label %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18

_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18: ; preds = %bb.d
  %i.bc = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.az), !inline_history !434
  %i.bd = extractvalue { ptr, i64 } %i.bc, 1
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = icmp ne i32 %i.as, -1
  %or.cond41 = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond41, label %bb.e, label %bb.f

_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18.thread: ; preds = %bb.d
  %.old40.not = icmp eq i32 %i.as, -1
  br i1 %.old40.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18.thread
  tail call void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE21CreateOldToNewMappingENS2_7OpIndexESV_(ptr noundef nonnull align 8 dereferenceable(1088) %0, i32 %.sroa.024.145, i32 %i.as), !inline_history !434
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18, %_ZN2v88internal8compiler10turboshaft16CanBeUsedAsInputERKNS2_9OperationE.exit.i18.thread, %bb.e
  %i.bg = load ptr, ptr %i.ah, align 8
  %i.bh = lshr i32 %.sroa.024.145, 4
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = zext i16 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add i32 %i.bm, %.sroa.024.145           ; 2 uses
  %.not42 = icmp eq i32 %i.bn, %.sroa.0.0.copyload.i12
  br i1 %.not42, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit20, label %.lr.ph, !llvm.loop !435

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit20: ; preds = %.lr.ph, %bb.f, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23VisitOpAndUpdateMappingILb0EEEbNS2_7OpIndexEPKNS2_5BlockE.exit.thread38
  ret i32 -1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft22SparseOpIndexSideTableINS2_10BlockIndexEE8containsENS2_7OpIndexEPPKS4_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_14const_iteratorERSH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i.i = select i1 %i.g, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_14const_iteratorERSH_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.h, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %sext.i.i = shl i64 %i.j, 48
  %i.k = ashr exact i64 %sext.i.i, 48
  %i.l = zext i32 %1 to i64
  %i.m = xor i64 %i.k, %i.l
  %i.n = zext i64 %i.m to i128
  %i.o = mul nuw nsw i128 %i.n, 8779197792823184629 ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o
  %i.r = trunc i128 %i.q to i64                   ; 2 uses
  %i.s = lshr i64 %i.r, 57
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.u, align 8 ; 3 uses
  %i.v = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i = phi i64 [ %i.r, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i8.i.i, %i.a    ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.z = load <16 x i8>, ptr %i.y, align 1        ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.w, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not47.i.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not47.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.048.i.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.6.0.i.i.i, %i.ad
  %i.af = and i64 %i.ae, %i.a                     ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp eq i32 %i.ah, %1
  br i1 %i.ai, label %.thread33.i.i.i, label %bb.f, !prof !8

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.af ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.al = add i16 %.sroa.017.048.i.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.048.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i.i, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !56

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread33.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ak, %.thread33.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.aj, %.thread33.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_14const_iteratorERSH_.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_14const_iteratorERSH_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE10find_largeIS7_EENSK_8iteratorERSH_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 5 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.at = icmp eq ptr %i.ar, null
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_14const_iteratorERSH_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE4findIS7_EENSK_14const_iteratorERSH_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE14const_iteratorESN_.exit, !prof !5

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE14const_iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  %i.ax = icmp ne ptr %i.ar, null                 ; 2 uses
  %.not = icmp ne ptr %2, null
  %or.cond.not = and i1 %.not, %i.ax
  br i1 %or.cond.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE14const_iteratorESN_.exit
  %i.ay = load i8, ptr %i.ar, align 1
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE14const_iteratorptEv.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.21) #20
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE14const_iteratorptEv.exit: ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store ptr %i.ba, ptr %2, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE14const_iteratorESN_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_10BlockIndexEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S8_EEEE14const_iteratorptEv.exit
  ret i1 %i.ax
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_26DeadCodeEliminationReducerINS2_25StackCheckLoweringReducerINS2_21WasmJSLoweringReducerINS2_30LoadStoreSimplificationReducerINS2_30DuplicationOptimizationReducerINS2_40InstructionSelectionNormalizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(880) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21WasmJSLoweringReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i1 noundef zeroext %2), !inline_history !436
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26DeadCodeEliminationReducerENS2_25StackCheckLoweringReducerENS2_21WasmJSLoweringReducerENS2_30LoadStoreSimplificationReducerENS2_30DuplicationOptimizationReducerENS2_40InstructionSelectionNormalizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE14AddPredecessorEPNS2_5BlockESJ_b(ptr noundef nonnull align 8 dereferenceable(1280) %i.a, ptr noundef %i.d, ptr noundef %1, i1 noundef zeroext false), !inline_history !437
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4              ; 5 uses
  %.not37 = icmp eq i32 %i.g, -1
  br i1 %.not37, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.l = load i64, ptr %i.k, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.l, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 856
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.o = load i64, ptr %i.n, align 8
  %sext.i.i.i = shl i64 %i.o, 48
  %i.p = ashr exact i64 %sext.i.i.i, 48
  %i.q = zext i32 %i.g to i64
  %i.r = xor i64 %i.p, %i.q
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 864
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.z, align 8 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i.i = phi i64 [ %i.w, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i8.i.i.i, %i.i ; 4 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1      ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.ap, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.i
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, %i.g
  br i1 %i.an, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread35.a, label %bb.f, !prof !8

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not44.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not44.i.i.i.i, label %bb.g, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !438

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit: ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 864
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8
  %i.av = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4
  %i.aw = icmp eq i32 %i.av, %i.g
  br i1 %i.aw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread35.a, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread35.a: ; preds = %.lr.ph.i.i.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 %i.g, ptr %3, align 4
  %i.ax = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i8, ptr %i.ay, align 8, !range !28, !noundef !6
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread35.a
  call void @_ZSt27__throw_bad_optional_accessv() #24
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread35.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not40 = icmp eq ptr %i.bc, %i.be
  br i1 %.not40, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.041 = phi ptr [ %i.bc, %.lr.ph ], [ %i.bq, %bb.i ] ; 3 uses
  %.sroa.0.0.copyload24 = load ptr, ptr %.041, align 8
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.041, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..0.sroa_idx, align 8 ; 2 uses
  %i.bg = load ptr, ptr %i.b, align 8, !nonnull !6, !align !7 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = zext i32 %.sroa.4.0.copyload to i64
  %i.bl = add i64 %i.bj, %i.bk
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bn, align 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %4, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24, i64 16
  %.sroa.02.0.copyload.i = load i32, ptr %i.bo, align 4
  store i32 %.sroa.02.0.copyload.i, ptr %i.bf, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.sroa.0.0.copyload = load i8, ptr %i.bp, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.bg, i32 %.sroa.4.0.copyload, ptr nonnull %4, i64 2, i8 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bq = getelementptr inbounds nuw i8, ptr %.041, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.be
  br i1 %.not, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.i

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.i, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, %bb.c, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit, %bb.a
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %0, i32 %1, ptr %2, i64 %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = add i64 %i.c, %i.d                       ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = zext i16 %i.m to i64
  %.idx.i = shl nuw nsw i64 %i.n, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.m, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.p = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.k, align 4
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.u = add i64 %i.s, %i.t
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = add i8 %i.x, -1                          ; 2 uses
  %spec.select.i.i.prol = icmp ult i8 %i.y, -2
  br i1 %spec.select.i.i.prol, label %bb.b, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, !prof !8

bb.b:                                             ; preds = %.lr.ph.i.prol
  store i8 %i.y, ptr %i.w, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol: ; preds = %bb.b, %.lr.ph.i.prol
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, %.lr.ph.i.preheader
  %.011.i.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.z, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol ]
  %i.aa = icmp eq i64 %i.p, 0
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1
  %.011.i = phi ptr [ %i.as, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1 ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = zext i32 %.sroa.01.0.copyload.i to i64
  %i.ae = add i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  %spec.select.i.i = icmp ult i8 %i.ai, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i, !prof !8

bb.c:                                             ; preds = %.lr.ph.i
  store i8 %i.ai, ptr %i.ag, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = add i8 %i.aq, -1                        ; 2 uses
  %spec.select.i.i.1 = icmp ult i8 %i.ar, -2
  br i1 %spec.select.i.i.1, label %bb.d, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.as, %i.o
  br i1 %.not.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, %.lr.ph.i.prol.loopexit
  %.pre = load ptr, ptr %i.a, align 8
  %.pre28 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre29 = add i64 %.pre28, %i.d                 ; 2 uses
  %.pre31 = inttoptr i64 %.pre29 to ptr
  br label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, %bb.a
  %.pre-phi32 = phi ptr [ %.pre31, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi30 = phi i64 [ %.pre29, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre28, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.04.0.copyload = load i8, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = lshr i32 %1, 4
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2            ; 3 uses
  store ptr %.pre-phi32, ptr %i.au, align 8
  %i.bc = add i64 %3, 3
  %i.bd = lshr i64 %i.bc, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bd, i64 2) ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = sub i64 %i.bg, %.pre-phi30
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = icmp ult i64 %i.bi, %.sroa.speculated.i.i.i
  br i1 %i.bj, label %bb.e, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %i.bk = sub i64 %i.bg, %.pre-phi
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = add nuw i64 %i.bm, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %0, i64 noundef %i.bn)
  %.pre.i.i.i.i = load ptr, ptr %i.au, align 8    ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre26 = load ptr, ptr %i.a, align 8
  %.pre27 = load ptr, ptr %i.aw, align 8
  %.pre33 = ptrtoint ptr %.pre26 to i64
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %.pre-phi34 = phi i64 [ %.pre33, %bb.e ], [ %.pre-phi, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
  %i.bo = phi ptr [ %.pre27, %bb.e ], [ %i.ax, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
end_hunk_2
