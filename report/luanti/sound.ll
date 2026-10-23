Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/sound?download=true
inline.NumInlined: 795
inline.NumDeleted: 331
begin_hunk_0_@_ZN13ISoundManager6freeIdEij:bb.a

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.af, align 8, !tbaa !47
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE5eraseENSt8__detail14_Node_iteratorIS6_Lb0ELb0EEE.exit

bb.p:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i4, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE5eraseENSt8__detail14_Node_iteratorIS6_Lb0ELb0EEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !35
  %i.at = sext i32 %i.as to i64
  %i.au = urem i64 %i.at, %i.ab                   ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.au, %i.ad
  br i1 %.not17.i.i.i.i, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE5eraseENSt8__detail14_Node_iteratorIS6_Lb0ELb0EEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.au
  store ptr %.0.i.i.i.i, ptr %i.av, align 8, !tbaa !47
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE5eraseENSt8__detail14_Node_iteratorIS6_Lb0ELb0EEE.exit

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE5eraseENSt8__detail14_Node_iteratorIS6_Lb0ELb0EEE.exit: ; preds = %bb.l, %bb.o, %bb.p, %bb.q, %bb.r
  %i.aw = load ptr, ptr %.sroa.06.1.i.i, align 8, !tbaa !44
  store ptr %i.aw, ptr %.0.i.i.i.i, align 8, !tbaa !44
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.1.i.i, i64 noundef 16) #19
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !43
  %i.ay = add i64 %i.ax, -1
  store i64 %i.ay, ptr %i.b, align 8, !tbaa !43
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE4findERS5_.exit.thread

bb.s:                                             ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE4findERS5_.exit
  %i.az = sub nuw i32 %i.z, %2
  store i32 %i.az, ptr %i.y, align 4, !tbaa !49
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE4findERS5_.exit.thread

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE4findERS5_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.e, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE5eraseENSt8__detail14_Node_iteratorIS6_Lb0ELb0EEE.exit, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13ISoundManager10allocateIdEj(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %i.h = load i64, ptr %i.e, align 8, !tbaa !43
  %.not.not.i.i = icmp eq i64 %i.h, 0
  %i.i = load i32, ptr %i.d, align 8              ; 7 uses
  br i1 %.not.not.i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.c ], [ %i.g, %bb.b ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !44 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !35
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %.critedge, label %.preheader, !llvm.loop !2

bb.d:                                             ; preds = %bb.b
  %i.m = sext i32 %i.i to i64
  %i.n = load i64, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %i.o = urem i64 %i.m, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35
  %i.v = icmp eq i32 %i.i, %i.u
  br i1 %i.v, label %.critedge, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.w = icmp eq i32 %i.i, %i.z
  br i1 %i.w, label %.critedge, label %.lr.ph.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi ptr [ %i.x, %bb.f ], [ %i.s, %bb.e ]
  %i.x = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !44 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !35   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = urem i64 %i.aa, %i.n
  %.not19.i.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not19.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.g
  br label %.loopexit, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.d
  %i.ac = icmp eq i32 %i.i, 2147483647
  br i1 %i.ac, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.f, %bb.c, %bb.e, %.loopexit
  %i.ad = tail call noundef i32 @_Z6myrandv()
  %i.ae = urem i32 %i.ad, 2147483646
  %i.af = add nuw nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.d, align 8, !tbaa !119
  br label %bb.b, !llvm.loop !113

bb.h:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ag = add nsw i32 %i.i, 1
  store i32 %i.ag, ptr %i.d, align 8, !tbaa !119
  store i32 %i.i, ptr %i.b, align 4, !tbaa !35
  %i.ah = call { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRiRjEEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.ai
}

declare noundef i32 @_Z6myrandv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_Z20sound_volume_controlP13ISoundManagerb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr @g_settings, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.c, ptr noundef nonnull align 1 dereferenceable(10) @.str.13, i64 10, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.d, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.e, align 2, !tbaa !29
  %i.f = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !tbaa !29
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %i.f, label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit54, label %._crit_edge.i.i25

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.c
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.b
  %i.n = load i64, ptr %i.c, align 8, !tbaa !29
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.l

._crit_edge.i.i25:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load ptr, ptr @g_settings, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 1 dereferenceable(12) @.str.14, i64 12, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 12, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 0, ptr %i.s, align 4, !tbaa !29
  %i.t = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e       ; 4 uses

bb.c:                                             ; preds = %._crit_edge.i.i25
  %i.u = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.q
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.c
  %i.w = load i64, ptr %i.q, align 8, !tbaa !29
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %6 = fcmp nsz olt float %i.t, 0.000000e+00
  br i1 %6, label %._crit_edge.i.i32, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.y = fcmp nsz ogt float %i.t, 1.000000e+00
  %.0.i = select nsz i1 %i.y, float 1.000000e+00, float %i.t ; 3 uses
  %i.z = fcmp nsz une float %i.t, %.0.i
  br i1 %i.z, label %._crit_edge.i.i32, label %bb.g

._crit_edge.i.i32:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.a
  %.0.i71 = phi float [ %.0.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.a ], [ 0.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ] ; 2 uses
  %i.aa = load ptr, ptr @g_settings, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr noundef nonnull align 1 dereferenceable(12) @.str.14, i64 12, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 12, ptr %i.ac, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.ad, align 4, !tbaa !29
  %i.ae = invoke noundef zeroext i1 @_ZN8Settings8setFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(236) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %4, float noundef %.0.i71)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %._crit_edge.i.i32
  %i.af = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ab
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.d
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !29
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i25
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.q
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.e
  %i.am = load i64, ptr %i.q, align 8, !tbaa !29
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.l

bb.f:                                             ; preds = %._crit_edge.i.i32
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ab
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.f
  %i.ar = load i64, ptr %i.ab, align 8, !tbaa !29
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.a
  %.0.i72 = phi float [ %.0.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.0.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.a ] ; 2 uses
  br i1 %1, label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit54, label %.noexc.i46

.noexc.i46:                                       ; preds = %bb.g
  %i.at = load ptr, ptr @g_settings, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.au, ptr %5, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 22, ptr %i.a, align 8, !tbaa !51
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc47 unwind label %bb.j   ; 2 uses

.noexc47:                                         ; preds = %.noexc.i46
  store ptr %i.av, ptr %5, align 8, !tbaa !28
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !51  ; 3 uses
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.av, ptr noundef nonnull align 1 dereferenceable(22) @.str.15, i64 22, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !31
  %i.ay = load ptr, ptr %5, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ba = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.noexc47
  %i.bb = fmul nsz float %.0.i72, %i.ba           ; 3 uses
  %i.bc = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.au
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.h
  %i.be = load i64, ptr %i.au, align 8, !tbaa !29
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bg = fcmp nsz olt float %i.bb, 0.000000e+00
  br i1 %i.bg, label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit54, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.bh = fcmp nsz ogt float %i.bb, 1.000000e+00
  %..i52 = select nsz i1 %i.bh, float 1.000000e+00, float %i.bb
  br label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit54

bb.j:                                             ; preds = %.noexc.i46
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.k:                                             ; preds = %.noexc47
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.au
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.k
  %i.bm = load i64, ptr %i.au, align 8, !tbaa !29
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.j
  %.pn17 = phi { ptr, i32 } [ %i.bi, %bb.j ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.bj, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.l

_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit54:         ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.sink = phi float [ 0.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0.i72, %bb.g ], [ 0.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %..i52, %bb.i ]
  %i.bo = load ptr, ptr %0, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %.0.sink)
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn17.pn.pn.pn = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ]
  resume { ptr, i32 } %.pn17.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN8Settings8setFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32), float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25SoundFallbackPathProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV25SoundFallbackPathProvider, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !29
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #19
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #19
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !55
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !55
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #19
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25SoundFallbackPathProviderD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV25SoundFallbackPathProvider, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.d = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !29
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #19, !inline_history !122
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 48) #19, !inline_history !122
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !55
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN25SoundFallbackPathProviderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !55
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #19, !inline_history !122
  br label %_ZN25SoundFallbackPathProviderD2Ev.exit

_ZN25SoundFallbackPathProviderD2Ev.exit:          ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #19
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !56
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !44 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split.us, !llvm.loop !123

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !44 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split, !llvm.loop !123

bb.c:                                             ; preds = %bb.a
end_hunk_0
