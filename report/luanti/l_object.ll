Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/l_object?download=true
inline.NumInlined: 1936
inline.NumDeleted: 791
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9ObjectRef11mt_tostringEP9lua_State:bb.a

bb.g:                                             ; preds = %_ZN9ObjectRef9getplayerEPS_.exit.thread, %_ZN9ObjectRef9getobjectEPS_.exit.i, %bb.d
  %i.at = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.h

_ZN9ObjectRef9getobjectEPS_.exit.thread28:        ; preds = %bb.b, %bb.a
  %i.au = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN9ObjectRef9getobjectEPS_.exit.thread28
  ret i32 1
}

declare ptr @lua_pushfstring(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_ZN12LuaEntitySAO7getNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(1145)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ObjectRef9gc_objectEP9lua_State(ptr noundef %0) #2 align 2 {
bb.a:
  %i.a = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef 1)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare ptr @lua_touserdata(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local noundef i32 @_ZN9ObjectRef8l_removeEP9lua_State(ptr noundef %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call noundef ptr @_ZN10ModApiBase6getEnvEP9lua_State(ptr noundef %0)
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 55, ptr nonnull @.str.4, i32 noundef 1, i1 noundef zeroext false)
  br label %_ZN9ObjectRef9getobjectEPS_.exit.thread14

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 7 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN9ObjectRef9getobjectEPS_.exit.thread14, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 225
  %i.g = load i8, ptr %i.f, align 1, !tbaa !56, !range !57, !noundef !58
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.j = load i8, ptr %i.i, align 8, !range !57
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  br i1 %i.l, label %_ZN9ObjectRef9getobjectEPS_.exit.thread14, label %_ZN9ObjectRef9getobjectEPS_.exit

_ZN9ObjectRef9getobjectEPS_.exit:                 ; preds = %bb.d
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(10) %i.e)
  %i.p = icmp eq i32 %i.o, 100
  br i1 %i.p, label %_ZN9ObjectRef9getobjectEPS_.exit.thread14, label %bb.e

bb.e:                                             ; preds = %_ZN9ObjectRef9getobjectEPS_.exit
  %.not.i9 = icmp eq ptr @_ZTH13verbosestream, null
  br i1 %.not.i9, label %_ZTW13verbosestream.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZTH13verbosestream()
  br label %_ZTW13verbosestream.exit

_ZTW13verbosestream.exit:                         ; preds = %bb.e, %bb.f
  %i.q = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @verbosestream) ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !136, !nonnull !58, !align !137 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.r), !inline_history !328
  %.v.i = select i1 %i.u, i64 976, i64 984
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.v.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.5, ptr %i.a, align 8, !tbaa !138
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.y = load i16, ptr %i.x, align 8, !tbaa !122
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !139  ; 5 uses
  %.not.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i10, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.g

bb.g:                                             ; preds = %_ZTW13verbosestream.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !60
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !146
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN11StreamProxylsItEERS_OT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !139
  br label %_ZN11StreamProxylsItEERS_OT_.exit

_ZN11StreamProxylsItEERS_OT_.exit:                ; preds = %bb.g, %bb.h
  %i.ah = phi ptr [ %.pre.i, %bb.h ], [ %i.z, %bb.g ]
  %i.ai = zext i16 %i.y to i64
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef %i.ai) ; 0 uses
  %.pr = load ptr, ptr %i.v, align 8, !tbaa !139  ; 5 uses
  %.not.i11 = icmp eq ptr %.pr, null
  br i1 %.not.i11, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.i

bb.i:                                             ; preds = %_ZN11StreamProxylsItEERS_OT_.exit
  %i.ak = load ptr, ptr %.pr, align 8, !tbaa !60
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.pr, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !146
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
  %.pre.i12 = load ptr, ptr %i.v, align 8, !tbaa !139 ; 2 uses
  %.pre = load ptr, ptr %.pre.i12, align 8, !tbaa !60
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre16 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = phi i64 [ %.pre16, %bb.j ], [ %i.am, %bb.i ]
  %i.as = phi ptr [ %.pre.i12, %bb.j ], [ %.pr, %bb.i ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 240
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !152 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %bb.l, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !158
  %.not.i1.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i1.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 67
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !123
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.av)
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !60
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef signext i8 %i.bc(ptr noundef nonnull align 8 dereferenceable(570) %i.av, i8 noundef signext 10), !inline_history !329
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i = phi i8 [ %i.az, %bb.m ], [ %i.bd, %bb.n ]
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i8 noundef signext %.0.i.i.i)
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW13verbosestream.exit, %_ZN11StreamProxylsItEERS_OT_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZN18ServerActiveObject14markForRemovalEv(ptr noundef nonnull align 8 dereferenceable(324) %i.e)
  br label %_ZN9ObjectRef9getobjectEPS_.exit.thread14

_ZN9ObjectRef9getobjectEPS_.exit.thread14:        ; preds = %bb.d, %bb.c, %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZN9ObjectRef9getobjectEPS_.exit, %bb.b
  ret i32 0
}

declare noundef ptr @_ZN10ModApiBase6getEnvEP9lua_State(ptr noundef) local_unnamed_addr #3

declare void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef, i64, ptr, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN18ServerActiveObject14markForRemovalEv(ptr noundef nonnull align 8 dereferenceable(324)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ObjectRef10l_is_validEP9lua_State(ptr noundef %0) #2 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN9ObjectRef9getobjectEPS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %1 = icmp ne ptr %i.c, null
  %i.k = zext i1 %1 to i32
  br label %_ZN9ObjectRef9getobjectEPS_.exit

_ZN9ObjectRef9getobjectEPS_.exit:                 ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %.0.i)
  ret i32 1
}

declare void @lua_pushboolean(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9ObjectRef10l_get_guidEP9lua_State(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 5 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN9ObjectRef9getobjectEPS_.exit.thread12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN9ObjectRef9getobjectEPS_.exit.thread12, label %_ZN9ObjectRef9getobjectEPS_.exit

_ZN9ObjectRef9getobjectEPS_.exit:                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(324) %i.c)
  %i.n = load ptr, ptr %1, align 8, !tbaa !120
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !159
  invoke void @lua_pushlstring(ptr noundef %0, ptr noundef %i.n, i64 noundef %i.p)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN9ObjectRef9getobjectEPS_.exit
  %i.q = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.r, align 8, !tbaa !123
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZN9ObjectRef9getobjectEPS_.exit.thread12

bb.d:                                             ; preds = %_ZN9ObjectRef9getobjectEPS_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8, !tbaa !123
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.v

_ZN9ObjectRef9getobjectEPS_.exit.thread12:        ; preds = %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9ObjectRef9l_get_posEP9lua_State(ptr noundef %0) #6 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 5 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN9ObjectRef9getobjectEPS_.exit.thread17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN9ObjectRef9getobjectEPS_.exit.thread17, label %_ZN9ObjectRef9getobjectEPS_.exit

_ZN9ObjectRef9getobjectEPS_.exit:                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.k, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !160
  %i.l = fdiv nsz <2 x float> %.sroa.01.0.copyload.i, splat (float 1.000000e+01)
  %i.m = fdiv nsz float %.sroa.22.0.copyload.i, 1.000000e+01
  tail call void @_Z8push_v3fP9lua_StateN4core8vector3dIfEE(ptr noundef %0, <2 x float> %i.l, float %i.m)
  br label %_ZN9ObjectRef9getobjectEPS_.exit.thread17

_ZN9ObjectRef9getobjectEPS_.exit.thread17:        ; preds = %bb.b, %bb.a, %_ZN9ObjectRef9getobjectEPS_.exit
  %.0 = phi i32 [ 1, %_ZN9ObjectRef9getobjectEPS_.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

declare void @_Z8push_v3fP9lua_StateN4core8vector3dIfEE(ptr noundef, <2 x float>, float) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ObjectRef9l_set_posEP9lua_State(ptr noundef %0) #6 align 2 {
bb.a:
  %1 = alloca %"class.core::vector3d.37", align 8 ; 5 uses
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 5 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN9ObjectRef9getobjectEPS_.exit.thread6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN9ObjectRef9getobjectEPS_.exit.thread6, label %_ZN9ObjectRef9getobjectEPS_.exit

_ZN9ObjectRef9getobjectEPS_.exit:                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.k = tail call { <2 x float>, float } @_Z13checkFloatPosP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.k, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.k, 1
  store <2 x float> %.fca.0.extract, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(324) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZN9ObjectRef9getobjectEPS_.exit.thread6

_ZN9ObjectRef9getobjectEPS_.exit.thread6:         ; preds = %bb.b, %bb.a, %_ZN9ObjectRef9getobjectEPS_.exit
  ret i32 0
}

declare { <2 x float>, float } @_Z13checkFloatPosP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ObjectRef9l_add_posEP9lua_State(ptr noundef %0) #6 align 2 {
bb.a:
  %1 = alloca %"class.core::vector3d.37", align 8 ; 5 uses
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 5 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN9ObjectRef9getobjectEPS_.exit.thread6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN9ObjectRef9getobjectEPS_.exit.thread6, label %_ZN9ObjectRef9getobjectEPS_.exit

_ZN9ObjectRef9getobjectEPS_.exit:                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.k = tail call { <2 x float>, float } @_Z13checkFloatPosP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.k, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.k, 1
  store <2 x float> %.fca.0.extract, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(324) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZN9ObjectRef9getobjectEPS_.exit.thread6

_ZN9ObjectRef9getobjectEPS_.exit.thread6:         ; preds = %bb.b, %bb.a, %_ZN9ObjectRef9getobjectEPS_.exit
  ret i32 0
end_hunk_0
