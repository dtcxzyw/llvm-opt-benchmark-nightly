inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN9ClientMap12emergeSectorEN4core8vector2dIsEE:bb.a

.loopexit.i:                                      ; preds = %bb.f, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i, %bb.c
  %i.ae = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38 ; 5 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !241
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr null, ptr %i.ag, align 8, !tbaa !259
  %i.ah = invoke ptr @_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef %i.l, i64 noundef %i.i, ptr noundef nonnull %i.ae, i64 noundef 1)
          to label %_ZNSt8__detail9_Map_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorESaIS8_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit unwind label %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i

common.resume:                                    ; preds = %bb.g, %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i ], [ %i.aj, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i: ; preds = %.loopexit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 32) #34
  br label %common.resume

_ZNSt8__detail9_Map_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorESaIS8_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i, %.loopexit.i
  %.pn.i = phi ptr [ %i.ah, %.loopexit.i ], [ %i.r, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  store ptr %i.b, ptr %.1.i, align 8, !tbaa !261
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 104) #34
  br label %common.resume

bb.h:                                             ; preds = %_ZNSt8__detail9_Map_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorESaIS8_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.b, %_ZNSt8__detail9_Map_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorESaIS8_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit ]
  ret ptr %.0
}

declare noundef ptr @_ZN3Map19getSectorNoGenerateEN4core8vector2dIsEE(ptr noundef nonnull align 8 dereferenceable(144), i32) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

declare void @_ZN9MapSectorC1EP3MapN4core8vector2dIsEEP8IGameDef(ptr noundef nonnull align 8 dereferenceable(98), ptr noundef, i32, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap19OnRegisterSceneNodeEv(ptr noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !89, !range !152, !noundef !153
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.d, i32 noundef 8) ; 0 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.d, i32 noundef 16) ; 0 uses
  %.pre = load i8, ptr %i.a, align 8, !tbaa !89, !range !152
  %i.p = trunc nuw i8 %.pre to i1
  br i1 %i.p, label %bb.c, label %_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %.sroa.01.04.i = load ptr, ptr %i.q, align 8, !tbaa !63 ; 2 uses
  %.not5.i = icmp eq ptr %.sroa.01.04.i, %i.q
  br i1 %.not5.i, label %_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.01.06.i = phi ptr [ %.sroa.01.0.i, %.lr.ph.i ], [ %.sroa.01.04.i, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !262  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(218) %i.s), !inline_history !263
  %.sroa.01.0.i = load ptr, ptr %.sroa.01.06.i, align 8, !tbaa !63 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.01.0.i, %i.q
  br i1 %.not.i, label %_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit, label %.lr.ph.i, !llvm.loop !264

_ZN5scene10ISceneNode19OnRegisterSceneNodeEv.exit: ; preds = %.lr.ph.i, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode19OnRegisterSceneNodeEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !89, !range !152, !noundef !153
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.01.04 = load ptr, ptr %i.d, align 8, !tbaa !63 ; 2 uses
  %.not5 = icmp eq ptr %.sroa.01.04, %i.d
  br i1 %.not5, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.01.06 = phi ptr [ %.sroa.01.0, %.lr.ph ], [ %.sroa.01.04, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.06, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !262  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(218) %i.f)
  %.sroa.01.0 = load ptr, ptr %.sroa.01.06, align 8, !tbaa !63 ; 2 uses
  %.not = icmp eq ptr %.sroa.01.0, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !264

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZThn144_N9ClientMap19OnRegisterSceneNodeEv(ptr noundef %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !89, !range !152, !noundef !153
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN9ClientMap19OnRegisterSceneNodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %0, i32 noundef 8), !inline_history !265 ; 0 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %0, i32 noundef 16), !inline_history !265 ; 0 uses
  %.pre.i = load i8, ptr %i.a, align 8, !tbaa !89, !range !152
  %i.o = trunc nuw i8 %.pre.i to i1
  br i1 %i.o, label %bb.c, label %_ZN9ClientMap19OnRegisterSceneNodeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.01.04.i.i = load ptr, ptr %i.p, align 8, !tbaa !63 ; 2 uses
  %.not5.i.i = icmp eq ptr %.sroa.01.04.i.i, %i.p
  br i1 %.not5.i.i, label %_ZN9ClientMap19OnRegisterSceneNodeEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.01.06.i.i = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i ], [ %.sroa.01.04.i.i, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !262  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(218) %i.r), !inline_history !266
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.06.i.i, align 8, !tbaa !63 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.01.0.i.i, %i.p
  br i1 %.not.i.i, label %_ZN9ClientMap19OnRegisterSceneNodeEv.exit, label %.lr.ph.i.i, !llvm.loop !264

_ZN9ClientMap19OnRegisterSceneNodeEv.exit:        ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap6renderEv(ptr noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %i.g)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  tail call void @_ZN9ClientMap9renderMapEPN5video12IVideoDriverEi(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull %i.f, i32 noundef %i.o)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN9ClientMap9renderMapEPN5video12IVideoDriverEi(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
.invoke:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, CachedMeshBuffer>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, CachedMeshBuffer>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %.sroa.03.i.i22.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0.i23.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.03.i.i12.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.03.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %class.TimeTaker, align 8           ; 16 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %class.anon, align 4               ; 23 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %class.TimeTaker, align 8          ; 16 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.core::CMatrix4", align 4   ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.f = icmp eq i32 %2, 16                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.g, ptr %7, align 8, !tbaa !155
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  store i64 0, ptr %i.h, align 8, !tbaa !154
  store i8 0, ptr %i.g, align 8, !tbaa !41
  %i.i = icmp eq i32 %2, 8                        ; 3 uses
  %i.j = select i1 %i.i, ptr @.str.21, ptr @.str.22
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.j, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.a ; 0 uses

bb.a:                                             ; preds = %.invoke
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 712
  %i.p = load float, ptr %i.o, align 8, !tbaa !267
  %i.q = invoke noundef i32 @_ZN6Client13getCrackLevelEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.n)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.t = invoke noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88) %i.s)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.sroa.0634.0.copyload = load float, ptr %i.u, align 8, !tbaa !59
  %.sroa.5635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 420
  %.sroa.5635.0.copyload = load float, ptr %.sroa.5635.0..sroa_idx, align 4, !tbaa !59
  %.sroa.6636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.6636.0.copyload = load float, ptr %.sroa.6636.0..sroa_idx, align 8, !tbaa !59
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1672
  %.sroa.0.0.copyload.i = load i16, ptr %i.w, align 8, !tbaa !140 ; 4 uses
  br i1 %i.f, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN9ClientMap28updateTransparentMeshBuffersEv(ptr noundef nonnull align 8 dereferenceable(656) %0)
          to label %._crit_edge.i.i unwind label %bb.g

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.f:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.g:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #2
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.aa, ptr %9, align 8, !tbaa !155
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !154
  store i8 0, ptr %i.aa, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ac, ptr %8, align 8, !tbaa !155
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !154
  store i8 0, ptr %i.ac, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr null, ptr %i.ae, align 8, !tbaa !445
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i8 1, ptr %i.af, align 8, !tbaa !449
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(50) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %._crit_edge.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.ac
  br i1 %i.ai, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #34
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %._crit_edge.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 49
  store i8 1, ptr %i.al, align 1, !tbaa !450
  invoke void @_ZN9TimeTaker5startEv(ptr noundef nonnull align 8 dereferenceable(50) %8)
          to label %_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit unwind label %bb.h

_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %i.am = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aa
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit
  %i.ao = load i64, ptr %i.aa, align 8, !tbaa !41
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  %i.aq = load i8, ptr @__tls_guard, align 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, !prof !451

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE)
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.at = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.au = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  %.pr = load i8, ptr @__tls_guard, align 1
  %i.av = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE) ; 2 uses
  %i.aw = icmp eq i8 %.pr, 0
  br i1 %i.aw, label %bb.i, label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, !prof !452

bb.i:                                             ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.ax = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.ay = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit: ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, %bb.i
  %i.az = phi ptr [ %i.as, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread ], [ %i.av, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit ], [ %i.av, %bb.i ] ; 3 uses
  %i.ba = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE) ; 18 uses
  call fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %i.az)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 26 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !453
  %.not.i.i = icmp eq ptr %i.bd, %i.bb
  br i1 %.not.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !453
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #2
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !93
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 624
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !454 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  invoke void @_ZNK6Camera20getFrustumCullPlanesEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::array.470") align 4 %10, ptr noundef nonnull align 8 dereferenceable(536) %i.bg)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 84
  %.sroa.01.0.copyload.i = load i48, ptr %i.bi, align 4, !noalias !455 ; 3 uses
  %.sroa.2.0.extract.shift.i.i = lshr i48 %.sroa.01.0.copyload.i, 16
  %.sroa.3.0.extract.shift.i.i = lshr i48 %.sroa.01.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i to i16
  %i.bj = sitofp nsz i16 %.sroa.3.0.extract.trunc.i.i to float
  %i.bk = trunc i48 %.sroa.01.0.copyload.i to i16
  %i.bl = insertelement <2 x i16> poison, i16 %i.bk, i64 0
  %i.bm = trunc i48 %.sroa.2.0.extract.shift.i.i to i16
  %i.bn = insertelement <2 x i16> %i.bl, i16 %i.bm, i64 1
  %i.bo = sitofp <2 x i16> %i.bn to <2 x float>
  %i.bp = fmul nnan nsz <2 x float> %i.bo, splat (float 1.000000e+01)
  %i.bq = fmul nnan nsz float %i.bj, 1.000000e+01
  store <2 x float> %i.bp, ptr %i.bh, align 4, !alias.scope !455
end_hunk_0
begin_hunk_1_@_ZN9ClientMap9renderMapEPN5video12IVideoDriverEi:.invoke
  store i8 0, ptr %i.kc, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #2
  %i.kd = invoke noundef i32 @_ZNK8Settings6getU32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.jy, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ai unwind label %bb.am     ; 2 uses

bb.ai:                                            ; preds = %.noexc.i270
  %i.ke = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.cr
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271: ; preds = %bb.ai
  %i.kg = load i64, ptr %i.cr, align 8, !tbaa !41
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i272: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  %.val89.i = load ptr, ptr %i.ba, align 8, !tbaa !21
  %.val90.i = load ptr, ptr %i.bc, align 8, !tbaa !453
  %i.ki = ptrtoint ptr %.val90.i to i64
  %i.kj = ptrtoint ptr %.val89.i to i64
  %i.kk = sub i64 %i.ki, %i.kj                    ; 2 uses
  %i.kl = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !519 ; 2 uses
  %.not.i.i273 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i273, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i272
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !42 ; 3 uses
  %.not2.i.i = icmp eq ptr %i.kn, null
  br i1 %.not2.i.i, label %bb.ak, label %_ZN15RenderingEngine16get_video_driverEv.exit.i

bb.ak:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i272
  invoke void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine16get_video_driverEv) #36
          to label %.noexc279 unwind label %.loopexit.split-lp671.loopexit.split-lp

.noexc279:                                        ; preds = %bb.ak
  unreachable

_ZN15RenderingEngine16get_video_driverEv.exit.i:  ; preds = %bb.aj
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !32
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = invoke noundef ptr %i.kq(ptr noundef nonnull align 8 dereferenceable(8) %i.kn)
          to label %.noexc280 unwind label %.loopexit.split-lp671.loopexit, !inline_history !520 ; 8 uses

.noexc280:                                        ; preds = %_ZN15RenderingEngine16get_video_driverEv.exit.i
  %i.ks = load ptr, ptr %i.jx, align 8, !tbaa !521 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0614.0934, i64 144 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !521 ; 2 uses
  %.not263299.i = icmp eq ptr %i.ks, %i.ku
  br i1 %.not263299.i, label %"._crit_edge313._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit_crit_edge.i", label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.ao
  %.pre.i = load ptr, ptr %i.kt, align 8, !tbaa !521, !noalias !523 ; 2 uses
  %.pre341.i = load ptr, ptr %i.jx, align 8, !tbaa !521, !noalias !526
  %i.kv = icmp eq ptr %.pre.i, %.pre341.i
  br i1 %i.kv, label %"._crit_edge313._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit_crit_edge.i", label %.lr.ph312.i

.lr.ph312.i:                                      ; preds = %._crit_edge.i
  %i.kw = icmp ult i32 %.165.i, 2
  br label %bb.ax

bb.al:                                            ; preds = %.lr.ph935
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i

bb.am:                                            ; preds = %.noexc.i270
  %i.ky = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kz = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.cr
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i: ; preds = %bb.am
  %i.lb = load i64, ptr %i.cr, align 8, !tbaa !41
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i, %bb.al
  %.pn.i = phi { ptr, i32 } [ %i.kx, %bb.al ], [ %i.ky, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i ], [ %i.ky, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  br label %.body287

.lr.ph.i:                                         ; preds = %.noexc280, %bb.ao
  %.064303.i = phi i32 [ %.165.i, %bb.ao ], [ 0, %.noexc280 ] ; 2 uses
  %.sroa.0224.0302.i = phi ptr [ %i.mj, %bb.ao ], [ %i.ks, %.noexc280 ] ; 2 uses
  %.0256301.i = phi i32 [ %.1257.i, %bb.ao ], [ 0, %.noexc280 ] ; 2 uses
  %.0258300.i = phi i32 [ %.1259.i, %bb.ao ], [ 0, %.noexc280 ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0224.0302.i, i64 8 ; 3 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !529 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !32
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = invoke noundef ptr %i.lh(ptr noundef nonnull align 8 dereferenceable(8) %i.le)
          to label %.noexc281 unwind label %.loopexit670, !inline_history !520 ; 2 uses

.noexc281:                                        ; preds = %.lr.ph.i
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !32
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = invoke noundef i32 %i.ll(ptr noundef nonnull align 8 dereferenceable(28) %i.li)
          to label %.noexc282 unwind label %.loopexit670, !inline_history !520

.noexc282:                                        ; preds = %.noexc281
  %i.ln = icmp ult i32 %i.lm, %i.kd
  br i1 %i.ln, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.noexc282
  %i.lo = add i32 %.064303.i, 1
  %i.lp = load ptr, ptr %i.ld, align 8, !tbaa !529 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !32
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = invoke noundef ptr %i.ls(ptr noundef nonnull align 8 dereferenceable(8) %i.lp)
          to label %.noexc283 unwind label %.loopexit670, !inline_history !520 ; 2 uses

.noexc283:                                        ; preds = %bb.an
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = invoke noundef i32 %i.lw(ptr noundef nonnull align 8 dereferenceable(28) %i.lt)
          to label %.noexc284 unwind label %.loopexit670, !inline_history !520

.noexc284:                                        ; preds = %.noexc283
  %i.ly = add i32 %i.lx, %.0258300.i
  %i.lz = load ptr, ptr %i.ld, align 8, !tbaa !529 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !32
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = invoke noundef ptr %i.mc(ptr noundef nonnull align 8 dereferenceable(8) %i.lz)
          to label %.noexc285 unwind label %.loopexit670, !inline_history !520 ; 2 uses

.noexc285:                                        ; preds = %.noexc284
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !32
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = invoke noundef i32 %i.mg(ptr noundef nonnull align 8 dereferenceable(28) %i.md)
          to label %.noexc286 unwind label %.loopexit670, !inline_history !520

.noexc286:                                        ; preds = %.noexc285
  %i.mi = add i32 %i.mh, %.0256301.i
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc286, %.noexc282
  %.1259.i = phi i32 [ %i.ly, %.noexc286 ], [ %.0258300.i, %.noexc282 ] ; 7 uses
  %.1257.i = phi i32 [ %i.mi, %.noexc286 ], [ %.0256301.i, %.noexc282 ] ; 7 uses
  %.165.i = phi i32 [ %i.lo, %.noexc286 ], [ %.064303.i, %.noexc282 ] ; 8 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0224.0302.i, i64 16 ; 2 uses
  %.not263.i = icmp eq ptr %i.mj, %i.ku
  br i1 %.not263.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge313.i:                                 ; preds = %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i
  %.not.i.i.i274 = icmp eq ptr %.sroa.0207.1.i, %.sroa.13.1.i
  br i1 %.not.i.i.i274, label %"._crit_edge313._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit_crit_edge.i", label %bb.ap

"._crit_edge313._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit_crit_edge.i": ; preds = %._crit_edge313.i, %._crit_edge.i, %.noexc280
  %.sroa.0207.0.lcssa415.i = phi ptr [ %.sroa.0207.1.i, %._crit_edge313.i ], [ null, %._crit_edge.i ], [ null, %.noexc280 ] ; 2 uses
  %.sroa.13.0.lcssa412.i = phi ptr [ %.sroa.13.1.i, %._crit_edge313.i ], [ null, %._crit_edge.i ], [ null, %.noexc280 ] ; 2 uses
  %.sroa.21220.0.lcssa410.i = phi ptr [ %.sroa.21220.1.i, %._crit_edge313.i ], [ null, %._crit_edge.i ], [ null, %.noexc280 ]
  %.0258.lcssa393408.i = phi i32 [ %.1259.i, %._crit_edge313.i ], [ %.1259.i, %._crit_edge.i ], [ 0, %.noexc280 ]
  %.0256.lcssa394406.i = phi i32 [ %.1257.i, %._crit_edge313.i ], [ %.1257.i, %._crit_edge.i ], [ 0, %.noexc280 ]
  %.064.lcssa395404.i = phi i32 [ %.165.i, %._crit_edge313.i ], [ %.165.i, %._crit_edge.i ], [ 0, %.noexc280 ]
  %.pre342.i = ptrtoint ptr %.sroa.13.0.lcssa412.i to i64
  %.pre343.i = ptrtoint ptr %.sroa.0207.0.lcssa415.i to i64 ; 2 uses
  %.pre345.i = sub i64 %.pre342.i, %.pre343.i
  %.pre347.i = sdiv exact i64 %.pre345.i, 24
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i"

bb.ap:                                            ; preds = %._crit_edge313.i
  %i.mk = ptrtoint ptr %.sroa.13.1.i to i64
  %i.ml = ptrtoint ptr %.sroa.0207.1.i to i64     ; 6 uses
  %i.mm = sub i64 %i.mk, %i.ml                    ; 2 uses
  %i.mn = sdiv exact i64 %i.mm, 24                ; 5 uses
  %i.mo = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mn, i1 true)
  %i.mp = shl nuw nsw i64 %i.mo, 1
  %i.mq = xor i64 %i.mp, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_T1_"(ptr %.sroa.0207.1.i, ptr %.sroa.13.1.i, i64 noundef %i.mq)
  %i.mr = icmp sgt i64 %i.mm, 384
  br i1 %i.mr, label %.lr.ph.i.i.i.i.i276, label %.preheader.i24.i.i.i.i

.lr.ph.i.i.i.i.i276:                              ; preds = %bb.ap
  %i.ms = getelementptr i8, ptr %.sroa.0207.1.i, i64 16 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %.lr.ph.i.i.i.i.i276
  %indvar = phi i64 [ %indvar.next, %bb.as ], [ 0, %.lr.ph.i.i.i.i.i276 ] ; 3 uses
  %.sroa.08.020.i.idx.i.i.i.i = phi i64 [ %.sroa.08.020.i.add.i.i.i.i, %bb.as ], [ 24, %.lr.ph.i.i.i.i.i276 ] ; 3 uses
  %.pn19.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.as ], [ %.sroa.0207.1.i, %.lr.ph.i.i.i.i.i276 ] ; 5 uses
  %.sroa.08.020.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0207.1.i, i64 %.sroa.08.020.i.idx.i.i.i.i ; 8 uses
  %i.mt = getelementptr i8, ptr %.pn19.i.i.i.i.i, i64 40
  %.val.i.i.i.i.i.i = load ptr, ptr %i.mt, align 8, !tbaa !531 ; 5 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ms, align 8, !tbaa !531
  %i.mu = icmp ult ptr %.val.i.i.i.i.i.i, %.val1.i.i.i.i.i.i
  br i1 %i.mu, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %bb.ar

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i.ptr.i.i.i.i, i64 16, i1 false)
  %i.mv = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 48
  %i.mw = udiv exact i64 %.sroa.08.020.i.idx.i.i.i.i, 24 ; 2 uses
  %i.mx = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.mx, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %i.my = getelementptr inbounds i8, ptr %.sroa.08.020.i.ptr.i.i.i.i, i64 -24 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mz, ptr noundef nonnull align 8 dereferenceable(24) %i.my, i64 12, i1 false), !tbaa.struct !533
  %i.na = getelementptr inbounds i8, ptr %.sroa.08.020.i.ptr.i.i.i.i, i64 -8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !30
  %i.nc = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 40
  store ptr %i.nb, ptr %i.nc, align 8, !tbaa !531
  %i.nd = add nsw i64 %i.mw, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.mw, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.nd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.mv, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.mz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.my, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ne = icmp eq i64 %indvar, 0
  br i1 %i.ne, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.np, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nl, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nk, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.nf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -24
  %i.ng = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ng, ptr noundef nonnull align 8 dereferenceable(24) %i.nf, i64 12, i1 false), !tbaa.struct !533
  %i.nh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !30
  %i.nj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -8
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !531
  %i.nk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.nl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nl, ptr noundef nonnull align 8 dereferenceable(24) %i.nk, i64 12, i1 false), !tbaa.struct !533
  %i.nm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -32
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !30
  %i.no = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -32
  store ptr %i.nn, ptr %i.no, align 8, !tbaa !531
  %i.np = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.i, -2
  %i.nq = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.nq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i, !llvm.loop !534

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0207.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  store ptr %.val.i.i.i.i.i.i, ptr %i.ms, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i.ptr.i.i.i.i, i64 16, i1 false)
  %i.nr = getelementptr i8, ptr %.pn19.i.i.i.i.i, i64 16
  %.val2.i7.i.i.i.i.i.i = load ptr, ptr %i.nr, align 8, !tbaa !531 ; 2 uses
  %i.ns = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i7.i.i.i.i.i.i
  br i1 %i.ns, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ar, %.lr.ph.i.i.i.i.i.i
  %i.nt = phi ptr [ %.val2.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val2.i7.i.i.i.i.i.i, %bb.ar ]
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.ar ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  store ptr %i.nt, ptr %i.nu, align 8, !tbaa !531
  %i.nv = getelementptr i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -32
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.nv, align 8, !tbaa !531 ; 2 uses
  %i.nw = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.nw, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i", !llvm.loop !535

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ar
  %.sroa.04.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.ar ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %24 = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i.i, i64 16
  store ptr %.val.i.i.i.i.i.i, ptr %24, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  br label %bb.as

bb.as:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i
  %.sroa.08.020.i.add.i.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i.i277 = icmp eq i64 %.sroa.08.020.i.add.i.i.i.i, 384
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i.i277, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i", label %bb.aq, !llvm.loop !536

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i": ; preds = %bb.as
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0207.1.i, i64 384 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.nx, %.sroa.13.1.i
  br i1 %.not6.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %.lr.ph.i13.i.i.i.i

.lr.ph.i13.i.i.i.i:                               ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.oe, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i" ], [ %i.nx, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8 ; 3 uses
  %i.ny = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8
  %.val2.i7.i.i14.i.i.i.i = load ptr, ptr %i.ny, align 8, !tbaa !531 ; 2 uses
  %i.nz = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i7.i.i14.i.i.i.i
  br i1 %i.nz, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i"

.lr.ph.i.i18.i.i.i.i:                             ; preds = %.lr.ph.i13.i.i.i.i, %.lr.ph.i.i18.i.i.i.i
  %i.oa = phi ptr [ %.val2.i.i.i21.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.val2.i7.i.i14.i.i.i.i, %.lr.ph.i13.i.i.i.i ]
  %.sroa.04.08.i.i19.i.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i20.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i20.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 16
  store ptr %i.oa, ptr %i.ob, align 8, !tbaa !531
  %i.oc = getelementptr i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -32
  %.val2.i.i.i21.i.i.i.i = load ptr, ptr %i.oc, align 8, !tbaa !531 ; 2 uses
  %i.od = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i.i.i21.i.i.i.i
  br i1 %i.od, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i", !llvm.loop !535

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i.i, %.lr.ph.i13.i.i.i.i
  %.sroa.04.0.lcssa.i.i16.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ], [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i16.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i12.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %25 = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i16.i.i.i.i, i64 16
  store ptr %.sroa.4.0.copyload.i.i.i.i.i.i, ptr %25, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.oe, %.sroa.13.1.i
  br i1 %.not.i17.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %.lr.ph.i13.i.i.i.i, !llvm.loop !537

.preheader.i24.i.i.i.i:                           ; preds = %bb.ap
  %.sroa.08.017.i25.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0207.1.i, i64 24 ; 2 uses
  %.not18.i26.i.i.i.i = icmp eq ptr %.sroa.08.017.i25.i.i.i.i, %.sroa.13.1.i
  br i1 %.not18.i26.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %.lr.ph.i27.i.i.i.i

.lr.ph.i27.i.i.i.i:                               ; preds = %.preheader.i24.i.i.i.i
  %i.of = getelementptr i8, ptr %.sroa.0207.1.i, i64 16 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.aw, %.lr.ph.i27.i.i.i.i
  %.sroa.08.020.i28.i.i.i.i = phi ptr [ %.sroa.08.017.i25.i.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.0.i35.i.i.i.i, %bb.aw ] ; 8 uses
  %.pn19.i29.i.i.i.i = phi ptr [ %.sroa.0207.1.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %bb.aw ] ; 3 uses
  %i.og = getelementptr i8, ptr %.pn19.i29.i.i.i.i, i64 40
  %.val.i.i30.i.i.i.i = load ptr, ptr %i.og, align 8, !tbaa !531 ; 5 uses
  %.val1.i.i31.i.i.i.i = load ptr, ptr %i.of, align 8, !tbaa !531
  %i.oh = icmp ult ptr %.val.i.i30.i.i.i.i, %.val1.i.i31.i.i.i.i
  br i1 %i.oh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i28.i.i.i.i, i64 16, i1 false)
  %i.oi = ptrtoint ptr %.sroa.08.020.i28.i.i.i.i to i64
  %i.oj = sub i64 %i.oi, %i.ml                    ; 2 uses
  %i.ok = icmp sgt i64 %i.oj, 0
  br i1 %i.ok, label %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i:           ; preds = %bb.au
  %i.ol = getelementptr inbounds nuw i8, ptr %.pn19.i29.i.i.i.i, i64 48
  %i.om = udiv exact i64 %i.oj, 24
  br label %.lr.ph.i.i.i.i.i.i43.i.i.i.i

.lr.ph.i.i.i.i.i.i43.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i43.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i
  %.010.i.i.i.i.i.i44.i.i.i.i = phi i64 [ %i.os, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %i.om, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i45.i.i.i.i = phi ptr [ %i.oo, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %i.ol, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i46.i.i.i.i = phi ptr [ %i.on, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i ] ; 2 uses
  %i.on = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i.i, i64 -24 ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i.i, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oo, ptr noundef nonnull align 8 dereferenceable(24) %i.on, i64 12, i1 false), !tbaa.struct !533
  %i.op = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i.i, i64 -8
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !30
  %i.or = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i.i, i64 -8
  store ptr %i.oq, ptr %i.or, align 8, !tbaa !531
  %i.os = add nsw i64 %.010.i.i.i.i.i.i44.i.i.i.i, -1
  %i.ot = icmp samesign ugt i64 %.010.i.i.i.i.i.i44.i.i.i.i, 1
  br i1 %i.ot, label %.lr.ph.i.i.i.i.i.i43.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i, !llvm.loop !534

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i43.i.i.i.i, %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0207.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i23.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  store ptr %.val.i.i30.i.i.i.i, ptr %i.of, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i22.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i28.i.i.i.i, i64 16, i1 false)
  %i.ou = getelementptr i8, ptr %.pn19.i29.i.i.i.i, i64 16
  %.val2.i7.i.i32.i.i.i.i = load ptr, ptr %i.ou, align 8, !tbaa !531 ; 2 uses
  %i.ov = icmp ult ptr %.val.i.i30.i.i.i.i, %.val2.i7.i.i32.i.i.i.i
  br i1 %i.ov, label %.lr.ph.i.i37.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i33.i.i.i.i"

.lr.ph.i.i37.i.i.i.i:                             ; preds = %bb.av, %.lr.ph.i.i37.i.i.i.i
  %i.ow = phi ptr [ %.val2.i.i.i40.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ], [ %.val2.i7.i.i32.i.i.i.i, %bb.av ]
  %.sroa.04.08.i.i38.i.i.i.i = phi ptr [ %.sroa.0.0.i.i39.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %bb.av ] ; 4 uses
  %.sroa.0.0.i.i39.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i38.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i39.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 16
  store ptr %i.ow, ptr %i.ox, align 8, !tbaa !531
  %i.oy = getelementptr i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 -32
  %.val2.i.i.i40.i.i.i.i = load ptr, ptr %i.oy, align 8, !tbaa !531 ; 2 uses
  %i.oz = icmp ult ptr %.val.i.i30.i.i.i.i, %.val2.i.i.i40.i.i.i.i
  br i1 %i.oz, label %.lr.ph.i.i37.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i33.i.i.i.i", !llvm.loop !535

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i33.i.i.i.i": ; preds = %.lr.ph.i.i37.i.i.i.i, %bb.av
  %.sroa.04.0.lcssa.i.i34.i.i.i.i = phi ptr [ %.sroa.08.020.i28.i.i.i.i, %bb.av ], [ %.sroa.0.0.i.i39.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i34.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i22.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %26 = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i34.i.i.i.i, i64 16
  store ptr %.val.i.i30.i.i.i.i, ptr %26, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  br label %bb.aw

bb.aw:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i33.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i
  %.sroa.08.0.i35.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i28.i.i.i.i, i64 24 ; 2 uses
  %.not.i36.i.i.i.i = icmp eq ptr %.sroa.08.0.i35.i.i.i.i, %.sroa.13.1.i
  br i1 %.not.i36.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %bb.at, !llvm.loop !536

bb.ax:                                            ; preds = %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i, %.lr.ph312.i
  %.sroa.0207.0310.i = phi ptr [ null, %.lr.ph312.i ], [ %.sroa.0207.1.i, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 11 uses
  %.sroa.13.0309.i = phi ptr [ null, %.lr.ph312.i ], [ %.sroa.13.1.i, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 12 uses
  %.sroa.21220.0308.i = phi ptr [ null, %.lr.ph312.i ], [ %.sroa.21220.1.i, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 8 uses
  %.sroa.0205.0307.i = phi ptr [ %.pre.i, %.lr.ph312.i ], [ %i.pa, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 2 uses
  %i.pa = getelementptr inbounds i8, ptr %.sroa.0205.0307.i, i64 -16 ; 3 uses
  %.sroa.024.0.copyload.i = load i48, ptr %i.pa, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 16
  %.sroa.3.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i.i to i16 ; 2 uses
  %i.pb = sext i16 %.sroa.3.0.extract.trunc.i.i.i to i32
  %.lobit.i.i2.i.i.i = lshr i16 %.sroa.3.0.extract.trunc.i.i.i, 15
  %i.pc = zext nneg i16 %.lobit.i.i2.i.i.i to i32
  %i.pd = mul nuw nsw i32 %.pre-phi1046, %i.pc
  %i.pe = sub nsw i32 %i.pb, %i.pd
  %i.pf = sdiv i32 %i.pe, %.pre-phi
  %i.pg = trunc i32 %i.pf to i16
  %i.ph = mul i16 %.pre-phi1048, %i.pg
  %i.pi = load i16, ptr %i.cu, align 8, !tbaa !137
  %i.pj = sub i16 %i.ph, %i.pi
  %i.pk = sitofp nsz i16 %i.pj to float
  %.sroa.2.0.extract.trunc.i.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i.i to i16 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i48 %.sroa.024.0.copyload.i to i16 ; 2 uses
  %i.pl = sext i16 %.sroa.2.0.extract.trunc.i.i.i to i32
  %i.pm = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i32
  %.lobit.i.i1.i.i.i = lshr i16 %.sroa.2.0.extract.trunc.i.i.i, 15
  %.lobit.i.i.i.i.i = lshr i16 %.sroa.0.0.extract.trunc.i.i.i, 15
  %i.pn = zext nneg i16 %.lobit.i.i1.i.i.i to i32
  %i.po = zext nneg i16 %.lobit.i.i.i.i.i to i32
  %i.pp = mul nuw nsw i32 %.pre-phi1046, %i.pn
  %i.pq = mul nuw nsw i32 %.pre-phi1046, %i.po
  %i.pr = sub nsw i32 %i.pl, %i.pp
  %i.ps = sub nsw i32 %i.pm, %i.pq
  %i.pt = sdiv i32 %i.pr, %.pre-phi
  %i.pu = sdiv i32 %i.ps, %.pre-phi
  %i.pv = trunc i32 %i.pt to i16
  %i.pw = trunc i32 %i.pu to i16
  %i.px = insertelement <2 x i16> poison, i16 %i.pw, i64 0
  %i.py = insertelement <2 x i16> %i.px, i16 %i.pv, i64 1
  %i.pz = mul <2 x i16> %i.dd, %i.py
  %i.qa = load <2 x i16>, ptr %i.ct, align 4, !tbaa !140
  %i.qb = sub <2 x i16> %i.pz, %i.qa
  %i.qc = sitofp <2 x i16> %i.qb to <2 x float>
  %i.qd = fmul nnan nsz <2 x float> %i.qc, splat (float 1.000000e+01) ; 4 uses
  %i.qe = fmul nnan nsz float %i.pk, 1.000000e+01 ; 4 uses
  %i.qf = getelementptr inbounds i8, ptr %.sroa.0205.0307.i, i64 -8
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !529 ; 6 uses
  br i1 %i.kw, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !32
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = load ptr, ptr %i.qi, align 8
  %i.qk = invoke noundef ptr %i.qj(ptr noundef nonnull align 8 dereferenceable(8) %i.qg)
          to label %.noexc101.i unwind label %.loopexit275.i.loopexit, !inline_history !538 ; 2 uses

.noexc101.i:                                      ; preds = %bb.ay
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !32
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8
  %i.qo = invoke noundef i32 %i.qn(ptr noundef nonnull align 8 dereferenceable(28) %i.qk)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i unwind label %.loopexit275.i.loopexit, !inline_history !538

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i: ; preds = %.noexc101.i
  %.not80.i = icmp ult i32 %i.qo, %i.kd
  br i1 %.not80.i, label %bb.be, label %bb.az

bb.az:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i, %bb.ax
  %i.qp = load ptr, ptr %i.bc, align 8, !tbaa !453 ; 8 uses
  %i.qq = load ptr, ptr %i.cv, align 8, !tbaa !24
  %.not.i583 = icmp eq ptr %i.qp, %i.qq
  br i1 %.not.i583, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store <2 x float> %i.qd, ptr %i.qp, align 8
  %.sroa.23.0..sroa_idx.i.i584 = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  store float %i.qe, ptr %.sroa.23.0..sroa_idx.i.i584, align 8, !tbaa !59
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 12 ; 2 uses
  %i.qs = load i8, ptr %i.qr, align 4
  %i.qt = and i8 %i.qs, -4
  %i.qu = or disjoint i8 %i.qt, 1
  store i8 %i.qu, ptr %i.qr, align 4
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  store ptr %i.qg, ptr %i.qv, align 8, !tbaa !41
  %i.qw = load ptr, ptr %i.bc, align 8, !tbaa !453
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  store ptr %i.qx, ptr %i.bc, align 8, !tbaa !453
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i

bb.bb:                                            ; preds = %bb.az
  %.val.i.i585 = load ptr, ptr %i.ba, align 8, !tbaa !21 ; 5 uses
  %i.qy = ptrtoint ptr %i.qp to i64
  %i.qz = ptrtoint ptr %.val.i.i585 to i64
  %i.ra = sub i64 %i.qy, %i.qz                    ; 4 uses
  %i.rb = icmp eq i64 %i.ra, 9223372036854775800
  br i1 %i.rb, label %bb.bc, label %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i586

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
          to label %.noexc597 unwind label %.loopexit275.i.loopexit.split-lp

.noexc597:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i586: ; preds = %bb.bb
  %i.rc = sdiv exact i64 %i.ra, 24                ; 3 uses
  %i.rd = icmp eq ptr %i.qp, %.val.i.i585         ; 2 uses
  %.sroa.speculated.i.i.i587 = select i1 %i.rd, i64 1, i64 %i.rc
  %i.re = add nsw i64 %.sroa.speculated.i.i.i587, %i.rc ; 2 uses
  %i.rf = icmp ult i64 %i.re, %i.rc
  %i.rg = call i64 @llvm.umin.i64(i64 %i.re, i64 384307168202282325)
  %i.rh = select i1 %i.rf, i64 384307168202282325, i64 %i.rg ; 3 uses
  %.not.i.i.i588 = icmp ne i64 %i.rh, 0
  call void @llvm.assume(i1 %.not.i.i.i588)
  %i.ri = mul nuw nsw i64 %i.rh, 24
  %i.rj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ri) #38
          to label %.noexc598 unwind label %.loopexit275.i.loopexit ; 5 uses

.noexc598:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i586
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.ra ; 4 uses
  store <2 x float> %i.qd, ptr %i.rk, align 8
  %.sroa.23.0..sroa_idx.i.i.i589 = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  store float %i.qe, ptr %.sroa.23.0..sroa_idx.i.i.i589, align 8, !tbaa !59
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 12
  store i8 1, ptr %i.rl, align 4
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  store ptr %i.qg, ptr %i.rm, align 8, !tbaa !41
  br i1 %i.rd, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i594, label %.lr.ph.i.i.i.i.i590

.lr.ph.i.i.i.i.i590:                              ; preds = %.noexc598, %.lr.ph.i.i.i.i.i590
  %.03.i.i.i.i.i591 = phi ptr [ %i.ro, %.lr.ph.i.i.i.i.i590 ], [ %i.rj, %.noexc598 ] ; 2 uses
  %.092.i.i.i.i.i592 = phi ptr [ %i.rn, %.lr.ph.i.i.i.i.i590 ], [ %.val.i.i585, %.noexc598 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i591, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i592, i64 24, i1 false), !tbaa.struct !505, !alias.scope !539
  %i.rn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i592, i64 24 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i591, i64 24 ; 2 uses
  %.not.i.i.i.i.i593 = icmp eq ptr %i.rn, %i.qp
  br i1 %.not.i.i.i.i.i593, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i594, label %.lr.ph.i.i.i.i.i590, !llvm.loop !510

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i594: ; preds = %.lr.ph.i.i.i.i.i590, %.noexc598
  %.0.lcssa.i.i.i.i.i595 = phi ptr [ %i.rj, %.noexc598 ], [ %i.ro, %.lr.ph.i.i.i.i.i590 ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i595, i64 24
  %.not.i38.i.i596 = icmp eq ptr %.val.i.i585, null
  br i1 %.not.i38.i.i596, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i594
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i585, i64 noundef %i.ra) #34
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bd, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i594
  store ptr %i.rj, ptr %i.ba, align 8, !tbaa !21
  store ptr %i.rp, ptr %i.bc, align 8, !tbaa !453
  %i.rq = getelementptr inbounds nuw [24 x i8], ptr %i.rj, i64 %i.rh
  store ptr %i.rq, ptr %i.cv, align 8, !tbaa !24
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i

.loopexit275.i.loopexit:                          ; preds = %bb.ay, %.noexc101.i, %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i586
  %.sroa.21220.0308.lcssa.i.ph = phi ptr [ %.sroa.13.0309.i, %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.21220.0308.i, %.noexc101.i ], [ %.sroa.21220.0308.i, %bb.ay ], [ %.sroa.21220.0308.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i586 ]
  %lpad.loopexit667 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit275.i

.loopexit275.i.loopexit.split-lp:                 ; preds = %bb.bc
  %lpad.loopexit.split-lp668 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit275.i

.loopexit.split-lp276.i:                          ; preds = %bb.bh
  %lpad.loopexit.split-lp278.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit275.i

bb.be:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i
  %.not.i103.i = icmp eq ptr %.sroa.13.0309.i, %.sroa.21220.0308.i
  br i1 %.not.i103.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store <2 x float> %i.qd, ptr %.sroa.13.0309.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.13.0309.i, i64 8
  store float %i.qe, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !59
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.13.0309.i, i64 16
  store ptr %i.qg, ptr %i.rr, align 8, !tbaa !531
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.13.0309.i, i64 24
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.rt = ptrtoint ptr %.sroa.13.0309.i to i64
  %i.ru = ptrtoint ptr %.sroa.0207.0310.i to i64
  %i.rv = sub i64 %i.rt, %i.ru                    ; 4 uses
  %i.rw = icmp eq i64 %i.rv, 9223372036854775800
  br i1 %i.rw, label %bb.bh, label %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
end_hunk_1
begin_hunk_2_@_ZN4core8CMatrix4IfE17buildRotateFromToERKNS_8vector3dIfEES5_:bb.a
  %i.ci = fsub nsz float %i.cf, %i.az
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ci, ptr %i.cj, align 4, !tbaa !59
  %i.ck = fadd nsz float %i.ba, %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ck, ptr %i.cl, align 4, !tbaa !59
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.cm, align 4, !tbaa !59
  %i.cn = fadd nsz float %i.az, %i.cf
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.cn, ptr %i.co, align 4, !tbaa !59
  %i.cp = fsub nsz float %i.ch, %i.bc
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cp, ptr %i.cq, align 4, !tbaa !59
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.cr, align 4, !tbaa !59
  %i.cs = fsub nsz float %i.cg, %i.ba
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.cs, ptr %i.ct, align 4, !tbaa !59
  %i.cu = fadd nsz float %i.bc, %i.ch
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cu, ptr %i.cv, align 4, !tbaa !59
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cx, align 4, !tbaa !59
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap12renderPostFxE10CameraMode(ptr noundef nonnull align 8 dereferenceable(656) %0, i32 noundef %1) local_unnamed_addr #18 align 2 {
bb.a:
  %2 = alloca %"class.core::rect", align 4        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.a, align 8 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !59
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload, i64 0 ; 2 uses
  %i.b = fcmp nsz ogt float %.sroa.09.0.vec.extract.i, 0.000000e+00
  %i.c = select nsz i1 %i.b, float 5.000000e+00, float -5.000000e+00
  %i.d = fadd nsz float %.sroa.09.0.vec.extract.i, %i.c
  %i.e = fdiv nsz float %i.d, 1.000000e+01
  %i.f = fptosi float %i.e to i16
  %i.g = insertelement <2 x float> %.sroa.07.0.copyload, float %.sroa.28.0.copyload, i64 0 ; 2 uses
  %i.h = fcmp nsz ogt <2 x float> %i.g, zeroinitializer
  %i.i = select <2 x i1> %i.h, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.j = fadd nsz <2 x float> %i.g, %i.i
  %i.k = fdiv nsz <2 x float> %i.j, splat (float 1.000000e+01)
  %i.l = fptosi <2 x float> %i.k to <2 x i16>
  %i.m = zext <2 x i16> %i.l to <2 x i48>
  %i.n = shl nuw <2 x i48> %i.m, <i48 32, i48 16>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.n)
  %.sroa.0.0.insert.ext.i = zext i16 %i.f to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.o = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i, ptr noundef null)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !715  ; 2 uses
  %i.r = and i32 %i.o, 65535
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !716
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !719  ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 2080
  %i.ab = icmp ugt i64 %i.aa, %i.s
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw [2080 x i8], ptr %i.w, i64 %i.s ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !154
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.ah = phi ptr [ %i.ag, %bb.c ], [ %i.ac, %bb.b ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1392
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !247 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1396
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !851, !range !152, !noundef !153
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.an = lshr i32 %i.aj, 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !138 ; 3 uses
  %i.aq = lshr i32 %i.aj, 8
  %i.ar = and i32 %i.aj, 255
  %i.as = and i32 %i.ap, 255
  %i.at = mul nuw nsw i32 %i.as, %i.ar
  %i.au = uitofp nsz nneg i32 %i.at to float
  %i.av = fdiv nsz float %i.au, 2.550000e+02
  %i.aw = fadd nsz float %i.av, 5.000000e-01
  %i.ax = tail call nsz noundef float @llvm.floor.f32(float %i.aw)
  %i.ay = fptosi float %i.ax to i32
  %i.az = and i32 %i.aj, -16777216
  %i.ba = and i32 %i.aq, 255
  %i.bb = and i32 %i.an, 255
  %i.bc = lshr i32 %i.ap, 8
  %i.bd = lshr i32 %i.ap, 16
  %i.be = and i32 %i.bc, 255
  %i.bf = and i32 %i.bd, 255
  %i.bg = mul nuw nsw i32 %i.be, %i.ba
  %i.bh = mul nuw nsw i32 %i.bf, %i.bb
  %i.bi = uitofp nsz nneg i32 %i.bg to float
  %i.bj = uitofp nsz nneg i32 %i.bh to float
  %i.bk = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bi, i64 1
  %i.bm = fdiv nsz <2 x float> %i.bl, splat (float 2.550000e+02)
  %i.bn = fadd nsz <2 x float> %i.bm, splat (float 5.000000e-01)
  %i.bo = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.bn)
  %i.bp = insertelement <4 x i32> poison, i32 %i.ay, i64 2
  %i.bq = insertelement <4 x i32> %i.bp, i32 %i.az, i64 3
  %i.br = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bs = fptosi <4 x float> %i.br to <4 x i32>
  %i.bt = shufflevector <4 x i32> %i.bs, <4 x i32> %i.bq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bt, <4 x i32> <i32 0, i32 0, i32 0, i32 -2147483648>)
  %i.bv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bu, <4 x i32> <i32 255, i32 255, i32 255, i32 -1>)
  %i.bw = shl nuw nsw <4 x i32> %i.bv, <i32 16, i32 8, i32 0, i32 0>
  %i.bx = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bw)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK14NodeDefManager3getERK7MapNode.exit
  %.sroa.014.0 = phi i32 [ %i.bx, %bb.d ], [ %i.aj, %_ZNK14NodeDefManager3getERK7MapNode.exit ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 1400
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !720
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1248
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !744
  %i.cc = icmp eq i8 %i.cb, 2
  %i.cd = icmp eq i32 %1, 1
  %or.cond = and i1 %i.cd, %i.cc
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !500, !nonnull !153, !align !501
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 5
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !714, !range !152, !noundef !153
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not = icmp ult i32 %.sroa.014.0, 16777216
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %.sroa.014.126 = phi i32 [ %.sroa.014.0, %bb.g ], [ -16777216, %bb.f ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !85 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call noundef ptr %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 488
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.co)
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = load <2 x i32>, ptr %i.cs, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  store i32 0, ptr %2, align 4, !tbaa !852
  store i32 0, ptr %i.ct, align 4, !tbaa !854
  store <2 x i32> %i.cv, ptr %i.cu, align 4, !tbaa !247
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 424
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.co, i32 %.sroa.014.126, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap9PrintInfoERSo(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 11) ; 0 uses
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS0_9SMaterialEbEEiii(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef %1, ptr noundef align 8 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
.invoke:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, CachedMeshBuffer>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, CachedMeshBuffer>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %.sroa.03.i.i22.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0.i23.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.03.i.i12.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.03.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.h = alloca ptr, align 8                      ; 11 uses
  %9 = alloca %class.anon.817, align 8            ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %class.TimeTaker, align 8          ; 16 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.core::CMatrix4", align 4   ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.video::SMaterial", align 8 ; 12 uses
  %16 = alloca %"class.video::SMaterial", align 8 ; 21 uses
  %17 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %18 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %.not = icmp eq i32 %3, 8                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #2
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.i, ptr %10, align 8, !tbaa !155
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i64 0, ptr %i.j, align 8, !tbaa !154
  store i8 0, ptr %i.i, align 8, !tbaa !41
  %i.k = select i1 %.not, ptr @.str.36, ptr @.str.35
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.k, i64 noundef 25)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.a ; 0 uses

bb.a:                                             ; preds = %.invoke
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1672
  %.sroa.0.0.copyload.i = load i16, ptr %i.p, align 8, !tbaa !140 ; 6 uses
  %i.q = load i8, ptr @__tls_guard, align 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, !prof !451

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.s = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE)
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.t = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.u = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  %.pr = load i8, ptr @__tls_guard, align 1
  %i.v = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE) ; 2 uses
  %i.w = icmp eq i8 %.pr, 0
  br i1 %i.w, label %bb.b, label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, !prof !452

bb.b:                                             ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.x = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.y = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit: ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, %bb.b
  %i.z = phi ptr [ %i.s, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread ], [ %i.v, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit ], [ %i.v, %bb.b ] ; 3 uses
  %i.aa = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE) ; 15 uses
  call fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %i.z)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 17 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !453 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.ab
  br i1 %.not.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !453
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ae = phi ptr [ %i.ad, %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit ], [ %i.ab, %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !145 ; 2 uses
  %i.ah = sext i32 %5 to i64
  %i.ai = udiv i64 %i.ag, %i.ah
  %i.aj = add i64 %i.ai, 1                        ; 2 uses
  %i.ak = sext i32 %4 to i64
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = select i1 %.not, i64 %i.al, i64 0       ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.an = add nsw i32 %5, -1
  %.not113 = icmp eq i32 %4, %i.an
  br i1 %.not113, label %.thread832, label %bb.fs

bb.d:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.ao = add nsw i32 %4, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.aj, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !143 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %.not374574 = icmp eq ptr %i.as, %i.at
  br i1 %.not374574, label %.._crit_edge_crit_edge, label %.lr.ph577.split.us.preheader

.thread832:                                       ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !143 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %.not374574833 = icmp eq ptr %i.av, %i.aw
  br i1 %.not374574833, label %.._crit_edge_crit_edge, label %.lr.ph577.split.preheader

.._crit_edge_crit_edge:                           ; preds = %.thread832, %bb.d
  %.pre697 = zext i16 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %.pre698 = add nsw i32 %.pre697, -1
  %.pre700 = shl i16 %.sroa.0.0.copyload.i, 4
  br label %._crit_edge

.lr.ph577.split.preheader:                        ; preds = %.thread832
  %i.ax = zext i16 %.sroa.0.0.copyload.i to i32   ; 6 uses
  %i.ay = add nsw i32 %i.ax, -1                   ; 5 uses
  %i.az = shl i16 %.sroa.0.0.copyload.i, 4        ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 446
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  br label %.lr.ph577.split

.lr.ph577.split.us.preheader:                     ; preds = %bb.d
  %i.be = zext i16 %.sroa.0.0.copyload.i to i32   ; 3 uses
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  %i.bg = shl i16 %.sroa.0.0.copyload.i, 4        ; 2 uses
  br label %.lr.ph577.split.us

.lr.ph577.split.us:                               ; preds = %.lr.ph577.split.us.preheader, %bb.h
  %.0104576.us = phi i64 [ %i.bi, %bb.h ], [ 0, %.lr.ph577.split.us.preheader ]
  %.sroa.0355.0575.us = phi ptr [ %i.bn, %bb.h ], [ %i.as, %.lr.ph577.split.us.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0355.0575.us, i64 32
  %i.bi = add i64 %.0104576.us, 1                 ; 3 uses
  %.not114.us = icmp ugt i64 %i.bi, %i.am
  br i1 %.not114.us, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph577.split.us
  %i.bj = icmp ugt i64 %i.bi, %i.aq
  br i1 %i.bj, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0355.0575.us, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !202
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !458 ; 2 uses
  %.not115.us = icmp eq ptr %i.bm, null
  br i1 %.not115.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.042.0.copyload.us = load i48, ptr %i.bh, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps12addFromBlockEN4core8vector3dIsEEP12MapBlockMeshPN5video12IVideoDriverE(ptr noundef nonnull align 8 dereferenceable(112) %i.z, i48 %.sroa.042.0.copyload.us, ptr noundef nonnull %i.bm, ptr noundef %1)
          to label %bb.h unwind label %.split.us

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph577.split.us
  %i.bn = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0355.0575.us) #37 ; 2 uses
  %.not374.us = icmp eq ptr %i.bn, %i.at
  br i1 %.not374.us, label %._crit_edge, label %.lr.ph577.split.us

.split.us:                                        ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph577.split:                                  ; preds = %.lr.ph577.split.preheader, %.loopexit404
  %i.bp = phi ptr [ %i.el, %.loopexit404 ], [ %i.ae, %.lr.ph577.split.preheader ] ; 4 uses
  %.0104576 = phi i64 [ %i.br, %.loopexit404 ], [ 0, %.lr.ph577.split.preheader ]
  %.sroa.0355.0575 = phi ptr [ %i.em, %.loopexit404 ], [ %i.av, %.lr.ph577.split.preheader ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0355.0575, i64 32
  %i.br = add i64 %.0104576, 1                    ; 3 uses
  %.not114 = icmp ugt i64 %i.br, %i.am
  br i1 %.not114, label %bb.i, label %.loopexit404

bb.i:                                             ; preds = %.lr.ph577.split
  %i.bs = icmp ugt i64 %i.br, %i.ag
  br i1 %i.bs, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.042.0.copyload = load i48, ptr %i.bq, align 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0355.0575, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !202
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !458 ; 3 uses
  %.not115 = icmp eq ptr %i.bv, null
  br i1 %.not115, label %.loopexit404, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !504 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 232
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !504 ; 2 uses
  %.not375572 = icmp eq ptr %i.bx, %i.bz
end_hunk_2
begin_hunk_3_@_ZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS0_9SMaterialEbEEiii:.invoke
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %.noexc.i162
  %i.ft = load ptr, ptr %7, align 8, !tbaa !37    ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.eo
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.fv = load i64, ptr %i.eo, align 8, !tbaa !41
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #2
  %.val87.i = load ptr, ptr %i.aa, align 8, !tbaa !21
  %.val88.i = load ptr, ptr %i.ac, align 8, !tbaa !453
  %i.fx = ptrtoint ptr %.val88.i to i64
  %i.fy = ptrtoint ptr %.val87.i to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #2
  %i.ga = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !519 ; 2 uses
  %.not.i.i163 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i163, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !42 ; 3 uses
  %.not2.i.i = icmp eq ptr %i.gc, null
  br i1 %.not2.i.i, label %bb.t, label %_ZN15RenderingEngine16get_video_driverEv.exit.i

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  invoke void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine16get_video_driverEv) #36
          to label %.noexc170 unwind label %.loopexit.split-lp397.loopexit.split-lp

.noexc170:                                        ; preds = %bb.t
  unreachable

_ZN15RenderingEngine16get_video_driverEv.exit.i:  ; preds = %bb.s
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !32
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = invoke noundef ptr %i.gf(ptr noundef nonnull align 8 dereferenceable(8) %i.gc)
          to label %.noexc171 unwind label %.loopexit.split-lp397.loopexit, !inline_history !859

.noexc171:                                        ; preds = %_ZN15RenderingEngine16get_video_driverEv.exit.i
  store ptr %i.gg, ptr %i.e, align 8, !tbaa !860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #2
  store i32 0, ptr %i.f, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #2
  store i32 0, ptr %i.g, align 4, !tbaa !247
  %i.gh = load ptr, ptr %i.fm, align 8, !tbaa !521 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0346.0582, i64 144 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !521 ; 2 uses
  %.not219265.i = icmp eq ptr %i.gh, %i.gj
  br i1 %.not219265.i, label %"._crit_edge275._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i", label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.x
  %.pre.i = load ptr, ptr %i.gi, align 8, !tbaa !521, !noalias !861 ; 2 uses
  %.pre306.i = load ptr, ptr %i.fm, align 8, !tbaa !521, !noalias !864
  %i.gk = icmp eq ptr %.pre.i, %.pre306.i
  br i1 %i.gk, label %"._crit_edge275._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i", label %.lr.ph274.i

.lr.ph274.i:                                      ; preds = %._crit_edge.i
  %i.gl = icmp ult i32 %.165.i, 2
  br label %bb.ag

bb.u:                                             ; preds = %.lr.ph584
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i

bb.v:                                             ; preds = %.noexc.i162
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = load ptr, ptr %7, align 8, !tbaa !37    ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.eo
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i: ; preds = %bb.v
  %i.gq = load i64, ptr %i.eo, align 8, !tbaa !41
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i, %bb.u
  %.pn.i = phi { ptr, i32 } [ %i.gm, %bb.u ], [ %i.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i ], [ %i.gn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #2
  br label %.body

.lr.ph.i:                                         ; preds = %.noexc171, %bb.x
  %.064267.i = phi i32 [ %.165.i, %bb.x ], [ 0, %.noexc171 ] ; 2 uses
  %.sroa.0214.0266.i = phi ptr [ %i.ia, %bb.x ], [ %i.gh, %.noexc171 ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0214.0266.i, i64 8 ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !529 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = invoke noundef ptr %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %i.gt)
          to label %.noexc172 unwind label %.loopexit396, !inline_history !859 ; 2 uses

.noexc172:                                        ; preds = %.lr.ph.i
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = invoke noundef i32 %i.ha(ptr noundef nonnull align 8 dereferenceable(28) %i.gx)
          to label %.noexc173 unwind label %.loopexit396, !inline_history !859

.noexc173:                                        ; preds = %.noexc172
  %i.hc = icmp ult i32 %i.hb, %i.fs
  br i1 %i.hc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc173
  %i.hd = add i32 %.064267.i, 1
  %i.he = load ptr, ptr %i.gs, align 8, !tbaa !529 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef ptr %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.he)
          to label %.noexc174 unwind label %.loopexit396, !inline_history !859 ; 2 uses

.noexc174:                                        ; preds = %bb.w
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = invoke noundef i32 %i.hl(ptr noundef nonnull align 8 dereferenceable(28) %i.hi)
          to label %.noexc175 unwind label %.loopexit396, !inline_history !859

.noexc175:                                        ; preds = %.noexc174
  %i.hn = load i32, ptr %i.f, align 4, !tbaa !247
  %i.ho = add i32 %i.hn, %i.hm
  store i32 %i.ho, ptr %i.f, align 4, !tbaa !247
  %i.hp = load ptr, ptr %i.gs, align 8, !tbaa !529 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = invoke noundef ptr %i.hs(ptr noundef nonnull align 8 dereferenceable(8) %i.hp)
          to label %.noexc176 unwind label %.loopexit396, !inline_history !859 ; 2 uses

.noexc176:                                        ; preds = %.noexc175
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = invoke noundef i32 %i.hw(ptr noundef nonnull align 8 dereferenceable(28) %i.ht)
          to label %.noexc177 unwind label %.loopexit396, !inline_history !859

.noexc177:                                        ; preds = %.noexc176
  %i.hy = load i32, ptr %i.g, align 4, !tbaa !247
  %i.hz = add i32 %i.hy, %i.hx
  store i32 %i.hz, ptr %i.g, align 4, !tbaa !247
  br label %bb.x

bb.x:                                             ; preds = %.noexc177, %.noexc173
  %.165.i = phi i32 [ %i.hd, %.noexc177 ], [ %.064267.i, %.noexc173 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0214.0266.i, i64 16 ; 2 uses
  %.not219.i = icmp eq ptr %i.ia, %i.gj
  br i1 %.not219.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge275.i:                                 ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i
  %.not.i.i.i165 = icmp eq ptr %.sroa.0198.1.i, %.sroa.13.1.i
  br i1 %.not.i.i.i165, label %"._crit_edge275._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i", label %bb.y

"._crit_edge275._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i": ; preds = %._crit_edge275.i, %._crit_edge.i, %.noexc171
  %.sroa.0198.0.lcssa382.i = phi ptr [ %.sroa.0198.1.i, %._crit_edge275.i ], [ null, %._crit_edge.i ], [ null, %.noexc171 ] ; 2 uses
  %.sroa.13.0.lcssa379.i = phi ptr [ %.sroa.13.1.i, %._crit_edge275.i ], [ null, %._crit_edge.i ], [ null, %.noexc171 ] ; 2 uses
  %.sroa.21.0.lcssa376.i = phi ptr [ %.sroa.21.1.i, %._crit_edge275.i ], [ null, %._crit_edge.i ], [ null, %.noexc171 ]
  %.pre309.i = ptrtoint ptr %.sroa.13.0.lcssa379.i to i64
  %.pre310.i = ptrtoint ptr %.sroa.0198.0.lcssa382.i to i64 ; 2 uses
  %.pre312.i = sub i64 %.pre309.i, %.pre310.i
  %.pre314.i = sdiv exact i64 %.pre312.i, 24
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i"

bb.y:                                             ; preds = %._crit_edge275.i
  %i.ib = ptrtoint ptr %.sroa.13.1.i to i64
  %i.ic = ptrtoint ptr %.sroa.0198.1.i to i64     ; 6 uses
  %i.id = sub i64 %i.ib, %i.ic                    ; 2 uses
  %i.ie = sdiv exact i64 %i.id, 24                ; 5 uses
  %i.if = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ie, i1 true)
  %i.ig = shl nuw nsw i64 %i.if, 1
  %i.ih = xor i64 %i.ig, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_T1_"(ptr %.sroa.0198.1.i, ptr %.sroa.13.1.i, i64 noundef %i.ih)
  %i.ii = icmp sgt i64 %i.id, 384
  br i1 %i.ii, label %.lr.ph.i.i.i.i.i168, label %.preheader.i24.i.i.i.i

.lr.ph.i.i.i.i.i168:                              ; preds = %bb.y
  %i.ij = getelementptr i8, ptr %.sroa.0198.1.i, i64 16 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph.i.i.i.i.i168
  %indvar = phi i64 [ %indvar.next, %bb.ab ], [ 0, %.lr.ph.i.i.i.i.i168 ] ; 3 uses
  %.sroa.08.020.i.idx.i.i.i.i = phi i64 [ %.sroa.08.020.i.add.i.i.i.i, %bb.ab ], [ 24, %.lr.ph.i.i.i.i.i168 ] ; 3 uses
  %.pn19.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.ab ], [ %.sroa.0198.1.i, %.lr.ph.i.i.i.i.i168 ] ; 5 uses
  %.sroa.08.020.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0198.1.i, i64 %.sroa.08.020.i.idx.i.i.i.i ; 8 uses
  %i.ik = getelementptr i8, ptr %.pn19.i.i.i.i.i, i64 40
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ik, align 8, !tbaa !531 ; 5 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ij, align 8, !tbaa !531
  %i.il = icmp ult ptr %.val.i.i.i.i.i.i, %.val1.i.i.i.i.i.i
  br i1 %i.il, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %bb.aa

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i.ptr.i.i.i.i, i64 16, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 48
  %i.in = udiv exact i64 %.sroa.08.020.i.idx.i.i.i.i, 24 ; 2 uses
  %i.io = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.io, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %i.ip = getelementptr inbounds i8, ptr %.sroa.08.020.i.ptr.i.i.i.i, i64 -24 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iq, ptr noundef nonnull align 8 dereferenceable(24) %i.ip, i64 12, i1 false), !tbaa.struct !533
  %i.ir = getelementptr inbounds i8, ptr %.sroa.08.020.i.ptr.i.i.i.i, i64 -8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !30
  %i.it = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 40
  store ptr %i.is, ptr %i.it, align 8, !tbaa !531
  %i.iu = add nsw i64 %i.in, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.in, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.iu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.im, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.iq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.ip, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.iv = icmp eq i64 %indvar, 0
  br i1 %i.iv, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jg, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.iw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -24
  %i.ix = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, ptr noundef nonnull align 8 dereferenceable(24) %i.iw, i64 12, i1 false), !tbaa.struct !533
  %i.iy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !30
  %i.ja = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -8
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !531
  %i.jb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %i.jb, i64 12, i1 false), !tbaa.struct !533
  %i.jd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -32
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !30
  %i.jf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -32
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !531
  %i.jg = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.i, -2
  %i.jh = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.jh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i, !llvm.loop !534

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0198.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  store ptr %.val.i.i.i.i.i.i, ptr %i.ij, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i.ptr.i.i.i.i, i64 16, i1 false)
  %i.ji = getelementptr i8, ptr %.pn19.i.i.i.i.i, i64 16
  %.val2.i7.i.i.i.i.i.i = load ptr, ptr %i.ji, align 8, !tbaa !531 ; 2 uses
  %i.jj = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i7.i.i.i.i.i.i
  br i1 %i.jj, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aa, %.lr.ph.i.i.i.i.i.i
  %i.jk = phi ptr [ %.val2.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val2.i7.i.i.i.i.i.i, %bb.aa ]
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.aa ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !531
  %i.jm = getelementptr i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -32
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.jm, align 8, !tbaa !531 ; 2 uses
  %i.jn = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.jn, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i", !llvm.loop !867

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.aa
  %.sroa.04.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.aa ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %23 = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i.i, i64 16
  store ptr %.val.i.i.i.i.i.i, ptr %23, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  br label %bb.ab

bb.ab:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i
  %.sroa.08.020.i.add.i.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i.i169 = icmp eq i64 %.sroa.08.020.i.add.i.i.i.i, 384
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i.i169, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i", label %bb.z, !llvm.loop !868

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i": ; preds = %bb.ab
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0198.1.i, i64 384 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.jo, %.sroa.13.1.i
  br i1 %.not6.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i13.i.i.i.i

.lr.ph.i13.i.i.i.i:                               ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.jv, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i" ], [ %i.jo, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8 ; 3 uses
  %i.jp = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8
  %.val2.i7.i.i14.i.i.i.i = load ptr, ptr %i.jp, align 8, !tbaa !531 ; 2 uses
  %i.jq = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i7.i.i14.i.i.i.i
  br i1 %i.jq, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i"

.lr.ph.i.i18.i.i.i.i:                             ; preds = %.lr.ph.i13.i.i.i.i, %.lr.ph.i.i18.i.i.i.i
  %i.jr = phi ptr [ %.val2.i.i.i21.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.val2.i7.i.i14.i.i.i.i, %.lr.ph.i13.i.i.i.i ]
  %.sroa.04.08.i.i19.i.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i20.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i20.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 16
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !531
  %i.jt = getelementptr i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -32
  %.val2.i.i.i21.i.i.i.i = load ptr, ptr %i.jt, align 8, !tbaa !531 ; 2 uses
  %i.ju = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i.i.i21.i.i.i.i
  br i1 %i.ju, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i", !llvm.loop !867

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i.i, %.lr.ph.i13.i.i.i.i
  %.sroa.04.0.lcssa.i.i16.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ], [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i16.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i12.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %24 = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i16.i.i.i.i, i64 16
  store ptr %.sroa.4.0.copyload.i.i.i.i.i.i, ptr %24, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.jv, %.sroa.13.1.i
  br i1 %.not.i17.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i13.i.i.i.i, !llvm.loop !869

.preheader.i24.i.i.i.i:                           ; preds = %bb.y
  %.sroa.08.017.i25.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0198.1.i, i64 24 ; 2 uses
  %.not18.i26.i.i.i.i = icmp eq ptr %.sroa.08.017.i25.i.i.i.i, %.sroa.13.1.i
  br i1 %.not18.i26.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i27.i.i.i.i

.lr.ph.i27.i.i.i.i:                               ; preds = %.preheader.i24.i.i.i.i
  %i.jw = getelementptr i8, ptr %.sroa.0198.1.i, i64 16 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %.lr.ph.i27.i.i.i.i
  %.sroa.08.020.i28.i.i.i.i = phi ptr [ %.sroa.08.017.i25.i.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.0.i35.i.i.i.i, %bb.af ] ; 8 uses
  %.pn19.i29.i.i.i.i = phi ptr [ %.sroa.0198.1.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %bb.af ] ; 3 uses
  %i.jx = getelementptr i8, ptr %.pn19.i29.i.i.i.i, i64 40
  %.val.i.i30.i.i.i.i = load ptr, ptr %i.jx, align 8, !tbaa !531 ; 5 uses
  %.val1.i.i31.i.i.i.i = load ptr, ptr %i.jw, align 8, !tbaa !531
  %i.jy = icmp ult ptr %.val.i.i30.i.i.i.i, %.val1.i.i31.i.i.i.i
  br i1 %i.jy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i28.i.i.i.i, i64 16, i1 false)
  %i.jz = ptrtoint ptr %.sroa.08.020.i28.i.i.i.i to i64
  %i.ka = sub i64 %i.jz, %i.ic                    ; 2 uses
  %i.kb = icmp sgt i64 %i.ka, 0
  br i1 %i.kb, label %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i:           ; preds = %bb.ad
  %i.kc = getelementptr inbounds nuw i8, ptr %.pn19.i29.i.i.i.i, i64 48
  %i.kd = udiv exact i64 %i.ka, 24
  br label %.lr.ph.i.i.i.i.i.i43.i.i.i.i

.lr.ph.i.i.i.i.i.i43.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i43.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i
  %.010.i.i.i.i.i.i44.i.i.i.i = phi i64 [ %i.kj, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %i.kd, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i45.i.i.i.i = phi ptr [ %i.kf, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %i.kc, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i46.i.i.i.i = phi ptr [ %i.ke, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i ] ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i.i, i64 -24 ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i.i, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kf, ptr noundef nonnull align 8 dereferenceable(24) %i.ke, i64 12, i1 false), !tbaa.struct !533
  %i.kg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i.i, i64 -8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !30
  %i.ki = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i.i, i64 -8
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !531
  %i.kj = add nsw i64 %.010.i.i.i.i.i.i44.i.i.i.i, -1
  %i.kk = icmp samesign ugt i64 %.010.i.i.i.i.i.i44.i.i.i.i, 1
  br i1 %i.kk, label %.lr.ph.i.i.i.i.i.i43.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i, !llvm.loop !534

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i43.i.i.i.i, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0198.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i23.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  store ptr %.val.i.i30.i.i.i.i, ptr %i.jw, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i22.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i28.i.i.i.i, i64 16, i1 false)
  %i.kl = getelementptr i8, ptr %.pn19.i29.i.i.i.i, i64 16
  %.val2.i7.i.i32.i.i.i.i = load ptr, ptr %i.kl, align 8, !tbaa !531 ; 2 uses
  %i.km = icmp ult ptr %.val.i.i30.i.i.i.i, %.val2.i7.i.i32.i.i.i.i
  br i1 %i.km, label %.lr.ph.i.i37.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i33.i.i.i.i"

.lr.ph.i.i37.i.i.i.i:                             ; preds = %bb.ae, %.lr.ph.i.i37.i.i.i.i
  %i.kn = phi ptr [ %.val2.i.i.i40.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ], [ %.val2.i7.i.i32.i.i.i.i, %bb.ae ]
  %.sroa.04.08.i.i38.i.i.i.i = phi ptr [ %.sroa.0.0.i.i39.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %bb.ae ] ; 4 uses
  %.sroa.0.0.i.i39.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i38.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i39.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 16
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !531
  %i.kp = getelementptr i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 -32
  %.val2.i.i.i40.i.i.i.i = load ptr, ptr %i.kp, align 8, !tbaa !531 ; 2 uses
  %i.kq = icmp ult ptr %.val.i.i30.i.i.i.i, %.val2.i.i.i40.i.i.i.i
  br i1 %i.kq, label %.lr.ph.i.i37.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i33.i.i.i.i", !llvm.loop !867

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i33.i.i.i.i": ; preds = %.lr.ph.i.i37.i.i.i.i, %bb.ae
  %.sroa.04.0.lcssa.i.i34.i.i.i.i = phi ptr [ %.sroa.08.020.i28.i.i.i.i, %bb.ae ], [ %.sroa.0.0.i.i39.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i34.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i22.i.i.i.i, i64 12, i1 false), !tbaa.struct !533
  %25 = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i34.i.i.i.i, i64 16
  store ptr %.val.i.i30.i.i.i.i, ptr %25, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  br label %bb.af

bb.af:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i33.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i
  %.sroa.08.0.i35.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i28.i.i.i.i, i64 24 ; 2 uses
  %.not.i36.i.i.i.i = icmp eq ptr %.sroa.08.0.i35.i.i.i.i, %.sroa.13.1.i
  br i1 %.not.i36.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %bb.ac, !llvm.loop !868

bb.ag:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i, %.lr.ph274.i
  %.sroa.0198.0272.i = phi ptr [ null, %.lr.ph274.i ], [ %.sroa.0198.1.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 10 uses
  %.sroa.13.0271.i = phi ptr [ null, %.lr.ph274.i ], [ %.sroa.13.1.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 12 uses
  %.sroa.21.0270.i = phi ptr [ null, %.lr.ph274.i ], [ %.sroa.21.1.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 8 uses
  %.sroa.0196.0269.i = phi ptr [ %.pre.i, %.lr.ph274.i ], [ %i.kr, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %.sroa.0196.0269.i, i64 -16 ; 3 uses
  %.sroa.024.0.copyload.i = load i48, ptr %i.kr, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 16
  %.sroa.3.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i.i to i16 ; 2 uses
  %i.ks = sext i16 %.sroa.3.0.extract.trunc.i.i.i to i32
  %.lobit.i.i2.i.i.i = lshr i16 %.sroa.3.0.extract.trunc.i.i.i, 15
  %i.kt = zext nneg i16 %.lobit.i.i2.i.i.i to i32
  %i.ku = mul nuw nsw i32 %.pre-phi699, %i.kt
  %i.kv = sub nsw i32 %i.ks, %i.ku
  %i.kw = sdiv i32 %i.kv, %.pre-phi
  %i.kx = trunc i32 %i.kw to i16
  %i.ky = mul i16 %.pre-phi701, %i.kx
  %i.kz = load i16, ptr %i.er, align 8, !tbaa !137
  %i.la = sub i16 %i.ky, %i.kz
  %i.lb = sitofp nsz i16 %i.la to float
  %.sroa.2.0.extract.trunc.i.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i.i to i16 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i48 %.sroa.024.0.copyload.i to i16 ; 2 uses
  %i.lc = sext i16 %.sroa.2.0.extract.trunc.i.i.i to i32
  %i.ld = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i32
  %.lobit.i.i1.i.i.i = lshr i16 %.sroa.2.0.extract.trunc.i.i.i, 15
  %.lobit.i.i.i.i.i = lshr i16 %.sroa.0.0.extract.trunc.i.i.i, 15
  %i.le = zext nneg i16 %.lobit.i.i1.i.i.i to i32
  %i.lf = zext nneg i16 %.lobit.i.i.i.i.i to i32
  %i.lg = mul nuw nsw i32 %.pre-phi699, %i.le
  %i.lh = mul nuw nsw i32 %.pre-phi699, %i.lf
  %i.li = sub nsw i32 %i.lc, %i.lg
  %i.lj = sub nsw i32 %i.ld, %i.lh
  %i.lk = sdiv i32 %i.li, %.pre-phi
  %i.ll = sdiv i32 %i.lj, %.pre-phi
  %i.lm = trunc i32 %i.lk to i16
  %i.ln = trunc i32 %i.ll to i16
  %i.lo = insertelement <2 x i16> poison, i16 %i.ln, i64 0
  %i.lp = insertelement <2 x i16> %i.lo, i16 %i.lm, i64 1
  %i.lq = mul <2 x i16> %i.fe, %i.lp
  %i.lr = load <2 x i16>, ptr %i.eq, align 4, !tbaa !140
  %i.ls = sub <2 x i16> %i.lq, %i.lr
  %i.lt = sitofp <2 x i16> %i.ls to <2 x float>
  %i.lu = fmul nnan nsz <2 x float> %i.lt, splat (float 1.000000e+01) ; 4 uses
  %i.lv = fmul nnan nsz float %i.lb, 1.000000e+01 ; 4 uses
  %i.lw = getelementptr inbounds i8, ptr %.sroa.0196.0269.i, i64 -8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !529 ; 6 uses
  br i1 %i.gl, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !32
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = invoke noundef ptr %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %i.lx)
          to label %.noexc101.i unwind label %.loopexit236.i, !inline_history !538 ; 2 uses

.noexc101.i:                                      ; preds = %bb.ah
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !32
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.me = load ptr, ptr %i.md, align 8
  %i.mf = invoke noundef i32 %i.me(ptr noundef nonnull align 8 dereferenceable(28) %i.mb)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i unwind label %.loopexit236.i, !inline_history !538

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i: ; preds = %.noexc101.i
  %.not80.i = icmp ult i32 %i.mf, %i.fs
  br i1 %.not80.i, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i, %bb.ag
  %i.mg = load ptr, ptr %i.ac, align 8, !tbaa !453 ; 8 uses
  %i.mh = load ptr, ptr %i.es, align 8, !tbaa !24
  %.not.i103.i = icmp eq ptr %i.mg, %i.mh
  br i1 %.not.i103.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store <2 x float> %i.lu, ptr %i.mg, align 8
  %.sroa.23.0..sroa_idx.i.i.i164 = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store float %i.lv, ptr %.sroa.23.0..sroa_idx.i.i.i164, align 8, !tbaa !59
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 12 ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 4
  %i.mk = and i8 %i.mj, -4
  %i.ml = or disjoint i8 %i.mk, 1
  store i8 %i.ml, ptr %i.mi, align 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  store ptr %i.lx, ptr %i.mm, align 8, !tbaa !41
  %i.mn = load ptr, ptr %i.ac, align 8, !tbaa !453
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  store ptr %i.mo, ptr %i.ac, align 8, !tbaa !453
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i

bb.ak:                                            ; preds = %bb.ai
  %.val.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !21 ; 5 uses
  %i.mp = ptrtoint ptr %i.mg to i64
  %i.mq = ptrtoint ptr %.val.i.i.i to i64
  %i.mr = sub i64 %i.mp, %i.mq                    ; 4 uses
  %i.ms = icmp eq i64 %i.mr, 9223372036854775800
  br i1 %i.ms, label %bb.al, label %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
          to label %.noexc105.i unwind label %.loopexit.split-lp237.i

.noexc105.i:                                      ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ak
  %i.mt = sdiv exact i64 %i.mr, 24                ; 3 uses
  %i.mu = icmp eq ptr %i.mg, %.val.i.i.i          ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.mu, i64 1, i64 %i.mt
  %i.mv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mt ; 2 uses
  %i.mw = icmp ult i64 %i.mv, %i.mt
  %i.mx = call i64 @llvm.umin.i64(i64 %i.mv, i64 384307168202282325)
  %i.my = select i1 %i.mw, i64 384307168202282325, i64 %i.mx ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.my, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.mz = mul nuw nsw i64 %i.my, 24
  %i.na = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mz) #38
          to label %.noexc106.i unwind label %.loopexit236.i ; 5 uses

.noexc106.i:                                      ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.mr ; 4 uses
  store <2 x float> %i.lu, ptr %i.nb, align 8
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store float %i.lv, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !tbaa !59
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 12
  store i8 1, ptr %i.nc, align 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store ptr %i.lx, ptr %i.nd, align 8, !tbaa !41
  br i1 %i.mu, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i, label %.lr.ph.i.i.i.i.i104.i

.lr.ph.i.i.i.i.i104.i:                            ; preds = %.noexc106.i, %.lr.ph.i.i.i.i.i104.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i104.i ], [ %i.na, %.noexc106.i ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.ne, %.lr.ph.i.i.i.i.i104.i ], [ %.val.i.i.i, %.noexc106.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !505, !alias.scope !870
  %i.ne = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ne, %i.mg
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i, label %.lr.ph.i.i.i.i.i104.i, !llvm.loop !510

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i: ; preds = %.lr.ph.i.i.i.i.i104.i, %.noexc106.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.na, %.noexc106.i ], [ %i.nf, %.lr.ph.i.i.i.i.i104.i ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i38.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i38.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.mr) #34
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.am, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i
  store ptr %i.na, ptr %i.aa, align 8, !tbaa !21
  store ptr %i.ng, ptr %i.ac, align 8, !tbaa !453
  %i.nh = getelementptr inbounds nuw [24 x i8], ptr %i.na, i64 %i.my
  store ptr %i.nh, ptr %i.es, align 8, !tbaa !24
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i

.loopexit236.i:                                   ; preds = %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.noexc101.i, %bb.ah
  %.sroa.21.0270.lcssa.i = phi ptr [ %.sroa.21.0270.i, %bb.ah ], [ %.sroa.21.0270.i, %.noexc101.i ], [ %.sroa.21.0270.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.13.0271.i, %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %lpad.loopexit238.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp237.i:                          ; preds = %bb.aq, %bb.al
  %.sroa.21.0270301.i = phi ptr [ %.sroa.21.0270.i, %bb.al ], [ %.sroa.13.0271.i, %bb.aq ]
  %lpad.loopexit.split-lp239.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.an:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i
  %.not.i107.i = icmp eq ptr %.sroa.13.0271.i, %.sroa.21.0270.i
  br i1 %.not.i107.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store <2 x float> %i.lu, ptr %.sroa.13.0271.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.13.0271.i, i64 8
  store float %i.lv, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !59
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.13.0271.i, i64 16
  store ptr %i.lx, ptr %i.ni, align 8, !tbaa !531
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.13.0271.i, i64 24
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.nk = ptrtoint ptr %.sroa.13.0271.i to i64
  %i.nl = ptrtoint ptr %.sroa.0198.0272.i to i64
  %i.nm = sub i64 %i.nk, %i.nl                    ; 4 uses
  %i.nn = icmp eq i64 %i.nm, 9223372036854775800
  br i1 %i.nn, label %bb.aq, label %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
          to label %.noexc113.i unwind label %.loopexit.split-lp237.i

.noexc113.i:                                      ; preds = %bb.aq
  unreachable
end_hunk_3
begin_hunk_4_@_ZN5video9SMaterialaSERKS0_:bb.a
_ZN5video14SMaterialLayeraSERKS0_.exit:           ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load i16, ptr %i.j, align 8
  %i.l = and i16 %i.k, 15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = load i16, ptr %i.m, align 8
  %i.o = and i16 %i.n, -16
  %i.p = or disjoint i16 %i.o, %i.l               ; 2 uses
  store i16 %i.p, ptr %i.m, align 8
  %i.q = load i16, ptr %i.j, align 8
  %i.r = and i16 %i.q, 240
  %i.s = and i16 %i.p, -241
  %i.t = or disjoint i16 %i.s, %i.r               ; 2 uses
  store i16 %i.t, ptr %i.m, align 8
  %i.u = load i16, ptr %i.j, align 8
  %i.v = and i16 %i.u, 3840
  %i.w = and i16 %i.t, -3841
  %i.x = or disjoint i16 %i.w, %i.v
  store i16 %i.x, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aa = load <4 x i8>, ptr %i.y, align 2, !tbaa !41
  store <4 x i8> %i.aa, ptr %i.z, align 2, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !658
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !658
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !827 ; 3 uses
  %.not.i.1 = icmp eq ptr %i.af, null
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !827 ; 3 uses
  %.not19.i.1 = icmp eq ptr %i.ah, null           ; 2 uses
  br i1 %.not.i.1, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit
  br i1 %.not19.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.af, ptr noundef nonnull align 4 dereferenceable(64) %i.ah, i64 64, i1 false), !tbaa.struct !931
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

bb.i:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 64) #34
  store ptr null, ptr %i.ae, align 8, !tbaa !827
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

bb.j:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit
  br i1 %.not19.i.1, label %_ZN5video14SMaterialLayeraSERKS0_.exit.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ai, ptr noundef nonnull align 4 dereferenceable(64) %i.ah, i64 64, i1 false), !tbaa.struct !931
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !827
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

_ZN5video14SMaterialLayeraSERKS0_.exit.1:         ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ak = load i16, ptr %i.aj, align 8
  %i.al = and i16 %i.ak, 15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.an = load i16, ptr %i.am, align 8
  %i.ao = and i16 %i.an, -16
  %i.ap = or disjoint i16 %i.ao, %i.al            ; 2 uses
  store i16 %i.ap, ptr %i.am, align 8
  %i.aq = load i16, ptr %i.aj, align 8
  %i.ar = and i16 %i.aq, 240
  %i.as = and i16 %i.ap, -241
  %i.at = or disjoint i16 %i.as, %i.ar            ; 2 uses
  store i16 %i.at, ptr %i.am, align 8
  %i.au = load i16, ptr %i.aj, align 8
  %i.av = and i16 %i.au, 3840
  %i.aw = and i16 %i.at, -3841
  %i.ax = or disjoint i16 %i.aw, %i.av
  store i16 %i.ax, ptr %i.am, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ba = load <4 x i8>, ptr %i.ay, align 2, !tbaa !41
  store <4 x i8> %i.ba, ptr %i.az, align 2, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !658
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !658
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !827 ; 3 uses
  %.not.i.2 = icmp eq ptr %i.bf, null
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !827 ; 3 uses
  %.not19.i.2 = icmp eq ptr %i.bh, null           ; 2 uses
  br i1 %.not.i.2, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.1
  br i1 %.not19.i.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bf, ptr noundef nonnull align 4 dereferenceable(64) %i.bh, i64 64, i1 false), !tbaa.struct !931
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

bb.n:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 64) #34
  store ptr null, ptr %i.be, align 8, !tbaa !827
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

bb.o:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.1
  br i1 %.not19.i.2, label %_ZN5video14SMaterialLayeraSERKS0_.exit.2, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bi, ptr noundef nonnull align 4 dereferenceable(64) %i.bh, i64 64, i1 false), !tbaa.struct !931
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !827
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

_ZN5video14SMaterialLayeraSERKS0_.exit.2:         ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 8
  %i.bl = and i16 %i.bk, 15
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bn = load i16, ptr %i.bm, align 8
  %i.bo = and i16 %i.bn, -16
  %i.bp = or disjoint i16 %i.bo, %i.bl            ; 2 uses
  store i16 %i.bp, ptr %i.bm, align 8
  %i.bq = load i16, ptr %i.bj, align 8
  %i.br = and i16 %i.bq, 240
  %i.bs = and i16 %i.bp, -241
  %i.bt = or disjoint i16 %i.bs, %i.br            ; 2 uses
  store i16 %i.bt, ptr %i.bm, align 8
  %i.bu = load i16, ptr %i.bj, align 8
  %i.bv = and i16 %i.bu, 3840
  %i.bw = and i16 %i.bt, -3841
  %i.bx = or disjoint i16 %i.bw, %i.bv
  store i16 %i.bx, ptr %i.bm, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ca = load <4 x i8>, ptr %i.by, align 2, !tbaa !41
  store <4 x i8> %i.ca, ptr %i.bz, align 2, !tbaa !41
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !658
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !658
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !827 ; 3 uses
  %.not.i.3 = icmp eq ptr %i.cf, null
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !827 ; 3 uses
  %.not19.i.3 = icmp eq ptr %i.ch, null           ; 2 uses
  br i1 %.not.i.3, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.2
  br i1 %.not19.i.3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cf, ptr noundef nonnull align 4 dereferenceable(64) %i.ch, i64 64, i1 false), !tbaa.struct !931
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

bb.s:                                             ; preds = %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 64) #34
  store ptr null, ptr %i.ce, align 8, !tbaa !827
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

bb.t:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.2
  br i1 %.not19.i.3, label %_ZN5video14SMaterialLayeraSERKS0_.exit.3, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ci, ptr noundef nonnull align 4 dereferenceable(64) %i.ch, i64 64, i1 false), !tbaa.struct !931
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !827
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

_ZN5video14SMaterialLayeraSERKS0_.exit.3:         ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ck = load i16, ptr %i.cj, align 8
  %i.cl = and i16 %i.ck, 15
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.cn = load i16, ptr %i.cm, align 8
  %i.co = and i16 %i.cn, -16
  %i.cp = or disjoint i16 %i.co, %i.cl            ; 2 uses
  store i16 %i.cp, ptr %i.cm, align 8
  %i.cq = load i16, ptr %i.cj, align 8
  %i.cr = and i16 %i.cq, 240
  %i.cs = and i16 %i.cp, -241
  %i.ct = or disjoint i16 %i.cs, %i.cr            ; 2 uses
  store i16 %i.ct, ptr %i.cm, align 8
  %i.cu = load i16, ptr %i.cj, align 8
  %i.cv = and i16 %i.cu, 3840
  %i.cw = and i16 %i.ct, -3841
  %i.cx = or disjoint i16 %i.cw, %i.cv
  store i16 %i.cx, ptr %i.cm, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.da = load <4 x i8>, ptr %i.cy, align 2, !tbaa !41
  store <4 x i8> %i.da, ptr %i.cz, align 2, !tbaa !41
  br label %.split7
}

; Function Attrs: noreturn
declare void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #28 {
bb.a:
  %.sroa.05.i.i9.i = alloca [16 x i8], align 8    ; 4 uses
  %.sroa.06.i.i.i = alloca [16 x i8], align 8     ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr44.i25 = freeze i64 %i.c                    ; 3 uses
  %i.d = icmp sgt i64 %.fr44.i25, 384
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_S1I_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 14 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEESY_SY_SY_S1I_.exit"
  %i.i = icmp eq i64 %i.cl, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph44, !llvm.loop !985

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr44.i28.lcssa = phi i64 [ %.fr44.i25, %.lr.ph ], [ %.fr44.i, %bb.b ]
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.fr44.i28.lcssa, 24      ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %i.j, 1
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i", %._crit_edge
  %.08.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.av, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.v = getelementptr inbounds [24 x i8], ptr %0, i64 %.08.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.49.0.copyload.i.i.i = load ptr, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.w = icmp slt i64 %.08.i.i.i, %i.n
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %bb.c ] ; 2 uses
  %i.x = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [24 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.z, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !531
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !531
  %i.ae = icmp ult ptr %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.aa, i64 %i.y ; 4 uses
  %i.af = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i.i ; 2 uses
  %i.ag = getelementptr inbounds [24 x i8], ptr %0, i64 %.037.i.i.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 12, i1 false), !tbaa.struct !533
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !531
  %i.ak = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !986

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.al = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  %or.cond.i.i.i = select i1 %i.p, i1 %i.al, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 12, i1 false), !tbaa.struct !533
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !30
  store ptr %i.am, ptr %i.u, align 8, !tbaa !531
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.an = icmp sgt i64 %.1.i.i.i.i, %.08.i.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !531 ; 2 uses
  %i.aq = icmp ult ptr %.val.i.i.i.i.i.i, %.sroa.49.0.copyload.i.i.i
  br i1 %i.aq, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.010.i.i.i.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 12, i1 false), !tbaa.struct !533
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %.val.i.i.i.i.i.i, ptr %i.as, align 8, !tbaa !531
  %i.at = icmp sgt i64 %.0911.i.i.i.i.i, %.08.i.i.i
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i", !llvm.loop !987

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.06.i.i.i, i64 12, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %.sroa.49.0.copyload.i.i.i, ptr %3, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i.i)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.av = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !988

.lr.ph.i10.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i"
  %.sroa.0.03.i.i = phi ptr [ %i.aw, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i" ], [ %storemerge26.lcssa, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i" ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i9.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.i.i9.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %.sroa.48.0.copyload.i.i.i = load ptr, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, align 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 12, i1 false), !tbaa.struct !533
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !30
  store ptr %i.ax, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !531
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ay, %i.a                     ; 3 uses
  %i.ba = sdiv exact i64 %i.az, 24                ; 3 uses
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = sdiv i64 %i.bb, 2
  %i.bd = icmp sgt i64 %i.az, 48
  br i1 %i.bd, label %.lr.ph.i.i.i25.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i25.i:                                 ; preds = %.lr.ph.i10.i, %.lr.ph.i.i.i25.i
  %.037.i.i.i26.i = phi i64 [ %spec.select.i.i.i29.i, %.lr.ph.i.i.i25.i ], [ 0, %.lr.ph.i10.i ] ; 2 uses
  %i.be = shl i64 %.037.i.i.i26.i, 1              ; 2 uses
  %i.bf = add i64 %i.be, 2                        ; 2 uses
  %i.bg = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bf
  %i.bh = or disjoint i64 %i.be, 1                ; 2 uses
  %i.bi = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bg, i64 16
  %.val.i.i.i.i27.i = load ptr, ptr %i.bj, align 8, !tbaa !531
  %i.bk = getelementptr i8, ptr %i.bi, i64 16
  %.val1.i.i.i.i28.i = load ptr, ptr %i.bk, align 8, !tbaa !531
  %i.bl = icmp ult ptr %.val.i.i.i.i27.i, %.val1.i.i.i.i28.i
  %spec.select.i.i.i29.i = select i1 %i.bl, i64 %i.bh, i64 %i.bf ; 4 uses
  %i.bm = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i29.i ; 2 uses
  %i.bn = getelementptr inbounds [24 x i8], ptr %0, i64 %.037.i.i.i26.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 12, i1 false), !tbaa.struct !533
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !531
  %i.br = icmp slt i64 %spec.select.i.i.i29.i, %i.bc
  br i1 %i.br, label %.lr.ph.i.i.i25.i, label %._crit_edge.i.i.i11.i, !llvm.loop !986

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i25.i, %.lr.ph.i10.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i10.i ], [ %spec.select.i.i.i29.i, %.lr.ph.i.i.i25.i ] ; 5 uses
  %i.bs = and i64 %i.ba, 1
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bu = add nsw i64 %i.ba, -2
  %i.bv = ashr exact i64 %i.bu, 1
  %i.bw = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.bv
  br i1 %i.bw, label %.thread.i.i24.i, label %bb.h

.thread.i.i24.i:                                  ; preds = %bb.g
  %i.bx = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.by = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 12, i1 false), !tbaa.struct !533
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !531
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i24.i
  %.010.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.by, %.thread.i.i24.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.010.i.i.i.i17.i = phi i64 [ %.0911.i.i910.i.i19.i, %bb.i ], [ %.010.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i18.i = add nsw i64 %.010.i.i.i.i17.i, -1
  %.0911.i.i910.i.i19.i = lshr i64 %.0911.in.i.i.i.i18.i, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0911.i.i910.i.i19.i ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %.val.i.i.i.i.i20.i = load ptr, ptr %i.cf, align 8, !tbaa !531 ; 2 uses
  %i.cg = icmp ult ptr %.val.i.i.i.i.i20.i, %.sroa.48.0.copyload.i.i.i
  br i1 %i.cg, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.ch = getelementptr inbounds [24 x i8], ptr %0, i64 %.010.i.i.i.i17.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 12, i1 false), !tbaa.struct !533
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %.val.i.i.i.i.i20.i, ptr %i.ci, align 8, !tbaa !531
  %.not11.i.i23.i = icmp eq i64 %.0911.i.i910.i.i19.i, 0
  br i1 %.not11.i.i23.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !987

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i22.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.cj = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i22.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cj, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.05.i.i9.i, i64 12, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %.sroa.48.0.copyload.i.i.i, ptr %4, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i.i9.i)
  %i.ck = icmp sgt i64 %i.az, 24
  br i1 %i.ck, label %.lr.ph.i10.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_S1I_.exit", !llvm.loop !989

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2643 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02742 = phi i64 [ %i.cl, %bb.b ], [ %2, %.lr.ph ]
  %.fr44.i2841 = phi i64 [ %.fr44.i, %bb.b ], [ %.fr44.i25, %.lr.ph ]
  %i.cl = add nsw i64 %.02742, -1                 ; 3 uses
  %i.cm = udiv i64 %.fr44.i2841, 48
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cm ; 5 uses
  %i.co = getelementptr inbounds i8, ptr %storemerge2643, i64 -24 ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !531 ; 5 uses
  %i.cp = getelementptr i8, ptr %i.cn, i64 16     ; 3 uses
  %.val1.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !531 ; 5 uses
  %i.cq = icmp ult ptr %.val.i.i.i, %.val1.i.i.i
  %i.cr = getelementptr i8, ptr %storemerge2643, i64 -8 ; 5 uses
  %.val1.i27.i.i = load ptr, ptr %i.cr, align 8, !tbaa !531 ; 4 uses
  br i1 %i.cq, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph44
  %i.cs = icmp ult ptr %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load <3 x float>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 12, i1 false), !tbaa.struct !533
  store <3 x float> %.sroa.0.0.copyload, ptr %i.cn, align 8
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !30
  store ptr %.val1.i.i.i, ptr %i.g, align 8, !tbaa !30
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !30
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cu = icmp ult ptr %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.050.0.copyload = load <3 x float>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 12, i1 false), !tbaa.struct !533
  store <3 x float> %.sroa.050.0.copyload, ptr %i.co, align 8
  %i.cv = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !30
  store ptr %i.cw, ptr %i.g, align 8, !tbaa !30
  store ptr %i.cv, ptr %i.cr, align 8, !tbaa !30
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %.sroa.052.0.copyload = load <3 x float>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 12, i1 false), !tbaa.struct !533
  store <3 x float> %.sroa.052.0.copyload, ptr %i.e, align 8
  %i.cx = load ptr, ptr %i.g, align 8, !tbaa !30
  store ptr %.val.i.i.i, ptr %i.g, align 8, !tbaa !30
  store ptr %i.cx, ptr %i.f, align 8, !tbaa !30
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph44
  %i.cy = icmp ult ptr %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.054.0.copyload = load <3 x float>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 12, i1 false), !tbaa.struct !533
  store <3 x float> %.sroa.054.0.copyload, ptr %i.e, align 8
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !30
  store ptr %.val.i.i.i, ptr %i.g, align 8, !tbaa !30
  store ptr %i.cz, ptr %i.f, align 8, !tbaa !30
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.da = icmp ult ptr %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.da, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.056.0.copyload = load <3 x float>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 12, i1 false), !tbaa.struct !533
  store <3 x float> %.sroa.056.0.copyload, ptr %i.co, align 8
  %i.db = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.dc = load ptr, ptr %i.cr, align 8, !tbaa !30
  store ptr %i.dc, ptr %i.g, align 8, !tbaa !30
  store ptr %i.db, ptr %i.cr, align 8, !tbaa !30
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %.sroa.058.0.copyload = load <3 x float>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 12, i1 false), !tbaa.struct !533
  store <3 x float> %.sroa.058.0.copyload, ptr %i.cn, align 8
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !30
  store ptr %.val1.i.i.i, ptr %i.g, align 8, !tbaa !30
  store ptr %i.dd, ptr %i.cp, align 8, !tbaa !30
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.dg, %bb.v ], [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2643, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i.preheader" ]
  %.val1.i.i13.i = load ptr, ptr %i.g, align 8, !tbaa !531 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i" ], [ %i.dg, %bb.t ] ; 10 uses
  %i.de = getelementptr i8, ptr %.sroa.012.1.i.i, i64 16
  %.val.i.i14.i = load ptr, ptr %i.de, align 8, !tbaa !531
  %i.df = icmp ult ptr %.val.i.i14.i, %.val1.i.i13.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24 ; 2 uses
  br i1 %i.df, label %bb.t, label %.preheader.i.i.preheader, !llvm.loop !990

.preheader.i.i.preheader:                         ; preds = %bb.t
  %i.dh = getelementptr i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 5 uses
  %i.di = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load ptr, ptr %i.di, align 8, !tbaa !531
  %i.dj = icmp ult ptr %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.dj, label %.preheader.i.i, label %bb.u, !llvm.loop !991

bb.u:                                             ; preds = %.preheader.i.i
  %i.dk = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dk, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEESY_SY_SY_S1I_.exit"

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %.sroa.060.0.copyload = load <3 x float>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 12, i1 false), !tbaa.struct !533
  store <3 x float> %.sroa.060.0.copyload, ptr %.sroa.0.1.i.i, align 8
  %i.dm = load ptr, ptr %i.dh, align 8, !tbaa !30
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !30
  store ptr %i.dn, ptr %i.dh, align 8, !tbaa !30
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !30
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i", !llvm.loop !992

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEESY_SY_SY_S1I_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2643, i64 noundef %i.cl)
  %i.do = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dp = sub i64 %i.do, %i.a
  %.fr44.i = freeze i64 %i.dp                     ; 3 uses
  %i.dq = icmp sgt i64 %.fr44.i, 384
  br i1 %i.dq, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_S1I_.exit", !llvm.loop !985

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_S1I_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEESY_SY_SY_S1I_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i", %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #29

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSB_10_Hash_nodeIS9_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !961
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !549
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #2 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !961
  invoke void @__cxa_rethrow() #36
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
  tail call void @__clang_call_terminate(ptr %i.q) #35
  unreachable

bb.g:                                             ; preds = %bb.c
end_hunk_4
begin_hunk_5_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_:bb.a
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !247 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !247
  %i.bi = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !1031

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.an, ptr %i.bj, align 4, !tbaa !247
  %.not = icmp eq i64 %.08, 0
  %i.bk = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !1039

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS1_9SMaterialEbEEiiiE3$_0EjRKSt6vectorISt4pairIN4core8vector3dIsEEPN5scene11IMeshBufferEESaISI_EERSA_IN12_GLOBAL__N_114DrawDescriptorESaISO_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashISZ_ESt8equal_toISZ_ESaISB_IKSZ_S10_EEEENKUlvE_clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1040, !nonnull !153, !align !177 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !883  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1042, !nonnull !153, !align !177 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !453  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <2 x float> zeroinitializer, ptr %i.f, align 8
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store float 0.000000e+00, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -4
  %i.l = or disjoint i8 %i.k, 1
  store i8 %i.l, ptr %i.i, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.b, ptr %i.m, align 8, !tbaa !41
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !453
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.e, align 8, !tbaa !453
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEERS1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !21 ; 5 uses
  %i.p = ptrtoint ptr %i.f to i64
  %i.q = ptrtoint ptr %.val.i.i to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.t = sdiv exact i64 %i.r, 24                  ; 3 uses
  %i.u = icmp eq ptr %i.f, %.val.i.i              ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.u, i64 1, i64 %i.t
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.t
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 384307168202282325)
  %i.y = select i1 %i.w, i64 384307168202282325, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = mul nuw nsw i64 %i.y, 24
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #38 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.r ; 4 uses
  store <2 x float> zeroinitializer, ptr %i.ab, align 8
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store float 0.000000e+00, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i8 1, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.b, ptr %i.ad, align 8, !tbaa !41
  br i1 %i.u, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.aa, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.val.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !505, !alias.scope !1043
  %i.ae = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !510

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i38.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i38.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.r) #34
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !21
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !453
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !24
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEERS1_DpOT_.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEERS1_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1047, !nonnull !153, !align !501
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !247
  %i.al = load ptr, ptr %0, align 8, !tbaa !1040, !nonnull !153, !align !177
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !883 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am), !inline_history !538 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(28) %i.aq), !inline_history !538
  %i.av = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ak, i32 %i.au)
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !1047, !nonnull !153, !align !501
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1048, !nonnull !153, !align !501
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !247
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1040, !nonnull !153, !align !177
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !883 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb), !inline_history !1003 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.bf), !inline_history !1003
  %i.bk = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.az, i32 %i.bj)
  %i.bl = load ptr, ptr %i.ax, align 8, !tbaa !1048, !nonnull !153, !align !501
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !247
  %i.bm = load ptr, ptr %0, align 8, !tbaa !1040, !nonnull !153, !align !177
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !883 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn), !inline_history !1049
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 3, ptr %i.bs, align 8, !tbaa !575
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bn), !inline_history !1049
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 3, ptr %i.bx, align 8, !tbaa !575
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1050, !nonnull !153, !align !177
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !860 ; 2 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !1040, !nonnull !153, !align !177
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !883
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 136
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !578
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 208
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.ce)
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !1050, !nonnull !153, !align !177
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !860 ; 2 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !1040, !nonnull !153, !align !177
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !883
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 144
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !591
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 208
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %i.cn)
  %.pre = load ptr, ptr %0, align 8, !tbaa !1040
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEERS1_DpOT_.exit, %bb.a
  %i.cr = phi ptr [ %.pre, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEERS1_DpOT_.exit ], [ %i.a, %bb.a ]
  store ptr null, ptr %i.cr, align 8, !tbaa !883
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #28 {
bb.a:
  %.sroa.05.i.i9.i = alloca [16 x i8], align 8    ; 4 uses
  %.sroa.06.i.i.i = alloca [16 x i8], align 8     ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr44.i25 = freeze i64 %i.c                    ; 3 uses
  %i.d = icmp sgt i64 %.fr44.i25, 384
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S1N_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 14 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEES13_S13_S13_S1N_.exit"
  %i.i = icmp eq i64 %i.cl, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph44, !llvm.loop !1051

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr44.i28.lcssa = phi i64 [ %.fr44.i25, %.lr.ph ], [ %.fr44.i, %bb.b ]
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.fr44.i28.lcssa, 24      ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %i.j, 1
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i", %._crit_edge
  %.08.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.av, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.v = getelementptr inbounds [24 x i8], ptr %0, i64 %.08.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.49.0.copyload.i.i.i = load ptr, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.w = icmp slt i64 %.08.i.i.i, %i.n
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %bb.c ] ; 2 uses
  %i.x = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [24 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.z, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !531
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !531
  %i.ae = icmp ult ptr %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.aa, i64 %i.y ; 4 uses
  %i.af = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i.i ; 2 uses
  %i.ag = getelementptr inbounds [24 x i8], ptr %0, i64 %.037.i.i.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 12, i1 false), !tbaa.struct !533
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !531
  %i.ak = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1052

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.al = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  %or.cond.i.i.i = select i1 %i.p, i1 %i.al, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 12, i1 false), !tbaa.struct !533
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !30
  store ptr %i.am, ptr %i.u, align 8, !tbaa !531
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.an = icmp sgt i64 %.1.i.i.i.i, %.08.i.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !531 ; 2 uses
  %i.aq = icmp ult ptr %.val.i.i.i.i.i.i, %.sroa.49.0.copyload.i.i.i
  br i1 %i.aq, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.010.i.i.i.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 12, i1 false), !tbaa.struct !533
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %.val.i.i.i.i.i.i, ptr %i.as, align 8, !tbaa !531
  %i.at = icmp sgt i64 %.0911.i.i.i.i.i, %.08.i.i.i
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i", !llvm.loop !1053

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.06.i.i.i, i64 12, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %.sroa.49.0.copyload.i.i.i, ptr %3, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i.i)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.av = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !1054

.lr.ph.i10.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_RS1N_.exit.i21.i"
  %.sroa.0.03.i.i = phi ptr [ %i.aw, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_RS1N_.exit.i21.i" ], [ %storemerge26.lcssa, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i" ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i9.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.i.i9.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %.sroa.48.0.copyload.i.i.i = load ptr, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, align 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 12, i1 false), !tbaa.struct !533
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !30
  store ptr %i.ax, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !531
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ay, %i.a                     ; 3 uses
  %i.ba = sdiv exact i64 %i.az, 24                ; 3 uses
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = sdiv i64 %i.bb, 2
  %i.bd = icmp sgt i64 %i.az, 48
  br i1 %i.bd, label %.lr.ph.i.i.i25.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i25.i:                                 ; preds = %.lr.ph.i10.i, %.lr.ph.i.i.i25.i
  %.037.i.i.i26.i = phi i64 [ %spec.select.i.i.i29.i, %.lr.ph.i.i.i25.i ], [ 0, %.lr.ph.i10.i ] ; 2 uses
  %i.be = shl i64 %.037.i.i.i26.i, 1              ; 2 uses
  %i.bf = add i64 %i.be, 2                        ; 2 uses
  %i.bg = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bf
  %i.bh = or disjoint i64 %i.be, 1                ; 2 uses
  %i.bi = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bg, i64 16
  %.val.i.i.i.i27.i = load ptr, ptr %i.bj, align 8, !tbaa !531
  %i.bk = getelementptr i8, ptr %i.bi, i64 16
  %.val1.i.i.i.i28.i = load ptr, ptr %i.bk, align 8, !tbaa !531
  %i.bl = icmp ult ptr %.val.i.i.i.i27.i, %.val1.i.i.i.i28.i
  %spec.select.i.i.i29.i = select i1 %i.bl, i64 %i.bh, i64 %i.bf ; 4 uses
  %i.bm = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i29.i ; 2 uses
  %i.bn = getelementptr inbounds [24 x i8], ptr %0, i64 %.037.i.i.i26.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 12, i1 false), !tbaa.struct !533
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !531
  %i.br = icmp slt i64 %spec.select.i.i.i29.i, %i.bc
  br i1 %i.br, label %.lr.ph.i.i.i25.i, label %._crit_edge.i.i.i11.i, !llvm.loop !1052

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i25.i, %.lr.ph.i10.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i10.i ], [ %spec.select.i.i.i29.i, %.lr.ph.i.i.i25.i ] ; 5 uses
  %i.bs = and i64 %i.ba, 1
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bu = add nsw i64 %i.ba, -2
  %i.bv = ashr exact i64 %i.bu, 1
  %i.bw = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.bv
  br i1 %i.bw, label %.thread.i.i24.i, label %bb.h

.thread.i.i24.i:                                  ; preds = %bb.g
  %i.bx = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.by = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 12, i1 false), !tbaa.struct !533
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !531
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_RS1N_.exit.i21.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i24.i
  %.010.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.by, %.thread.i.i24.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.010.i.i.i.i17.i = phi i64 [ %.0911.i.i910.i.i19.i, %bb.i ], [ %.010.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i18.i = add nsw i64 %.010.i.i.i.i17.i, -1
  %.0911.i.i910.i.i19.i = lshr i64 %.0911.in.i.i.i.i18.i, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0911.i.i910.i.i19.i ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %.val.i.i.i.i.i20.i = load ptr, ptr %i.cf, align 8, !tbaa !531 ; 2 uses
  %i.cg = icmp ult ptr %.val.i.i.i.i.i20.i, %.sroa.48.0.copyload.i.i.i
  br i1 %i.cg, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_RS1N_.exit.i21.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.ch = getelementptr inbounds [24 x i8], ptr %0, i64 %.010.i.i.i.i17.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 12, i1 false), !tbaa.struct !533
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %.val.i.i.i.i.i20.i, ptr %i.ci, align 8, !tbaa !531
  %.not11.i.i23.i = icmp eq i64 %.0911.i.i910.i.i19.i, 0
  br i1 %.not11.i.i23.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_RS1N_.exit.i21.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !1053

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_RS1N_.exit.i21.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i22.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.cj = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i22.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cj, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.05.i.i9.i, i64 12, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %.sroa.48.0.copyload.i.i.i, ptr %4, align 8, !tbaa !531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i.i9.i)
  %i.ck = icmp sgt i64 %i.az, 24
  br i1 %i.ck, label %.lr.ph.i10.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S1N_.exit", !llvm.loop !1055

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2643 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02742 = phi i64 [ %i.cl, %bb.b ], [ %2, %.lr.ph ]
  %.fr44.i2841 = phi i64 [ %.fr44.i, %bb.b ], [ %.fr44.i25, %.lr.ph ]
  %i.cl = add nsw i64 %.02742, -1                 ; 3 uses
  %i.cm = udiv i64 %.fr44.i2841, 48
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cm ; 5 uses
  %i.co = getelementptr inbounds i8, ptr %storemerge2643, i64 -24 ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !531 ; 5 uses
  %i.cp = getelementptr i8, ptr %i.cn, i64 16     ; 3 uses
  %.val1.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !531 ; 5 uses
  %i.cq = icmp ult ptr %.val.i.i.i, %.val1.i.i.i
  %i.cr = getelementptr i8, ptr %storemerge2643, i64 -8 ; 5 uses
  %.val1.i27.i.i = load ptr, ptr %i.cr, align 8, !tbaa !531 ; 4 uses
  br i1 %i.cq, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph44
  %i.cs = icmp ult ptr %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load <3 x float>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 12, i1 false), !tbaa.struct !533
  store <3 x float> %.sroa.0.0.copyload, ptr %i.cn, align 8
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !30
  store ptr %.val1.i.i.i, ptr %i.g, align 8, !tbaa !30
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !30
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cu = icmp ult ptr %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.050.0.copyload = load <3 x float>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 12, i1 false), !tbaa.struct !533
  store <3 x float> %.sroa.050.0.copyload, ptr %i.co, align 8
  %i.cv = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !30
  store ptr %i.cw, ptr %i.g, align 8, !tbaa !30
  store ptr %i.cv, ptr %i.cr, align 8, !tbaa !30
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %.sroa.052.0.copyload = load <3 x float>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 12, i1 false), !tbaa.struct !533
  store <3 x float> %.sroa.052.0.copyload, ptr %i.e, align 8
  %i.cx = load ptr, ptr %i.g, align 8, !tbaa !30
  store ptr %.val.i.i.i, ptr %i.g, align 8, !tbaa !30
  store ptr %i.cx, ptr %i.f, align 8, !tbaa !30
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph44
  %i.cy = icmp ult ptr %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.054.0.copyload = load <3 x float>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 12, i1 false), !tbaa.struct !533
  store <3 x float> %.sroa.054.0.copyload, ptr %i.e, align 8
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !30
  store ptr %.val.i.i.i, ptr %i.g, align 8, !tbaa !30
  store ptr %i.cz, ptr %i.f, align 8, !tbaa !30
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.da = icmp ult ptr %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.da, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.056.0.copyload = load <3 x float>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 12, i1 false), !tbaa.struct !533
  store <3 x float> %.sroa.056.0.copyload, ptr %i.co, align 8
  %i.db = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.dc = load ptr, ptr %i.cr, align 8, !tbaa !30
  store ptr %i.dc, ptr %i.g, align 8, !tbaa !30
  store ptr %i.db, ptr %i.cr, align 8, !tbaa !30
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %.sroa.058.0.copyload = load <3 x float>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 12, i1 false), !tbaa.struct !533
  store <3 x float> %.sroa.058.0.copyload, ptr %i.cn, align 8
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !30
  store ptr %.val1.i.i.i, ptr %i.g, align 8, !tbaa !30
  store ptr %i.dd, ptr %i.cp, align 8, !tbaa !30
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.dg, %bb.v ], [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2643, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i.preheader" ]
  %.val1.i.i13.i = load ptr, ptr %i.g, align 8, !tbaa !531 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i" ], [ %i.dg, %bb.t ] ; 10 uses
  %i.de = getelementptr i8, ptr %.sroa.012.1.i.i, i64 16
  %.val.i.i14.i = load ptr, ptr %i.de, align 8, !tbaa !531
  %i.df = icmp ult ptr %.val.i.i14.i, %.val1.i.i13.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24 ; 2 uses
  br i1 %i.df, label %bb.t, label %.preheader.i.i.preheader, !llvm.loop !1056

.preheader.i.i.preheader:                         ; preds = %bb.t
  %i.dh = getelementptr i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 5 uses
  %i.di = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load ptr, ptr %i.di, align 8, !tbaa !531
  %i.dj = icmp ult ptr %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.dj, label %.preheader.i.i, label %bb.u, !llvm.loop !1057

bb.u:                                             ; preds = %.preheader.i.i
  %i.dk = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dk, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEES13_S13_S13_S1N_.exit"

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %.sroa.060.0.copyload = load <3 x float>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 12, i1 false), !tbaa.struct !533
  store <3 x float> %.sroa.060.0.copyload, ptr %.sroa.0.1.i.i, align 8
  %i.dm = load ptr, ptr %i.dh, align 8, !tbaa !30
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !30
  store ptr %i.dn, ptr %i.dh, align 8, !tbaa !30
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !30
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i", !llvm.loop !1058

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEES13_S13_S13_S1N_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2643, i64 noundef %i.cl)
  %i.do = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dp = sub i64 %i.do, %i.a
  %.fr44.i = freeze i64 %i.dp                     ; 3 uses
  %i.dq = icmp sgt i64 %.fr44.i, 384
  br i1 %i.dq, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S1N_.exit", !llvm.loop !1051

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S1N_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEES13_S13_S13_S1N_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_RS1N_.exit.i21.i", %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(6) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !145
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread80, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !749  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i16, ptr %i.g, align 2, !tbaa !135  ; 2 uses
  %i.i = load i16, ptr %2, align 2, !tbaa !135    ; 2 uses
  %i.j = icmp slt i16 %i.h, %i.i
  br i1 %i.j, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i16 %i.h, %i.i
  br i1 %i.k, label %bb.e, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread80

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 34
  %i.m = load i16, ptr %i.l, align 2, !tbaa !136  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !136  ; 2 uses
  %i.p = icmp slt i16 %i.m, %i.o
  br i1 %i.p, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i16 %i.m, %i.o
  br i1 %i.q, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread80

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.s = load i16, ptr %i.r, align 2, !tbaa !137
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i16, ptr %i.t, align 2, !tbaa !137
  %i.v = icmp slt i16 %i.s, %i.u
  br i1 %i.v, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread80

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread80: ; preds = %bb.f, %bb.d, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02126.i = load ptr, ptr %i.w, align 8, !tbaa !749 ; 2 uses
  %.not27.i = icmp eq ptr %.02126.i, null
end_hunk_5
