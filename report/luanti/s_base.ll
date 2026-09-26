Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/s_base?download=true
inline.NumInlined: 367
inline.NumDeleted: 144
begin_hunk_0_@_ZN13ScriptApiBase20objectrefGetOrCreateEP9lua_StateP18ServerActiveObject:bb.a
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !52 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !11
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre7 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = phi i64 [ %.pre7, %bb.i ], [ %i.z, %bb.h ]
  %i.af = phi ptr [ %.pre.i, %bb.i ], [ %i.w, %bb.h ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !66 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !72
  %.not.i1.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai)
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i8 [ %i.am, %bb.l ], [ %i.aq, %bb.m ]
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext %.0.i.i.i)
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZTW13warningstream.exit, %bb.e, %bb.b
  ret void
}

declare void @_Z14push_objectRefP9lua_Statet(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13ScriptApiBase24pushPlayerHPChangeReasonEP9lua_StateRK20PlayerHPChangeReason(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(129) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(54) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !144  ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  %.sink34.i.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 17
  %.sink34.i.sroa.gep32 = getelementptr inbounds nuw i8, ptr %3, i64 23
  %.sink34.i.sroa.gep33 = getelementptr inbounds nuw i8, ptr %3, i64 21 ; 2 uses
  %.sink34.i.sroa.gep34 = getelementptr inbounds nuw i8, ptr %3, i64 27
  %.sink34.i.sroa.gep35 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sink34.i.sroa.gep37 = getelementptr inbounds nuw i8, ptr %3, i64 22
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @lua_rawgeti(ptr noundef %1, i32 noundef -10000, i32 noundef %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @lua_createtable(ptr noundef %1, i32 noundef 0, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @lua_getfield(ptr noundef %1, i32 noundef -1, ptr noundef nonnull @.str.46)
  %i.d = tail call i32 @lua_isstring(ptr noundef %1, i32 noundef -1)
  %.not = icmp eq i32 %i.d, 0
  tail call void @lua_settop(ptr noundef %1, i32 noundef -2)
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.e = load i8, ptr %2, align 8, !tbaa !146, !noalias !145
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !16, !alias.scope !145
  switch i8 %i.e, label %._crit_edge.i.i24.i [
    i8 0, label %._crit_edge.i.i.i
    i8 1, label %._crit_edge.i.i.i
    i8 2, label %._crit_edge.i.i4.i
    i8 3, label %._crit_edge.i.i8.i
    i8 4, label %._crit_edge.i.i12.i
    i8 5, label %._crit_edge.i.i16.i
    i8 6, label %._crit_edge.i.i20.i
  ]

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.f, ptr noundef nonnull align 1 dereferenceable(6) @.str.55, i64 6, i1 false)
  br label %_ZNK20PlayerHPChangeReason15getTypeAsStringB5cxx11Ev.exit

._crit_edge.i.i4.i:                               ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.f, ptr noundef nonnull align 1 dereferenceable(5) @.str.56, i64 5, i1 false)
  br label %_ZNK20PlayerHPChangeReason15getTypeAsStringB5cxx11Ev.exit

._crit_edge.i.i8.i:                               ; preds = %bb.e
  store i32 1819042150, ptr %i.f, align 8, !alias.scope !145
  br label %_ZNK20PlayerHPChangeReason15getTypeAsStringB5cxx11Ev.exit

._crit_edge.i.i12.i:                              ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.f, ptr noundef nonnull align 1 dereferenceable(11) @.str.58, i64 11, i1 false)
  br label %_ZNK20PlayerHPChangeReason15getTypeAsStringB5cxx11Ev.exit

._crit_edge.i.i16.i:                              ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.f, ptr noundef nonnull align 1 dereferenceable(5) @.str.59, i64 5, i1 false)
  br label %_ZNK20PlayerHPChangeReason15getTypeAsStringB5cxx11Ev.exit

._crit_edge.i.i20.i:                              ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.f, ptr noundef nonnull align 1 dereferenceable(7) @.str.60, i64 7, i1 false)
  br label %_ZNK20PlayerHPChangeReason15getTypeAsStringB5cxx11Ev.exit

._crit_edge.i.i24.i:                              ; preds = %bb.e
  store i8 63, ptr %i.f, align 8, !tbaa !20, !alias.scope !145
  br label %_ZNK20PlayerHPChangeReason15getTypeAsStringB5cxx11Ev.exit

_ZNK20PlayerHPChangeReason15getTypeAsStringB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i4.i, %._crit_edge.i.i8.i, %._crit_edge.i.i12.i, %._crit_edge.i.i16.i, %._crit_edge.i.i20.i, %._crit_edge.i.i24.i
  %.sink.i = phi i64 [ 1, %._crit_edge.i.i24.i ], [ 7, %._crit_edge.i.i20.i ], [ 5, %._crit_edge.i.i16.i ], [ 11, %._crit_edge.i.i12.i ], [ 4, %._crit_edge.i.i8.i ], [ 5, %._crit_edge.i.i4.i ], [ 6, %._crit_edge.i.i.i ]
  %.sink34.i.sroa.phi = phi ptr [ %.sink34.i.sroa.gep, %._crit_edge.i.i24.i ], [ %.sink34.i.sroa.gep32, %._crit_edge.i.i20.i ], [ %.sink34.i.sroa.gep33, %._crit_edge.i.i16.i ], [ %.sink34.i.sroa.gep34, %._crit_edge.i.i12.i ], [ %.sink34.i.sroa.gep35, %._crit_edge.i.i8.i ], [ %.sink34.i.sroa.gep33, %._crit_edge.i.i4.i ], [ %.sink34.i.sroa.gep37, %._crit_edge.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sink.i, ptr %i.g, align 8, !tbaa !19, !alias.scope !145
  store i8 0, ptr %.sink34.i.sroa.phi, align 1, !tbaa !20, !alias.scope !145
  invoke void @lua_pushstring(ptr noundef %1, ptr noundef nonnull %i.f)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNK20PlayerHPChangeReason15getTypeAsStringB5cxx11Ev.exit
  %i.h = load ptr, ptr %3, align 8, !tbaa !32     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.f, align 8, !tbaa !20
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @lua_setfield(ptr noundef %1, i32 noundef -2, ptr noundef nonnull @.str.46)
  br label %bb.h

bb.g:                                             ; preds = %_ZNK20PlayerHPChangeReason15getTypeAsStringB5cxx11Ev.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %3, align 8, !tbaa !32     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.f
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.o = load i64, ptr %i.f, align 8, !tbaa !20
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.l

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !147, !range !81, !noundef !49
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = select i1 %i.s, ptr @.str.47, ptr @.str.48
  call void @lua_pushstring(ptr noundef %1, ptr noundef nonnull %i.t)
  call void @lua_setfield(ptr noundef %1, i32 noundef -2, ptr noundef nonnull @.str.49)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !148  ; 2 uses
  %.not28 = icmp eq ptr %i.v, null
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN13ScriptApiBase20objectrefGetOrCreateEP9lua_StateP18ServerActiveObject(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull %i.v)
  call void @lua_setfield(ptr noundef %1, i32 noundef -2, ptr noundef nonnull @.str.50)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  call void @lua_pushstring(ptr noundef %1, ptr noundef %i.aa)
  call void @lua_setfield(ptr noundef %1, i32 noundef -2, ptr noundef nonnull @.str.51)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload = load i48, ptr %i.ab, align 8, !tbaa !149
  call void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %1, i48 %.sroa.0.0.copyload)
  call void @lua_setfield(ptr noundef %1, i32 noundef -2, ptr noundef nonnull @.str.52)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

declare void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef, i48) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef ptr @_ZN13ScriptApiBase9getServerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(129) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTI8IGameDef, ptr nonnull @_ZTI6Server, i64 16) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef i32 @"_ZZN13ScriptApiBaseC1E13ScriptingTypeEN3$_08__invokeEP9lua_State"(ptr noundef %0) #11 align 2 {
bb.a:
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -10000, i32 noundef 7)
  ret i32 0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef i32 @"_ZZN13ScriptApiBaseC1E13ScriptingTypeEN3$_18__invokeEP9lua_State"(ptr noundef %0) #11 align 2 {
bb.a:
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -10000, i32 noundef 8)
  ret i32 0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef i32 @"_ZZN13ScriptApiBaseC1E13ScriptingTypeEN3$_28__invokeEP9lua_State"(ptr noundef %0) #11 align 2 {
bb.a:
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -10000, i32 noundef 9)
  ret i32 0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef i32 @"_ZZN13ScriptApiBaseC1E13ScriptingTypeEN3$_38__invokeEP9lua_State"(ptr noundef %0) #11 align 2 {
bb.a:
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -10000, i32 noundef 10)
  ret i32 0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef i32 @"_ZZN13ScriptApiBaseC1E13ScriptingTypeEN3$_48__invokeEP9lua_State"(ptr noundef %0) #11 align 2 {
bb.a:
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -10000, i32 noundef 11)
  ret i32 0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef i32 @"_ZZN13ScriptApiBaseC1E13ScriptingTypeEN3$_58__invokeEP9lua_State"(ptr noundef %0) #11 align 2 {
bb.a:
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -10000, i32 noundef 12)
  ret i32 0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal noundef i32 @"_ZZN13ScriptApiBaseC1E13ScriptingTypeEN3$_68__invokeEP9lua_State"(ptr noundef %0) #11 align 2 {
bb.a:
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -10000, i32 noundef 13)
  ret i32 0
}

declare void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8ModErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24, !inline_history !82
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #23, !inline_history !82
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13BaseException4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24, !inline_history !82
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #23, !inline_history !82
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8LuaErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24, !inline_history !82
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #23, !inline_history !82
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !52     ; 9 uses
  %.not.i = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !59
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.c, %bb.c ]
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.54, i64 noundef 6) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

declare extern_weak void @_ZTH13verbosestream() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #19

declare extern_weak void @_ZTH7dstream() #1

declare extern_weak void @_ZTH13warningstream() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { noreturn }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !6, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!6, !6, i64 0}
!21 = !{!"_ZTSSt22__recursive_mutex_base", !6, i64 0}
!22 = !{!"_ZTSSt15recursive_mutex", !21, i64 0}
!23 = !{!"_ZTSNSt6thread2idE", !17, i64 0}
!24 = !{!"p1 _ZTS9lua_State", !13, i64 0}
!25 = !{!"p1 _ZTS8IGameDef", !13, i64 0}
!26 = !{!"p1 _ZTS11Environment", !13, i64 0}
!27 = !{!"p1 _ZTS12EmergeThread", !13, i64 0}
!28 = !{!"_ZTS13ScriptingType", !6, i64 0}
!29 = !{!"_ZTS13ScriptApiBase", !22, i64 8, !18, i64 48, !7, i64 80, !23, i64 88, !24, i64 96, !25, i64 104, !26, i64 112, !27, i64 120, !28, i64 128}
!30 = !{!29, !28, i64 128}
!31 = !{!29, !24, i64 96}
!32 = !{!18, !14, i64 0}
!33 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!34 = !{!"_ZTSSt6locale", !33, i64 0}
!35 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !34, i64 56}
!36 = !{!29, !25, i64 104}
!37 = !{!"_ZTS13ModNameStorer", !24, i64 0}
!38 = !{!37, !24, i64 0}
!39 = !{!"p1 _ZTS9LogTarget", !13, i64 0}
!40 = !{!"_ZTSSt14_Function_base", !6, i64 0, !13, i64 16}
!41 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !40, i64 0, !13, i64 24}
!42 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !35, i64 0, !41, i64 64, !7, i64 96, !6, i64 100}
!43 = !{!"_ZTS17DummyStreamBuffer", !35, i64 0}
!44 = !{!"_ZTSSo"}
!45 = !{!"p1 _ZTSSo", !13, i64 0}
!46 = !{!"_ZTS11StreamProxy", !45, i64 0}
!47 = !{!"_ZTS9LogStream", !39, i64 0, !42, i64 8, !43, i64 368, !44, i64 432, !44, i64 704, !46, i64 976, !46, i64 984}
!48 = !{!47, !39, i64 0}
!49 = !{}
!50 = !{i64 8}
!51 = !{!14, !14, i64 0}
!52 = !{!46, !45, i64 0}
!53 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!54 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!55 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!56 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !17, i64 8}
!57 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!58 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !53, i64 24, !54, i64 28, !54, i64 32, !55, i64 40, !56, i64 48, !6, i64 64, !7, i64 192, !57, i64 200, !34, i64 208}
!59 = !{!58, !54, i64 32}
!60 = !{!"bool", !6, i64 0}
!61 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 0}
!62 = !{!"p1 _ZTSSt5ctypeIcE", !13, i64 0}
!63 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!64 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!65 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !58, i64 0, !45, i64 216, !6, i64 224, !60, i64 225, !61, i64 232, !62, i64 240, !63, i64 248, !64, i64 256}
!66 = !{!65, !62, i64 240}
!67 = !{!"_ZTSNSt6locale5facetE", !7, i64 8}
!68 = !{!"p1 _ZTS15__locale_struct", !13, i64 0}
!69 = !{!"p1 int", !13, i64 0}
!70 = !{!"p1 short", !13, i64 0}
!71 = !{!"_ZTSSt5ctypeIcE", !67, i64 0, !68, i64 16, !60, i64 24, !69, i64 32, !69, i64 40, !70, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!72 = !{!71, !6, i64 56}
!73 = !{!17, !17, i64 0}
!74 = !{!7, !7, i64 0}
!75 = !{!"_ZTS13StackUnroller", !24, i64 0, !7, i64 8}
!76 = !{!75, !24, i64 0}
!77 = !{!75, !7, i64 8}
!78 = !{!"_ZTS12ActiveObject", !12, i64 8}
!79 = !{!78, !12, i64 8}
!80 = !{!"_ZTSN4core8vector3dIsEE", !12, i64 0, !12, i64 2, !12, i64 4}
!81 = !{i8 0, i8 2}
!82 = !{ptr @_ZN13BaseExceptionD2Ev}
!83 = !{!"p1 _ZTS23__pthread_internal_list", !13, i64 0}
!84 = !{!"_ZTS23__pthread_internal_list", !83, i64 0, !83, i64 8}
!85 = !{!"_ZTS17__pthread_mutex_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !12, i64 20, !12, i64 22, !84, i64 24}
!86 = !{!85, !7, i64 16}
!87 = !{!29, !7, i64 80}
!88 = distinct !{!88, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!89 = distinct !{!89, !88, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!90 = distinct !{!90, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!91 = distinct !{!91, !90, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!92 = !{!89}
!93 = !{!91}
!94 = !{!91, !89}
!95 = !{!35, !14, i64 40}
!96 = !{!35, !14, i64 32}
!97 = !{ptr @_ZN13ScriptApiBaseD2Ev}
!98 = distinct !{null}
!99 = distinct !{!99, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!100 = distinct !{!100, !99, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!101 = !{!100}
!102 = distinct !{null}
!103 = distinct !{null, null}
!104 = distinct !{null}
!105 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.mustprogress"}
!108 = distinct !{null}
!109 = !{!"_ZTSSt22_Optional_payload_baseISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE", !6, i64 0, !60, i64 56}
!110 = !{!"_ZTSSt17_Optional_payloadISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb1ELb0ELb0EE", !109, i64 0}
!111 = !{!"_ZTSSt17_Optional_payloadISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb0ELb0ELb0EE", !110, i64 0}
!112 = !{!"_ZTSSt14_Optional_baseISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb0ELb0EE", !111, i64 0}
!113 = !{!"_ZTSSt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE", !112, i64 0}
!114 = !{!"_ZTSSt22_Optional_payload_baseISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEEE", !6, i64 0, !60, i64 64}
!115 = !{!"_ZTSSt17_Optional_payloadISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb1ELb0ELb0EE", !114, i64 0}
!116 = !{!"_ZTSSt17_Optional_payloadISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb0ELb0ELb0EE", !115, i64 0}
!117 = !{!"_ZTSSt14_Optional_baseISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb0ELb0EE", !116, i64 0}
!118 = !{!"_ZTSSt8optionalIS_ISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEEE", !117, i64 0}
!119 = !{!"p1 _ZTS17ServerEnvironment", !13, i64 0}
!120 = !{!"any p2 pointer", !13, i64 0}
!121 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !120, i64 0}
!122 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!123 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !122, i64 0}
!124 = !{!"float", !6, i64 0}
!125 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !124, i64 0, !17, i64 8}
!126 = !{!"_ZTSSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !121, i64 0, !17, i64 8, !123, i64 16, !17, i64 24, !125, i64 32, !122, i64 48}
!127 = !{!"_ZTSSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE", !126, i64 0}
!128 = !{!"p2 _ZTS19ActiveObjectMessage", !120, i64 0}
!129 = !{!"p1 _ZTS19ActiveObjectMessage", !13, i64 0}
!130 = !{!"_ZTSSt15_Deque_iteratorI19ActiveObjectMessageRS0_PS0_E", !129, i64 0, !129, i64 8, !129, i64 16, !128, i64 24}
!131 = !{!"_ZTSNSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE16_Deque_impl_dataE", !128, i64 0, !17, i64 8, !130, i64 16, !130, i64 48}
!132 = !{!"_ZTSNSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE11_Deque_implE", !131, i64 0}
!133 = !{!"_ZTSSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE", !132, i64 0}
!134 = !{!"_ZTSSt5dequeI19ActiveObjectMessageSaIS0_EE", !133, i64 0}
!135 = !{!"_ZTSSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE", !134, i64 0}
!136 = !{!"_ZTSN4core8vector3dIfEE", !124, i64 0, !124, i64 4, !124, i64 8}
!137 = !{!"_ZTS18ServerActiveObject", !78, i64 0, !12, i64 10, !60, i64 12, !80, i64 14, !113, i64 24, !118, i64 88, !119, i64 160, !127, i64 168, !60, i64 224, !60, i64 225, !135, i64 232, !136, i64 312}
!138 = !{!137, !60, i64 225}
!139 = distinct !{!139, !"_ZNK20PlayerHPChangeReason15getTypeAsStringB5cxx11Ev"}
!140 = distinct !{!140, !139, !"_ZNK20PlayerHPChangeReason15getTypeAsStringB5cxx11Ev: argument 0"}
!141 = !{!"_ZTSN20PlayerHPChangeReason4TypeE", !6, i64 0}
!142 = !{!"p1 _ZTS18ServerActiveObject", !13, i64 0}
!143 = !{!"_ZTS20PlayerHPChangeReason", !141, i64 0, !60, i64 1, !7, i64 4, !142, i64 8, !18, i64 16, !80, i64 48}
!144 = !{!143, !7, i64 4}
!145 = !{!140}
!146 = !{!143, !141, i64 0}
!147 = !{!143, !60, i64 1}
!148 = !{!143, !142, i64 8}
!149 = !{!12, !12, i64 0}
end_hunk_1
