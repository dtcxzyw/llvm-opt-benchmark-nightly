Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/l_mapgen?download=true
inline.NumInlined: 2050
inline.NumDeleted: 844
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z14load_schematicP9lua_StateiPK14NodeDefManagerPSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEE:bb.a
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(192) %i.k) #26
  %i.dl = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.x
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.ai
  %i.dn = load i64, ptr %i.x, align 8, !tbaa !30
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.ac
  %.pn42 = phi { ptr, i32 } [ %i.cu, %bb.ac ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ] ; 2 uses
  %i.dp = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.x
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.aj
  %i.dr = load i64, ptr %i.x, align 8, !tbaa !30
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.ab
  %.pn42.pn = phi { ptr, i32 } [ %i.ct, %bb.ab ], [ %.pn42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn42, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume

.critedge:                                        ; preds = %bb.ah
  %i.dt = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.x
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %.critedge
  %i.dv = load i64, ptr %i.x, align 8, !tbaa !30
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.d, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %bb.e
  %.133 = phi ptr [ null, %bb.e ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.h, %bb.d ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ null, %bb.f ]
  ret ptr %.133
}

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_Z23load_schematic_from_defP9lua_StateiPK14NodeDefManagerPSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEE(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #29 ; 20 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.d, align 8, !tbaa !31
  store i8 0, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  invoke void @_ZN12NodeResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.e)
          to label %_ZN16SchematicManager6createE13SchematicType.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 8, !tbaa !21
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !tbaa !30
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #28, !inline_history !42
  br label %.body.i

.body.i:                                          ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 192) #28
  resume { ptr, i32 } %i.f

_ZN16SchematicManager6createE13SchematicType.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV9Schematic, i64 16), ptr %i.a, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV9Schematic, i64 64), ptr %i.e, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.k, i8 0, i64 34, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  %i.n = tail call noundef zeroext i1 @_Z18read_schematic_defP9lua_StateiP9SchematicPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m)
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN16SchematicManager6createE13SchematicType.exit
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #26
  br label %bb.m

bb.d:                                             ; preds = %_ZN16SchematicManager6createE13SchematicType.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !46   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 5                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !50
  %.not.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.x, ptr %i.aa, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !49
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !51  ; 4 uses
  %i.af = ptrtoint ptr %i.aa to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 5 uses
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
  store i64 %i.x, ptr %i.aq, align 8, !tbaa !27
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
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.av) #28
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !51
  store ptr %i.as, ptr %i.z, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.aw, ptr %i.ab, align 8, !tbaa !50
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.e, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %.not = icmp eq ptr %3, null
  %.not2431 = icmp eq ptr %i.s, %i.t
  %or.cond = select i1 %.not, i1 true, i1 %.not2431
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.k
  %.032 = phi i64 [ %i.bd, %bb.k ], [ 0, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %.032
  %i.az = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ay) ; 2 uses
  %.not30 = icmp eq ptr %i.az, null
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %.032
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.bd = add i64 %.032, 1                        ; 2 uses
  %.not24 = icmp eq i64 %i.bd, %i.x
  br i1 %.not24, label %.loopexit, label %.lr.ph, !llvm.loop !308

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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.208) #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !25
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !29
  %i.o = load i64, ptr %i.i, align 8, !tbaa !30
  store i64 %i.o, ptr %i.g, align 8, !tbaa !30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !31
  store ptr %i.i, ptr %i.f, align 8, !tbaa !29
  store i64 0, ptr %i.q, align 8, !tbaa !31
  store i8 0, ptr %i.i, align 8, !tbaa !30
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
  br i1 %i.f, label %bb.b, label %bb.bk

bb.b:                                             ; preds = %bb.a
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.25)
  %i.g = tail call i48 @_Z11check_v3s16P9lua_Statei(ptr noundef %0, i32 noundef -1) ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i48 %i.g to i16 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i48 %i.g, 16
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i16 ; 7 uses
  %.sroa.10.0.extract.shift = lshr i48 %i.g, 32
  %.sroa.10.0.extract.trunc = trunc nuw i48 %.sroa.10.0.extract.shift to i16 ; 2 uses
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 164
  store i16 %.sroa.0.0.extract.trunc, ptr %i.h, align 4, !tbaa !54
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 166
  store i16 %.sroa.6.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !54
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i16 %.sroa.10.0.extract.trunc, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !54
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.26)
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef -1, i32 noundef 5)
  %i.i = sext i16 %.sroa.0.0.extract.trunc to i32
  %i.j = sext i16 %.sroa.6.0.extract.trunc to i32 ; 4 uses
  %i.k = mul nsw i32 %i.j, %i.i
  %i.l = sext i16 %.sroa.10.0.extract.trunc to i32
  %i.m = mul nsw i32 %i.k, %i.l                   ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #29
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.t = load ptr, ptr %3, align 8, !tbaa !46
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !79
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 1, ptr %i.z, align 8, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ab, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  invoke void @lua_pushnil(ptr noundef %0)
          to label %.preheader146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader146:                                    ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.preheader146, %bb.ab
  %.0138 = phi i32 [ %i.ck, %bb.ab ], [ 0, %.preheader146 ] ; 5 uses
  %i.ag = invoke i32 @lua_next(ptr noundef %0, i32 noundef -2)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not62 = icmp ult i32 %.0138, %i.m
  br i1 %.not62, label %bb.f, label %bb.ab

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.ad, ptr %5, align 8, !tbaa !25
  store i64 0, ptr %i.ae, align 8, !tbaa !31
  store i8 0, ptr %i.ad, align 8, !tbaa !30
  %i.ah = invoke noundef zeroext i1 @_Z14getstringfieldP9lua_StateiPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  br i1 %i.ah, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #27
          to label %bb.bl unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %.045 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !30
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %.045, label %bb.l, label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %.045, label %bb.l, label %bb.ac

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn143 = phi { ptr, i32 } [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ai) #26
  br label %bb.ac

bb.m:                                             ; preds = %bb.g
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.29)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.m
  %i.aq = invoke noundef zeroext i1 @_Z18check_field_or_nilP9lua_StateiiPKc(ptr noundef %0, i32 noundef -1, i32 noundef 3, ptr noundef nonnull @.str.29)
          to label %.noexc71 unwind label %bb.z   ; 2 uses

.noexc71:                                         ; preds = %.noexc
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc71
  %i.ar = invoke i64 @lua_tointeger(ptr noundef %0, i32 noundef -1)
          to label %.noexc72 unwind label %bb.z

.noexc72:                                         ; preds = %bb.n
  %i.as = trunc i64 %i.ar to i8
  br label %bb.o

bb.o:                                             ; preds = %.noexc72, %.noexc71
  %.2 = phi i8 [ %i.as, %.noexc72 ], [ undef, %.noexc71 ]
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit unwind label %bb.z

_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit:       ; preds = %bb.o
  br i1 %i.aq, label %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit78, label %bb.p

bb.p:                                             ; preds = %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.30)
          to label %.noexc74 unwind label %bb.z

.noexc74:                                         ; preds = %bb.p
  %i.at = invoke noundef zeroext i1 @_Z18check_field_or_nilP9lua_StateiiPKc(ptr noundef %0, i32 noundef -1, i32 noundef 3, ptr noundef nonnull @.str.30)
          to label %.noexc75 unwind label %bb.z

.noexc75:                                         ; preds = %.noexc74
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc75
  %i.au = invoke i64 @lua_tointeger(ptr noundef %0, i32 noundef -1)
          to label %.noexc76 unwind label %bb.z

.noexc76:                                         ; preds = %bb.q
  %i.av = trunc i64 %i.au to i8
  br label %bb.r

bb.r:                                             ; preds = %.noexc76, %.noexc75
  %spec.select = phi i8 [ %i.av, %.noexc76 ], [ -1, %.noexc75 ]
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit78 unwind label %bb.z

_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit78:     ; preds = %bb.r, %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit
  %.0139 = phi i8 [ %.2, %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit ], [ %spec.select, %bb.r ]
  %i.aw = invoke noundef i32 @_Z19getintfield_defaultP9lua_StateiPKci(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.31, i32 noundef 0)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit78
  %i.ax = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEE4findERSB_.exit unwind label %bb.z ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEE4findERSB_.exit: ; preds = %bb.s
  %.not145 = icmp eq ptr %i.ax, null
  br i1 %.not145, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEE4findERSB_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !83
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.u:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEE4findERSB_.exit
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.bb = load ptr, ptr %3, align 8, !tbaa !46
  %i.bc = invoke noundef nonnull align 2 dereferenceable(2) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_tESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEEixERSB_.exit unwind label %bb.z

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEEixERSB_.exit: ; preds = %bb.u
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = lshr exact i64 %i.bf, 5
  %i.bh = sub nsw i64 %i.bg, %i.x
  %i.bi = trunc i64 %i.bh to i16                  ; 3 uses
  store i16 %i.bi, ptr %i.bc, align 2, !tbaa !54
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !45  ; 8 uses
  %i.bk = load ptr, ptr %i.af, align 8, !tbaa !84
  %.not.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEEixERSB_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !25
  %i.bm = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
end_hunk_0
begin_hunk_1_@_Z18read_schematic_defP9lua_StateiP9SchematicPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
  %.pn64.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn143, %bb.l ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bz, %bb.z ]
  %i.cl = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ad
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.ac
  %i.cn = load i64, ptr %i.ad, align 8, !tbaa !30
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.d
  %.not58 = icmp eq i32 %.0138, %i.m              ; 2 uses
  br i1 %.not58, label %bb.av, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not.i89 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i89, label %_ZTW11errorstream.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.ae, %bb.af
  %i.cp = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !97, !nonnull !98, !align !99 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !21
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !310

.noexc90:                                         ; preds = %_ZTW11errorstream.exit
  %.v.i = select i1 %i.ct, i64 976, i64 984
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.v.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.33, ptr %i.c, align 8, !tbaa !100
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %.noexc90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !101 ; 5 uses
  %.not.i92 = icmp eq ptr %i.cw, null
  br i1 %.not.i92, label %_ZN11StreamProxylsIRjEERS_OT_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !21
  %i.cy = getelementptr i8, ptr %i.cx, i64 -24
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !108
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc93:                                         ; preds = %bb.ai
  %.pre.i = load ptr, ptr %i.cu, align 8, !tbaa !101
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc93, %bb.ah
  %i.de = phi ptr [ %.pre.i, %.noexc93 ], [ %i.cw, %bb.ah ]
  %i.df = zext i32 %.0138 to i64
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.de, i64 noundef %i.df)
          to label %_ZN11StreamProxylsIRjEERS_OT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsIRjEERS_OT_.exit:               ; preds = %bb.ag, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.34, ptr %i.b, align 8, !tbaa !100
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ak:                                            ; preds = %_ZN11StreamProxylsIRjEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !101 ; 5 uses
  %.not.i96 = icmp eq ptr %i.di, null
  br i1 %.not.i96, label %_ZN11StreamProxylsIRjEERS_OT_.exit100, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !21
  %i.dk = getelementptr i8, ptr %i.dj, i64 -24
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !108
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc98:                                         ; preds = %bb.am
  %.pre.i97 = load ptr, ptr %i.dh, align 8, !tbaa !101
  br label %bb.an

bb.an:                                            ; preds = %.noexc98, %bb.al
  %i.dq = phi ptr [ %.pre.i97, %.noexc98 ], [ %i.di, %bb.al ]
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, i64 noundef %i.n)
          to label %_ZN11StreamProxylsIRjEERS_OT_.exit100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsIRjEERS_OT_.exit100:            ; preds = %bb.ak, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.35, ptr %i.a, align 8, !tbaa !100
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ao:                                            ; preds = %_ZN11StreamProxylsIRjEERS_OT_.exit100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !101 ; 5 uses
  %.not.i103 = icmp eq ptr %i.dt, null
  br i1 %.not.i103, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !21
  %i.dv = getelementptr i8, ptr %i.du, i64 -24
  %i.dw = load i64, ptr %i.dv, align 8            ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !108
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105:                                        ; preds = %bb.aq
  %.pre.i104 = load ptr, ptr %i.ds, align 8, !tbaa !101 ; 2 uses
  %.pre = load ptr, ptr %.pre.i104, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre165 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc105, %bb.ap
  %i.eb = phi i64 [ %.pre165, %.noexc105 ], [ %i.dw, %bb.ap ]
  %i.ec = phi ptr [ %.pre.i104, %.noexc105 ], [ %i.dt, %bb.ap ] ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 240
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !114 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i, label %bb.as, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc116:                                        ; preds = %bb.as
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.ar
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !119
  %.not.i1.i.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i1.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 67
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !30
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.au:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ef)
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc117:                                        ; preds = %bb.au
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !21
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = invoke noundef signext i8 %i.em(ptr noundef nonnull align 8 dereferenceable(570) %i.ef, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc117, %bb.at
  %.0.i.i.i = phi i8 [ %i.ej, %bb.at ], [ %i.en, %.noexc117 ]
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, i8 noundef signext %.0.i.i.i)
          to label %.noexc119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc119:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eo)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.av:                                            ; preds = %bb.ad
  %i.eq = sext i16 %.sroa.6.0.extract.trunc to i64
  %i.er = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #29
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 8 uses
  store ptr %i.er, ptr %i.es, align 8, !tbaa !120
  %.not59156 = icmp eq i16 %.sroa.6.0.extract.trunc, 0
  br i1 %.not59156, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aw
  %xtraiter = and i32 %i.j, 3
  %i.et = icmp ult i16 %.sroa.6.0.extract.trunc, 4
  br i1 %i.et, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.j, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !120
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv
  store i8 127, ptr %i.ev, align 1, !tbaa !30
  %i.ew = load ptr, ptr %i.es, align 8, !tbaa !120
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  store i8 127, ptr %i.ey, align 1, !tbaa !30
  %i.ez = load ptr, ptr %i.es, align 8, !tbaa !120
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  store i8 127, ptr %i.fb, align 1, !tbaa !30
  %i.fc = load ptr, ptr %i.es, align 8, !tbaa !120
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 3
  store i8 127, ptr %i.fe, align 1, !tbaa !30
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !311

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %8 = and i16 %.sroa.6.0.extract.trunc, 3
  %lcmp.mod.not = icmp eq i16 %8, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %9 = and i16 %.sroa.6.0.extract.trunc, 3
  %lcmp.mod198 = icmp ne i16 %9, 0
  call void @llvm.assume(i1 %lcmp.mod198)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ff = load ptr, ptr %i.es, align 8, !tbaa !120
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %indvars.iv.epil
  store i8 127, ptr %i.fg, align 1, !tbaa !30
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !312

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.aw
  invoke void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.36)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %._crit_edge
  %i.fh = invoke i32 @lua_type(ptr noundef %0, i32 noundef -1)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax
  %i.fi = icmp eq i32 %i.fh, 5
  br i1 %i.fi, label %bb.az, label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.az:                                            ; preds = %bb.ay
  invoke void @lua_pushnil(ptr noundef %0)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.az, %bb.bi
  %i.fj = invoke i32 @lua_next(ptr noundef %0, i32 noundef -2)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %.preheader
  %.not60 = icmp eq i32 %i.fj, 0
  br i1 %.not60, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.37)
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc107:                                        ; preds = %bb.bb
  %i.fk = invoke noundef zeroext i1 @_Z18check_field_or_nilP9lua_StateiiPKc(ptr noundef %0, i32 noundef -1, i32 noundef 3, ptr noundef nonnull @.str.37)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc108:                                        ; preds = %.noexc107
  br i1 %i.fk, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.noexc108
  %i.fl = invoke i64 @lua_tointeger(ptr noundef %0, i32 noundef -1)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %bb.bc
  %i.fm = trunc i64 %i.fl to i16
  br label %bb.bd

bb.bd:                                            ; preds = %.noexc109, %.noexc108
  %.0137 = phi i16 [ %i.fm, %.noexc109 ], [ undef, %.noexc108 ] ; 2 uses
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %_Z11getintfieldItEbP9lua_StateiPKcRT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_Z11getintfieldItEbP9lua_StateiPKcRT_.exit:       ; preds = %bb.bd
  %i.fn = zext i16 %.0137 to i32
  %.not61 = icmp slt i32 %i.fn, %i.j
  %or.cond = select i1 %i.fk, i1 %.not61, i1 false
  br i1 %or.cond, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %_Z11getintfieldItEbP9lua_StateiPKcRT_.exit
  %i.fo = load ptr, ptr %i.es, align 8, !tbaa !120
  %i.fp = zext i16 %.0137 to i64                  ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fp
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.30)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %bb.be
  %i.fr = invoke noundef zeroext i1 @_Z18check_field_or_nilP9lua_StateiiPKc(ptr noundef %0, i32 noundef -1, i32 noundef 3, ptr noundef nonnull @.str.30)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc112:                                        ; preds = %.noexc111
  br i1 %i.fr, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.noexc112
  %i.fs = invoke i64 @lua_tointeger(ptr noundef %0, i32 noundef -1)
          to label %.noexc113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc113:                                        ; preds = %bb.bf
  %i.ft = trunc i64 %i.fs to i8
  store i8 %i.ft, ptr %i.fq, align 1, !tbaa !30
  br label %bb.bg

bb.bg:                                            ; preds = %.noexc113, %.noexc112
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit115:    ; preds = %bb.bg
  br i1 %i.fr, label %bb.bh, label %bb.bi

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader, %bb.bi, %bb.bg, %bb.bf, %.noexc111, %bb.be, %bb.bd, %bb.bc, %.noexc107, %bb.bb, %bb.c, %bb.ab, %bb.b, %bb.av, %._crit_edge, %bb.ax, %bb.az, %_ZTW11errorstream.exit, %.noexc90, %bb.ai, %bb.aj, %_ZN11StreamProxylsIRjEERS_OT_.exit, %bb.am, %bb.an, %_ZN11StreamProxylsIRjEERS_OT_.exit100, %bb.aq, %bb.as, %bb.au, %.noexc117, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc119
  %lpad.loopexit.split-lp193 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit115
  %i.fu = load ptr, ptr %i.es, align 8, !tbaa !120
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fp ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !30
  %i.fx = lshr i8 %i.fw, 1
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !30
  br label %bb.bi

bb.bi:                                            ; preds = %_Z11getintfieldItEbP9lua_StateiPKcRT_.exit, %_Z11getintfieldIhEbP9lua_StateiPKcRT_.exit115, %bb.bh
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !313

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.ba, %bb.ao, %.noexc119, %bb.ay
  %i.fy = load ptr, ptr %i.aa, align 8, !tbaa !121 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.fz, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.fy, %_ZN11StreamProxylsEPFRSoS0_E.exit ] ; 4 uses
  %i.fz = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !29 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !30
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #28
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 56) #28
  %.not.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.gg = load ptr, ptr %4, align 8, !tbaa !79
  %i.gh = load i64, ptr %i.z, align 8, !tbaa !80
  %i.gi = shl i64 %i.gh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gg, i8 0, i64 %i.gi, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.gj = load ptr, ptr %4, align 8, !tbaa !79    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.y
  br i1 %i.gk, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.gl = load i64, ptr %i.z, align 8, !tbaa !80
  %i.gm = shl i64 %i.gl, 3
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #28
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.bk

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.pn69 = phi { ptr, i32 } [ %.pn64.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %lpad.loopexit.split-lp193, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn69

bb.bk:                                            ; preds = %bb.a, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev.exit
  %.155 = phi i1 [ %.not58, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.155

bb.bl:                                            ; preds = %bb.j
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !25
  %i.d = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.f, ptr %i.a, align 8, !tbaa !27
  %i.g = icmp ugt i64 %i.f, 15
end_hunk_1
begin_hunk_2_@_ZN12ModApiMapgen16l_get_biome_dataEP9lua_State:bb.a
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = tail call nsz noundef float @_ZNK16BiomeGenOriginal15calcHeatAtPointEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(120) %.0.i, i48 %i.a) ; 2 uses
  %i.r = tail call nsz noundef float @_ZNK16BiomeGenOriginal19calcHumidityAtPointEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(120) %.0.i, i48 %i.a) ; 2 uses
  %i.s = tail call noundef ptr @_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(120) %.0.i, float noundef %i.q, float noundef %i.r, i48 %i.a) ; 2 uses
  %.not47 = icmp eq ptr %i.s, null
  br i1 %.not47, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !170
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.f
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %i.w = load i32, ptr %i.t, align 8, !tbaa !170
  %i.x = zext i32 %i.w to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.x)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.67)
  %i.y = fpext nsz float %i.q to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.y)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.68)
  %i.z = fpext nsz float %i.r to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.z)
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %.0.i, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(36) %.0.i, i48 %i.a) ; 2 uses
  %.not46 = icmp eq ptr %i.ad, null
  br i1 %.not46, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !170
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.i, label %.critedge49

.critedge49:                                      ; preds = %bb.h
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %i.ah = load i32, ptr %i.ae, align 8, !tbaa !170
  %i.ai = zext i32 %i.ah to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ai)
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge49, %.critedge
  %.str.69.sink = phi ptr [ @.str.69, %.critedge ], [ @.str.67, %.critedge49 ]
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull %.str.69.sink)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN12ModApiMapgen11getBiomeGenEP9lua_State.exit
  %.2 = phi i32 [ 0, %bb.h ], [ 0, %_ZN12ModApiMapgen11getBiomeGenEP9lua_State.exit ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.g ], [ 1, %.sink.split ]
  ret i32 %.2
}

declare noundef ptr @_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(120), float noundef, float noundef, i48) local_unnamed_addr #1

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 4) i32 @_ZN12ModApiMapgen19l_get_mapgen_objectEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %3 = alloca %"class.std::map.144", align 8      ; 11 uses
  %i.b = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.not = icmp eq ptr %i.b, null
  %i.c = select i1 %.not, ptr @.str.54, ptr %i.b  ; 2 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #26
  %i.e = call noundef zeroext i1 @_Z14string_to_enumPK10EnumStringRiSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull @_ZN12ModApiMapgen15es_MapgenObjectE, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 %i.d, ptr nonnull %i.c)
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !213
  %i.g = call noundef ptr @_ZN10ModApiBase15getEmergeThreadEP9lua_State(ptr noundef %0) ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !197
  br label %_ZN12ModApiMapgen9getMapgenEP9lua_State.exit

bb.d:                                             ; preds = %bb.b
  %i.j = call noundef ptr @_ZN10ModApiBase9getServerEP9lua_State(ptr noundef %0)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 752
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !125
  %i.m = call noundef ptr @_ZN13EmergeManager16getCurrentMapgenEv(ptr noundef nonnull align 8 dereferenceable(480) %i.l)
  br label %_ZN12ModApiMapgen9getMapgenEP9lua_State.exit

_ZN12ModApiMapgen9getMapgenEP9lua_State.exit:     ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.i, %bb.c ], [ %i.m, %bb.d ] ; 11 uses
  %.not117 = icmp eq ptr %.0.i, null
  br i1 %.not117, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN12ModApiMapgen9getMapgenEP9lua_State.exit
  %i.n = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #27
          to label %bb.at unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0112 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8, !tbaa !30
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0112, label %bb.i, label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0112, label %bb.i, label %bb.as

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn149 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #26
  br label %bb.as

bb.j:                                             ; preds = %_ZN12ModApiMapgen9getMapgenEP9lua_State.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.w = load i16, ptr %i.v, align 8, !tbaa !329
  %i.x = sext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 84
  %i.z = load i16, ptr %i.y, align 4, !tbaa !330
  %i.aa = sext i16 %i.z to i32
  %i.ab = mul nsw i32 %i.aa, %i.x                 ; 9 uses
  %i.ac = sext i32 %i.ab to i64                   ; 4 uses
  switch i32 %i.f, label %.loopexit [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.n
    i32 3, label %bb.p
    i32 4, label %bb.t
    i32 5, label %bb.x
  ]

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !214 ; 3 uses
  call void @_ZN13LuaVoxelManip6createEP9lua_StateP8MMVManipb(ptr noundef %0, ptr noundef %i.ae, i1 noundef zeroext true)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.032.0.copyload = load i48, ptr %i.af, align 8, !tbaa !54
  call void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %.sroa.032.0.copyload)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 14
  %.sroa.030.0.copyload = load i48, ptr %i.ag, align 2, !tbaa !54
  call void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %.sroa.030.0.copyload)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !331
  %.not134 = icmp eq ptr %i.ai, null
  br i1 %.not134, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @lua_createtable(ptr noundef %0, i32 noundef %i.ab, i32 noundef 0)
  %.not135175 = icmp eq i32 %i.ab, 0
  br i1 %.not135175, label %.loopexit, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.m, %.lr.ph178
  %.0104176 = phi i64 [ %i.an, %.lr.ph178 ], [ 0, %bb.m ] ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !331
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %.0104176
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !54
  %i.am = sext i16 %i.al to i64
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.am)
  %i.an = add i64 %.0104176, 1                    ; 3 uses
  %i.ao = trunc i64 %i.an to i32
  call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef %i.ao)
  %.not135 = icmp eq i64 %i.an, %i.ac
  br i1 %.not135, label %.loopexit, label %.lr.ph178, !llvm.loop !323

bb.n:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 88 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !215
  %.not132 = icmp eq ptr %i.aq, null
  br i1 %.not132, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @lua_createtable(ptr noundef %0, i32 noundef %i.ab, i32 noundef 0)
  %.not133171 = icmp eq i32 %i.ab, 0
  br i1 %.not133171, label %.loopexit, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.o, %.lr.ph174
  %.0103172 = phi i64 [ %i.ax, %.lr.ph174 ], [ 0, %bb.o ] ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !215
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !333
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %.0103172
  %i.av = load i16, ptr %i.au, align 2, !tbaa !54
  %i.aw = zext i16 %i.av to i64
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.aw)
  %i.ax = add i64 %.0103172, 1                    ; 3 uses
  %i.ay = trunc i64 %i.ax to i32
  call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef %i.ay)
  %.not133 = icmp eq i64 %i.ax, %i.ac
  br i1 %.not133, label %.loopexit, label %.lr.ph174, !llvm.loop !324

bb.p:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 88 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !215 ; 3 uses
  %.not129 = icmp eq ptr %i.ba, null
  br i1 %.not129, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(36) %i.ba)
  %.not130 = icmp eq i32 %i.be, 0
  br i1 %.not130, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !215
  call void @lua_createtable(ptr noundef %0, i32 noundef %i.ab, i32 noundef 0)
  %.not131167 = icmp eq i32 %i.ab, 0
  br i1 %.not131167, label %.loopexit, label %.lr.ph170

.lr.ph170:                                        ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph170, %bb.s
  %.0102168 = phi i64 [ 0, %.lr.ph170 ], [ %i.bl, %bb.s ] ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !341
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.0102168
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !123
  %i.bk = fpext nsz float %i.bj to double
  call void @lua_pushnumber(ptr noundef %0, double noundef %i.bk)
  %i.bl = add i64 %.0102168, 1                    ; 3 uses
  %i.bm = trunc i64 %i.bl to i32
  call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef %i.bm)
  %.not131 = icmp eq i64 %i.bl, %i.ac
  br i1 %.not131, label %.loopexit, label %bb.s, !llvm.loop !325

bb.t:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i, i64 88 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !215 ; 3 uses
  %.not126 = icmp eq ptr %i.bo, null
  br i1 %.not126, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef i32 %i.br(ptr noundef nonnull align 8 dereferenceable(36) %i.bo)
  %.not127 = icmp eq i32 %i.bs, 0
  br i1 %.not127, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !215
  call void @lua_createtable(ptr noundef %0, i32 noundef %i.ab, i32 noundef 0)
  %.not128163 = icmp eq i32 %i.ab, 0
  br i1 %.not128163, label %.loopexit, label %.lr.ph166

.lr.ph166:                                        ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph166, %bb.w
  %.0101164 = phi i64 [ 0, %.lr.ph166 ], [ %i.bz, %bb.w ] ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !342
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.0101164
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !123
  %i.by = fpext nsz float %i.bx to double
  call void @lua_pushnumber(ptr noundef %0, double noundef %i.by)
  %i.bz = add i64 %.0101164, 1                    ; 3 uses
  %i.ca = trunc i64 %i.bz to i32
  call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef %i.ca)
  %.not128 = icmp eq i64 %i.bz, %i.ac
  br i1 %.not128, label %.loopexit, label %bb.w, !llvm.loop !326

bb.x:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.cb, align 8, !tbaa !343
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.cc, align 8, !tbaa !217
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !218
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.cb, ptr %i.ce, align 8, !tbaa !219
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i64 0, ptr %i.cf, align 8, !tbaa !220
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  invoke void @_ZNK16GenerateNotifier9getEventsERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN4core8vector3dIsEESaISA_EESt4lessIS6_ESaISt4pairIKS6_SC_EEE(ptr noundef nonnull align 8 dereferenceable(104) %i.cg, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !220
  %i.ci = trunc i64 %i.ch to i32
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef %i.ci)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !218 ; 2 uses
  %.not150161 = icmp eq ptr %i.cj, %i.cb
  br i1 %.not150161, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ad, %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i, i64 168
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !221
  %i.cm = trunc i64 %i.cl to i32
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef %i.cm)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.z, %bb.ad
  %.sroa.0140.0162 = phi ptr [ %i.dh, %bb.ad ], [ %i.cj, %bb.z ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0140.0162, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0140.0162, i64 64 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0140.0162, i64 72 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !344
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !223
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 6
  %i.cw = trunc i64 %i.cv to i32
  invoke void @lua_createtable(ptr noundef %0, i32 noundef %i.cw, i32 noundef 0)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %.lr.ph, %bb.ac
  %.0100 = phi i64 [ %i.df, %bb.ac ], [ 0, %.lr.ph ] ; 3 uses
  %i.cx = load ptr, ptr %i.cp, align 8, !tbaa !344
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !223 ; 2 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = sdiv exact i64 %i.db, 6
  %.not121 = icmp eq i64 %.0100, %i.dc
  br i1 %.not121, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.preheader
  %i.dd = load ptr, ptr %i.cn, align 8, !tbaa !29
  invoke void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef %i.dd)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %.preheader
  %i.de = getelementptr inbounds nuw [6 x i8], ptr %i.cy, i64 %.0100
  %.sroa.0.0.copyload = load i48, ptr %i.de, align 2, !tbaa !54
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %.sroa.0.0.copyload)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.df = add i64 %.0100, 1                       ; 2 uses
  %i.dg = trunc i64 %i.df to i32
  invoke void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef %i.dg)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !327

bb.ad:                                            ; preds = %bb.aa
  %i.dh = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0140.0162) #31 ; 2 uses
  %.not150 = icmp eq ptr %i.dh, %i.cb
  br i1 %.not150, label %._crit_edge, label %.lr.ph, !llvm.loop !328

bb.ae:                                            ; preds = %._crit_edge
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull @.str.71)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.72)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  invoke void @lua_remove(ptr noundef %0, i32 noundef -2)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i, i64 160
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ao, %bb.ah
  %.sroa.0136.0.in = phi ptr [ %i.di, %bb.ah ], [ %.sroa.0136.0, %bb.ao ]
  %.sroa.0136.0 = load ptr, ptr %.sroa.0136.0.in, align 8, !tbaa !122 ; 5 uses
  %.not151 = icmp eq ptr %.sroa.0136.0, null
  br i1 %.not151, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ai
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0136.0, i64 8
  invoke void @lua_pushvalue(ptr noundef %0, i32 noundef -1)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0136.0, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !29
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0136.0, i64 48
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !31
  invoke void @lua_pushlstring(ptr noundef %0, ptr noundef %i.dl, i64 noundef %i.dn)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  invoke void @lua_pushboolean(ptr noundef %0, i32 noundef 1)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  invoke void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 1)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !29
  invoke void @lua_setfield(ptr noundef %0, i32 noundef -3, ptr noundef %i.do)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.ab, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %.lr.ph, %bb.aa, %._crit_edge, %bb.ae, %bb.af, %bb.ag, %bb.aj, %bb.ap, %bb.y, %bb.x
  %lpad.loopexit.split-lp213 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN4core8vector3dIsEESaIS9_EESt4lessIS5_ESaISt4pairIKS5_SB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.as

bb.ap:                                            ; preds = %bb.aj
  invoke void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.73)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  %i.dp = load ptr, ptr %i.cc, align 8, !tbaa !217
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN4core8vector3dIsEESaISB_EEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.dp)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN4core8vector3dIsEESaIS9_EESt4lessIS5_ESaISt4pairIKS5_SB_EEED2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #30
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN4core8vector3dIsEESaIS9_EESt4lessIS5_ESaISt4pairIKS5_SB_EEED2Ev.exit: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.loopexit

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn122.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp213, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn149, %bb.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  resume { ptr, i32 } %.pn122.pn.pn

.loopexit:                                        ; preds = %bb.w, %bb.s, %.lr.ph174, %.lr.ph178, %bb.v, %bb.r, %bb.o, %bb.m, %bb.k, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN4core8vector3dIsEESaIS9_EESt4lessIS5_ESaISt4pairIKS5_SB_EEED2Ev.exit, %bb.l, %bb.n, %bb.q, %bb.p, %bb.u, %bb.t, %bb.j, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.o ], [ 3, %bb.k ], [ 0, %bb.l ], [ 1, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN4core8vector3dIsEESaIS9_EESt4lessIS5_ESaISt4pairIKS5_SB_EEED2Ev.exit ], [ 0, %bb.n ], [ 0, %bb.j ], [ 1, %bb.r ], [ 0, %bb.p ], [ 1, %bb.m ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.u ], [ 1, %bb.v ], [ 1, %bb.s ], [ 1, %.lr.ph178 ], [ 1, %.lr.ph174 ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.1

bb.at:                                            ; preds = %bb.g
  unreachable
}

declare noundef zeroext i1 @_Z14string_to_enumPK10EnumStringRiSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN12ModApiMapgen9getMapgenEP9lua_State(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN10ModApiBase15getEmergeThreadEP9lua_State(ptr noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !197
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN10ModApiBase9getServerEP9lua_State(ptr noundef %0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 752
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !125
  %i.g = tail call noundef ptr @_ZN13EmergeManager16getCurrentMapgenEv(ptr noundef nonnull align 8 dereferenceable(480) %i.f)
  br label %bb.d
end_hunk_2
