Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hash_tsdf_functions?download=true
inline.NumInlined: 1895
inline.NumDeleted: 775
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br i1 %i.a, label %bb.b, label %bb.c, !prof !162

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !347
  br label %_ZNSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2cv3VecIiLi3EEENS3_10VolumeUnitEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !162

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2cv3VecIiLi3EEENS3_10VolumeUnitEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2cv3VecIiLi3EEENS3_10VolumeUnitEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2cv3VecIiLi3EEENS3_10VolumeUnitEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !206  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !206
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 10 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !90 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !29
  %i.l = sext i32 %i.k to i64
  %i.m = add nsw i64 %i.l, 2654435769             ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02530, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !29
  %i.p = sext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.m, 6
  %i.r = lshr i64 %i.m, 2
  %i.s = add nsw i64 %i.p, 2654435769
  %i.t = add nuw nsw i64 %i.s, %i.q
  %i.u = add nuw nsw i64 %i.t, %i.r
  %i.v = xor i64 %i.u, %i.m                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02530, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !29
  %i.y = sext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.v, 6
  %i.aa = lshr i64 %i.v, 2
  %i.ab = add nsw i64 %i.y, 2654435769
  %i.ac = add nuw nsw i64 %i.ab, %i.z
  %i.ad = add nuw nsw i64 %i.ac, %i.aa
  %i.ae = xor i64 %i.ad, %i.v
  %i.af = urem i64 %i.ae, %1                      ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !199 ; 2 uses
  %.not27 = icmp eq ptr %i.ah, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !206
  store ptr %i.ai, ptr %.02530, align 8, !tbaa !90
  store ptr %.02530, ptr %i.g, align 8, !tbaa !206
  store ptr %i.g, ptr %i.ag, align 8, !tbaa !199
  %i.aj = load ptr, ptr %.02530, align 8, !tbaa !90
  %.not28 = icmp eq ptr %i.aj, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.ak, align 8, !tbaa !199
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !90
  store ptr %i.al, ptr %.02530, align 8, !tbaa !90
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !199
  store ptr %.02530, ptr %i.am, align 8, !tbaa !90
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.af, %bb.f ], [ %i.af, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !346

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !201   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !200
  %i.as = shl i64 %i.ar, 3
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.as) #23
  br label %_ZNSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.at, align 8, !tbaa !200
  store ptr %.0.i, ptr %0, align 8, !tbaa !201
  ret void
}

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_27integrateHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_4MatxIfLi4ELi4EEERiiibRKNS_11_InputArrayESE_RKNS_17_InputOutputArrayERSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISJ_ESaISt4pairIKSJ_SK_EEEE3$_3EEvRKT0_EN21PixelOperationWrapperD0Ev"(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_27integrateHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_4MatxIfLi4ELi4EEERiiibRKNS_11_InputArrayESE_RKNS_17_InputOutputArrayERSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISJ_ESaISt4pairIKSJ_SK_EEEE3$_3EEvRKT0_ENK21PixelOperationWrapperclERKNS_5RangeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %union.Index, align 4               ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !100  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = add nsw i32 %i.d, -1                     ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !99
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %i.h = icmp ult i32 %i.f, %narrow.i
  br i1 %i.h, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.10, i32 noundef 97) #22
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %7, align 8, !tbaa !26     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !27
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %eh.lpad-body, %_ZNSt6vectorIiSaIiEED2Ev.exit75 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.o = zext nneg i32 %i.f to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !29   ; 7 uses
  %i.s = icmp samesign ult i32 %i.d, 3
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.t = load i32, ptr %1, align 4, !tbaa !64     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !65   ; 2 uses
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i.lr.ph, label %.loopexit

.lr.ph.i.i.i.lr.ph:                               ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !169  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.d to i64
  %9 = sext i32 %i.r to i64
  %.idx.i = shl nsw i64 %9, 1                     ; 2 uses
  %i.ab = icmp sgt i32 %i.r, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.us.preheader, label %.loopexit

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph.i.i.i.lr.ph
  %i.ac = add nsw i32 %i.d, -1
  %i.ad = icmp ult i32 %i.ac, 3
  %lcmp.mod191 = icmp ne i32 %i.d, 0
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_27integrateHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_4MatxIfLi4ELi4EEERiiibRKNS_11_InputArrayESE_RKNS_17_InputOutputArrayERSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISJ_ESaISt4pairIKSJ_SK_EEEE3$_3EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us"
  %.034112.us = phi i32 [ %i.cn, %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_27integrateHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_4MatxIfLi4ELi4EEERiiibRKNS_11_InputArrayESE_RKNS_17_InputOutputArrayERSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISJ_ESaISt4pairIKSJ_SK_EEEE3$_3EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us" ], [ %i.t, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i32 %.034112.us, ptr %6, align 4, !tbaa !29
  store i32 0, ptr %i.x, align 4, !tbaa !29
  br i1 %i.ad, label %.epil.preheader183, label %.lr.ph.i.i.i.us.new

.lr.ph.i.i.i.us.new:                              ; preds = %.lr.ph.i.i.i.us, %.lr.ph.i.i.i.us.new
  %indvars.iv.i.i.i.us = phi i64 [ %indvars.iv.next.i.i.i.us.3, %.lr.ph.i.i.i.us.new ], [ 0, %.lr.ph.i.i.i.us ] ; 6 uses
  %.010.i.i.i.us = phi ptr [ %i.bf, %.lr.ph.i.i.i.us.new ], [ %i.z, %.lr.ph.i.i.i.us ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.us
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !28
  %i.aj = mul i64 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us, i64 %i.aj
  %indvars.iv.next.i.i.i.us = or disjoint i64 %indvars.iv.i.i.i.us, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us
  %i.am = load i32, ptr %i.al, align 4, !tbaa !29
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !28
  %i.aq = mul i64 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aq
  %indvars.iv.next.i.i.i.us.1 = or disjoint i64 %indvars.iv.i.i.i.us, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.1
  %i.at = load i32, ptr %i.as, align 4, !tbaa !29
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us.1
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !28
  %i.ax = mul i64 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %indvars.iv.next.i.i.i.us.2 = or disjoint i64 %indvars.iv.i.i.i.us, 3 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.2
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !29
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us.2
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !28
  %i.be = mul i64 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.be
  %indvars.iv.next.i.i.i.us.3 = add nuw nsw i64 %indvars.iv.i.i.i.us, 4
  br label %.lr.ph.i.i.i.us.new, !llvm.loop !10

.epil.preheader183:                               ; preds = %.lr.ph.i.i.i.us
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader183
  %indvars.iv.i.i.i.us.epil = phi i64 [ 0, %.epil.preheader183 ], [ %indvars.iv.next.i.i.i.us.epil, %bb.f ] ; 3 uses
  %.010.i.i.i.us.epil = phi ptr [ %i.z, %.epil.preheader183 ], [ %i.bm, %bb.f ] ; 2 uses
  %epil.iter185 = phi i64 [ 0, %.epil.preheader183 ], [ %epil.iter185.next, %bb.f ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us.epil
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !29 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.us.epil
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !28 ; 2 uses
  %i.bl = mul i64 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us.epil, i64 %i.bl ; 8 uses
  %indvars.iv.next.i.i.i.us.epil = add nuw nsw i64 %indvars.iv.i.i.i.us.epil, 1
  %epil.iter185.next = add i64 %epil.iter185, 1   ; 2 uses
  %epil.iter185.cmp.not = icmp eq i64 %epil.iter185.next, %wide.trip.count.i.i.i
  br i1 %epil.iter185.cmp.not, label %iter.check162.epilog-lcssa, label %bb.f, !llvm.loop !348

iter.check162.epilog-lcssa:                       ; preds = %bb.f
  %i.bn = ptrtoaddr ptr %.010.i.i.i.us.epil to i64 ; 3 uses
  %i.bo = sext i32 %i.bh to i64
  %i.bp = mul i64 %i.bk, %i.bo                    ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx.i
  %i.br = add i64 %.idx.i, %i.bn
  %i.bs = add i64 %i.br, %i.bp
  %i.bt = add i64 %i.bn, 2
  %i.bu = add i64 %i.bt, %i.bp
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bu)
  %i.bv = xor i64 %i.bp, -1
  %i.bw = add i64 %umax, %i.bv
  %i.bx = sub i64 %i.bw, %i.bn                    ; 3 uses
  %i.by = lshr i64 %i.bx, 1
  %i.bz = add nuw i64 %i.by, 1                    ; 5 uses
  %min.iters.check150 = icmp ult i64 %i.bx, 6
  br i1 %min.iters.check150, label %.lr.ph.i.us.preheader, label %vector.main.loop.iter.check151

vector.main.loop.iter.check151:                   ; preds = %iter.check162.epilog-lcssa
  %min.iters.check152 = icmp ult i64 %i.bx, 30
  br i1 %min.iters.check152, label %vec.epilog.ph166, label %vector.ph153

vector.ph153:                                     ; preds = %vector.main.loop.iter.check151
  %i.ca = and i64 %i.bz, 12
  %n.vec154 = and i64 %i.bz, -16                  ; 4 uses
  %i.cb = shl i64 %n.vec154, 1
  %i.cc = getelementptr i8, ptr %i.bm, i64 %i.cb
  br label %vector.body155

vector.body155:                                   ; preds = %vector.ph153, %vector.body155
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next159, %vector.body155 ] ; 2 uses
  %i.cd = shl i64 %index156, 1                    ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.bm, i64 %i.cd
  %i.ce = getelementptr i8, ptr %i.bm, i64 %i.cd
  %next.gep158 = getelementptr i8, ptr %i.ce, i64 16
  store <16 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep157, align 1, !tbaa !27
  store <16 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep158, align 1, !tbaa !27
  %index.next159 = add nuw i64 %index156, 16      ; 2 uses
  %i.cf = icmp eq i64 %index.next159, %n.vec154
  br i1 %i.cf, label %middle.block160, label %vector.body155, !llvm.loop !349

middle.block160:                                  ; preds = %vector.body155
  %cmp.n161 = icmp eq i64 %i.bz, %n.vec154
  br i1 %cmp.n161, label %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_27integrateHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_4MatxIfLi4ELi4EEERiiibRKNS_11_InputArrayESE_RKNS_17_InputOutputArrayERSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISJ_ESaISt4pairIKSJ_SK_EEEE3$_3EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", label %vec.epilog.iter.check163

vec.epilog.iter.check163:                         ; preds = %middle.block160
  %min.epilog.iters.check165 = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check165, label %.lr.ph.i.us.preheader, label %vec.epilog.ph166, !prof !361

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check151, %vec.epilog.iter.check163
  %vec.epilog.resume.val167 = phi i64 [ %n.vec154, %vec.epilog.iter.check163 ], [ 0, %vector.main.loop.iter.check151 ]
  %n.vec168 = and i64 %i.bz, -4                   ; 3 uses
  %i.cg = shl i64 %n.vec168, 1
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cg
  br label %vec.epilog.vector.body169

vec.epilog.vector.body169:                        ; preds = %vec.epilog.vector.body169, %vec.epilog.ph166
  %index170 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph166 ], [ %index.next172, %vec.epilog.vector.body169 ] ; 2 uses
  %i.ci = shl i64 %index170, 1
  %next.gep171 = getelementptr i8, ptr %i.bm, i64 %i.ci
  store <8 x i8> <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>, ptr %next.gep171, align 1, !tbaa !27
  %index.next172 = add nuw i64 %index170, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next172, %n.vec168
  br i1 %i.cj, label %vec.epilog.middle.block173, label %vec.epilog.vector.body169, !llvm.loop !350

vec.epilog.middle.block173:                       ; preds = %vec.epilog.vector.body169
  %cmp.n174 = icmp eq i64 %i.bz, %n.vec168
  br i1 %cmp.n174, label %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_27integrateHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_4MatxIfLi4ELi4EEERiiibRKNS_11_InputArrayESE_RKNS_17_InputOutputArrayERSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISJ_ESaISt4pairIKSJ_SK_EEEE3$_3EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %iter.check162.epilog-lcssa, %vec.epilog.iter.check163, %vec.epilog.middle.block173
  %.01.i.us.ph = phi ptr [ %i.bm, %iter.check162.epilog-lcssa ], [ %i.cc, %vec.epilog.iter.check163 ], [ %i.ch, %vec.epilog.middle.block173 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.01.i.us = phi ptr [ %i.ck, %.lr.ph.i.us ], [ %.01.i.us.ph, %.lr.ph.i.us.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 2 ; 2 uses
  store i8 -1, ptr %.01.i.us, align 1, !tbaa !363
  %i.cl = getelementptr inbounds nuw i8, ptr %.01.i.us, i64 1
  store i8 0, ptr %i.cl, align 1, !tbaa !364
  %i.cm = icmp ult ptr %i.ck, %i.bq
  br i1 %i.cm, label %.lr.ph.i.us, label %"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_27integrateHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_4MatxIfLi4ELi4EEERiiibRKNS_11_InputArrayESE_RKNS_17_InputOutputArrayERSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISJ_ESaISt4pairIKSJ_SK_EEEE3$_3EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", !llvm.loop !351

"_ZZN2cv3Mat12forEach_implINS_3VecIhLi2EEEZNS_27integrateHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_4MatxIfLi4ELi4EEERiiibRKNS_11_InputArrayESE_RKNS_17_InputOutputArrayERSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISJ_ESaISt4pairIKSJ_SK_EEEE3$_3EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us": ; preds = %.lr.ph.i.us, %vec.epilog.middle.block173, %middle.block160
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.cn = add nsw i32 %.034112.us, 1              ; 2 uses
  %exitcond119.not = icmp eq i32 %i.cn, %i.v
  br i1 %exitcond119.not, label %.loopexit, label %.lr.ph.i.i.i.us, !llvm.loop !352

bb.g:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.co = zext nneg i32 %i.d to i64               ; 2 uses
  %i.cp = shl nuw nsw i64 %i.co, 2                ; 4 uses
  %i.cq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #24 ; 14 uses
  store i32 0, ptr %i.cq, align 4, !tbaa !29
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.cp, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cr, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !29
  %i.cs = load i32, ptr %1, align 4, !tbaa !64    ; 3 uses
  %i.ct = add nsw i32 %i.cs, -1
  %i.cu = add nsw i32 %i.d, -2                    ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cv ; 3 uses
  store i32 %i.ct, ptr %i.cw, align 4, !tbaa !29
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !65 ; 2 uses
  %i.cz = icmp slt i32 %i.cs, %i.cy
  br i1 %i.cz, label %.lr.ph93.split.us, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph93.split.us:                                ; preds = %bb.g
  %i.da = getelementptr [4 x i8], ptr %i.cq, i64 %i.co
  %i.db = getelementptr i8, ptr %i.da, i64 -4     ; 2 uses
  %i.dc = icmp sgt i32 %i.r, 0
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !107 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 84
  %i.dg = zext nneg i32 %i.cu to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dg
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 128 ; 5 uses
  %i.dk = zext i32 %i.r to i64                    ; 5 uses
  %min.iters.check = icmp ult i32 %i.r, 4
  %min.iters.check141 = icmp ult i32 %i.r, 16
  %i.dl = and i64 %i.dk, 12
  %n.vec = and i64 %i.dk, 2147483632              ; 5 uses
  %i.dm = trunc nuw nsw i64 %n.vec to i32
  %i.dn = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.dk
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_25raycastHashTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_4MatxIfLi4ELi4EEEiiRKNS0_11_InputArrayEiSE_RKSt13unordered_mapINS0_3VecIiLi3EEENS0_10VolumeUnitENS0_9tsdf_hashESt8equal_toISH_ESaISt4pairIKSH_SI_EEERKNS0_12_OutputArrayESV_E3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.u, float %.sroa.01.4.vec.extract.i.i.i.i, float %i.jz)
  %i.kb = tail call float @llvm.fmuladd.f32(float %i.w, float %.fca.1.extract16.i.i.i, float %i.ka)
  %i.kc = load ptr, ptr %i.i, align 8, !tbaa !447, !nonnull !92, !align !194 ; 5 uses
  %i.kd = load <8 x float>, ptr %i.kc, align 4, !tbaa !41 ; 4 uses
  %i.ke = shufflevector <3 x float> %i.jg, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kf = shufflevector <8 x float> %i.kd, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.kg = fmul <2 x float> %i.ke, %i.kf
  %i.kh = shufflevector <8 x float> %i.kd, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ki = shufflevector <3 x float> %i.jg, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> %i.ki, <2 x float> %i.kg)
  %i.kk = shufflevector <8 x float> %i.kd, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.kl = shufflevector <3 x float> %i.jg, <3 x float> poison, <2 x i32> zeroinitializer
  %i.km = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.kl, <2 x float> %i.kj)
  %i.kn = shufflevector <8 x float> %i.kd, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ko = fadd <2 x float> %i.kn, %i.km
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !41
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kc, i64 36
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !41
  %i.kt = extractelement <3 x float> %i.jg, i64 2
  %i.ku = fmul float %i.kt, %i.ks
  %i.kv = extractelement <3 x float> %i.jg, i64 1
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.kq, float %i.kv, float %i.ku)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kc, i64 40
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !41
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.ky, float %i.ji, float %i.kw)
  %i.la = getelementptr inbounds nuw i8, ptr %i.kc, i64 44
  %i.lb = load float, ptr %i.la, align 4, !tbaa !41
  %i.lc = fadd float %i.lb, %i.kz
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0210.1.i.i.i = phi <2 x float> [ splat (float +qnan), %bb.p ], [ %i.jy, %bb.q ]
  %.sroa.7213.1.i.i.i = phi float [ +qnan, %bb.p ], [ %i.kb, %bb.q ]
  %.sroa.0214.1.i.i.i = phi <2 x float> [ splat (float +qnan), %bb.p ], [ %i.ko, %bb.q ]
  %.sroa.7217.1.i.i.i = phi float [ +qnan, %bb.p ], [ %i.lc, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.thread245.i.i.i

.thread.i.i.i:                                    ; preds = %bb.j, %_ZNKSt8__detail15_Hashtable_baseIN2cv3VecIiLi3EEESt4pairIKS3_NS1_10VolumeUnitEENS_10_Select1stESt8equal_toIS3_ENS1_9tsdf_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb0EEE.exit.thread.i.i.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN2cv3VecIiLi3EEESt4pairIKS3_NS1_10VolumeUnitEENS_10_Select1stESt8equal_toIS3_ENS1_9tsdf_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS7_Lb0EEE.exit.thread.i.i.i.i, %bb.n, %bb.f, %bb.d
  %.099244.i.i.i = phi float [ %i.ir, %bb.n ], [ %.097265.i.i.i, %bb.d ], [ %.097265.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN2cv3VecIiLi3EEESt4pairIKS3_NS1_10VolumeUnitEENS_10_Select1stESt8equal_toIS3_ENS1_9tsdf_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS7_Lb0EEE.exit.thread.i.i.i.i ], [ %.097265.i.i.i, %bb.f ], [ %.097265.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN2cv3VecIiLi3EEESt4pairIKS3_NS1_10VolumeUnitEENS_10_Select1stESt8equal_toIS3_ENS1_9tsdf_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb0EEE.exit.thread.i.i.i.i.i.i ], [ %.097265.i.i.i, %bb.j ]
  %.0101243.i.i.i = phi float [ %i.it, %bb.n ], [ %i.ap, %bb.d ], [ %i.ap, %_ZNKSt8__detail15_Hashtable_baseIN2cv3VecIiLi3EEESt4pairIKS3_NS1_10VolumeUnitEENS_10_Select1stESt8equal_toIS3_ENS1_9tsdf_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS7_Lb0EEE.exit.thread.i.i.i.i ], [ %i.ap, %bb.f ], [ %i.ap, %_ZNKSt8__detail15_Hashtable_baseIN2cv3VecIiLi3EEESt4pairIKS3_NS1_10VolumeUnitEENS_10_Select1stESt8equal_toIS3_ENS1_9tsdf_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb0EEE.exit.thread.i.i.i.i.i.i ], [ %i.ap, %bb.j ]
  %i.ld = fadd float %.094268.i.i.i, %.0101243.i.i.i ; 2 uses
  %i.le = fcmp olt float %i.ld, %i.dl
  br i1 %i.le, label %bb.c, label %.thread245.i.i.i

.thread245.i.i.i:                                 ; preds = %.thread.i.i.i, %bb.r, %bb.o, %bb.b
  %.sroa.0210.3.i.i.i = phi <2 x float> [ %.sroa.0210.1.i.i.i, %bb.r ], [ splat (float +qnan), %bb.o ], [ splat (float +qnan), %bb.b ], [ splat (float +qnan), %.thread.i.i.i ]
  %.sroa.7213.3.i.i.i = phi float [ %.sroa.7213.1.i.i.i, %bb.r ], [ +qnan, %bb.o ], [ +qnan, %bb.b ], [ +qnan, %.thread.i.i.i ]
  %.sroa.0214.3.i.i.i = phi <2 x float> [ %.sroa.0214.1.i.i.i, %bb.r ], [ splat (float +qnan), %bb.o ], [ splat (float +qnan), %bb.b ], [ splat (float +qnan), %.thread.i.i.i ]
  %.sroa.7217.3.i.i.i = phi float [ %.sroa.7217.1.i.i.i, %bb.r ], [ +qnan, %bb.o ], [ +qnan, %bb.b ], [ +qnan, %.thread.i.i.i ]
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv.i.i.i ; 3 uses
  store <2 x float> %.sroa.0214.3.i.i.i, ptr %i.lf, align 4
  %.sroa.5146.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store float %.sroa.7217.3.i.i.i, ptr %.sroa.5146.0..sroa_idx.i.i.i, align 4
  %.sroa.6147.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  store float 0.000000e+00, ptr %.sroa.6147.0..sroa_idx.i.i.i, align 4
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %indvars.iv.i.i.i ; 3 uses
  store <2 x float> %.sroa.0210.3.i.i.i, ptr %i.lg, align 4
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store float %.sroa.7213.3.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4
  %.sroa.6140.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  store float 0.000000e+00, ptr %.sroa.6140.0..sroa_idx.i.i.i, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.lh = load ptr, ptr %i.ae, align 8, !tbaa !450, !nonnull !92, !align !192 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !132
  %i.lk = sext i32 %i.lj to i64
  %i.ll = icmp slt i64 %indvars.iv.next.i.i.i, %i.lk
  br i1 %i.ll, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !443

"_ZSt10__invoke_rIvRZN2cv25raycastHashTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_4MatxIfLi4ELi4EEEiiRKNS0_11_InputArrayEiSA_RKSt13unordered_mapINS0_3VecIiLi3EEENS0_10VolumeUnitENS0_9tsdf_hashESt8equal_toISD_ESaISt4pairIKSD_SE_EEERKNS0_12_OutputArrayESR_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESY_E4typeEOSZ_DpOS10_.exit": ; preds = %._crit_edge.i.i.i, %bb.a, %.lr.ph273.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_25raycastHashTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_4MatxIfLi4ELi4EEEiiRKNS0_11_InputArrayEiSE_RKSt13unordered_mapINS0_3VecIiLi3EEENS0_10VolumeUnitENS0_9tsdf_hashESt8equal_toISH_ESaISt4pairIKSH_SI_EEERKNS0_12_OutputArrayESV_E3$_0E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv25raycastHashTsdfVolumeUnitERKNS1_14VolumeSettingsERKNS1_4MatxIfLi4ELi4EEEiiRKNS1_11_InputArrayEiSB_RKSt13unordered_mapINS1_3VecIiLi3EEENS1_10VolumeUnitENS1_9tsdf_hashESt8equal_toISE_ESaISt4pairIKSE_SF_EEERKNS1_12_OutputArrayESS_E3$_0E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv25raycastHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_4MatxIfLi4ELi4EEEiiRKNS_11_InputArrayEiS9_RKSt13unordered_mapINS_3VecIiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISC_ESaISt4pairIKSC_SD_EEERKNS_12_OutputArrayESQ_E3$_0", ptr %0, align 8, !tbaa !205
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv25raycastHashTsdfVolumeUnitERKNS1_14VolumeSettingsERKNS1_4MatxIfLi4ELi4EEEiiRKNS1_11_InputArrayEiSB_RKSt13unordered_mapINS1_3VecIiLi3EEENS1_10VolumeUnitENS1_9tsdf_hashESt8equal_toISE_ESaISt4pairIKSE_SF_EEERKNS1_12_OutputArrayESS_E3$_0E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !86
  store ptr %.val, ptr %0, align 8, !tbaa !86
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv25raycastHashTsdfVolumeUnitERKNS1_14VolumeSettingsERKNS1_4MatxIfLi4ELi4EEEiiRKNS1_11_InputArrayEiSB_RKSt13unordered_mapINS1_3VecIiLi3EEENS1_10VolumeUnitENS1_9tsdf_hashESt8equal_toISE_ESaISt4pairIKSE_SF_EEERKNS1_12_OutputArrayESS_E3$_0E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(120) %.val6, i64 120, i1 false), !tbaa.struct !462
  store ptr %i.a, ptr %0, align 8, !tbaa !86
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv25raycastHashTsdfVolumeUnitERKNS1_14VolumeSettingsERKNS1_4MatxIfLi4ELi4EEEiiRKNS1_11_InputArrayEiSB_RKSt13unordered_mapINS1_3VecIiLi3EEENS1_10VolumeUnitENS1_9tsdf_hashESt8equal_toISE_ESaISt4pairIKSE_SF_EEERKNS1_12_OutputArrayESS_E3$_0E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !86 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv25raycastHashTsdfVolumeUnitERKNS1_14VolumeSettingsERKNS1_4MatxIfLi4ELi4EEEiiRKNS1_11_InputArrayEiSB_RKSt13unordered_mapINS1_3VecIiLi3EEENS1_10VolumeUnitENS1_9tsdf_hashESt8equal_toISE_ESaISt4pairIKSE_SF_EEERKNS1_12_OutputArrayESS_E3$_0E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 120) #23
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv25raycastHashTsdfVolumeUnitERKNS1_14VolumeSettingsERKNS1_4MatxIfLi4ELi4EEEiiRKNS1_11_InputArrayEiSB_RKSt13unordered_mapINS1_3VecIiLi3EEENS1_10VolumeUnitENS1_9tsdf_hashESt8equal_toISE_ESaISt4pairIKSE_SF_EEERKNS1_12_OutputArrayESS_E3$_0E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv25raycastHashTsdfVolumeUnitERKNS1_14VolumeSettingsERKNS1_4MatxIfLi4ELi4EEEiiRKNS1_11_InputArrayEiSB_RKSt13unordered_mapINS1_3VecIiLi3EEENS1_10VolumeUnitENS1_9tsdf_hashESt8equal_toISE_ESaISt4pairIKSE_SF_EEERKNS1_12_OutputArrayESS_E3$_0E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEEZNS_34fetchNormalsFromHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayERKSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISB_ESaISt4pairIKSB_SC_EEEiS9_RKNS_12_OutputArrayEE3$_0EEvRKT0_EN21PixelOperationWrapperD0Ev"(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEEZNS_34fetchNormalsFromHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayERKSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISB_ESaISt4pairIKSB_SC_EEEiS9_RKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapperclERKNS_5RangeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %union.Index.92, align 4            ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !100  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = add nsw i32 %i.d, -1                     ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !99
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %i.h = icmp ult i32 %i.f, %narrow.i
  br i1 %i.h, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.10, i32 noundef 97) #22
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %7, align 8, !tbaa !26     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !27
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %eh.lpad-body, %_ZNSt6vectorIiSaIiEED2Ev.exit74 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.o = zext nneg i32 %i.f to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !29   ; 4 uses
  %i.s = icmp samesign ult i32 %i.d, 3
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.t = load i32, ptr %1, align 4, !tbaa !64     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !65
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %9 = sext i32 %i.r to i64
  %.idx.i = shl nuw nsw i64 %9, 4
  %i.y = icmp sgt i32 %i.r, 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %i.y, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split.us:                                  ; preds = %.lr.ph, %"_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEEZNS_34fetchNormalsFromHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayERKSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISB_ESaISt4pairIKSB_SC_EEEiS9_RKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us"
  %.034113.us = phi i32 [ %i.bw, %"_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEEZNS_34fetchNormalsFromHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayERKSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISB_ESaISt4pairIKSB_SC_EEEiS9_RKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us" ], [ %i.t, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i32 %.034113.us, ptr %6, align 4, !tbaa !29
  store i32 0, ptr %i.x, align 4, !tbaa !29
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !178 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !100 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !169 ; 3 uses
  %i.af = icmp sgt i32 %i.ac, 0
  br i1 %i.af, label %.lr.ph.i.i.i.us, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.split.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 128 ; 5 uses
  %wide.trip.count.i.i.i.us = zext nneg i32 %i.ac to i64 ; 2 uses
  %xtraiter162 = and i64 %wide.trip.count.i.i.i.us, 3 ; 3 uses
  %i.ah = icmp ult i32 %i.ac, 4
  br i1 %i.ah, label %.epil.preheader161, label %.lr.ph.i.i.i.us.new

.lr.ph.i.i.i.us.new:                              ; preds = %.lr.ph.i.i.i.us
  %unroll_iter167 = and i64 %wide.trip.count.i.i.i.us, 2147483644
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.us.new
  %indvars.iv.i.i.i.us = phi i64 [ 0, %.lr.ph.i.i.i.us.new ], [ %indvars.iv.next.i.i.i.us.3, %bb.f ] ; 6 uses
  %.010.i.i.i.us = phi ptr [ %i.ae, %.lr.ph.i.i.i.us.new ], [ %i.bj, %bb.f ]
  %niter168 = phi i64 [ 0, %.lr.ph.i.i.i.us.new ], [ %niter168.next.3, %bb.f ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.us
  %i.am = load i64, ptr %i.al, align 8, !tbaa !28
  %i.an = mul i64 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us, i64 %i.an
  %indvars.iv.next.i.i.i.us = or disjoint i64 %indvars.iv.i.i.i.us, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i.us
  %i.at = load i64, ptr %i.as, align 8, !tbaa !28
  %i.au = mul i64 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %indvars.iv.next.i.i.i.us.1 = or disjoint i64 %indvars.iv.i.i.i.us, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.1
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !29
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i.us.1
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !28
  %i.bb = mul i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bb
  %indvars.iv.next.i.i.i.us.2 = or disjoint i64 %indvars.iv.i.i.i.us, 3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.2
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !29
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i.us.2
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !28
  %i.bi = mul i64 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bi ; 3 uses
  %indvars.iv.next.i.i.i.us.3 = add nuw nsw i64 %indvars.iv.i.i.i.us, 4 ; 2 uses
  %niter168.next.3 = add i64 %niter168, 4         ; 2 uses
  %niter168.ncmp.3 = icmp eq i64 %niter168.next.3, %unroll_iter167
  br i1 %niter168.ncmp.3, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa, label %bb.f, !llvm.loop !10

_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod164.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod164.not, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us, label %.epil.preheader161

.epil.preheader161:                               ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa, %.lr.ph.i.i.i.us
  %indvars.iv.i.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %indvars.iv.next.i.i.i.us.3, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa ]
  %.010.i.i.i.us.epil.init = phi ptr [ %i.ae, %.lr.ph.i.i.i.us ], [ %i.bj, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter162, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader161
  %indvars.iv.i.i.i.us.epil = phi i64 [ %indvars.iv.i.i.i.us.epil.init, %.epil.preheader161 ], [ %indvars.iv.next.i.i.i.us.epil, %bb.g ] ; 3 uses
  %.010.i.i.i.us.epil = phi ptr [ %.010.i.i.i.us.epil.init, %.epil.preheader161 ], [ %i.bq, %bb.g ]
  %epil.iter163 = phi i64 [ 0, %.epil.preheader161 ], [ %epil.iter163.next, %bb.g ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us.epil
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !29
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.us.epil
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !28
  %i.bp = mul i64 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us.epil, i64 %i.bp ; 2 uses
  %indvars.iv.next.i.i.i.us.epil = add nuw nsw i64 %indvars.iv.i.i.i.us.epil, 1
  %epil.iter163.next = add i64 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i64 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us, label %bb.g, !llvm.loop !463

_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us:  ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa, %bb.g, %.lr.ph.split.us
  %.0.lcssa.i.i.i.us = phi ptr [ %i.ae, %.lr.ph.split.us ], [ %i.bj, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us.loopexit.unr-lcssa ], [ %i.bq, %bb.g ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.us, i64 %.idx.i
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us
  %.06.i.us = phi ptr [ %.0.lcssa.i.i.i.us, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us ], [ %i.bt, %bb.h ] ; 2 uses
  %i.bs = phi i32 [ 0, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i.us ], [ %i.bu, %bb.h ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.us, i64 16 ; 2 uses
  call fastcc void @"_ZZN2cv34fetchNormalsFromHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayERKSt13unordered_mapINS_3VecIiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toIS8_ESaISt4pairIKS8_S9_EEEiS5_RKNS_12_OutputArrayEENK3$_0clERKNS7_IfLi4EEEPKi"(ptr noundef nonnull readonly align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %.06.i.us, ptr noundef %6)
  %i.bu = add nuw nsw i32 %i.bs, 1                ; 2 uses
  store i32 %i.bu, ptr %i.x, align 4, !tbaa !29
  %i.bv = icmp ult ptr %i.bt, %i.br
  br i1 %i.bv, label %bb.h, label %"_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEEZNS_34fetchNormalsFromHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayERKSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISB_ESaISt4pairIKSB_SC_EEEiS9_RKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", !llvm.loop !464

"_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEEZNS_34fetchNormalsFromHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayERKSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISB_ESaISt4pairIKSB_SC_EEEiS9_RKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us": ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bw = add nsw i32 %.034113.us, 1              ; 2 uses
  %i.bx = load i32, ptr %i.u, align 4, !tbaa !65
  %i.by = icmp slt i32 %i.bw, %i.bx
  br i1 %i.by, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !465

bb.i:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.bz = zext nneg i32 %i.d to i64               ; 2 uses
  %i.ca = shl nuw nsw i64 %i.bz, 2                ; 4 uses
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #24 ; 15 uses
  store i32 0, ptr %i.cb, align 4, !tbaa !29
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ca, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cc, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !29
  %i.cd = load i32, ptr %1, align 4, !tbaa !64    ; 3 uses
  %i.ce = add nsw i32 %i.cd, -1
  %i.cf = add nsw i32 %i.d, -2                    ; 2 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cg ; 3 uses
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !29
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !65 ; 2 uses
  %i.ck = icmp slt i32 %i.cd, %i.cj
  br i1 %i.ck, label %.lr.ph.us.preheader, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph.us.preheader:                              ; preds = %bb.i
  %i.cl = getelementptr [4 x i8], ptr %i.cb, i64 %i.bz
  %i.cm = getelementptr i8, ptr %i.cl, i64 -4     ; 4 uses
  %i.cn = icmp sgt i32 %i.r, 0
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cp = zext nneg i32 %i.cf to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cp
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.loopexit87.us
  %i.cq = phi i32 [ %i.fg, %.loopexit87.us ], [ %i.cj, %.lr.ph.us.preheader ]
  %.03091.us = phi i32 [ %i.fh, %.loopexit87.us ], [ %i.cd, %.lr.ph.us.preheader ]
  %i.cr = load i32, ptr %i.ch, align 4, !tbaa !29
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.ch, align 4, !tbaa !29
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !178 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 72 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 84
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.us, %_ZN2cv8MatShapeixEm.exit62.us
  %i.cw = phi i32 [ %.pre, %.lr.ph.us ], [ %i.dg, %_ZN2cv8MatShapeixEm.exit62.us ] ; 3 uses
  %indvars.iv = phi i64 [ %i.cp, %.lr.ph.us ], [ %indvars.iv.next, %_ZN2cv8MatShapeixEm.exit62.us ] ; 6 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv
  %i.cy = load i32, ptr %i.cu, align 4, !tbaa !99
  %narrow.i38.us = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 1)
  %i.cz = zext nneg i32 %narrow.i38.us to i64
  %i.da = icmp ult i64 %indvars.iv, %i.cz
  br i1 %i.da, label %bb.k, label %.split.us

bb.k:                                             ; preds = %bb.j
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !29 ; 2 uses
  %.not.us = icmp slt i32 %i.cw, %i.dc
  br i1 %.not.us, label %._crit_edge.us, label %_ZN2cv8MatShapeixEm.exit53.us

_ZN2cv8MatShapeixEm.exit53.us:                    ; preds = %bb.k
  %i.dd = sdiv i32 %i.cw, %i.dc
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !29
  %i.dg = add nsw i32 %i.df, %i.dd                ; 2 uses
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !29
  %i.dh = load i32, ptr %i.cu, align 4, !tbaa !99
  %narrow.i54.us = tail call i32 @llvm.smax.i32(i32 %i.dh, i32 1)
  %i.di = zext nneg i32 %narrow.i54.us to i64
  %i.dj = icmp samesign ult i64 %indvars.iv, %i.di
  br i1 %i.dj, label %_ZN2cv8MatShapeixEm.exit62.us, label %.split95.us

_ZN2cv8MatShapeixEm.exit62.us:                    ; preds = %_ZN2cv8MatShapeixEm.exit53.us
  %i.dk = load i32, ptr %i.db, align 4, !tbaa !29
  %i.dl = srem i32 %i.cw, %i.dk
  store i32 %i.dl, ptr %i.cx, align 4, !tbaa !29
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge.us, label %bb.j, !llvm.loop !466

._crit_edge.us:                                   ; preds = %_ZN2cv8MatShapeixEm.exit62.us, %bb.k
  store i32 0, ptr %i.cm, align 4, !tbaa !29
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !100 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !169 ; 3 uses
end_hunk_1
