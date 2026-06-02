inline.NumInlined: 4126
inline.NumDeleted: 1869
begin_hunk_0_@_ZN4node8builtins13BuiltinLoader11AddFromDiskEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_10UnionBytesE:bb.a
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #26 ; 2 uses
  store ptr %i.aa, ptr %5, align 8
  store i64 %i.v, ptr %i.u, align 8
  br label %._crit_edge.i.i3

._crit_edge.i.i3:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ab = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i4 ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 3 uses
  switch i64 %i.v, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit5
  ]

bb.n:                                             ; preds = %._crit_edge.i.i3
  %i.ac = load i8, ptr %1, align 1
  store i8 %i.ac, ptr %i.ab, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit5

bb.o:                                             ; preds = %._crit_edge.i.i3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 1 %1, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit5: ; preds = %._crit_edge.i.i3, %bb.n, %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.v, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  store i8 0, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %i.n, ptr %i.ag, align 8
  %i.ah = call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4node8builtins13BuiltinSourceEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_emplace_uniqueIJRPKcSA_EEES6_ISt17_Rb_tree_iteratorISB_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(52) %5)
  %i.ai = load ptr, ptr %5, align 8               ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.u
  br i1 %i.aj, label %_ZN4node8builtins13BuiltinSourceD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit5
  %i.ak = load i64, ptr %i.u, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #28
  br label %_ZN4node8builtins13BuiltinSourceD2Ev.exit

_ZN4node8builtins13BuiltinSourceD2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.fca.0.extract = extractvalue { ptr, i8 } %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @uv_rwlock_wrunlock(ptr noundef nonnull %i.s) #25
  %i.am = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 64
  ret ptr %i.am
}

declare noundef i32 @_ZN4node8builtins20GetBuiltinSourceTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node8builtins13BuiltinLoader10GetNativesEN2v85LocalINS2_4NameEEERKNS2_20PropertyCallbackInfoINS2_5ValueEEE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(64) %1) #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.b) #25 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4node11Environment10GetCurrentIN2v85ValueEEEPS0_RKNS2_20PropertyCallbackInfoIT_EE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #25
  %i.f = icmp ult i32 %i.e, 40
  br i1 %i.f, label %_ZN4node11Environment10GetCurrentIN2v85ValueEEEPS0_RKNS2_20PropertyCallbackInfoIT_EE.exit, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, !prof !5

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.c, align 8
  %i.h = add i64 %i.g, 47
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = add i64 %i.j, 327
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr @_ZN4node18ContextEmbedderTag18kNodeContextTagPtrE, align 8
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4node11Environment10GetCurrentIN2v85ValueEEEPS0_RKNS2_20PropertyCallbackInfoIT_EE.exit, !prof !51

bb.c:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.p = add i64 %i.j, 271
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8
  %i.s = inttoptr i64 %i.r to ptr
  br label %_ZN4node11Environment10GetCurrentIN2v85ValueEEEPS0_RKNS2_20PropertyCallbackInfoIT_EE.exit

_ZN4node11Environment10GetCurrentIN2v85ValueEEEPS0_RKNS2_20PropertyCallbackInfoIT_EE.exit: ; preds = %bb.a, %bb.b, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, %bb.c
  %.0.i.i = phi ptr [ %i.s, %bb.c ], [ null, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i ], [ null, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 200
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 3008
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.x, align 8
  %i.y = tail call ptr @_ZN2v86Object3NewEPNS_7IsolateE(ptr noundef %i.u) #25 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 3016 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !52 ; 2 uses
  tail call void @uv_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.aa) #25, !noalias !52
  %i.ab = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4node11Environment10GetCurrentIN2v85ValueEEEPS0_RKNS2_20PropertyCallbackInfoIT_EE.exit, %bb.e
  %.sroa.029.040 = phi ptr [ %i.ar, %bb.e ], [ %i.ad, %_ZN4node11Environment10GetCurrentIN2v85ValueEEEPS0_RKNS2_20PropertyCallbackInfoIT_EE.exit ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.029.040, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.029.040, i64 40
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = trunc i64 %i.aj to i32
  %i.al = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.u, ptr noundef %i.ah, i32 noundef 0, i32 noundef %i.ak) #25 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.d, label %_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit, !prof !5

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit

_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit: ; preds = %.lr.ph, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.029.040, i64 96
  %i.ao = tail call ptr @_ZNK4node10UnionBytes15ToStringCheckedEPN2v87IsolateE(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef %i.u) #25
  %i.ap = tail call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr %.sroa.0.0.copyload.i.i.i, ptr %i.al, ptr %i.ao) #25
  %i.aq = trunc i16 %i.ap to i1
  br i1 %i.aq, label %bb.e, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit

bb.e:                                             ; preds = %_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit
  %i.ar = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.029.040) #30 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ae
  br i1 %i.as, label %.critedge.thread, label %.lr.ph

.critedge.thread:                                 ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.g

.critedge:                                        ; preds = %_ZN4node11Environment10GetCurrentIN2v85ValueEEEPS0_RKNS2_20PropertyCallbackInfoIT_EE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.av = icmp eq ptr %i.y, null
  br i1 %i.av, label %bb.f, label %bb.g, !prof !55

bb.f:                                             ; preds = %.critedge
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = add i64 %i.ax, 648
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load i64, ptr %i.az, align 8
  store i64 %i.ba, ptr %i.au, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit

bb.g:                                             ; preds = %.critedge.thread, %.critedge
  %i.bb = phi ptr [ %i.at, %.critedge.thread ], [ %i.au, %.critedge ]
  %i.bc = load i64, ptr %i.y, align 8
  store i64 %i.bc, ptr %i.bb, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit: ; preds = %_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit, %bb.g, %bb.f
  tail call void @uv_rwlock_rdunlock(ptr noundef nonnull %i.aa) #25
  ret void
}

declare ptr @_ZN2v86Object3NewEPNS_7IsolateE(ptr noundef) local_unnamed_addr #5

declare i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, ptr) local_unnamed_addr #5

declare ptr @_ZNK4node10UnionBytes15ToStringCheckedEPN2v87IsolateE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4node8builtins13BuiltinLoader15GetConfigStringEPN2v87IsolateE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call ptr @_ZNK4node10UnionBytes15ToStringCheckedEPN2v87IsolateE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %1) #25
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4node8builtins13BuiltinLoader20GetBuiltinCategoriesEv(ptr dead_on_unwind noalias writable sret(%"struct.node::builtins::BuiltinLoader::BuiltinCategories") align 8 initializes((8, 12), (16, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1) local_unnamed_addr #4 align 2 {
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 9 uses
  %3 = alloca %"class.std::set", align 8          ; 21 uses
  %4 = alloca [6 x %"class.std::__cxx11::basic_string"], align 8 ; 43 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i64 0, ptr %i.j, align 8
  %i.k = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 10 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) @constinit, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.l, ptr %4, align 8
  store i32 1667855729, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.p, ptr noundef nonnull align 1 dereferenceable(6) @.str.15, i64 6, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 6, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 54
  store i8 0, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.t, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 3, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 83
  store i8 0, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8
  store i32 1769169271, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 4, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 116
  store i8 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ac = call noalias noundef nonnull dereferenceable(22) ptr @_Znwm(i64 noundef 22) #26 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8
  store i64 21, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ac, ptr noundef nonnull align 1 dereferenceable(21) @.str.18, i64 21, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 21, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 21
  store i8 0, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ah = call noalias noundef nonnull dereferenceable(26) ptr @_Znwm(i64 noundef 26) #26 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8
  store i64 25, ptr %i.ag, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ah, ptr noundef nonnull align 1 dereferenceable(25) @.str.19, i64 25, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i64 25, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 25
  store i8 0, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.ak, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  store ptr %i.ak, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 8 uses
  store i64 0, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %3, ptr %2, align 8
  %i.ap = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %i.ap, 1      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i

bb.a:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i
  %i.ar = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.1 = call i64 @llvm.umin.i64(i64 %i.av, i64 %i.at) ; 2 uses
  %i.aw = icmp eq i64 %.sroa.speculated.i.i.i.i.i.1, 0
  br i1 %i.aw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.1

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.1: ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ay = load ptr, ptr %i.o, align 8
  %i.az = load ptr, ptr %i.ax, align 8
  %i.ba = call i32 @memcmp(ptr noundef %i.az, ptr noundef %i.ay, i64 noundef %.sroa.speculated.i.i.i.i.i.1) #25 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i.1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.1, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.1

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.1: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.1, %bb.a
  %i.bb = sub i64 %i.at, %i.av
  %spec.select7.i.i.i.i.i.i.1 = call i64 @llvm.smax.i64(i64 %i.bb, i64 -2147483648)
  %.08.i.i.i.i.i.i.1 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.1, i64 2147483647)
  %.0.i6.i.i.i.i.i.1 = trunc nsw i64 %.08.i.i.i.i.i.i.1 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.1

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.1: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.1
  %.0.i.i.i.i.i.1 = phi i32 [ %i.ba, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.1 ], [ %.0.i6.i.i.i.i.i.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.1 ]
  %i.bc = icmp slt i32 %.0.i.i.i.i.i.1, 0
  br i1 %i.bc, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.1, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.1

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.1: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.1, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i
  %i.bd = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.o) ; 2 uses
  %i.be = extractvalue { ptr, ptr } %i.bd, 0
  %i.bf = extractvalue { ptr, ptr } %i.bd, 1      ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.1, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.1, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.1

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.1: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.1
  %.sroa.12.2.i12.i.1 = phi ptr [ %i.bf, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.1 ], [ %i.ar, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.1 ]
  %.sroa.066.2.i11.i.1 = phi ptr [ %i.be, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.1 ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.1 ]
  %i.bg = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %.sroa.066.2.i11.i.1, ptr noundef nonnull %.sroa.12.2.i12.i.1, ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.1

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.1: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.1, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.1
  %.pr.1 = load i64, ptr %i.ao, align 8
  %.not.i3.i.2 = icmp eq i64 %.pr.1, 0
  br i1 %.not.i3.i.2, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.2, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.1
  %i.bh = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.2 = call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bj) ; 2 uses
  %i.bm = icmp eq i64 %.sroa.speculated.i.i.i.i.i.2, 0
  br i1 %i.bm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.2

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.2: ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load ptr, ptr %i.s, align 8
  %i.bp = load ptr, ptr %i.bn, align 8
  %i.bq = call i32 @memcmp(ptr noundef %i.bp, ptr noundef %i.bo, i64 noundef %.sroa.speculated.i.i.i.i.i.2) #25 ; 2 uses
  %.not.i.i.i.i.i.2 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i.i.2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.2, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.2

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.2: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.2, %bb.b
  %i.br = sub i64 %i.bj, %i.bl
  %spec.select7.i.i.i.i.i.i.2 = call i64 @llvm.smax.i64(i64 %i.br, i64 -2147483648)
  %.08.i.i.i.i.i.i.2 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.2, i64 2147483647)
  %.0.i6.i.i.i.i.i.2 = trunc nsw i64 %.08.i.i.i.i.i.i.2 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.2

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.2: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.2
  %.0.i.i.i.i.i.2 = phi i32 [ %i.bq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.2 ], [ %.0.i6.i.i.i.i.i.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.2 ]
  %i.bs = icmp slt i32 %.0.i.i.i.i.i.2, 0
  br i1 %i.bs, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.2, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.2

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.2: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.2, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.1
  %i.bt = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.s) ; 2 uses
  %i.bu = extractvalue { ptr, ptr } %i.bt, 0
  %i.bv = extractvalue { ptr, ptr } %i.bt, 1      ; 2 uses
  %.not.i.i.i.2 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.2, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.2, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.2

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.2: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.2, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.2
  %.sroa.12.2.i12.i.2 = phi ptr [ %i.bv, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.2 ], [ %i.bh, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.2 ]
  %.sroa.066.2.i11.i.2 = phi ptr [ %i.bu, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.2 ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.2 ]
  %i.bw = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %.sroa.066.2.i11.i.2, ptr noundef nonnull %.sroa.12.2.i12.i.2, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.2

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.2: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.2, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.2
  %.pr.2 = load i64, ptr %i.ao, align 8
  %.not.i3.i.3 = icmp eq i64 %.pr.2, 0
  br i1 %.not.i3.i.3, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.3, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.2
  %i.bx = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.3 = call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.bz) ; 2 uses
  %i.cc = icmp eq i64 %.sroa.speculated.i.i.i.i.i.3, 0
  br i1 %i.cc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.3

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.3: ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ce = load ptr, ptr %i.w, align 8
  %i.cf = load ptr, ptr %i.cd, align 8
  %i.cg = call i32 @memcmp(ptr noundef %i.cf, ptr noundef %i.ce, i64 noundef %.sroa.speculated.i.i.i.i.i.3) #25 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.3, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.3

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.3: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.3, %bb.c
  %i.ch = sub i64 %i.bz, %i.cb
  %spec.select7.i.i.i.i.i.i.3 = call i64 @llvm.smax.i64(i64 %i.ch, i64 -2147483648)
  %.08.i.i.i.i.i.i.3 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.3, i64 2147483647)
  %.0.i6.i.i.i.i.i.3 = trunc nsw i64 %.08.i.i.i.i.i.i.3 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.3

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.3: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.3
  %.0.i.i.i.i.i.3 = phi i32 [ %i.cg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.3 ], [ %.0.i6.i.i.i.i.i.3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.3 ]
  %i.ci = icmp slt i32 %.0.i.i.i.i.i.3, 0
  br i1 %i.ci, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.3, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.3

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.3: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.3, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.2
  %i.cj = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.w) ; 2 uses
  %i.ck = extractvalue { ptr, ptr } %i.cj, 0
end_hunk_0
begin_hunk_1_@_ZNK4node8builtins13BuiltinLoader20GetBuiltinCategoriesEv:_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.4: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.4, %bb.d
  %i.cx = sub i64 %i.cp, %i.cr
  %spec.select7.i.i.i.i.i.i.4 = call i64 @llvm.smax.i64(i64 %i.cx, i64 -2147483648)
  %.08.i.i.i.i.i.i.4 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.4, i64 2147483647)
  %.0.i6.i.i.i.i.i.4 = trunc nsw i64 %.08.i.i.i.i.i.i.4 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.4

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.4: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.4, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.4
  %.0.i.i.i.i.i.4 = phi i32 [ %i.cw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.4 ], [ %.0.i6.i.i.i.i.i.4, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.4 ]
  %i.cy = icmp slt i32 %.0.i.i.i.i.i.4, 0
  br i1 %i.cy, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.4, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.4

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.4: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.4, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.3
  %i.cz = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aa) ; 2 uses
  %i.da = extractvalue { ptr, ptr } %i.cz, 0
  %i.db = extractvalue { ptr, ptr } %i.cz, 1      ; 2 uses
  %.not.i.i.i.4 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.4, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.4, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.4

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.4: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.4, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.4
  %.sroa.12.2.i12.i.4 = phi ptr [ %i.db, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.4 ], [ %i.cn, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.4 ]
  %.sroa.066.2.i11.i.4 = phi ptr [ %i.da, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.4 ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.4 ]
  %i.dc = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %.sroa.066.2.i11.i.4, ptr noundef nonnull %.sroa.12.2.i12.i.4, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.4

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.4: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.4, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.4
  %.pr.4 = load i64, ptr %i.ao, align 8
  %.not.i3.i.5 = icmp eq i64 %.pr.4, 0
  br i1 %.not.i3.i.5, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.5, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.4
  %i.dd = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load i64, ptr %i.de, align 8            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.dh = load i64, ptr %i.dg, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.5 = call i64 @llvm.umin.i64(i64 %i.dh, i64 %i.df) ; 2 uses
  %i.di = icmp eq i64 %.sroa.speculated.i.i.i.i.i.5, 0
  br i1 %i.di, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.5

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.5: ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dk = load ptr, ptr %i.af, align 8
  %i.dl = load ptr, ptr %i.dj, align 8
  %i.dm = call i32 @memcmp(ptr noundef %i.dl, ptr noundef %i.dk, i64 noundef %.sroa.speculated.i.i.i.i.i.5) #25 ; 2 uses
  %.not.i.i.i.i.i.5 = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i.i.i.i.5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.5, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.5

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.5: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.5, %bb.e
  %i.dn = sub i64 %i.df, %i.dh
  %spec.select7.i.i.i.i.i.i.5 = call i64 @llvm.smax.i64(i64 %i.dn, i64 -2147483648)
  %.08.i.i.i.i.i.i.5 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.5, i64 2147483647)
  %.0.i6.i.i.i.i.i.5 = trunc nsw i64 %.08.i.i.i.i.i.i.5 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.5

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.5: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.5, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.5
  %.0.i.i.i.i.i.5 = phi i32 [ %i.dm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.5 ], [ %.0.i6.i.i.i.i.i.5, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.5 ]
  %i.do = icmp slt i32 %.0.i.i.i.i.i.5, 0
  br i1 %i.do, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.5, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.5

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.5: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.5, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i.4
  %i.dp = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.af) ; 2 uses
  %i.dq = extractvalue { ptr, ptr } %i.dp, 0
  %i.dr = extractvalue { ptr, ptr } %i.dp, 1      ; 2 uses
  %.not.i.i.i.5 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.5, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2ESt16initializer_listIS5_ERKS7_RKS8_.exit, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.5

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.5: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.5, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.5
  %.sroa.12.2.i12.i.5 = phi ptr [ %i.dr, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.5 ], [ %i.dd, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.5 ]
  %.sroa.066.2.i11.i.5 = phi ptr [ %i.dq, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.5 ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.5 ]
  %i.ds = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %.sroa.066.2.i11.i.5, ptr noundef nonnull %.sroa.12.2.i12.i.5, ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2ESt16initializer_listIS5_ERKS7_RKS8_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i
  %i.dt = extractvalue { ptr, ptr } %i.ap, 0
  %i.du = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.dt, ptr noundef nonnull %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_.exit.i.i: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i
  %.pr = load i64, ptr %i.ao, align 8
  %.not.i3.i.1 = icmp eq i64 %.pr, 0
  br i1 %.not.i3.i.1, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.1, label %bb.a

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2ESt16initializer_listIS5_ERKS7_RKS8_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.i.5, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERKS5_.exit.thread.i.5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.dw = load ptr, ptr %i.g, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef %i.dw)
  store ptr null, ptr %i.g, align 8
  store ptr %i.f, ptr %i.h, align 8
  store ptr %i.f, ptr %i.i, align 8
  store i64 0, ptr %i.j, align 8
  %i.dx = load ptr, ptr %i.al, align 8            ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i40, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEaSEOS9_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2ESt16initializer_listIS5_ERKS7_RKS8_.exit
  %i.dy = load i32, ptr %i.ak, align 8
  store i32 %i.dy, ptr %i.f, align 8
  store ptr %i.dx, ptr %i.g, align 8
  %i.dz = load <2 x ptr>, ptr %i.am, align 8
  store <2 x ptr> %i.dz, ptr %i.h, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.f, ptr %i.ea, align 8
  %i.eb = load i64, ptr %i.ao, align 8
  store i64 %i.eb, ptr %i.j, align 8
  store ptr null, ptr %i.al, align 8
  store ptr %i.ak, ptr %i.am, align 8
  store ptr %i.ak, ptr %i.an, align 8
  store i64 0, ptr %i.ao, align 8
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEaSEOS9_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEaSEOS9_.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2ESt16initializer_listIS5_ERKS7_RKS8_.exit, %bb.f
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null)
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEaSEOS9_.exit
  %i.eg = load i64, ptr %i.ee, align 8
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEaSEOS9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.em = load i64, ptr %i.ek, align 8
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ep = load ptr, ptr %i.eo, align 8            ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.es = load i64, ptr %i.eq, align 8
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.ey = load i64, ptr %i.ew, align 8
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8            ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.fe = load i64, ptr %i.fc, align 8
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  %i.fg = load ptr, ptr %4, align 8               ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.fj = load i64, ptr %i.fh, align 8
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.fl = load ptr, ptr %1, align 8, !noalias !56 ; 2 uses
  call void @uv_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.fl) #25, !noalias !56
  %i.fm = load ptr, ptr %1, align 8               ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 80
  %i.fo = load ptr, ptr %i.fn, align 8            ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 64 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.087.0.ptr110.1 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.2.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.087.0.ptr110.2 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.2.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.087.0.ptr110.3 = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.2.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.3
  %.pre121 = load ptr, ptr %1, align 8            ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre121, i64 80
  %.pre122 = load ptr, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5
  %i.fr = phi ptr [ %.pre122, %._crit_edge.loopexit ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5 ] ; 2 uses
  %i.fs = phi ptr [ %.pre121, %._crit_edge.loopexit ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 64 ; 2 uses
  %i.fu = icmp eq ptr %i.fr, %i.ft
  br i1 %i.fu, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %.lr.ph115

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.3
  %.sroa.091.0111 = phi ptr [ %i.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.3 ], [ %i.fo, %.lr.ph.preheader ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.091.0111, i64 32 ; 8 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.091.0111, i64 40 ; 4 uses
  %i.fx = load i64, ptr %i.k, align 8             ; 3 uses
  %i.fy = load i64, ptr %i.fw, align 8            ; 8 uses
  %i.fz = icmp ugt i64 %i.fx, %i.fy
  br i1 %i.fz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ga = load ptr, ptr %i.fv, align 8            ; 3 uses
  %i.gb = icmp eq i64 %i.fx, 0
  br i1 %i.gb, label %bb.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.g
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.ga, ptr %.sroa.2.0.copyload, i64 %i.fx)
  %i.gc = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.gc, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit

bb.h:                                             ; preds = %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.gd = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.gd, %bb.h ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.a, %bb.h ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.gf = load i64, ptr %i.ge, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.fy, i64 %i.gf) ; 2 uses
  %i.gg = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.gg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = call i32 @memcmp(ptr noundef %i.gi, ptr noundef %i.ga, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.gk = sub i64 %i.gf, %i.fy
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.gk, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.gj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.gl = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.gl, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.gl, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i42, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !59

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.gm = icmp eq ptr %.19.i.i.i, %i.a
  br i1 %i.gm, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.go = load i64, ptr %i.gn, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i43 = call i64 @llvm.umin.i64(i64 %i.go, i64 %i.fy) ; 2 uses
  %i.gp = icmp eq i64 %.sroa.speculated.i.i.i.i.i43, 0
  br i1 %i.gp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44: ; preds = %bb.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = call i32 @memcmp(ptr noundef %i.ga, ptr noundef %i.gr, i64 noundef %.sroa.speculated.i.i.i.i.i43) #25 ; 2 uses
  %.not.i.i.i.i.i45 = icmp eq i32 %i.gs, 0
  br i1 %.not.i.i.i.i.i45, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44, %bb.i
  %i.gt = sub i64 %i.fy, %i.go
  %spec.select7.i.i.i.i.i.i49 = call i64 @llvm.smax.i64(i64 %i.gt, i64 -2147483648)
  %.08.i.i.i.i.i.i50 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i49, i64 2147483647)
  %.0.i6.i.i.i.i.i51 = trunc nsw i64 %.08.i.i.i.i.i.i50 to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48
  %.0.i.i.i.i.i47 = phi i32 [ %i.gs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44 ], [ %.0.i6.i.i.i.i.i51, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48 ]
  %i.gu = icmp slt i32 %.0.i.i.i.i.i47, 0
  br i1 %i.gu, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.h, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit
  %i.gv = call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_emplace_uniqueIJRKS5_EEESt4pairISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %i.fv) ; 0 uses
  %.pre = load i64, ptr %i.fw, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread, %.lr.ph
  %i.gw = phi i64 [ %i.fy, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %i.fy, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit ], [ %.pre, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread ], [ %i.fy, %.lr.ph ] ; 8 uses
  %5 = load i64, ptr %.sroa.087.0.ptr110.1, align 8 ; 3 uses
  %6 = icmp ugt i64 %5, %i.gw
  br i1 %6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.1, label %7

7:                                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit
  %8 = load ptr, ptr %i.fv, align 8               ; 3 uses
  %9 = icmp eq i64 %5, 0
  br i1 %9, label %bb.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.1

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.1: ; preds = %7
  %i.gx = load ptr, ptr %.sroa.2.0..sroa_idx.1, align 8
  %bcmp.i.i.i.1 = call i32 @bcmp(ptr %8, ptr %i.gx, i64 %5)
  %i.gy = icmp eq i32 %bcmp.i.i.i.1, 0
  br i1 %i.gy, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.1

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.1, %7
  %i.gz = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not10.i.i.i.1 = icmp eq ptr %i.gz, null
  br i1 %.not10.i.i.i.1, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.1, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.j, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.1
  %.012.i.i.i.1 = phi ptr [ %.1.i.i.i.1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.1 ], [ %i.gz, %bb.j ] ; 4 uses
  %.0811.i.i.i.1 = phi ptr [ %.19.i.i.i.1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.1 ], [ %i.a, %bb.j ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.012.i.i.i.1, i64 40
  %i.hb = load i64, ptr %i.ha, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.1 = call i64 @llvm.umin.i64(i64 %i.gw, i64 %i.hb) ; 2 uses
  %i.hc = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.1, 0
  br i1 %i.hc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.1

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.1
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.1, i64 32
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = call i32 @memcmp(ptr noundef %i.he, ptr noundef %8, i64 noundef %.sroa.speculated.i.i.i.i.i.i.1) #25 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i32 %i.hf, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.1, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.1

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.1: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.1, %.lr.ph.i.i.i.1
  %i.hg = sub i64 %i.hb, %i.gw
  %spec.select7.i.i.i.i.i.i.i.1 = call i64 @llvm.smax.i64(i64 %i.hg, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.1 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.1, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.1 = trunc nsw i64 %.08.i.i.i.i.i.i.i.1 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.1

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.1: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.1
  %.0.i.i.i.i.i.i.1 = phi i32 [ %i.hf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.1 ], [ %.0.i6.i.i.i.i.i.i.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.1 ]
  %i.hh = icmp slt i32 %.0.i.i.i.i.i.i.1, 0       ; 2 uses
  %.19.i.i.i.1 = select i1 %i.hh, ptr %.0811.i.i.i.1, ptr %.012.i.i.i.1 ; 4 uses
  %.1.in.v.i.i.i.1 = select i1 %i.hh, i64 24, i64 16
  %.1.in.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.1, i64 %.1.in.v.i.i.i.1
  %.1.i.i.i.1 = load ptr, ptr %.1.in.i.i.i.1, align 8 ; 2 uses
  %.not.i.i.i42.1 = icmp eq ptr %.1.i.i.i.1, null
  br i1 %.not.i.i.i42.1, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.1, label %.lr.ph.i.i.i.1, !llvm.loop !59

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.1: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.1
  %i.hi = icmp eq ptr %.19.i.i.i.1, %i.a
  br i1 %i.hi, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.1, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.1
  %i.hj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.1, i64 40
  %i.hk = load i64, ptr %i.hj, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i43.1 = call i64 @llvm.umin.i64(i64 %i.hk, i64 %i.gw) ; 2 uses
  %i.hl = icmp eq i64 %.sroa.speculated.i.i.i.i.i43.1, 0
  br i1 %i.hl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.1

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.1: ; preds = %bb.k
  %i.hm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.1, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = call i32 @memcmp(ptr noundef %8, ptr noundef %i.hn, i64 noundef %.sroa.speculated.i.i.i.i.i43.1) #25 ; 2 uses
  %.not.i.i.i.i.i45.1 = icmp eq i32 %i.ho, 0
  br i1 %.not.i.i.i.i.i45.1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.1, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.1

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.1: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.1, %bb.k
  %i.hp = sub i64 %i.gw, %i.hk
  %spec.select7.i.i.i.i.i.i49.1 = call i64 @llvm.smax.i64(i64 %i.hp, i64 -2147483648)
  %.08.i.i.i.i.i.i50.1 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i49.1, i64 2147483647)
  %.0.i6.i.i.i.i.i51.1 = trunc nsw i64 %.08.i.i.i.i.i.i50.1 to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.1

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.1: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.1
  %.0.i.i.i.i.i47.1 = phi i32 [ %i.ho, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.1 ], [ %.0.i6.i.i.i.i.i51.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.1 ]
  %i.hq = icmp slt i32 %.0.i.i.i.i.i47.1, 0
  br i1 %i.hq, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.1

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.1: ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.1, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.1, %bb.j
  %i.hr = call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_emplace_uniqueIJRKS5_EEESt4pairISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %i.fv) ; 0 uses
  %.pre117.a = load i64, ptr %i.fw, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.1: ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.1, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit
  %10 = phi i64 [ %.pre117.a, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.1 ], [ %i.gw, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.1 ], [ %i.gw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.1 ], [ %i.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit ] ; 8 uses
  %11 = load i64, ptr %.sroa.087.0.ptr110.2, align 8 ; 3 uses
  %12 = icmp ugt i64 %11, %10
  br i1 %12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.1.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.1.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.1
  %13 = load ptr, ptr %i.fv, align 8              ; 3 uses
  %14 = icmp eq i64 %11, 0
  br i1 %14, label %bb.l, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.2

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.1.a
  %i.hs = load ptr, ptr %.sroa.2.0..sroa_idx.2, align 8
  %bcmp.i.i.i.2 = call i32 @bcmp(ptr %13, ptr %i.hs, i64 %11)
  %i.ht = icmp eq i32 %bcmp.i.i.i.2, 0
  br i1 %i.ht, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.2

bb.l:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.1.a
  %i.hu = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not10.i.i.i.2 = icmp eq ptr %i.hu, null
  br i1 %.not10.i.i.i.2, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.2, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.l, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.2
  %.012.i.i.i.2 = phi ptr [ %.1.i.i.i.2, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.2 ], [ %i.hu, %bb.l ] ; 4 uses
  %.0811.i.i.i.2 = phi ptr [ %.19.i.i.i.2, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.2 ], [ %i.a, %bb.l ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.2, i64 40
  %i.hw = load i64, ptr %i.hv, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.2 = call i64 @llvm.umin.i64(i64 %10, i64 %i.hw) ; 2 uses
  %i.hx = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.2, 0
  br i1 %i.hx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.2

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.2
  %i.hy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.2, i64 32
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = call i32 @memcmp(ptr noundef %i.hz, ptr noundef %13, i64 noundef %.sroa.speculated.i.i.i.i.i.i.2) #25 ; 2 uses
  %.not.i.i.i.i.i.i.2 = icmp eq i32 %i.ia, 0
  br i1 %.not.i.i.i.i.i.i.2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.2, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.2

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.2: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.2, %.lr.ph.i.i.i.2
  %i.ib = sub i64 %i.hw, %10
  %spec.select7.i.i.i.i.i.i.i.2 = call i64 @llvm.smax.i64(i64 %i.ib, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.2 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.2, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.2 = trunc nsw i64 %.08.i.i.i.i.i.i.i.2 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.2

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.2: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.2
  %.0.i.i.i.i.i.i.2 = phi i32 [ %i.ia, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.2 ], [ %.0.i6.i.i.i.i.i.i.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.2 ]
  %i.ic = icmp slt i32 %.0.i.i.i.i.i.i.2, 0       ; 2 uses
  %.19.i.i.i.2 = select i1 %i.ic, ptr %.0811.i.i.i.2, ptr %.012.i.i.i.2 ; 4 uses
  %.1.in.v.i.i.i.2 = select i1 %i.ic, i64 24, i64 16
  %.1.in.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.2, i64 %.1.in.v.i.i.i.2
  %.1.i.i.i.2 = load ptr, ptr %.1.in.i.i.i.2, align 8 ; 2 uses
  %.not.i.i.i42.2 = icmp eq ptr %.1.i.i.i.2, null
  br i1 %.not.i.i.i42.2, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.2, label %.lr.ph.i.i.i.2, !llvm.loop !59

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.2: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.2
  %i.id = icmp eq ptr %.19.i.i.i.2, %i.a
  br i1 %i.id, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.2, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.2
  %i.ie = getelementptr inbounds nuw i8, ptr %.19.i.i.i.2, i64 40
  %i.if = load i64, ptr %i.ie, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i43.2 = call i64 @llvm.umin.i64(i64 %i.if, i64 %10) ; 2 uses
  %i.ig = icmp eq i64 %.sroa.speculated.i.i.i.i.i43.2, 0
  br i1 %i.ig, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.2

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.2: ; preds = %bb.m
  %i.ih = getelementptr inbounds nuw i8, ptr %.19.i.i.i.2, i64 32
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = call i32 @memcmp(ptr noundef %13, ptr noundef %i.ii, i64 noundef %.sroa.speculated.i.i.i.i.i43.2) #25 ; 2 uses
  %.not.i.i.i.i.i45.2 = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i.i.i.i45.2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.2, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.2

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.2: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.2, %bb.m
  %i.ik = sub i64 %10, %i.if
  %spec.select7.i.i.i.i.i.i49.2 = call i64 @llvm.smax.i64(i64 %i.ik, i64 -2147483648)
  %.08.i.i.i.i.i.i50.2 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i49.2, i64 2147483647)
  %.0.i6.i.i.i.i.i51.2 = trunc nsw i64 %.08.i.i.i.i.i.i50.2 to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.2

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.2: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.2
  %.0.i.i.i.i.i47.2 = phi i32 [ %i.ij, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.2 ], [ %.0.i6.i.i.i.i.i51.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.2 ]
  %i.il = icmp slt i32 %.0.i.i.i.i.i47.2, 0
  br i1 %i.il, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.2

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.2: ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.2, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.2, %bb.l
  %i.im = call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_emplace_uniqueIJRKS5_EEESt4pairISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %i.fv) ; 0 uses
  %.pre119 = load i64, ptr %i.fw, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.2: ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.2, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.1
  %15 = phi i64 [ %.pre119, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.2 ], [ %10, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.2 ], [ %10, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.2 ], [ %10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.1 ] ; 5 uses
  %16 = load i64, ptr %.sroa.087.0.ptr110.3, align 8 ; 3 uses
  %17 = icmp ugt i64 %16, %15
  br i1 %17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.2.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.2.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.2
  %18 = load ptr, ptr %i.fv, align 8              ; 3 uses
  %19 = icmp eq i64 %16, 0
  br i1 %19, label %bb.n, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.3

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.2.a
  %i.in = load ptr, ptr %.sroa.2.0..sroa_idx.3, align 8
  %bcmp.i.i.i.3 = call i32 @bcmp(ptr %18, ptr %i.in, i64 %16)
  %i.io = icmp eq i32 %bcmp.i.i.i.3, 0
  br i1 %i.io, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.3

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.2.a
  %i.ip = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not10.i.i.i.3 = icmp eq ptr %i.ip, null
  br i1 %.not10.i.i.i.3, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.3, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.n, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.3
  %.012.i.i.i.3 = phi ptr [ %.1.i.i.i.3, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.3 ], [ %i.ip, %bb.n ] ; 4 uses
  %.0811.i.i.i.3 = phi ptr [ %.19.i.i.i.3, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.3 ], [ %i.a, %bb.n ]
  %i.iq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.3, i64 40
  %i.ir = load i64, ptr %i.iq, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.3 = call i64 @llvm.umin.i64(i64 %15, i64 %i.ir) ; 2 uses
  %i.is = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.3, 0
  br i1 %i.is, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.3

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.3: ; preds = %.lr.ph.i.i.i.3
  %i.it = getelementptr inbounds nuw i8, ptr %.012.i.i.i.3, i64 32
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = call i32 @memcmp(ptr noundef %i.iu, ptr noundef %18, i64 noundef %.sroa.speculated.i.i.i.i.i.i.3) #25 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.3, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.3

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.3: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.3, %.lr.ph.i.i.i.3
  %i.iw = sub i64 %i.ir, %15
  %spec.select7.i.i.i.i.i.i.i.3 = call i64 @llvm.smax.i64(i64 %i.iw, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.3 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.3, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.3 = trunc nsw i64 %.08.i.i.i.i.i.i.i.3 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.3

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.3: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.3
  %.0.i.i.i.i.i.i.3 = phi i32 [ %i.iv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.3 ], [ %.0.i6.i.i.i.i.i.i.3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.3 ]
  %i.ix = icmp slt i32 %.0.i.i.i.i.i.i.3, 0       ; 2 uses
  %.19.i.i.i.3 = select i1 %i.ix, ptr %.0811.i.i.i.3, ptr %.012.i.i.i.3 ; 4 uses
  %.1.in.v.i.i.i.3 = select i1 %i.ix, i64 24, i64 16
  %.1.in.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.3, i64 %.1.in.v.i.i.i.3
  %.1.i.i.i.3 = load ptr, ptr %.1.in.i.i.i.3, align 8 ; 2 uses
  %.not.i.i.i42.3 = icmp eq ptr %.1.i.i.i.3, null
  br i1 %.not.i.i.i42.3, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.3, label %.lr.ph.i.i.i.3, !llvm.loop !59

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.3: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.3
  %i.iy = icmp eq ptr %.19.i.i.i.3, %i.a
  br i1 %i.iy, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.3, label %bb.o

bb.o:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.3
  %i.iz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.3, i64 40
  %i.ja = load i64, ptr %i.iz, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i43.3 = call i64 @llvm.umin.i64(i64 %i.ja, i64 %15) ; 2 uses
  %i.jb = icmp eq i64 %.sroa.speculated.i.i.i.i.i43.3, 0
  br i1 %i.jb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.3

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.3: ; preds = %bb.o
  %i.jc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.3, i64 32
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = call i32 @memcmp(ptr noundef %18, ptr noundef %i.jd, i64 noundef %.sroa.speculated.i.i.i.i.i43.3) #25 ; 2 uses
  %.not.i.i.i.i.i45.3 = icmp eq i32 %i.je, 0
  br i1 %.not.i.i.i.i.i45.3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.3, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.3

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.3: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.3, %bb.o
  %i.jf = sub i64 %15, %i.ja
  %spec.select7.i.i.i.i.i.i49.3 = call i64 @llvm.smax.i64(i64 %i.jf, i64 -2147483648)
  %.08.i.i.i.i.i.i50.3 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i49.3, i64 2147483647)
  %.0.i6.i.i.i.i.i51.3 = trunc nsw i64 %.08.i.i.i.i.i.i50.3 to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.3

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.3: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.3
  %.0.i.i.i.i.i47.3 = phi i32 [ %i.je, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i44.3 ], [ %.0.i6.i.i.i.i.i51.3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i48.3 ]
  %i.jg = icmp slt i32 %.0.i.i.i.i.i47.3, 0
  br i1 %i.jg, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.3

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.3: ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.3, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.3, %bb.n
  %i.jh = call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_emplace_uniqueIJRKS5_EEESt4pairISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %i.fv) ; 0 uses
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.3: ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.thread.3, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit.3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withESt17basic_string_viewIcS2_E.exit.2
  %i.ji = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.091.0111) #30 ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.fp
  br i1 %i.jj, label %._crit_edge.loopexit, label %.lr.ph

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.r, %._crit_edge
  call void @uv_rwlock_rdunlock(ptr noundef nonnull %i.fl) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 64) #28
  ret void

.lr.ph115:                                        ; preds = %._crit_edge, %bb.r
  %.sroa.083.0112 = phi ptr [ %i.kh, %bb.r ], [ %i.fr, %._crit_edge ] ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.083.0112, i64 32 ; 2 uses
  %i.jl = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not10.i.i.i53 = icmp eq ptr %i.jl, null
  br i1 %.not10.i.i.i53, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit82.thread, label %.lr.ph.i.i.i54

.lr.ph.i.i.i54:                                   ; preds = %.lr.ph115
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.083.0112, i64 40
  %i.jn = load i64, ptr %i.jm, align 8            ; 4 uses
  %i.jo = load ptr, ptr %i.jk, align 8            ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i60, %.lr.ph.i.i.i54
  %.012.i.i.i55 = phi ptr [ %i.jl, %.lr.ph.i.i.i54 ], [ %.1.i.i.i65, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i60 ] ; 4 uses
  %.0811.i.i.i56 = phi ptr [ %i.f, %.lr.ph.i.i.i54 ], [ %.19.i.i.i62, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i60 ]
  %i.jp = getelementptr inbounds nuw i8, ptr %.012.i.i.i55, i64 40
  %i.jq = load i64, ptr %i.jp, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i57 = call i64 @llvm.umin.i64(i64 %i.jn, i64 %i.jq) ; 2 uses
  %i.jr = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i57, 0
  br i1 %i.jr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i78, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i58

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i58: ; preds = %bb.p
  %i.js = getelementptr inbounds nuw i8, ptr %.012.i.i.i55, i64 32
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = call i32 @memcmp(ptr noundef %i.jt, ptr noundef %i.jo, i64 noundef %.sroa.speculated.i.i.i.i.i.i57) #25 ; 2 uses
  %.not.i.i.i.i.i.i59 = icmp eq i32 %i.ju, 0
  br i1 %.not.i.i.i.i.i.i59, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i78, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i60

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i78: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i58, %bb.p
  %i.jv = sub i64 %i.jq, %i.jn
  %spec.select7.i.i.i.i.i.i.i79 = call i64 @llvm.smax.i64(i64 %i.jv, i64 -2147483648)
  %.08.i.i.i.i.i.i.i80 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i79, i64 2147483647)
  %.0.i6.i.i.i.i.i.i81 = trunc nsw i64 %.08.i.i.i.i.i.i.i80 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i60

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i60: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i78, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i58
  %.0.i.i.i.i.i.i61 = phi i32 [ %i.ju, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i58 ], [ %.0.i6.i.i.i.i.i.i81, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i78 ]
  %i.jw = icmp slt i32 %.0.i.i.i.i.i.i61, 0       ; 2 uses
  %.19.i.i.i62 = select i1 %i.jw, ptr %.0811.i.i.i56, ptr %.012.i.i.i55 ; 4 uses
  %.1.in.v.i.i.i63 = select i1 %i.jw, i64 24, i64 16
  %.1.in.i.i.i64 = getelementptr inbounds nuw i8, ptr %.012.i.i.i55, i64 %.1.in.v.i.i.i63
  %.1.i.i.i65 = load ptr, ptr %.1.in.i.i.i64, align 8 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %.1.i.i.i65, null
  br i1 %.not.i.i.i66, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i67, label %bb.p, !llvm.loop !59

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i67: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i60
  %i.jx = icmp eq ptr %.19.i.i.i62, %i.f
  br i1 %i.jx, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit82.thread, label %bb.q

bb.q:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i67
  %i.jy = getelementptr inbounds nuw i8, ptr %.19.i.i.i62, i64 40
  %i.jz = load i64, ptr %i.jy, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i68 = call i64 @llvm.umin.i64(i64 %i.jz, i64 %i.jn) ; 2 uses
  %i.ka = icmp eq i64 %.sroa.speculated.i.i.i.i.i68, 0
  br i1 %i.ka, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i74, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i69

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i69: ; preds = %bb.q
  %i.kb = getelementptr inbounds nuw i8, ptr %.19.i.i.i62, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = call i32 @memcmp(ptr noundef %i.jo, ptr noundef %i.kc, i64 noundef %.sroa.speculated.i.i.i.i.i68) #25 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq i32 %i.kd, 0
  br i1 %.not.i.i.i.i.i70, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i74, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit82

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i74: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i69, %bb.q
  %i.ke = sub i64 %i.jn, %i.jz
  %spec.select7.i.i.i.i.i.i75 = call i64 @llvm.smax.i64(i64 %i.ke, i64 -2147483648)
  %.08.i.i.i.i.i.i76 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i75, i64 2147483647)
  %.0.i6.i.i.i.i.i77 = trunc nsw i64 %.08.i.i.i.i.i.i76 to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit82

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit82: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i69, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i74
  %.0.i.i.i.i.i72 = phi i32 [ %i.kd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i69 ], [ %.0.i6.i.i.i.i.i77, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i74 ]
  %i.kf = icmp slt i32 %.0.i.i.i.i.i72, 0
  br i1 %i.kf, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit82.thread, label %bb.r

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit82.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i67, %.lr.ph115, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit82
  %i.kg = call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_emplace_uniqueIJRKS5_EEESt4pairISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.jk) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit82.thread, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit82
  %i.kh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.083.0112) #30 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.ft
  br i1 %i.ki, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %.lr.ph115
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN4node8builtins13BuiltinLoader17LoadBuiltinSourceEPN2v87IsolateEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !noalias !60  ; 2 uses
  tail call void @uv_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #25, !noalias !60
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.88) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25 ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #26 ; 2 uses
  store ptr %i.j, ptr %3, align 8
  store i64 %i.e, ptr %i.c, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.c
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.c, %bb.c ] ; 3 uses
  switch i64 %i.e, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %2, align 1
  store i8 %i.l, ptr %i.k, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %2, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.p, null
  %.pre = load ptr, ptr %3, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node8builtins13BuiltinSourceESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.r = load i64, ptr %i.m, align 8              ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.r, i64 %i.t) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i32 @memcmp(ptr noundef %i.w, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.j
  %i.y = sub i64 %i.t, %i.r
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.z = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.z, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.z, i64 24, i64 16
end_hunk_1
