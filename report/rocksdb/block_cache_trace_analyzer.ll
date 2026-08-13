inline.NumInlined: 8970
inline.NumDeleted: 3445
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK7rocksdb23BlockCacheTraceAnalyzer18WriteReuseLifetimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEE:bb.a
  store ptr %i.b, ptr %i.e, align 8, !tbaa !157
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 0, ptr %i.a, align 8, !tbaa !143
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31
          to label %bb.b unwind label %bb.i       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.h, align 16, !tbaa !303
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !305
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %4, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !450
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %2, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !452
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.a, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !148
  store ptr %i.h, ptr %5, align 8, !tbaa !302
  store ptr @"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjN7rocksdb9TraceTypeES7_mRKNS8_15BlockAccessInfoEEZNKS8_23BlockCacheTraceAnalyzer18WriteReuseLifetimeES7_RKSt6vectorImSaImEEE3$_0E9_M_invokeERKSt9_Any_dataS7_OmOjOS9_S7_SP_SC_", ptr %i.i, align 8, !tbaa !309
  store ptr @"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjN7rocksdb9TraceTypeES7_mRKNS8_15BlockAccessInfoEEZNKS8_23BlockCacheTraceAnalyzer18WriteReuseLifetimeES7_RKSt6vectorImSaImEEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation", ptr %i.g, align 8, !tbaa !312
  invoke void @_ZNK7rocksdb23BlockCacheTraceAnalyzer14TraverseBlocksESt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjNS_9TraceTypeES9_mRKNS_15BlockAccessInfoEEEPSt3setIS7_St4lessIS7_ESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(1049088) %0, ptr noundef nonnull align 8 %5, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !312  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  %i.n = load i64, ptr %i.a, align 8, !tbaa !143
  invoke void @_ZNK7rocksdb23BlockCacheTraceAnalyzer16WriteStatsToFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEES8_RKSt3mapIS6_SE_ImmSt4lessImESaISt4pairIKmmEEESF_IS6_ESaISH_IS7_SL_EEEm(ptr noundef nonnull align 8 dereferenceable(1049088) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7rocksdb12_GLOBAL__N_128kFileNameSuffixReuseLifetimeB5cxx11E, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.n)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !19
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapImmSt4lessImESaIS6_IKmmEEEESt10_Select1stISF_ES9_IS5_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.o)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_ImmSt4lessImESaISt4pairIKmmEEES6_IS5_ESaIS8_IKS5_SC_EEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_ImmSt4lessImESaISt4pairIKmmEEES6_IS5_ESaIS8_IKS5_SC_EEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.s)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_ImmSt4lessImESaISt4pairIKmmEEES6_IS5_ESaIS8_IKS5_SC_EEED2Ev.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #29
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_ImmSt4lessImESaISt4pairIKmmEEES6_IS5_ESaIS8_IKS5_SC_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.i:                                             ; preds = %bb.a, %_ZNSt14_Function_baseD2Ev.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit9

bb.j:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !312  ; 2 uses
  %.not.i8 = icmp eq ptr %i.x, null
  br i1 %.not.i8, label %_ZNSt14_Function_baseD2Ev.exit9, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit9 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit9:                  ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.w, %bb.j ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_ImmSt4lessImESaISt4pairIKmmEEES6_IS5_ESaIS8_IKS5_SC_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb23BlockCacheTraceAnalyzer23WriteBlockReuseTimelineEmbNS_9TraceTypeE(ptr noundef nonnull align 8 dereferenceable(1049088) %0, i64 noundef %1, i1 noundef zeroext %2, i8 noundef signext %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %5 = alloca %"class.std::map.249", align 8      ; 11 uses
  %i.c = alloca i64, align 8                      ; 13 uses
  %6 = alloca %"class.std::function", align 8     ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %16 = alloca %"class.std::basic_ofstream", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !143
  %i.d = zext i1 %2 to i8
  store i8 %i.d, ptr %i.b, align 1, !tbaa !454
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.e, align 8, !tbaa !156
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.g, align 8, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.e, ptr %i.h, align 8, !tbaa !157
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !158
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.k = load i64, ptr %i.j, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.m = load i64, ptr %i.l, align 8, !tbaa !73
  %i.n = sub i64 %i.k, %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.o = udiv i64 %i.n, %1                        ; 2 uses
  store i64 %i.o, ptr %i.c, align 8, !tbaa !143
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %bb.ej, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31
          to label %bb.c unwind label %bb.g       ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %i.r, align 16, !tbaa !521
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !148
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !303
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !455
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.a, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !148
  store ptr %i.r, ptr %6, align 8, !tbaa !302
  store ptr @"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjN7rocksdb9TraceTypeES7_mRKNS8_15BlockAccessInfoEEZNKS8_23BlockCacheTraceAnalyzer23WriteBlockReuseTimelineEmbS9_E3$_0E9_M_invokeERKSt9_Any_dataS7_OmOjOS9_S7_SK_SC_", ptr %i.s, align 8, !tbaa !309
  store ptr @"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjN7rocksdb9TraceTypeES7_mRKNS8_15BlockAccessInfoEEZNKS8_23BlockCacheTraceAnalyzer23WriteBlockReuseTimelineEmbS9_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation", ptr %i.q, align 8, !tbaa !312
  invoke void @_ZNK7rocksdb23BlockCacheTraceAnalyzer14TraverseBlocksESt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjNS_9TraceTypeES9_mRKNS_15BlockAccessInfoEEEPSt3setIS7_St4lessIS7_ESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(1049088) %0, ptr noundef nonnull align 8 %6, ptr noundef null)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !312  ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.d, %bb.e
  %i.x = load i64, ptr %i.c, align 8, !tbaa !143  ; 9 uses
  %i.y = mul i64 %i.x, %i.x                       ; 2 uses
  %i.z = icmp ugt i64 %i.y, 2305843009213693951
  %i.aa = shl i64 %i.y, 3                         ; 2 uses
  %i.ab = select i1 %i.z, i64 -1, i64 %i.aa
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #31
          to label %.preheader361 unwind label %bb.k ; 7 uses

.preheader361:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.preheader360.lr.ph

.preheader360.lr.ph:                              ; preds = %.preheader361
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.e
  br i1 %i.ae, label %.preheader360.us.preheader, label %.preheader360.preheader

.preheader360.preheader:                          ; preds = %.preheader360.lr.ph
  %i.af = shl i64 %i.x, 3                         ; 2 uses
  br label %.preheader.us.preheader

.preheader360.us.preheader:                       ; preds = %.preheader360.lr.ph
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ac, i8 0, i64 %i.aa, i1 false), !tbaa !143
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge393, %.preheader360.us.preheader, %.preheader361
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ag = load i8, ptr %i.b, align 1, !tbaa !454, !range !459, !noundef !460
  %i.ah = trunc nuw i8 %i.ag to i1                ; 3 uses
  %i.ai = select i1 %i.ah, ptr @.str.184, ptr @.str.185
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.aj, ptr %7, align 8, !tbaa !81
  %i.ak = select i1 %i.ah, i64 18, i64 12         ; 2 uses
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, label %._crit_edge.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %._crit_edge
  %i.al = invoke noalias noundef nonnull dereferenceable(19) ptr @_Znwm(i64 noundef 19) #31
          to label %.noexc90 unwind label %bb.be  ; 2 uses

.noexc90:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.al, ptr %7, align 8, !tbaa !12
  store i64 18, ptr %i.aj, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge, %.noexc90
  %.sroa.sel.v = phi i64 [ 18, %.noexc90 ], [ 12, %._crit_edge ]
  %i.am = phi ptr [ %i.al, %.noexc90 ], [ %i.aj, %._crit_edge ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.am, ptr noundef nonnull align 1 dereferenceable(12) %i.ai, i64 %i.ak, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.ak, ptr %i.an, align 8, !tbaa !26
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.sel.v
  store i8 0, ptr %.sroa.sel, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12, !noalias !523
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26, !noalias !523
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !523
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.ap, i64 noundef %i.ar, ptr noundef nonnull @.str.168, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.t unwind label %bb.bf

bb.g:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit92

bb.h:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !312 ; 2 uses
  %.not.i91 = icmp eq ptr %i.au, null
  br i1 %.not.i91, label %_ZNSt14_Function_baseD2Ev.exit92, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = invoke noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit92 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #29
  unreachable

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit92

.preheader.us.preheader:                          ; preds = %._crit_edge393, %.preheader360.preheader
  %.040394 = phi i64 [ %i.de, %._crit_edge393 ], [ 0, %.preheader360.preheader ] ; 14 uses
  %i.az = sub i64 %i.x, %.040394
  %.neg = add i64 %.040394, 1
  %i.ba = mul i64 %i.af, %.040394
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.ba
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.af, i1 false), !tbaa !143
  %i.bb = sdiv i64 %.040394, 64
  %i.bc = and i64 %.040394, -9223372036854775745
  %i.bd = icmp ugt i64 %i.bc, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.bd, i64 -8, i64 0
  %i.be = and i64 %.040394, 63
  %i.bf = shl nuw i64 1, %i.be                    ; 3 uses
  %i.bg = mul i64 %.040394, %i.x
  %i.bh = getelementptr [8 x i8], ptr %i.ac, i64 %i.bg ; 3 uses
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bi = sdiv i64 %.040394, 64
  %i.bj = and i64 %.040394, -9223372036854775745
  %i.bk = icmp ugt i64 %i.bj, -9223372036854775808
  %storemerge.idx.i.i.i.i.i93.us.prol = select i1 %i.bk, i64 -8, i64 0
  %i.bl = and i64 %.040394, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = getelementptr [8 x i8], ptr %i.bh, i64 %.040394 ; 2 uses
  %i.bo = add nuw i64 %.040394, 1                 ; 3 uses
  %i.bp = icmp eq i64 %i.x, %.neg
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.sroa.0328.0392.us = phi ptr [ %i.dc, %._crit_edge.us ], [ %i.ad, %.preheader.us.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0328.0392.us, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !526 ; 4 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bb
  %storemerge.i.i.i.i.i.us = getelementptr inbounds i8, ptr %i.bs, i64 %storemerge.idx.i.i.i.i.i ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.us
  %i.bt = load i64, ptr %storemerge.i.i.i.i.i.us, align 8, !tbaa !143
  %i.bu = and i64 %i.bt, %i.bf
  %.not.us.prol = icmp eq i64 %i.bu, 0
  br i1 %.not.us.prol, label %.prol.loopexit, label %bb.l

bb.l:                                             ; preds = %.prol.preheader
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bi
  %storemerge.i.i.i.i.i94.us.prol = getelementptr inbounds i8, ptr %i.bv, i64 %storemerge.idx.i.i.i.i.i93.us.prol
  %i.bw = load i64, ptr %storemerge.i.i.i.i.i94.us.prol, align 8, !tbaa !143
  %i.bx = and i64 %i.bw, %i.bm
  %.not339.us.prol = icmp eq i64 %i.bx, 0
  br i1 %.not339.us.prol, label %.prol.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = load i64, ptr %i.bn, align 8, !tbaa !143
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.bn, align 8, !tbaa !143
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.l, %bb.m, %.preheader.us
  %.037391.us.unr = phi i64 [ %.040394, %.preheader.us ], [ %i.bo, %bb.m ], [ %i.bo, %bb.l ], [ %i.bo, %.prol.preheader ]
  br i1 %i.bp, label %._crit_edge.us, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.prol.loopexit, %bb.s
  %.037391.us = phi i64 [ %i.db, %bb.s ], [ %.037391.us.unr, %.prol.loopexit ] ; 6 uses
  %i.ca = load i64, ptr %storemerge.i.i.i.i.i.us, align 8, !tbaa !143
  %i.cb = and i64 %i.ca, %i.bf
  %.not.us = icmp eq i64 %i.cb, 0
  br i1 %.not.us, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.preheader.us.new
  %i.cc = sdiv i64 %.037391.us, 64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = and i64 %.037391.us, -9223372036854775745
  %i.cf = icmp ugt i64 %i.ce, -9223372036854775808
  %storemerge.idx.i.i.i.i.i93.us = select i1 %i.cf, i64 -8, i64 0
  %storemerge.i.i.i.i.i94.us = getelementptr inbounds i8, ptr %i.cd, i64 %storemerge.idx.i.i.i.i.i93.us
  %i.cg = and i64 %.037391.us, 63
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = load i64, ptr %storemerge.i.i.i.i.i94.us, align 8, !tbaa !143
  %i.cj = and i64 %i.ci, %i.ch
  %.not339.us = icmp eq i64 %i.cj, 0
  br i1 %.not339.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr [8 x i8], ptr %i.bh, i64 %.037391.us ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !143
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !143
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.preheader.us.new
  %i.cn = add nuw i64 %.037391.us, 1              ; 4 uses
  %i.co = load i64, ptr %storemerge.i.i.i.i.i.us, align 8, !tbaa !143
  %i.cp = and i64 %i.co, %i.bf
  %.not.us.1 = icmp eq i64 %i.cp, 0
  br i1 %.not.us.1, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = sdiv i64 %i.cn, 64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cq
  %i.cs = and i64 %i.cn, -9223372036854775745
  %i.ct = icmp ugt i64 %i.cs, -9223372036854775808
  %storemerge.idx.i.i.i.i.i93.us.1 = select i1 %i.ct, i64 -8, i64 0
  %storemerge.i.i.i.i.i94.us.1 = getelementptr inbounds i8, ptr %i.cr, i64 %storemerge.idx.i.i.i.i.i93.us.1
  %i.cu = and i64 %i.cn, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = load i64, ptr %storemerge.i.i.i.i.i94.us.1, align 8, !tbaa !143
  %i.cx = and i64 %i.cw, %i.cv
  %.not339.us.1 = icmp eq i64 %i.cx, 0
  br i1 %.not339.us.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr [8 x i8], ptr %i.bh, i64 %i.cn ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !143
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !143
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.db = add nuw i64 %.037391.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.db, %i.x
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.preheader.us.new, !llvm.loop !528

._crit_edge.us:                                   ; preds = %bb.s, %.prol.loopexit
  %i.dc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0328.0392.us) #33 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.e
  br i1 %i.dd, label %._crit_edge393, label %.preheader.us

._crit_edge393:                                   ; preds = %._crit_edge.us
  %i.de = add nuw i64 %.040394, 1                 ; 2 uses
  %exitcond423.not = icmp eq i64 %i.de, %i.x
end_hunk_0
