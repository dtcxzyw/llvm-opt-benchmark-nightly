Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/pointabilities?download=true
inline.NumInlined: 324
inline.NumDeleted: 191
begin_hunk_0_@_ZN14Pointabilities27deSerializePointabilityTypeERSi:bb.a
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit:                                ; preds = %bb.a
  %i.j = load i8, ptr %i.a, align 1, !tbaa !23    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %switch = icmp ult i8 %i.j, 3
  %spec.select = select i1 %switch, i8 %i.j, i8 1
  ret i8 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14Pointabilities25serializePointabilityTypeERSo16PointabilityType(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 %1, ptr %i.a, align 1, !tbaa !23
  %i.b = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN14Pointabilities24toStringPointabilityTypeB5cxx11E16PointabilityType(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef zeroext %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !26
  switch i8 %1, label %._crit_edge.i.i12 [
    i8 1, label %._crit_edge.i.i
    i8 0, label %._crit_edge.i.i4
    i8 2, label %._crit_edge.i.i8
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  store i32 1702195828, ptr %i.a, align 8
  br label %bb.b

._crit_edge.i.i4:                                 ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  br label %bb.b

._crit_edge.i.i8:                                 ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  br label %bb.b

._crit_edge.i.i12:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i12, %._crit_edge.i.i8, %._crit_edge.i.i4, %._crit_edge.i.i
  %.sink = phi i64 [ 7, %._crit_edge.i.i12 ], [ 10, %._crit_edge.i.i8 ], [ 5, %._crit_edge.i.i4 ], [ 4, %._crit_edge.i.i ]
  %.sink19 = phi i64 [ 23, %._crit_edge.i.i12 ], [ 26, %._crit_edge.i.i8 ], [ 21, %._crit_edge.i.i4 ], [ 20, %._crit_edge.i.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sink19
  store i8 0, ptr %i.c, align 1, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !26
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.d, ptr %i.a, align 8, !tbaa !29
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !30
  %i.g = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.g, ptr %i.b, align 8, !tbaa !23
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !23
  store i8 %i.i, ptr %i.h, align 1, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !28
  %i.l = load ptr, ptr %0, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local range(i16 0, 512) i16 @_ZNK14Pointabilities9matchNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt13unordered_mapIS5_iSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIS6_iEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.018.040.i = load ptr, ptr %i.c, align 8, !tbaa !33 ; 2 uses
  %.not41.i = icmp eq ptr %.sroa.018.040.i, null
  br i1 %.not41.i, label %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit, label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %bb.b, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i
  %.sroa.018.044.ph.i = phi ptr [ %.sroa.018.051.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i ], [ %.sroa.018.040.i, %bb.b ]
  %.01043.ph.i = phi i1 [ true, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i ], [ false, %bb.b ]
  %.01242.ph.i = phi i8 [ %.01242.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i ], [ 0, %bb.b ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i, %.lr.ph.outer.i
  %.sroa.018.044.i = phi ptr [ %.sroa.018.0.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i ], [ %.sroa.018.044.ph.i, %.lr.ph.outer.i ] ; 4 uses
  %.01242.i = phi i8 [ %.214.ph.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i ], [ %.01242.ph.i, %.lr.ph.outer.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.018.044.i, i64 8
  %i.e = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.d) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i: ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i

bb.c:                                             ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.018.044.i, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !38
  switch i8 %i.k, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i [
    i8 1, label %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit
    i8 0, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i
  ]

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i: ; preds = %bb.c, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i, %.lr.ph.i
  %.214.ph.i = phi i8 [ %.01242.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i ], [ %.01242.i, %.lr.ph.i ], [ 1, %bb.c ] ; 2 uses
  %.sroa.018.0.i = load ptr, ptr %.sroa.018.044.i, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.018.0.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i: ; preds = %bb.c
  %.sroa.018.051.i = load ptr, ptr %.sroa.018.044.i, align 8, !tbaa !33 ; 2 uses
  %.not52.i = icmp eq ptr %.sroa.018.051.i, null
  br i1 %.not52.i, label %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit, label %.lr.ph.outer.i

._crit_edge.i:                                    ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i
  %i.l = zext nneg i8 %.214.ph.i to i16
  %i.m = shl nuw nsw i16 %i.l, 8
  %i.n = or disjoint i16 %i.m, 2
  %spec.select.i = select i1 %.01043.ph.i, i16 256, i16 %i.n
  br label %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit

_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i, %bb.c, %bb.b, %._crit_edge.i
  %.sroa.4.3.i = phi i16 [ 2, %bb.b ], [ 257, %bb.c ], [ %spec.select.i, %._crit_edge.i ], [ 256, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i ] ; 2 uses
  %.sroa.05.0.extract.trunc = trunc i16 %.sroa.4.3.i to i8
  %.sroa.3.0.extract.shift = and i16 %.sroa.4.3.i, -256
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.p = load i8, ptr %i.o, align 1, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit
  %.sroa.3.0 = phi i16 [ %.sroa.3.0.extract.shift, %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit ], [ 256, %bb.d ]
  %.sroa.05.0 = phi i8 [ %.sroa.05.0.extract.trunc, %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit ], [ %i.p, %bb.d ]
  %.sroa.05.0.insert.ext = zext i8 %.sroa.05.0 to i16
  %.sroa.05.0.insert.insert = or disjoint i16 %.sroa.3.0, %.sroa.05.0.insert.ext
  ret i16 %.sroa.05.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define dso_local range(i16 2, 260) i16 @_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.018.040 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %.not41 = icmp eq ptr %.sroa.018.040, null
  br i1 %.not41, label %.thread32, label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %bb.a, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread
  %.sroa.018.044.ph = phi ptr [ %.sroa.018.051, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread ], [ %.sroa.018.040, %bb.a ]
  %.01043.ph = phi i1 [ true, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread ], [ false, %bb.a ]
  %.01242.ph = phi i8 [ %.01242, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread ], [ 0, %bb.a ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.outer, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread
  %.sroa.018.044 = phi ptr [ %.sroa.018.0, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread ], [ %.sroa.018.044.ph, %.lr.ph.outer ] ; 4 uses
  %.01242 = phi i8 [ %.214.ph, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread ], [ %.01242.ph, %.lr.ph.outer ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.018.044, i64 8
  %i.c = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit: ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread

bb.b:                                             ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.018.044, i64 40
  %i.i = load i8, ptr %i.h, align 8, !tbaa !38
  switch i8 %i.i, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread [
    i8 1, label %.thread32
    i8 0, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread
  ]

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread: ; preds = %bb.b, %.lr.ph, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit
  %.214.ph = phi i8 [ %.01242, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit ], [ %.01242, %.lr.ph ], [ 1, %bb.b ] ; 2 uses
  %.sroa.018.0 = load ptr, ptr %.sroa.018.044, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %.sroa.018.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread: ; preds = %bb.b
  %.sroa.018.051 = load ptr, ptr %.sroa.018.044, align 8, !tbaa !33 ; 2 uses
  %.not52 = icmp eq ptr %.sroa.018.051, null
  br i1 %.not52, label %.thread32, label %.lr.ph.outer

._crit_edge:                                      ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread
  %i.j = zext nneg i8 %.214.ph to i16
  %i.k = shl nuw nsw i16 %i.j, 8
  %i.l = or disjoint i16 %i.k, 2
  %spec.select = select i1 %.01043.ph, i16 256, i16 %i.l
  br label %.thread32

.thread32:                                        ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread, %bb.b, %._crit_edge, %bb.a
  %.sroa.4.3 = phi i16 [ 2, %bb.a ], [ 257, %bb.b ], [ %spec.select, %._crit_edge ], [ 256, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread ]
  ret i16 %.sroa.4.3
}

; Function Attrs: mustprogress uwtable
define dso_local range(i16 0, 512) i16 @_ZNK14Pointabilities11matchObjectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt13unordered_mapIS5_iSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIS6_iEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.018.040.i = load ptr, ptr %i.d, align 8, !tbaa !33 ; 2 uses
  %.not41.i = icmp eq ptr %.sroa.018.040.i, null
  br i1 %.not41.i, label %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit, label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %bb.b, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i
  %.sroa.018.044.ph.i = phi ptr [ %.sroa.018.051.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i ], [ %.sroa.018.040.i, %bb.b ]
  %.01043.ph.i = phi i1 [ true, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i ], [ false, %bb.b ]
  %.01242.ph.i = phi i8 [ %.01242.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i ], [ 0, %bb.b ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i, %.lr.ph.outer.i
  %.sroa.018.044.i = phi ptr [ %.sroa.018.0.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i ], [ %.sroa.018.044.ph.i, %.lr.ph.outer.i ] ; 4 uses
  %.01242.i = phi i8 [ %.214.ph.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i ], [ %.01242.ph.i, %.lr.ph.outer.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.018.044.i, i64 8
  %i.f = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.e) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i: ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i

bb.c:                                             ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.018.044.i, i64 40
  %i.l = load i8, ptr %i.k, align 8, !tbaa !38
  switch i8 %i.l, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i [
    i8 1, label %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit
    i8 0, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i
  ]

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i: ; preds = %bb.c, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i, %.lr.ph.i
  %.214.ph.i = phi i8 [ %.01242.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i ], [ %.01242.i, %.lr.ph.i ], [ 1, %bb.c ] ; 2 uses
  %.sroa.018.0.i = load ptr, ptr %.sroa.018.044.i, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.018.0.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i: ; preds = %bb.c
  %.sroa.018.051.i = load ptr, ptr %.sroa.018.044.i, align 8, !tbaa !33 ; 2 uses
  %.not52.i = icmp eq ptr %.sroa.018.051.i, null
  br i1 %.not52.i, label %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit, label %.lr.ph.outer.i

._crit_edge.i:                                    ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i
  %i.m = zext nneg i8 %.214.ph.i to i16
  %i.n = shl nuw nsw i16 %i.m, 8
  %i.o = or disjoint i16 %i.n, 2
  %spec.select.i = select i1 %.01043.ph.i, i16 256, i16 %i.o
  br label %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit

_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i, %bb.c, %bb.b, %._crit_edge.i
  %.sroa.4.3.i = phi i16 [ 2, %bb.b ], [ 257, %bb.c ], [ %spec.select.i, %._crit_edge.i ], [ 256, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i ] ; 2 uses
  %.sroa.05.0.extract.trunc = trunc i16 %.sroa.4.3.i to i8
  %.sroa.3.0.extract.shift = and i16 %.sroa.4.3.i, -256
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = load i8, ptr %i.p, align 1, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit
  %.sroa.3.0 = phi i16 [ %.sroa.3.0.extract.shift, %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit ], [ 256, %bb.d ]
  %.sroa.05.0 = phi i8 [ %.sroa.05.0.extract.trunc, %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit ], [ %i.q, %bb.d ]
  %.sroa.05.0.insert.ext = zext i8 %.sroa.05.0 to i16
  %.sroa.05.0.insert.insert = or disjoint i16 %.sroa.3.0, %.sroa.05.0.insert.ext
  ret i16 %.sroa.05.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define dso_local range(i16 2, 260) i16 @_ZNK14Pointabilities11matchPlayerERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.018.040.i = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %.not41.i = icmp eq ptr %.sroa.018.040.i, null
  br i1 %.not41.i, label %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit, label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %bb.a, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i
  %.sroa.018.044.ph.i = phi ptr [ %.sroa.018.051.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i ], [ %.sroa.018.040.i, %bb.a ]
  %.01043.ph.i = phi i1 [ true, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i ], [ false, %bb.a ]
  %.01242.ph.i = phi i8 [ %.01242.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i ], [ 0, %bb.a ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i, %.lr.ph.outer.i
  %.sroa.018.044.i = phi ptr [ %.sroa.018.0.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i ], [ %.sroa.018.044.ph.i, %.lr.ph.outer.i ] ; 4 uses
  %.01242.i = phi i8 [ %.214.ph.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i ], [ %.01242.ph.i, %.lr.ph.outer.i ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.018.044.i, i64 8
  %i.c = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i: ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i

bb.b:                                             ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.018.044.i, i64 40
  %i.i = load i8, ptr %i.h, align 8, !tbaa !38
  switch i8 %i.i, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i [
    i8 1, label %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit
    i8 0, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i
  ]

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i: ; preds = %bb.b, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i, %.lr.ph.i
  %.214.ph.i = phi i8 [ %.01242.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i ], [ %.01242.i, %.lr.ph.i ], [ 1, %bb.b ] ; 2 uses
  %.sroa.018.0.i = load ptr, ptr %.sroa.018.044.i, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.018.0.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i: ; preds = %bb.b
  %.sroa.018.051.i = load ptr, ptr %.sroa.018.044.i, align 8, !tbaa !33 ; 2 uses
  %.not52.i = icmp eq ptr %.sroa.018.051.i, null
  br i1 %.not52.i, label %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit, label %.lr.ph.outer.i

._crit_edge.i:                                    ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.i
  %i.j = zext nneg i8 %.214.ph.i to i16
  %i.k = shl nuw nsw i16 %i.j, 8
  %i.l = or disjoint i16 %i.k, 2
  %spec.select.i = select i1 %.01043.ph.i, i16 256, i16 %i.l
  br label %_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit

_ZN14Pointabilities11matchGroupsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEERKS0_IS6_16PointabilityTypeS8_SA_SaISB_ISC_SI_EEE.exit: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i, %bb.b, %bb.a, %._crit_edge.i
  %.sroa.4.3.i = phi i16 [ 2, %bb.a ], [ 257, %bb.b ], [ %spec.select.i, %._crit_edge.i ], [ 256, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.thread.thread.i ]
  ret i16 %.sroa.4.3.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14Pointabilities16serializeTypeMapERSoRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  %i.e = trunc i64 %i.d to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.f = tail call noundef i32 @llvm.bswap.i32(i32 %i.e)
  store i32 %i.f, ptr %i.b, align 4
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.013.016 = load ptr, ptr %i.h, align 8, !tbaa !33 ; 2 uses
  %.not17 = icmp eq ptr %.sroa.013.016, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.013.018 = phi ptr [ %.sroa.013.016, %.lr.ph ], [ %.sroa.013.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.013.018, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.018, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28
  call void @_Z17serializeString16B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i64 %i.n, ptr %i.l)
  %i.o = load ptr, ptr %2, align 8, !tbaa !30
  %i.p = load i64, ptr %i.i, align 8, !tbaa !28
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.o, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.r = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.j
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.t = load i64, ptr %i.j, align 8, !tbaa !23
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.018, i64 40
  %i.w = load i8, ptr %i.v, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 %i.w, ptr %i.a, align 1, !tbaa !23
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.sroa.013.0 = load ptr, ptr %.sroa.013.018, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %.sroa.013.0, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.j
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.c
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !23
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.y
}

declare void @_Z17serializeString16B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14Pointabilities18deSerializeTypeMapERSiRSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.e, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i ], [ %i.d, %bb.a ] ; 4 uses
  %i.e = load ptr, ptr %.06.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 56) #20
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !60

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i, %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !49
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.o, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4
  %i.p = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !11
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !22
  %i.w = and i32 %i.v, 2
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %_Z7readU32RSi.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5clearEv.exit
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z7readU32RSi.exit:                               ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5clearEv.exit
  %.0.copyload.i.i = load i32, ptr %i.b, align 4  ; 2 uses
  %i.x = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.not = icmp eq i32 %.0.copyload.i.i, 0
end_hunk_0
