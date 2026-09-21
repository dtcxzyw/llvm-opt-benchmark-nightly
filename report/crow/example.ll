Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example?download=true
inline.NumInlined: 14924
inline.NumDeleted: 5588
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE6on_urlEPNS_11http_parserEPKcm:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit
  %i.be = icmp eq ptr %i.bd, %i.an                ; 2 uses
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.be, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.be, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bf = load i64, ptr %i.aw, align 8, !tbaa !115 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %.not21.i = icmp eq ptr %5, %i.az
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !117

bb.h:                                             ; preds = %bb.g
  switch i64 %i.bf, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !114
  store i8 %i.bh, ptr %i.ba, align 1, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bi = load i64, ptr %i.aw, align 8, !tbaa !115 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !115
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !113
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1, !tbaa !114
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !113
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !113
  %i.bn = load <2 x i64>, ptr %i.aw, align 8, !tbaa !114
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !114
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bo = load i64, ptr %i.bb, align 8, !tbaa !114
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !113
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bq = load <2 x i64>, ptr %i.aw, align 8, !tbaa !114
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !tbaa !114
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ba, ptr %5, align 8, !tbaa !113
  store i64 %i.bo, ptr %i.an, align 8, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.an, ptr %5, align 8, !tbaa !113
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.br = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ba, %bb.k ], [ %i.an, %bb.l ], [ %i.bd, %bb.g ]
  store i64 0, ptr %i.aw, align 8, !tbaa !115
  store i8 0, ptr %i.br, align 1, !tbaa !114
  %i.bs = load ptr, ptr %5, align 8, !tbaa !113   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.an
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bu = load i64, ptr %i.an, align 8, !tbaa !114
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1038
  call void @_ZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE10handle_urlEv(ptr noundef nonnull align 8 dereferenceable(5176) %i.bx), !inline_history !2578
  ret i32 0

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %4, align 8, !tbaa !113   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.h
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.m
  %i.cb = load i64, ptr %i.h, align 8, !tbaa !114
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.by
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE15on_header_fieldEPNS_11http_parserEPKcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1075
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.d = load i64, ptr %i.c, align 8, !tbaa !115
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.i = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE10_M_emplaceIJS5_S5_EEENSA_14_Node_iteratorIS8_Lb0ELb1EEENSA_20_Node_const_iteratorIS8_Lb0ELb1EEESt17integral_constantIbLb0EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.f) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.l = load i64, ptr %i.k, align 8, !tbaa !115
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef 0, i64 noundef %i.l, ptr noundef %1, i64 noundef %2) ; 0 uses
  store i32 1, ptr %i.a, align 8, !tbaa !1075
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.o = load i64, ptr %i.n, align 8, !tbaa !115
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.q = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.o, i64 noundef 0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit, %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE15on_header_valueEPNS_11http_parserEPKcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1075
  switch i32 %i.b, label %bb.c [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit
    i32 1, label %bb.b
  ]

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.d = load i64, ptr %i.c, align 8, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.d, i64 noundef 0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !1075
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.i = load i64, ptr %i.h, align 8, !tbaa !115
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 0, i64 noundef %i.i, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE19on_headers_completeEPNS_11http_parserE(ptr noundef %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE10_M_emplaceIJS5_S5_EEENSA_14_Node_iteratorIS8_Lb0ELb1EEENSA_20_Node_const_iteratorIS8_Lb0ELb1EEESt17integral_constantIbLb0EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !1102  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 %i.i, ptr %i.j, align 8, !tbaa !2581
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.l = load i8, ptr %i.k, align 1, !tbaa !1103  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 289
  store i8 %i.l, ptr %i.m, align 1, !tbaa !2582
  %i.n = icmp eq i8 %i.i, 1                       ; 3 uses
  %i.o = icmp eq i8 %i.l, 0                       ; 2 uses
  %or.cond.i = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond.i, label %.thread2.i, label %bb.d

.thread2.i:                                       ; preds = %bb.c
  %i.p = load i32, ptr %0, align 8                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.r = trunc i32 %i.p to i8
  %i.s = lshr i8 %i.r, 1
  %i.t = and i8 %i.s, 1
  store i8 %i.t, ptr %i.q, align 2, !tbaa !2583
  br label %2

bb.d:                                             ; preds = %bb.c
  %i.u = icmp eq i8 %i.l, 1                       ; 2 uses
  %i.v = select i1 %i.n, i1 %i.u, i1 false
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.x = zext i1 %i.v to i8
  store i8 %i.x, ptr %i.w, align 2, !tbaa !2583
  br i1 %i.n, label %1, label %_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE25set_connection_parametersEv.exit

1:                                                ; preds = %bb.d
  br i1 %i.o, label %._crit_edge.i, label %5

._crit_edge.i:                                    ; preds = %1
  %.pre.i = load i32, ptr %0, align 8
  br label %2

2:                                                ; preds = %._crit_edge.i, %.thread2.i
  %3 = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.p, %.thread2.i ]
  %4 = and i32 %3, 2
  %.not.i = icmp eq i32 %4, 0
  br label %_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE25set_connection_parametersEv.exit

5:                                                ; preds = %1
  br i1 %i.u, label %bb.e, label %_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE25set_connection_parametersEv.exit

bb.e:                                             ; preds = %5
  %i.y = load i32, ptr %0, align 8
  %i.z = and i32 %i.y, 4
  %i.aa = icmp ne i32 %i.z, 0
  br label %_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE25set_connection_parametersEv.exit

_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE25set_connection_parametersEv.exit: ; preds = %bb.d, %2, %5, %bb.e
  %6 = phi i1 [ %.not.i, %2 ], [ %i.aa, %bb.e ], [ false, %5 ], [ false, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 291
  %i.ac = zext i1 %6 to i8
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !2584
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 292
  %.lobit.i = lshr i16 %i.ae, 15
  %i.ag = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.ag, ptr %i.af, align 4, !tbaa !2585
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1038
  tail call void @_ZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE13handle_headerEv(ptr noundef nonnull align 8 dereferenceable(5176) %i.ai), !inline_history !2580
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE7on_bodyEPNS_11http_parserEPKcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.b, i64 noundef 0, ptr noundef %1, i64 noundef %2) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE19on_message_completeEPNS_11http_parserE(ptr noundef %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i8 1, ptr %i.a, align 4, !tbaa !1077
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1038
  tail call void @_ZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE6handleEv(ptr noundef nonnull align 8 dereferenceable(5176) %i.c), !inline_history !2586
  ret i32 0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4crow19http_parser_executeEPNS_11http_parserEPKNS_20http_parser_settingsEPKcm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %.fr = freeze i32 %i.a                          ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 76 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !2592 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 177 uses
  %i.e = load i16, ptr %i.d, align 2              ; 2 uses
  %i.f = and i16 %i.e, 32512
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.b, label %.thread1320

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %3, 0
  br i1 %i.g, label %bb.c, label %.lr.ph4843

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i32 %.fr, 7
  %trunc1257 = trunc i32 %i.h to i8
  switch i8 %trunc1257, label %bb.g [
    i8 45, label %bb.d
    i8 1, label %.thread1320
    i8 2, label %.thread1320
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2594 ; 2 uses
  %.not1258 = icmp eq ptr %i.j, null
  br i1 %.not1258, label %.thread1320, label %bb.e, !prof !117

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull %0)
  %.not1259 = icmp eq i32 %i.k, 0
  br i1 %.not1259, label %.thread1320, label %bb.f, !prof !501

bb.f:                                             ; preds = %bb.e
  store i32 %i.c, ptr %i.b, align 4, !tbaa !2592
  %i.l = load i16, ptr %i.d, align 2
  %i.m = and i16 %i.l, -32513
  %i.n = or disjoint i16 %i.m, 2048
  store i16 %i.n, ptr %i.d, align 2
  br label %.thread1320

bb.g:                                             ; preds = %bb.c
  %i.o = or disjoint i16 %i.e, 2560
  store i16 %i.o, ptr %i.d, align 2
  br label %.thread1320

.lr.ph4843:                                       ; preds = %bb.b
  %i.p = getelementptr i8, ptr %2, i64 %3         ; 14 uses
  %i.q = lshr i32 %.fr, 7
  %trunc = trunc i32 %i.q to i8
  %trunc.off = add i8 %trunc, -5
  %switch = icmp ult i8 %trunc.off, 9
  %spec.select1276 = select i1 %switch, ptr %2, ptr null
  %i.r = and i32 %.fr, 32640                      ; 2 uses
  %i.s = icmp eq i32 %i.r, 4096
  %.01020 = select i1 %i.s, ptr %2, ptr null
  %i.t = icmp eq i32 %i.r, 3456
  %spec.select = select i1 %i.t, ptr %2, ptr null
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.w = ptrtoint ptr %i.p to i64                 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.y = and i32 %.fr, 268435456
  %.not1182 = icmp eq i32 %i.y, 0
  %i.z = and i32 %.fr, 536870912
  %.not1181 = icmp eq i32 %i.z, 0                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = and i32 %.fr, 536870912
  %i.ac = icmp ne i32 %i.ab, 0                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.ae = getelementptr inbounds i8, ptr %i.p, i64 -1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph4843, %.thread1285
  %.09994841 = phi i32 [ %i.c, %.lr.ph4843 ], [ %.51004, %.thread1285 ] ; 2 uses
  %.010064840 = phi ptr [ null, %.lr.ph4843 ], [ %.7, %.thread1285 ] ; 2 uses
  %.010134804 = phi ptr [ null, %.lr.ph4843 ], [ %.21015, %.thread1285 ] ; 94 uses
  %.110174768 = phi ptr [ %spec.select1276, %.lr.ph4843 ], [ %.31019, %.thread1285 ] ; 92 uses
  %.110214767 = phi ptr [ %.01020, %.lr.ph4843 ], [ %.9, %.thread1285 ] ; 2 uses
  %.110294731 = phi ptr [ %spec.select, %.lr.ph4843 ], [ %.51033, %.thread1285 ] ; 88 uses
  %.010344730 = phi ptr [ %2, %.lr.ph4843 ], [ %i.ajy, %.thread1285 ] ; 4 uses
  %i.ak = load i8, ptr %.010344730, align 1, !tbaa !114
  %i.al = load i32, ptr %0, align 8
  %i.am = and i32 %i.al, 32640
  %i.an = icmp samesign ult i32 %i.am, 5248
  br i1 %i.an, label %bb.i, label %.outer

bb.i:                                             ; preds = %bb.h
  %i.ao = add i32 %.09994841, 1                   ; 3 uses
  %i.ap = icmp ugt i32 %i.ao, 81920
  br i1 %i.ap, label %bb.j, label %.outer, !prof !117

bb.j:                                             ; preds = %bb.i
  %i.aq = load i16, ptr %i.d, align 2
  %i.ar = and i16 %i.aq, -32513
  %i.as = or disjoint i16 %i.ar, 2816             ; 2 uses
  store i16 %i.as, ptr %i.d, align 2
  br label %.thread

.outer:                                           ; preds = %bb.i, %bb.h
  %.11000 = phi i32 [ %i.ao, %bb.i ], [ %.09994841, %bb.h ] ; 93 uses
  %i.at = freeze i8 %i.ak                         ; 79 uses
  switch i8 %i.at, label %.outer1361.preheader [
    i8 32, label %.outer1361.us.preheader
    i8 9, label %.outer1361.us.preheader
  ]

.outer1361.us.preheader:                          ; preds = %.outer, %.outer
  br label %.outer1361.us

.outer1361.preheader:                             ; preds = %bb.hj, %bb.hm, %bb.hi, %bb.ec, %bb.kc, %.outer
  %.11007.ph6779 = phi ptr [ %.010064840, %.outer ], [ %.us-phi2411, %bb.hi ], [ %.us-phi2411, %bb.hj ], [ %.us-phi2411, %bb.hm ], [ %.us-phi2387, %bb.ec ], [ %.us-phi2436, %bb.kc ]
  %.21022.ph6778 = phi ptr [ %.110214767, %.outer ], [ null, %bb.hi ], [ null, %bb.hj ], [ null, %bb.hm ], [ %.us-phi2388, %bb.ec ], [ %.us-phi2437, %bb.kc ]
  %.11035.ph6777 = phi ptr [ %.010344730, %.outer ], [ %.610404706, %bb.hi ], [ %.610404706, %bb.hj ], [ %.610404706, %bb.hm ], [ %.us-phi2386, %bb.ec ], [ %.us-phi2435, %bb.kc ]
  %.01044.ph6745 = phi i8 [ %i.at, %.outer ], [ 10, %bb.hi ], [ 10, %bb.hj ], [ 10, %bb.hm ], [ 10, %bb.ec ], [ 10, %bb.kc ] ; 77 uses
  %.21001.ph.ph6705 = phi i32 [ %.11000, %.outer ], [ %i.wg, %bb.hi ], [ %i.wg, %bb.hj ], [ %i.wg, %bb.hm ], [ %.21001.ph.ph6725, %bb.ec ], [ %.21001.ph.ph6733, %bb.kc ] ; 92 uses
  br label %.outer1361

.outer1361.us:                                    ; preds = %.outer1361.us.backedge, %.outer1361.us.preheader
  %.11035.ph1362.us = phi ptr [ %.010344730, %.outer1361.us.preheader ], [ %i.cb, %.outer1361.us.backedge ] ; 93 uses
  %.21022.ph1363.us = phi ptr [ %.110214767, %.outer1361.us.preheader ], [ %.us-phi3506.us, %.outer1361.us.backedge ] ; 46 uses
  %.11007.ph1364.us = phi ptr [ %.010064840, %.outer1361.us.preheader ], [ null, %.outer1361.us.backedge ] ; 89 uses
  %i.au = ptrtoint ptr %.11035.ph1362.us to i64   ; 5 uses
  switch i8 %i.at, label %.outer1366.us.us [
    i8 32, label %.outer1361.split.us.split.us.us
    i8 9, label %.outer1361.split.us.split.us.us
  ]

.outer1361.split.us.split.us.us:                  ; preds = %.outer1361.us, %.outer1361.us
  %.promoted.us.us.us = load i32, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %.backedge.us.us.us.us, %.outer1361.split.us.split.us.us
  %i.av = phi i32 [ %i.bd, %.backedge.us.us.us.us ], [ %.promoted.us.us.us, %.outer1361.split.us.split.us.us ] ; 42 uses
  %i.aw = lshr i32 %i.av, 7                       ; 10 uses
  %trunc1139.us.us.us.us = trunc i32 %i.aw to i8
  switch i8 %trunc1139.us.us.us.us, label %.split.us [
    i8 1, label %.split2241.us.split.us
    i8 2, label %.split2248.us.split.us
    i8 3, label %.split2256.us.split.us
    i8 4, label %.split2264.us.split.us
    i8 5, label %.split2272.us.split.us
    i8 6, label %.split2272.us.split.us
    i8 7, label %.split2272.us.split.us
    i8 8, label %.split2272.us.split.us
    i8 9, label %.split2280.us.split.us
    i8 10, label %.split2280.us.split.us
    i8 11, label %.split2280.us.split.us
    i8 12, label %.split2280.us.split.us
    i8 13, label %.split2280.us.split.us
    i8 14, label %.split2289.us.split.us
    i8 15, label %.split2297.us.split.us
    i8 16, label %.split2305.us.split.us
    i8 17, label %.split2313.us.split.us
    i8 19, label %.split2321.us.split.us
    i8 20, label %.split2329.us.split.us
    i8 18, label %.split2337.us.split.us
end_hunk_0
begin_hunk_1_@_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE6on_urlEPNS_11http_parserEPKcm:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit
  %i.be = icmp eq ptr %i.bd, %i.an                ; 2 uses
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.be, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.be, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bf = load i64, ptr %i.aw, align 8, !tbaa !115 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %.not21.i = icmp eq ptr %5, %i.az
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !117

bb.h:                                             ; preds = %bb.g
  switch i64 %i.bf, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !114
  store i8 %i.bh, ptr %i.ba, align 1, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bi = load i64, ptr %i.aw, align 8, !tbaa !115 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !115
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !113
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1, !tbaa !114
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !113
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !113
  %i.bn = load <2 x i64>, ptr %i.aw, align 8, !tbaa !114
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !114
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bo = load i64, ptr %i.bb, align 8, !tbaa !114
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !113
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bq = load <2 x i64>, ptr %i.aw, align 8, !tbaa !114
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !tbaa !114
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ba, ptr %5, align 8, !tbaa !113
  store i64 %i.bo, ptr %i.an, align 8, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.an, ptr %5, align 8, !tbaa !113
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.br = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ba, %bb.k ], [ %i.an, %bb.l ], [ %i.bd, %bb.g ]
  store i64 0, ptr %i.aw, align 8, !tbaa !115
  store i8 0, ptr %i.br, align 1, !tbaa !114
  %i.bs = load ptr, ptr %5, align 8, !tbaa !113   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.an
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bu = load i64, ptr %i.an, align 8, !tbaa !114
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1235
  call void @_ZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE10handle_urlEv(ptr noundef nonnull align 8 dereferenceable(5176) %i.bx), !inline_history !2925
  ret i32 0

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %4, align 8, !tbaa !113   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.h
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.m
  %i.cb = load i64, ptr %i.h, align 8, !tbaa !114
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.by
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE15on_header_fieldEPNS_11http_parserEPKcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1256
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.d = load i64, ptr %i.c, align 8, !tbaa !115
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.i = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE10_M_emplaceIJS5_S5_EEENSA_14_Node_iteratorIS8_Lb0ELb1EEENSA_20_Node_const_iteratorIS8_Lb0ELb1EEESt17integral_constantIbLb0EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.f) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.l = load i64, ptr %i.k, align 8, !tbaa !115
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef 0, i64 noundef %i.l, ptr noundef %1, i64 noundef %2) ; 0 uses
  store i32 1, ptr %i.a, align 8, !tbaa !1256
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.o = load i64, ptr %i.n, align 8, !tbaa !115
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.q = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.o, i64 noundef 0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit, %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE15on_header_valueEPNS_11http_parserEPKcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1256
  switch i32 %i.b, label %bb.c [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit
    i32 1, label %bb.b
  ]

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.d = load i64, ptr %i.c, align 8, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.d, i64 noundef 0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !1256
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.i = load i64, ptr %i.h, align 8, !tbaa !115
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 0, i64 noundef %i.i, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE19on_headers_completeEPNS_11http_parserE(ptr noundef %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE10_M_emplaceIJS5_S5_EEENSA_14_Node_iteratorIS8_Lb0ELb1EEENSA_20_Node_const_iteratorIS8_Lb0ELb1EEESt17integral_constantIbLb0EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !1102  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 %i.i, ptr %i.j, align 8, !tbaa !2928
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.l = load i8, ptr %i.k, align 1, !tbaa !1103  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 289
  store i8 %i.l, ptr %i.m, align 1, !tbaa !2929
  %i.n = icmp eq i8 %i.i, 1                       ; 3 uses
  %i.o = icmp eq i8 %i.l, 0                       ; 2 uses
  %or.cond.i = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond.i, label %.thread2.i, label %bb.d

.thread2.i:                                       ; preds = %bb.c
  %i.p = load i32, ptr %0, align 8                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.r = trunc i32 %i.p to i8
  %i.s = lshr i8 %i.r, 1
  %i.t = and i8 %i.s, 1
  store i8 %i.t, ptr %i.q, align 2, !tbaa !2930
  br label %2

bb.d:                                             ; preds = %bb.c
  %i.u = icmp eq i8 %i.l, 1                       ; 2 uses
  %i.v = select i1 %i.n, i1 %i.u, i1 false
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.x = zext i1 %i.v to i8
  store i8 %i.x, ptr %i.w, align 2, !tbaa !2930
  br i1 %i.n, label %1, label %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE25set_connection_parametersEv.exit

1:                                                ; preds = %bb.d
  br i1 %i.o, label %._crit_edge.i, label %5

._crit_edge.i:                                    ; preds = %1
  %.pre.i = load i32, ptr %0, align 8
  br label %2

2:                                                ; preds = %._crit_edge.i, %.thread2.i
  %3 = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.p, %.thread2.i ]
  %4 = and i32 %3, 2
  %.not.i = icmp eq i32 %4, 0
  br label %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE25set_connection_parametersEv.exit

5:                                                ; preds = %1
  br i1 %i.u, label %bb.e, label %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE25set_connection_parametersEv.exit

bb.e:                                             ; preds = %5
  %i.y = load i32, ptr %0, align 8
  %i.z = and i32 %i.y, 4
  %i.aa = icmp ne i32 %i.z, 0
  br label %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE25set_connection_parametersEv.exit

_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE25set_connection_parametersEv.exit: ; preds = %bb.d, %2, %5, %bb.e
  %6 = phi i1 [ %.not.i, %2 ], [ %i.aa, %bb.e ], [ false, %5 ], [ false, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 291
  %i.ac = zext i1 %6 to i8
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !2931
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 292
  %.lobit.i = lshr i16 %i.ae, 15
  %i.ag = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.ag, ptr %i.af, align 4, !tbaa !2932
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1235
  tail call void @_ZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE13handle_headerEv(ptr noundef nonnull align 8 dereferenceable(5176) %i.ai), !inline_history !2927
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE7on_bodyEPNS_11http_parserEPKcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPKcvEEN9__gnu_cxx17__normal_iteratorIPcS4_EENS9_IS7_S4_EET_SD_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.b, i64 noundef 0, ptr noundef %1, i64 noundef %2) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE19on_message_completeEPNS_11http_parserE(ptr noundef %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i8 1, ptr %i.a, align 4, !tbaa !1257
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1235
  tail call void @_ZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE6handleEv(ptr noundef nonnull align 8 dereferenceable(5176) %i.c), !inline_history !2933
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE10handle_urlEv(ptr noundef nonnull align 8 dereferenceable(5176) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.705", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1234
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4616 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1270, !nonnull !199, !align !339
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4624
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  call void @_ZN4crow6Router14handle_initialERNS_7requestERNS_8responseE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.705") align 8 %1, ptr noundef nonnull align 8 dereferenceable(3656) %i.f, ptr noundef nonnull align 8 dereferenceable(280) %i.d, ptr noundef nonnull align 8 dereferenceable(352) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4608 ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1046
  store ptr null, ptr %1, align 8, !tbaa !1046
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !1046 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !1046
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.a
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.i) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 144) #41
  %.pr = load ptr, ptr %1, align 8, !tbaa !1046   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4crow21routing_handle_resultEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4crow21routing_handle_resultEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EEaSEOS4_.exit
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %.pr) #40
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 144) #41
  br label %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNKSt14default_deleteIN4crow21routing_handle_resultEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !1046 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1119
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit
  %i.m = load i8, ptr %i.j, align 8, !tbaa !1120, !range !198, !noundef !199
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !1270, !nonnull !199, !align !339
  %i.p = load i8, ptr %i.o, align 8, !tbaa !1037
  %.not1 = icmp eq i8 %i.p, 6
  br i1 %.not1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1121
  %i.s = icmp eq i8 %i.r, 34
  br i1 %i.s, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4208
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4532 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4, !tbaa !1257, !range !198, !noundef !199
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE4doneEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4234 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  %i.z = and i16 %i.y, 32512
  %.not.i1.i = icmp eq i16 %i.z, 0
  br i1 %.not.i1.i, label %bb.g, label %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE4doneEv.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.t, align 8
  %.fr.i.i = freeze i32 %i.aa
  %i.ab = lshr i32 %.fr.i.i, 7
  %trunc1257.i.i = trunc i32 %i.ab to i8
  switch i8 %trunc1257.i.i, label %bb.i [
    i8 45, label %bb.h
    i8 1, label %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE4doneEv.exit
    i8 2, label %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE4doneEv.exit
  ]

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.u, align 4, !tbaa !1257
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1235
  call void @_ZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE6handleEv(ptr noundef nonnull align 8 dereferenceable(5176) %i.ad), !inline_history !96
  br label %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE4doneEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = or disjoint i16 %i.y, 2560
  store i16 %i.ae, ptr %i.x, align 2
  br label %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE4doneEv.exit

_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE4doneEv.exit: ; preds = %bb.f, %bb.g, %bb.g, %bb.h, %bb.i, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5121
  store i8 1, ptr %i.af, align 1, !tbaa !1268
  call void @_ZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE16complete_requestEv(ptr noundef nonnull align 8 dereferenceable(5176) %0)
  br label %bb.j

bb.j:                                             ; preds = %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS4_EEEE4doneEv.exit, %bb.d, %bb.b, %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS3_EE16complete_requestEv(ptr noundef nonnull align 8 dereferenceable(5176) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.crow::logger", align 8      ; 24 uses
  %i.d = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 8 uses
  store i32 1, ptr %i.f, align 8, !tbaa !227
  %i.g = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %.not.i = icmp sgt i32 %i.g, 1
  br i1 %.not.i, label %_ZN4crow6loggerlsIbEERS0_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %1, ptr noundef nonnull @.str.529, i64 noundef 10)
          to label %_ZN4crow6loggerlsIA11_cEERS0_RKT_.exit unwind label %bb.q ; 0 uses

_ZN4crow6loggerlsIA11_cEERS0_RKT_.exit:           ; preds = %bb.c
  %.pre = load i32, ptr %i.f, align 8, !tbaa !227
  %.pre38 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.i = icmp slt i32 %.pre, %.pre38
  br i1 %i.i, label %_ZN4crow6loggerlsIbEERS0_RKT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4crow6loggerlsIA11_cEERS0_RKT_.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(380) %1, ptr noundef nonnull %0)
          to label %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS5_EEEEERS0_RKT_.exit unwind label %bb.r ; 0 uses

_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS5_EEEEERS0_RKT_.exit: ; preds = %bb.d
  %.pre39 = load i32, ptr %i.f, align 8, !tbaa !227
  %.pre40 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !137
  %i.k = icmp slt i32 %.pre39, %.pre40
  br i1 %i.k, label %_ZN4crow6loggerlsIbEERS0_RKT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ17ExampleMiddlewareEEEJS5_EEEEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1, !tbaa !114
  %i.l = load ptr, ptr %1, align 8, !tbaa !229
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !616
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %1, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.s ; 0 uses

bb.g:                                             ; preds = %bb.e
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %1, i8 noundef signext 32)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.s ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit:               ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
end_hunk_1
