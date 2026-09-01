Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/game_formspec?download=true
inline.NumInlined: 777
inline.NumDeleted: 288
begin_hunk_0_@_ZN12GameFormSpec4initEP6ClientP15RenderingEngineP12InputHandler:bb.a
  store ptr %3, ptr %i.b, align 8, !tbaa !24
  %i.c = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #24, !noalias !25 ; 4 uses
  invoke void @_ZN18PauseMenuScriptingC1EP6Client(ptr noundef nonnull align 8 dereferenceable(25) %i.c, ptr noundef %1)
          to label %_ZSt11make_uniqueI18PauseMenuScriptingJRP6ClientEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !25

common.resume:                                    ; preds = %_ZN16MainGameCallbackD2Ev.exit6, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.v, %_ZN16MainGameCallbackD2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #25, !noalias !25
  br label %common.resume

_ZSt11make_uniqueI18PauseMenuScriptingJRP6ClientEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 3 uses
  store ptr %i.c, ptr %i.e, align 8, !tbaa !28
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI18PauseMenuScriptingSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI18PauseMenuScriptingEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI18PauseMenuScriptingEclEPS0_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueI18PauseMenuScriptingJRP6ClientEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(25) %i.f) #26, !inline_history !31
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !28
  br label %_ZNSt10unique_ptrI18PauseMenuScriptingSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI18PauseMenuScriptingSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteI18PauseMenuScriptingEclEPS0_.exit.i.i.i.i, %_ZSt11make_uniqueI18PauseMenuScriptingJRP6ClientEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.j = phi ptr [ %.pre, %_ZNKSt14default_deleteI18PauseMenuScriptingEclEPS0_.exit.i.i.i.i ], [ %i.c, %_ZSt11make_uniqueI18PauseMenuScriptingJRP6ClientEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ]
  tail call void @_ZN18PauseMenuScripting11loadBuiltinEv(ptr noundef nonnull align 8 dereferenceable(25) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV16MainGameCallback, i64 16), ptr %4, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.l, i8 0, i64 6, i1 false)
  store ptr %i.n, ptr %i.m, align 8, !tbaa !32
  store i8 0, ptr %i.n, align 8, !tbaa !35
  %i.o = load ptr, ptr @g_gamecallback, align 8, !tbaa !36 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.p, i8 0, i64 6, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_ZN16MainGameCallbackaSERKS_.exit unwind label %bb.c

_ZN16MainGameCallbackaSERKS_.exit:                ; preds = %_ZNSt10unique_ptrI18PauseMenuScriptingSt14default_deleteIS0_EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV16MainGameCallback, i64 16), ptr %4, align 8, !tbaa !29
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.n
  br i1 %i.s, label %_ZN16MainGameCallbackD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN16MainGameCallbackaSERKS_.exit
  %i.t = load i64, ptr %i.n, align 8, !tbaa !35
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #25, !inline_history !41
  br label %_ZN16MainGameCallbackD2Ev.exit

_ZN16MainGameCallbackD2Ev.exit:                   ; preds = %_ZN16MainGameCallbackaSERKS_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.c:                                             ; preds = %_ZNSt10unique_ptrI18PauseMenuScriptingSt14default_deleteIS0_EED2Ev.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV16MainGameCallback, i64 16), ptr %4, align 8, !tbaa !29
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.n
  br i1 %i.x, label %_ZN16MainGameCallbackD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %bb.c
  %i.y = load i64, ptr %i.n, align 8, !tbaa !35
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #25, !inline_history !41
  br label %_ZN16MainGameCallbackD2Ev.exit6

_ZN16MainGameCallbackD2Ev.exit6:                  ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN18PauseMenuScripting11loadBuiltinEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16MainGameCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV16MainGameCallback, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !35
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12GameFormSpec14deleteFormspecEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !43
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %_ZNK17IReferenceCounted4dropEv.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #26, !inline_history !45
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.b, %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12GameFormSpec5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN12GameFormSpec14deleteFormspecEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12GUIModalMenu8quitMenuEv(ptr noundef nonnull align 8 dereferenceable(408) %i.b)
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN12GameFormSpec14deleteFormspecEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %.pr, align 8, !tbaa !29
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %.pr, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !43
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #26, !inline_history !46
  br label %_ZNK17IReferenceCounted4dropEv.exit.i

_ZNK17IReferenceCounted4dropEv.exit.i:            ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !42
  br label %_ZN12GameFormSpec14deleteFormspecEv.exit

_ZN12GameFormSpec14deleteFormspecEv.exit:         ; preds = %bb.a, %bb.b, %_ZNK17IReferenceCounted4dropEv.exit.i
  ret void
}

declare void @_ZN12GUIModalMenu8quitMenuEv(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN12GameFormSpec19handleEmptyFormspecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not11 = icmp ne i64 %i.b, 0
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @g_menumgr, i64 8), align 8
  %3 = icmp eq ptr %i.c, getelementptr inbounds nuw (i8, ptr @g_menumgr, i64 8)
  %or.cond.not = select i1 %.not11, i1 true, i1 %3
  br i1 %or.cond.not, label %_ZNK15MainMenuManager13tryGetTopMenuEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @g_menumgr, i64 16), align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK15MainMenuManager13tryGetTopMenuEv.exit.thread, label %_ZNK15MainMenuManager13tryGetTopMenuEv.exit

_ZNK15MainMenuManager13tryGetTopMenuEv.exit:      ; preds = %bb.b
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN3gui11IGUIElementE, ptr nonnull @_ZTI12GUIModalMenu, i64 0) #26 ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZNK15MainMenuManager13tryGetTopMenuEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK15MainMenuManager13tryGetTopMenuEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 248
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(308) %i.h) ; 2 uses
  %i.p = load i64, ptr %i.i, align 8, !tbaa !47   ; 3 uses
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #26
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %_ZNK15MainMenuManager13tryGetTopMenuEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.t = load ptr, ptr %2, align 8, !tbaa !38
  %bcmp.i = tail call i32 @bcmp(ptr %i.t, ptr nonnull %i.o, i64 %i.p)
  %i.u = icmp eq i32 %bcmp.i, 0
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNK15MainMenuManager13tryGetTopMenuEv.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.c
  tail call void @_ZN12GUIModalMenu8quitMenuEv(ptr noundef nonnull align 8 dereferenceable(408) %i.h)
  br label %_ZNK15MainMenuManager13tryGetTopMenuEv.exit.thread

_ZNK15MainMenuManager13tryGetTopMenuEv.exit.thread: ; preds = %bb.d, %bb.b, %bb.a, %_ZNK15MainMenuManager13tryGetTopMenuEv.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %4 = icmp eq i64 %i.b, 0
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12GameFormSpec12showFormSpecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.core::string.12", align 8   ; 12 uses
  %i.c = tail call noundef zeroext i1 @_ZN12GameFormSpec19handleEmptyFormspecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18FormspecFormSource, i64 16), ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !32
  %i.g = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !47   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.i, ptr %i.b, align 8, !tbaa !53
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.k, ptr %i.e, align 8, !tbaa !38
  %i.l = load i64, ptr %i.b, align 8, !tbaa !53
  store i64 %i.l, ptr %i.f, align 8, !tbaa !35
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !35
  store i8 %i.n, ptr %i.m, align 1, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !47
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.s = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24 ; 8 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 4 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %i.w, align 8, !tbaa !47
  store i8 0, ptr %i.v, align 8, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV23TextDestPlayerInventory, i64 16), ptr %i.s, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.t, ptr %i.x, align 8, !tbaa !54
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN23TextDestPlayerInventoryC2EP6ClientRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8TextDest, i64 16), ptr %i.s, align 8, !tbaa !29
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !38   ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.v
  br i1 %i.aa, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !35
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #25, !inline_history !57
  br label %.body

_ZN23TextDestPlayerInventoryC2EP6ClientRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !58 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef ptr %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai), !inline_history !71
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %0, align 8, !tbaa !9
  %i.ar = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6Client18getFormspecPrependB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(1674) %i.aq)
  %i.as = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(1674) %i.as)
  call void @_ZN15GUIFormSpecMenu6createERPS_P6ClientPN3gui15IGUIEnvironmentEP18JoystickControllerP11IFormSourceP8TextDestRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ISoundManager(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.ae, ptr noundef %i.am, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.d, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef %i.aw)
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ay, ptr %3, align 8, !tbaa !32
  %i.az = load ptr, ptr %2, align 8, !tbaa !38    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !47 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !53
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %.noexc.i.i14, label %._crit_edge.i.i.i13

.noexc.i.i14:                                     ; preds = %_ZN23TextDestPlayerInventoryC2EP6ClientRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bd, ptr %3, align 8, !tbaa !38
  %i.be = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !35
  br label %._crit_edge.i.i.i13

._crit_edge.i.i.i13:                              ; preds = %.noexc.i.i14, %_ZN23TextDestPlayerInventoryC2EP6ClientRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bf = phi ptr [ %i.bd, %.noexc.i.i14 ], [ %i.ay, %_ZN23TextDestPlayerInventoryC2EP6ClientRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  switch i64 %i.bb, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN4core6stringIcEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i13
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !35
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !35
  br label %_ZN4core6stringIcEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.az, i64 %i.bb, i1 false)
  br label %_ZN4core6stringIcEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4core6stringIcEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i13, %bb.g, %bb.h
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !47
  %i.bj = load ptr, ptr %3, align 8, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bl = load ptr, ptr %i.ax, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 264
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(308) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZN4core6stringIcEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bo = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ay
  br i1 %i.bp, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.bq = load i64, ptr %i.ay, align 8, !tbaa !35
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #25
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN4core6stringIcED2Ev.exit
  ret void

bb.k:                                             ; preds = %.noexc.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 40) #25
  br label %bb.m

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 48) #25
  br label %bb.m

bb.l:                                             ; preds = %_ZN4core6stringIcEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ay
  br i1 %i.bv, label %_ZN4core6stringIcED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %bb.l
  %i.bw = load i64, ptr %i.ay, align 8, !tbaa !35
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #25
  br label %_ZN4core6stringIcED2Ev.exit17

_ZN4core6stringIcED2Ev.exit17:                    ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
end_hunk_0
