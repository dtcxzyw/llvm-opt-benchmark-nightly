inline.NumInlined: 2050
inline.NumDeleted: 844
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z23load_schematic_from_defP9lua_StateiPK14NodeDefManagerPSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.k, i8 0, i64 34, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  %i.n = tail call noundef zeroext i1 @_Z18read_schematic_defP9lua_StateiP9SchematicPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m)
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN16SchematicManager6createE13SchematicType.exit
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #26
  br label %bb.m

bb.d:                                             ; preds = %_ZN16SchematicManager6createE13SchematicType.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38   ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !41   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 5                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45
  %.not.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.x, ptr %i.aa, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !42
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !46  ; 4 uses
  %i.af = ptrtoint ptr %i.aa to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.g, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.209) #27
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #29 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store i64 %i.x, ptr %i.aq, align 8, !tbaa !15
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.h, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #28
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !46
  store ptr %i.as, ptr %i.z, align 8, !tbaa !42
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.at, ptr %i.ab, align 8, !tbaa !45
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.e, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %.not = icmp eq ptr %3, null
  %.not2431 = icmp eq ptr %i.s, %i.t
  %or.cond = select i1 %.not, i1 true, i1 %.not2431
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.k
  %.032 = phi i64 [ %i.ba, %bb.k ], [ 0, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %.032
  %i.aw = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.av) ; 2 uses
  %.not30 = icmp eq ptr %i.aw, null
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %.032
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.ba = add i64 %.032, 1                        ; 2 uses
  %.not24 = icmp eq i64 %i.ba, %i.x
  br i1 %.not24, label %.loopexit, label %.lr.ph, !llvm.loop !47

.loopexit:                                        ; preds = %bb.k, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.not25 = icmp eq ptr %2, null
  br i1 %.not25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  tail call void @_ZNK14NodeDefManager15pendNodeResolveEP12NodeResolver(ptr noundef nonnull align 8 dereferenceable(65848) %2, ptr noundef nonnull %i.e)
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.l, %bb.c
  %.020 = phi ptr [ null, %bb.c ], [ %i.a, %bb.l ], [ %i.a, %.loopexit ]
  ret ptr %.020
}

declare noundef zeroext i1 @_ZN2fs14IsPathAbsoluteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.208) #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !11
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !17
  %i.o = load i64, ptr %i.i, align 8, !tbaa !19
  store i64 %i.o, ptr %i.g, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !20
  store ptr %i.i, ptr %i.f, align 8, !tbaa !17
  store i64 0, ptr %i.q, align 8, !tbaa !20
  store i8 0, ptr %i.i, align 8, !tbaa !19
  ret void
}

declare void @_ZN10ModApiBase17getCurrentModPathB5cxx11EP9lua_State(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN9Schematic21loadSchematicFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK14NodeDefManagerPSt13unordered_mapIS5_S5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIS6_S5_EEE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_Z18read_schematic_defP9lua_StateiP9SchematicPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::unordered_map.48", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.e = tail call i32 @lua_type(ptr noundef %0, i32 noundef %1)
  %i.f = icmp eq i32 %i.e, 5
  br i1 %i.f, label %bb.b, label %bb.bp

bb.b:                                             ; preds = %bb.a
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.25)
  %i.g = tail call i48 @_Z11check_v3s16P9lua_Statei(ptr noundef %0, i32 noundef -1) ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i48 %i.g to i16 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i48 %i.g, 16
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i16 ; 5 uses
  %.sroa.10.0.extract.shift = lshr i48 %i.g, 32
  %.sroa.10.0.extract.trunc = trunc nuw i48 %.sroa.10.0.extract.shift to i16 ; 2 uses
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 164
  store i16 %.sroa.0.0.extract.trunc, ptr %i.h, align 4, !tbaa !49
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 166
  store i16 %.sroa.6.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !49
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i16 %.sroa.10.0.extract.trunc, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !49
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.26)
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef -1, i32 noundef 5)
  %i.i = sext i16 %.sroa.0.0.extract.trunc to i32
  %i.j = sext i16 %.sroa.6.0.extract.trunc to i32 ; 3 uses
  %i.k = mul nsw i32 %i.j, %i.i
  %i.l = sext i16 %.sroa.10.0.extract.trunc to i32
  %i.m = mul nsw i32 %i.k, %i.l                   ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #29
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.t = load ptr, ptr %3, align 8, !tbaa !41
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 1, ptr %i.z, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ab, align 8, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  invoke void @lua_pushnil(ptr noundef %0)
          to label %.preheader146 unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader146:                                    ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.preheader146, %bb.af
  %.0138 = phi i32 [ %i.co, %bb.af ], [ 0, %.preheader146 ] ; 5 uses
  %i.ag = invoke i32 @lua_next(ptr noundef %0, i32 noundef -2)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.ah, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not62 = icmp ult i32 %.0138, %i.m
  br i1 %.not62, label %bb.f, label %bb.af

.loopexit:                                        ; preds = %.preheader, %bb.bn
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.af, %bb.c
  %lpad.loopexit147 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc119, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc117, %bb.ay, %bb.aw, %bb.au, %_ZN11StreamProxylsIRjEERS_OT_.exit100, %bb.ar, %bb.aq, %_ZN11StreamProxylsIRjEERS_OT_.exit, %bb.an, %bb.am, %.noexc90, %_ZTW11errorstream.exit, %bb.bd, %bb.bb, %._crit_edge, %bb.az, %bb.b
  %lpad.loopexit.split-lp148 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.ad, ptr %5, align 8, !tbaa !11
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  store i8 0, ptr %i.ad, align 8, !tbaa !19
  %i.ah = invoke noundef zeroext i1 @_Z14getstringfieldP9lua_StateiPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  br i1 %i.ah, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #27
          to label %bb.bq unwind label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %.045 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !19
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %.045, label %bb.m, label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %.045, label %bb.m, label %bb.ag

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn143 = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ai) #26
  br label %bb.ag

bb.n:                                             ; preds = %bb.g
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.29)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.n
  %i.ar = invoke noundef zeroext i1 @_Z18check_field_or_nilP9lua_StateiiPKc(ptr noundef %0, i32 noundef -1, i32 noundef 3, ptr noundef nonnull @.str.29)
          to label %.noexc71 unwind label %bb.t   ; 2 uses

.noexc71:                                         ; preds = %.noexc
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc71
  %i.as = invoke i64 @lua_tointeger(ptr noundef %0, i32 noundef -1)
          to label %.noexc72 unwind label %bb.t

.noexc72:                                         ; preds = %bb.o
  %i.at = trunc i64 %i.as to i8
  br label %bb.p

bb.p:                                             ; preds = %.noexc72, %.noexc71
  %.2 = phi i8 [ %i.at, %.noexc72 ], [ undef, %.noexc71 ]
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit unwind label %bb.t

_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit:       ; preds = %bb.p
  br i1 %i.ar, label %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit78, label %bb.q

bb.q:                                             ; preds = %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.30)
          to label %.noexc74 unwind label %bb.t

.noexc74:                                         ; preds = %bb.q
  %i.au = invoke noundef zeroext i1 @_Z18check_field_or_nilP9lua_StateiiPKc(ptr noundef %0, i32 noundef -1, i32 noundef 3, ptr noundef nonnull @.str.30)
          to label %.noexc75 unwind label %bb.t

.noexc75:                                         ; preds = %.noexc74
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc75
  %i.av = invoke i64 @lua_tointeger(ptr noundef %0, i32 noundef -1)
          to label %.noexc76 unwind label %bb.t

.noexc76:                                         ; preds = %bb.r
  %i.aw = trunc i64 %i.av to i8
  br label %bb.s

bb.s:                                             ; preds = %.noexc76, %.noexc75
  %spec.select = phi i8 [ %i.aw, %.noexc76 ], [ -1, %.noexc75 ]
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit78 unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.noexc74, %bb.q, %bb.p, %bb.o, %.noexc, %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit78:     ; preds = %bb.s, %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit
  %.0139 = phi i8 [ %.2, %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit ], [ %spec.select, %bb.s ]
  %i.ay = invoke noundef i32 @_Z19getintfield_defaultP9lua_StateiPKci(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.31, i32 noundef 0)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit78
  %i.az = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEE4findERSB_.exit unwind label %bb.x ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEE4findERSB_.exit: ; preds = %bb.u
  %.not145 = icmp eq ptr %i.az, null
  br i1 %.not145, label %bb.y, label %bb.v

bb.v:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEE4findERSB_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !78
end_hunk_0
begin_hunk_1_@_Z18read_schematic_defP9lua_StateiP9SchematicPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
  %.pn64.pn.pn.pn = phi { ptr, i32 } [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn143, %bb.m ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aj, %bb.k ], [ %i.ax, %bb.t ], [ %i.bc, %bb.w ], [ %i.cd, %bb.ad ], [ %i.bd, %bb.x ]
  %i.cp = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ad
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.ag
  %i.cr = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.d
  %.not58 = icmp eq i32 %.0138, %i.m              ; 2 uses
  br i1 %.not58, label %bb.az, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i89 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i89, label %_ZTW11errorstream.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.ai, %bb.aj
  %i.ct = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !82, !nonnull !95, !align !96 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !9
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef zeroext i1 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.cu)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !97

.noexc90:                                         ; preds = %_ZTW11errorstream.exit
  %.v.i = select i1 %i.cx, i64 976, i64 984
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.v.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.33, ptr %i.c, align 8, !tbaa !98
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ak:                                            ; preds = %.noexc90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !99 ; 5 uses
  %.not.i92 = icmp eq ptr %i.da, null
  br i1 %.not.i92, label %_ZN11StreamProxylsIRjEERS_OT_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !9
  %i.dc = getelementptr i8, ptr %i.db, i64 -24
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds i8, ptr %i.da, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !100
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc93:                                         ; preds = %bb.am
  %.pre.i = load ptr, ptr %i.cy, align 8, !tbaa !99
  br label %bb.an

bb.an:                                            ; preds = %.noexc93, %bb.al
  %i.di = phi ptr [ %.pre.i, %.noexc93 ], [ %i.da, %bb.al ]
  %i.dj = zext i32 %.0138 to i64
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.di, i64 noundef %i.dj)
          to label %_ZN11StreamProxylsIRjEERS_OT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsIRjEERS_OT_.exit:               ; preds = %bb.ak, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.34, ptr %i.b, align 8, !tbaa !98
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ao:                                            ; preds = %_ZN11StreamProxylsIRjEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !99 ; 5 uses
  %.not.i96 = icmp eq ptr %i.dm, null
  br i1 %.not.i96, label %_ZN11StreamProxylsIRjEERS_OT_.exit100, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !9
  %i.do = getelementptr i8, ptr %i.dn, i64 -24
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !100
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc98:                                         ; preds = %bb.aq
  %.pre.i97 = load ptr, ptr %i.dl, align 8, !tbaa !99
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc98, %bb.ap
  %i.du = phi ptr [ %.pre.i97, %.noexc98 ], [ %i.dm, %bb.ap ]
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.du, i64 noundef %i.n)
          to label %_ZN11StreamProxylsIRjEERS_OT_.exit100 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsIRjEERS_OT_.exit100:            ; preds = %bb.ao, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.35, ptr %i.a, align 8, !tbaa !98
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.as:                                            ; preds = %_ZN11StreamProxylsIRjEERS_OT_.exit100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !99 ; 5 uses
  %.not.i103 = icmp eq ptr %i.dx, null
  br i1 %.not.i103, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !9
  %i.dz = getelementptr i8, ptr %i.dy, i64 -24
  %i.ea = load i64, ptr %i.dz, align 8            ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dx, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !100
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.dx)
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc105:                                        ; preds = %bb.au
  %.pre.i104 = load ptr, ptr %i.dw, align 8, !tbaa !99 ; 2 uses
  %.pre = load ptr, ptr %.pre.i104, align 8, !tbaa !9
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre178 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.av

bb.av:                                            ; preds = %.noexc105, %bb.at
  %i.ef = phi i64 [ %.pre178, %.noexc105 ], [ %i.ea, %bb.at ]
  %i.eg = phi ptr [ %.pre.i104, %.noexc105 ], [ %i.dx, %bb.at ] ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.ef
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 240
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !107 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i, label %bb.aw, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc116:                                        ; preds = %bb.aw
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.av
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !113
  %.not.i1.i.i = icmp eq i8 %i.el, 0
  br i1 %.not.i1.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 67
  %i.en = load i8, ptr %i.em, align 1, !tbaa !19
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ay:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ej)
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc117:                                        ; preds = %bb.ay
  %i.eo = load ptr, ptr %i.ej, align 8, !tbaa !9
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = invoke noundef signext i8 %i.eq(ptr noundef nonnull align 8 dereferenceable(570) %i.ej, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !118

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc117, %bb.ax
  %.0.i.i.i = phi i8 [ %i.en, %bb.ax ], [ %i.er, %.noexc117 ]
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, i8 noundef signext %.0.i.i.i)
          to label %.noexc119 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc119:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.es)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.az:                                            ; preds = %bb.ah
  %i.eu = sext i16 %.sroa.6.0.extract.trunc to i64
  %i.ev = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eu) #29
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 8 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !119
  %.not59168 = icmp eq i16 %.sroa.6.0.extract.trunc, 0
  br i1 %.not59168, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ba
  %8 = zext i32 %i.j to i64                       ; 2 uses
  %xtraiter = and i64 %8, 3                       ; 3 uses
  %i.ex = icmp ult i16 %.sroa.6.0.extract.trunc, 4
  br i1 %i.ex, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %8, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !119
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv
  store i8 127, ptr %i.ez, align 1, !tbaa !19
  %i.fa = load ptr, ptr %i.ew, align 8, !tbaa !119
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store i8 127, ptr %i.fc, align 1, !tbaa !19
  %i.fd = load ptr, ptr %i.ew, align 8, !tbaa !119
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %indvars.iv
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  store i8 127, ptr %i.ff, align 1, !tbaa !19
  %i.fg = load ptr, ptr %i.ew, align 8, !tbaa !119
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 3
  store i8 127, ptr %i.fi, align 1, !tbaa !19
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !120

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod217 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod217)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.fj = load ptr, ptr %i.ew, align 8, !tbaa !119
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv.epil
  store i8 127, ptr %i.fk, align 1, !tbaa !19
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !121

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.ba
  invoke void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.36)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %._crit_edge
  %i.fl = invoke i32 @lua_type(ptr noundef %0, i32 noundef -1)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  %i.fm = icmp eq i32 %i.fl, 5
  br i1 %i.fm, label %bb.bd, label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.bd:                                            ; preds = %bb.bc
  invoke void @lua_pushnil(ptr noundef %0)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.bd, %bb.bn
  %i.fn = invoke i32 @lua_next(ptr noundef %0, i32 noundef -2)
          to label %bb.be unwind label %.loopexit

bb.be:                                            ; preds = %.preheader
  %.not60 = icmp eq i32 %i.fn, 0
  br i1 %.not60, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.37)
          to label %.noexc107 unwind label %bb.bl

.noexc107:                                        ; preds = %bb.bf
  %i.fo = invoke noundef zeroext i1 @_Z18check_field_or_nilP9lua_StateiiPKc(ptr noundef %0, i32 noundef -1, i32 noundef 3, ptr noundef nonnull @.str.37)
          to label %.noexc108 unwind label %bb.bl ; 2 uses

.noexc108:                                        ; preds = %.noexc107
  br i1 %i.fo, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.noexc108
  %i.fp = invoke i64 @lua_tointeger(ptr noundef %0, i32 noundef -1)
          to label %.noexc109 unwind label %bb.bl

.noexc109:                                        ; preds = %bb.bg
  %i.fq = trunc i64 %i.fp to i16
  br label %bb.bh

bb.bh:                                            ; preds = %.noexc109, %.noexc108
  %.0137 = phi i16 [ %i.fq, %.noexc109 ], [ undef, %.noexc108 ] ; 2 uses
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %_Z11getintfieldItEbP9lua_StateiPKcRT_.exit unwind label %bb.bl

_Z11getintfieldItEbP9lua_StateiPKcRT_.exit:       ; preds = %bb.bh
  %i.fr = zext i16 %.0137 to i32
  %.not61 = icmp slt i32 %i.fr, %i.j
  %or.cond = select i1 %i.fo, i1 %.not61, i1 false
  br i1 %or.cond, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %_Z11getintfieldItEbP9lua_StateiPKcRT_.exit
  %i.fs = load ptr, ptr %i.ew, align 8, !tbaa !119
  %i.ft = zext i16 %.0137 to i64                  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ft
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.30)
          to label %.noexc111 unwind label %bb.bl

.noexc111:                                        ; preds = %bb.bi
  %i.fv = invoke noundef zeroext i1 @_Z18check_field_or_nilP9lua_StateiiPKc(ptr noundef %0, i32 noundef -1, i32 noundef 3, ptr noundef nonnull @.str.30)
          to label %.noexc112 unwind label %bb.bl ; 2 uses

.noexc112:                                        ; preds = %.noexc111
  br i1 %i.fv, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.noexc112
  %i.fw = invoke i64 @lua_tointeger(ptr noundef %0, i32 noundef -1)
          to label %.noexc113 unwind label %bb.bl

.noexc113:                                        ; preds = %bb.bj
  %i.fx = trunc i64 %i.fw to i8
  store i8 %i.fx, ptr %i.fu, align 1, !tbaa !19
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc113, %.noexc112
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit115 unwind label %bb.bl

_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit115:    ; preds = %bb.bk
  br i1 %i.fv, label %bb.bm, label %bb.bn

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %.noexc111, %bb.bi, %bb.bh, %bb.bg, %.noexc107, %bb.bf
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bm:                                            ; preds = %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit115
  %i.fz = load ptr, ptr %i.ew, align 8, !tbaa !119
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ft ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !19
  %i.gc = lshr i8 %i.gb, 1
  store i8 %i.gc, ptr %i.ga, align 1, !tbaa !19
  br label %bb.bn

bb.bn:                                            ; preds = %_Z11getintfieldItEbP9lua_StateiPKcRT_.exit, %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit115, %bb.bm
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %.preheader unwind label %.loopexit, !llvm.loop !123

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.be, %bb.as, %.noexc119, %bb.bc
  %i.gd = load ptr, ptr %i.aa, align 8, !tbaa !124 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ge, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.gd, %_ZN11StreamProxylsEPFRSoS0_E.exit ] ; 4 uses
  %i.ge = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !125 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !17 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !19
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #28
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 56) #28
  %.not.i.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !126

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.gl = load ptr, ptr %4, align 8, !tbaa !69
  %i.gm = load i64, ptr %i.z, align 8, !tbaa !76
  %i.gn = shl i64 %i.gm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gl, i8 0, i64 %i.gn, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.go = load ptr, ptr %4, align 8, !tbaa !69    ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.y
  br i1 %i.gp, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.gq = load i64, ptr %i.z, align 8, !tbaa !76
  %i.gr = shl i64 %i.gq, 3
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #28
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.bp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.pn69 = phi { ptr, i32 } [ %i.fy, %bb.bl ], [ %.pn64.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit147, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp148, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn69

bb.bp:                                            ; preds = %bb.a, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev.exit
  %.155 = phi i1 [ %.not58, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.155

bb.bq:                                            ; preds = %bb.j
  unreachable
}

declare void @_ZNK14NodeDefManager15pendNodeResolveEP12NodeResolver(ptr noundef nonnull align 8 dereferenceable(65848), ptr noundef) local_unnamed_addr #1

declare void @lua_getfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i48 @_Z11check_v3s16P9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @luaL_checktype(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

declare void @lua_pushnil(ptr noundef) local_unnamed_addr #1

declare i32 @lua_next(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_Z14getstringfieldP9lua_StateiPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !11
  %i.d = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.f, ptr %i.a, align 8, !tbaa !15
  %i.g = icmp ugt i64 %i.f, 15
end_hunk_1
