Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/s_inventory?download=true
inline.NumInlined: 178
inline.NumDeleted: 75
begin_hunk_0_@_ZN17ScriptApiDetached28getDetachedInventoryCallbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc:bb.a
bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 67
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !39
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.av)
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef signext i8 %i.bc(ptr noundef nonnull align 8 dereferenceable(570) %i.av, i8 noundef signext 10), !inline_history !80
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i = phi i8 [ %i.az, %bb.k ], [ %i.bd, %bb.l ]
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i8 noundef signext %.0.i.i.i)
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @lua_settop(ptr noundef %i.l, i32 noundef -2)
  br label %bb.aa

bb.m:                                             ; preds = %bb.a
  %i.bg = load ptr, ptr %0, align 8, !tbaa !10
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  tail call void @_ZN13ScriptApiBase21setOriginFromTableRawEiPKc(ptr noundef nonnull align 8 dereferenceable(129) %i.bj, i32 noundef -1, ptr noundef nonnull @__FUNCTION__._ZN17ScriptApiDetached28getDetachedInventoryCallbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc)
  tail call void @lua_getfield(ptr noundef %i.l, i32 noundef -1, ptr noundef %2)
  tail call void @lua_remove(ptr noundef %i.l, i32 noundef -2)
  %i.bk = tail call i32 @lua_type(ptr noundef %i.l, i32 noundef -1)
  %i.bl = icmp eq i32 %i.bk, 6
  br i1 %i.bl, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = tail call i32 @lua_type(ptr noundef %i.l, i32 noundef -1)
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @lua_settop(ptr noundef %i.l, i32 noundef -2)
  br label %bb.aa

bb.p:                                             ; preds = %bb.n
  %.not.i24 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i24, label %_ZTW11errorstream.exit25, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit25

_ZTW11errorstream.exit25:                         ; preds = %bb.p, %bb.q
  %i.bo = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !89, !nonnull !90, !align !91 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !10
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bp), !inline_history !79
  %.v.i26 = select i1 %i.bs, i64 976, i64 984
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.v.i26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.11, ptr %i.d, align 8, !tbaa !44
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !45 ; 5 uses
  %.not.i27 = icmp eq ptr %i.bv, null
  br i1 %.not.i27, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit29, label %bb.r

bb.r:                                             ; preds = %_ZTW11errorstream.exit25
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !10
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !52
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
  %.pre.i28 = load ptr, ptr %i.bt, align 8, !tbaa !45
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cd = phi ptr [ %.pre.i28, %bb.s ], [ %i.bv, %bb.r ]
  %i.ce = load ptr, ptr %1, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !53
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef %i.ce, i64 noundef %i.cg) ; 0 uses
  br label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit29

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit29: ; preds = %_ZTW11errorstream.exit25, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.13, ptr %i.c, align 8, !tbaa !44
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8, !tbaa !44
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.14, ptr %i.a, align 8, !tbaa !44
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !45 ; 5 uses
  %.not.i30 = icmp eq ptr %i.cl, null
  br i1 %.not.i30, label %_ZN11StreamProxylsEPFRSoS0_E.exit32, label %bb.u

bb.u:                                             ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit29
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !10
  %i.cn = getelementptr i8, ptr %i.cm, i64 -24
  %i.co = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !52
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
  %.pre.i31 = load ptr, ptr %i.ck, align 8, !tbaa !45 ; 2 uses
  %.pre39 = load ptr, ptr %.pre.i31, align 8, !tbaa !10
  %.phi.trans.insert40 = getelementptr i8, ptr %.pre39, i64 -24
  %.pre41 = load i64, ptr %.phi.trans.insert40, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ct = phi i64 [ %.pre41, %bb.v ], [ %i.co, %bb.u ]
  %i.cu = phi ptr [ %.pre.i31, %bb.v ], [ %i.cl, %bb.u ] ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 240
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !97 ; 6 uses
  %.not.i.i.i33 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i33, label %bb.x, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i34

bb.x:                                             ; preds = %bb.w
  call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i34: ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !103
  %.not.i1.i.i35 = icmp eq i8 %i.cz, 0
  br i1 %.not.i1.i.i35, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i34
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 67
  %i.db = load i8, ptr %i.da, align 1, !tbaa !39
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit37

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i34
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cx)
  %i.dc = load ptr, ptr %i.cx, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef signext i8 %i.de(ptr noundef nonnull align 8 dereferenceable(570) %i.cx, i8 noundef signext 10), !inline_history !80
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit37

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit37: ; preds = %bb.y, %bb.z
  %.0.i.i.i36 = phi i8 [ %i.db, %bb.y ], [ %i.df, %bb.z ]
  %i.dg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, i8 noundef signext %.0.i.i.i36)
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dg) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit32

_ZN11StreamProxylsEPFRSoS0_E.exit32:              ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit29, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit37
  call void @lua_settop(ptr noundef %i.l, i32 noundef -2)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.m, %_ZN11StreamProxylsEPFRSoS0_E.exit32, %bb.o, %_ZN11StreamProxylsEPFRSoS0_E.exit
  %.0 = phi i1 [ false, %_ZN11StreamProxylsEPFRSoS0_E.exit ], [ false, %_ZN11StreamProxylsEPFRSoS0_E.exit32 ], [ false, %bb.o ], [ true, %bb.m ]
  ret i1 %.0
}

declare void @_ZN6InvRef6createEP9lua_StateRK17InventoryLocation(ptr noundef, ptr noundef nonnull align 8 dereferenceable(46)) local_unnamed_addr #2

declare void @lua_pushstring(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN13ScriptApiBase20objectrefGetOrCreateEP9lua_StateP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lua_pcall(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN13ScriptApiBase11scriptErrorEiPKc(ptr noundef nonnull align 8 dereferenceable(129), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @lua_isnumber(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !55, !alias.scope !109
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !53, !alias.scope !109
  store i8 0, ptr %i.e, align 8, !tbaa !39, !alias.scope !109
  %i.g = add i64 %i.d, %i.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !53, !alias.scope !109
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !53, !alias.scope !109
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #17
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !31, !alias.scope !109 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !39, !alias.scope !109
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #19
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.f, ptr %i.a, align 8, !tbaa !13
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.d ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !31
  %i.i = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.i, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !39
  store i8 %i.k, ptr %i.j, align 1, !tbaa !39
  br label %_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #20
  unreachable

_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !53
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV8LuaError, i64 16), ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !39
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare i64 @luaL_checkinteger(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  invoke void @lua_settop(ptr noundef %i.a, i32 noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN17ScriptApiDetached27detached_inventory_AllowPutERK10MoveActionRK9ItemStackP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(170) %1, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.StackUnroller, align 8       ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #16 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #17
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !10
  %i.h = getelementptr i8, ptr %i.g, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 6 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !11   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.o = tail call i64 @pthread_self() #18
  store i64 %i.o, ptr %i.n, align 8, !tbaa !13
  br label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit

_ZN11LockCheckerC2EPiPNSt6thread2idE.exit:        ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.c
  %i.p = add nsw i32 %i.l, 1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !11
  %i.q = load i64, ptr %i.h, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  invoke void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129) %i.r)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !10
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.x, ptr %4, align 8, !tbaa !29
  %i.y = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.e unwind label %bb.k       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !30
  invoke void @lua_rawgeti(ptr noundef %i.x, i32 noundef -10000, i32 noundef 4)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ad = invoke noundef zeroext i1 @_ZN17ScriptApiDetached28getDetachedInventoryCallbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull @.str.2)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  br i1 %i.ad, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !77
  %i.ag = zext i16 %i.af to i32
  br label %bb.ag
end_hunk_0
begin_hunk_1_@_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_:bb.a
  br i1 %i.s, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i5 = load ptr, ptr %0, align 8, !tbaa !45 ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !44    ; 2 uses
  %.not.i.i6 = icmp eq ptr %.pre, null
  br i1 %.not.i.i6, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %.pre.i5, align 8, !tbaa !10
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.pre.i5, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !52
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

.thread:                                          ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %.pre.i5, %bb.h ], [ %i.c, %bb.g ]
  %i.ab = phi ptr [ %.pre, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #16
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.ab, i64 noundef %i.ac) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

_ZN11StreamProxylsIPKcEERS_OT_.exit:              ; preds = %.thread, %bb.i, %bb.f, %bb.e, %bb.b
  ret ptr %0
}

declare void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare extern_weak void @_ZTH11errorstream() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTSSt22__recursive_mutex_base", !5, i64 0}
!15 = !{!"_ZTSSt15recursive_mutex", !14, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !12, i64 8, !5, i64 16}
!20 = !{!"_ZTSNSt6thread2idE", !12, i64 0}
!21 = !{!"p1 _ZTS9lua_State", !16, i64 0}
!22 = !{!"p1 _ZTS8IGameDef", !16, i64 0}
!23 = !{!"p1 _ZTS11Environment", !16, i64 0}
!24 = !{!"p1 _ZTS12EmergeThread", !16, i64 0}
!25 = !{!"_ZTS13ScriptingType", !5, i64 0}
!26 = !{!"_ZTS13ScriptApiBase", !15, i64 8, !19, i64 48, !6, i64 80, !20, i64 88, !21, i64 96, !22, i64 104, !23, i64 112, !24, i64 120, !25, i64 128}
!27 = !{!26, !21, i64 96}
!28 = !{!"_ZTS13StackUnroller", !21, i64 0, !6, i64 8}
!29 = !{!28, !21, i64 0}
!30 = !{!28, !6, i64 8}
!31 = !{!19, !17, i64 0}
!32 = !{!"_ZTSN17InventoryLocation4TypeE", !5, i64 0}
!33 = !{!"short", !5, i64 0}
!34 = !{!"_ZTSN4core8vector3dIsEE", !33, i64 0, !33, i64 2, !33, i64 4}
!35 = !{!"_ZTS17InventoryLocation", !32, i64 0, !19, i64 8, !34, i64 40}
!36 = !{!"_ZTS10MoveAction", !35, i64 0, !19, i64 48, !33, i64 80, !35, i64 88, !19, i64 136, !33, i64 168}
!37 = !{!36, !33, i64 80}
!38 = !{!36, !33, i64 168}
!39 = !{!5, !5, i64 0}
!40 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!41 = !{!"_ZTSSt6locale", !40, i64 0}
!42 = !{!"p1 _ZTSSo", !16, i64 0}
!43 = !{!"_ZTS11StreamProxy", !42, i64 0}
!44 = !{!17, !17, i64 0}
!45 = !{!43, !42, i64 0}
!46 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!47 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!48 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!49 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !12, i64 8}
!50 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!51 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !46, i64 24, !47, i64 28, !47, i64 32, !48, i64 40, !49, i64 48, !5, i64 64, !6, i64 192, !50, i64 200, !41, i64 208}
!52 = !{!51, !47, i64 32}
!53 = !{!19, !12, i64 8}
!54 = !{!"bool", !5, i64 0}
!55 = !{!18, !17, i64 0}
!56 = !{!"any p2 pointer", !16, i64 0}
!57 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !56, i64 0}
!58 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!59 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !58, i64 0}
!60 = !{!"float", !5, i64 0}
!61 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !60, i64 0, !12, i64 8}
!62 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !57, i64 0, !12, i64 8, !59, i64 16, !12, i64 24, !61, i64 32, !58, i64 48}
!63 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !62, i64 0}
!64 = !{!"_ZTS14SimpleMetadata", !54, i64 8, !63, i64 16}
!65 = !{!"_ZTSSt22_Optional_payload_baseI16ToolCapabilitiesE", !5, i64 0, !54, i64 112}
!66 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb1ELb0ELb0EE", !65, i64 0}
!67 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb0ELb0ELb0EE", !66, i64 0}
!68 = !{!"_ZTSSt14_Optional_baseI16ToolCapabilitiesLb0ELb0EE", !67, i64 0}
!69 = !{!"_ZTSSt8optionalI16ToolCapabilitiesE", !68, i64 0}
!70 = !{!"_ZTSSt22_Optional_payload_baseI13WearBarParamsE", !5, i64 0, !54, i64 56}
!71 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb1ELb0ELb0EE", !70, i64 0}
!72 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb0ELb0ELb0EE", !71, i64 0}
!73 = !{!"_ZTSSt14_Optional_baseI13WearBarParamsLb0ELb0EE", !72, i64 0}
!74 = !{!"_ZTSSt8optionalI13WearBarParamsE", !73, i64 0}
!75 = !{!"_ZTS17ItemStackMetadata", !64, i64 0, !69, i64 72, !74, i64 192}
!76 = !{!"_ZTS9ItemStack", !19, i64 0, !33, i64 32, !33, i64 34, !75, i64 40}
!77 = !{!76, !33, i64 32}
!78 = !{ptr @_ZN13BaseExceptionD2Ev}
!79 = distinct !{null}
!80 = distinct !{null, null, null, null, null}
!81 = !{!"p1 _ZTS9LogTarget", !16, i64 0}
!82 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !41, i64 56}
!83 = !{!"_ZTSSt14_Function_base", !5, i64 0, !16, i64 16}
!84 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !83, i64 0, !16, i64 24}
!85 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !82, i64 0, !84, i64 64, !6, i64 96, !5, i64 100}
!86 = !{!"_ZTS17DummyStreamBuffer", !82, i64 0}
!87 = !{!"_ZTSSo"}
!88 = !{!"_ZTS9LogStream", !81, i64 0, !85, i64 8, !86, i64 368, !87, i64 432, !87, i64 704, !43, i64 976, !43, i64 984}
!89 = !{!88, !81, i64 0}
!90 = !{}
!91 = !{i64 8}
!92 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!93 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!94 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!95 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!96 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !51, i64 0, !42, i64 216, !5, i64 224, !54, i64 225, !92, i64 232, !93, i64 240, !94, i64 248, !95, i64 256}
!97 = !{!96, !93, i64 240}
!98 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!99 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!100 = !{!"p1 int", !16, i64 0}
!101 = !{!"p1 short", !16, i64 0}
!102 = !{!"_ZTSSt5ctypeIcE", !98, i64 0, !99, i64 16, !54, i64 24, !100, i64 32, !100, i64 40, !101, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!103 = !{!102, !5, i64 56}
!107 = distinct !{!107, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!108 = distinct !{!108, !107, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!109 = !{!108}
end_hunk_1
