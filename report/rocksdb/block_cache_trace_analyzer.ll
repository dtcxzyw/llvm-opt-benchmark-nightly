inline.NumInlined: 8970
inline.NumDeleted: 3445
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK7rocksdb23BlockCacheTraceAnalyzer18WriteReuseLifetimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEE:bb.a
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
  %.039394 = phi i64 [ %i.dc, %._crit_edge393 ], [ 0, %.preheader360.preheader ] ; 14 uses
  %i.az = sub i64 %i.x, %.039394
  %.neg = add i64 %.039394, 1
  %i.ba = mul i64 %i.af, %.039394
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.ba
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.af, i1 false), !tbaa !143
  %i.bb = sdiv i64 %.039394, 64
  %i.bc = and i64 %.039394, -9223372036854775745
  %i.bd = icmp ugt i64 %i.bc, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.bd, i64 -8, i64 0
  %i.be = and i64 %.039394, 63
  %i.bf = shl nuw i64 1, %i.be                    ; 3 uses
  %21 = mul i64 %.039394, %i.x
  %22 = getelementptr [8 x i8], ptr %i.ac, i64 %21 ; 3 uses
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bg = sdiv i64 %.039394, 64
  %i.bh = and i64 %.039394, -9223372036854775745
  %i.bi = icmp ugt i64 %i.bh, -9223372036854775808
  %storemerge.idx.i.i.i.i.i93.us.prol = select i1 %i.bi, i64 -8, i64 0
  %i.bj = and i64 %.039394, 63
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = getelementptr [8 x i8], ptr %22, i64 %.039394 ; 2 uses
  %i.bm = add nuw i64 %.039394, 1                 ; 3 uses
  %i.bn = icmp eq i64 %i.x, %.neg
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.sroa.0328.0392.us = phi ptr [ %i.da, %._crit_edge.us ], [ %i.ad, %.preheader.us.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0328.0392.us, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !526 ; 4 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bb
  %storemerge.i.i.i.i.i.us = getelementptr inbounds i8, ptr %i.bq, i64 %storemerge.idx.i.i.i.i.i ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.us
  %i.br = load i64, ptr %storemerge.i.i.i.i.i.us, align 8, !tbaa !143
  %i.bs = and i64 %i.br, %i.bf
  %.not.us.prol = icmp eq i64 %i.bs, 0
  br i1 %.not.us.prol, label %.prol.loopexit, label %bb.l

bb.l:                                             ; preds = %.prol.preheader
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bg
  %storemerge.i.i.i.i.i94.us.prol = getelementptr inbounds i8, ptr %i.bt, i64 %storemerge.idx.i.i.i.i.i93.us.prol
  %i.bu = load i64, ptr %storemerge.i.i.i.i.i94.us.prol, align 8, !tbaa !143
  %i.bv = and i64 %i.bu, %i.bk
  %.not339.us.prol = icmp eq i64 %i.bv, 0
  br i1 %.not339.us.prol, label %.prol.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = load i64, ptr %i.bl, align 8, !tbaa !143
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bl, align 8, !tbaa !143
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.l, %bb.m, %.preheader.us
  %.037391.us.unr = phi i64 [ %.039394, %.preheader.us ], [ %i.bm, %bb.m ], [ %i.bm, %bb.l ], [ %i.bm, %.prol.preheader ]
  br i1 %i.bn, label %._crit_edge.us, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.prol.loopexit, %bb.s
  %.037391.us = phi i64 [ %i.cz, %bb.s ], [ %.037391.us.unr, %.prol.loopexit ] ; 6 uses
  %i.by = load i64, ptr %storemerge.i.i.i.i.i.us, align 8, !tbaa !143
  %i.bz = and i64 %i.by, %i.bf
  %.not.us = icmp eq i64 %i.bz, 0
  br i1 %.not.us, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.preheader.us.new
  %i.ca = sdiv i64 %.037391.us, 64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ca
  %i.cc = and i64 %.037391.us, -9223372036854775745
  %i.cd = icmp ugt i64 %i.cc, -9223372036854775808
  %storemerge.idx.i.i.i.i.i93.us = select i1 %i.cd, i64 -8, i64 0
  %storemerge.i.i.i.i.i94.us = getelementptr inbounds i8, ptr %i.cb, i64 %storemerge.idx.i.i.i.i.i93.us
  %i.ce = and i64 %.037391.us, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = load i64, ptr %storemerge.i.i.i.i.i94.us, align 8, !tbaa !143
  %i.ch = and i64 %i.cg, %i.cf
  %.not339.us = icmp eq i64 %i.ch, 0
  br i1 %.not339.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr [8 x i8], ptr %22, i64 %.037391.us ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !143
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !143
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.preheader.us.new
  %i.cl = add nuw i64 %.037391.us, 1              ; 4 uses
  %i.cm = load i64, ptr %storemerge.i.i.i.i.i.us, align 8, !tbaa !143
  %i.cn = and i64 %i.cm, %i.bf
  %.not.us.1 = icmp eq i64 %i.cn, 0
  br i1 %.not.us.1, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = sdiv i64 %i.cl, 64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.co
  %i.cq = and i64 %i.cl, -9223372036854775745
  %i.cr = icmp ugt i64 %i.cq, -9223372036854775808
  %storemerge.idx.i.i.i.i.i93.us.1 = select i1 %i.cr, i64 -8, i64 0
  %storemerge.i.i.i.i.i94.us.1 = getelementptr inbounds i8, ptr %i.cp, i64 %storemerge.idx.i.i.i.i.i93.us.1
  %i.cs = and i64 %i.cl, 63
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = load i64, ptr %storemerge.i.i.i.i.i94.us.1, align 8, !tbaa !143
  %i.cv = and i64 %i.cu, %i.ct
  %.not339.us.1 = icmp eq i64 %i.cv, 0
  br i1 %.not339.us.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr [8 x i8], ptr %22, i64 %i.cl ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !143
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !143
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.cz = add nuw i64 %.037391.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cz, %i.x
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.preheader.us.new, !llvm.loop !528

._crit_edge.us:                                   ; preds = %bb.s, %.prol.loopexit
  %i.da = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0328.0392.us) #33 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.e
  br i1 %i.db, label %._crit_edge393, label %.preheader.us

._crit_edge393:                                   ; preds = %._crit_edge.us
  %i.dc = add nuw i64 %.039394, 1                 ; 2 uses
  %exitcond423.not = icmp eq i64 %i.dc, %i.x
  br i1 %exitcond423.not, label %._crit_edge, label %.preheader.us.preheader, !llvm.loop !529

bb.t:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !523
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.dd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 15 uses
  switch i8 %3, label %._crit_edge.i.i38.i [
    i8 8, label %._crit_edge.i.i.i
    i8 9, label %._crit_edge.i.i6.i
    i8 7, label %._crit_edge.i.i14.i
    i8 11, label %._crit_edge.i.i22.i
    i8 10, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i
  ]

._crit_edge.i.i.i:                                ; preds = %bb.t
  store ptr %i.dd, ptr %14, align 8, !tbaa !81, !alias.scope !530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dd, ptr noundef nonnull align 1 dereferenceable(6) @.str.260, i64 6, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 6, ptr %i.de, align 8, !tbaa !26, !alias.scope !530
  %i.df = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i8 0, ptr %i.df, align 2, !tbaa !17, !alias.scope !530
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

._crit_edge.i.i6.i:                               ; preds = %bb.t
  store ptr %i.dd, ptr %14, align 8, !tbaa !81, !alias.scope !530
  store i32 1635017028, ptr %i.dd, align 8, !alias.scope !530
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 4, ptr %i.dg, align 8, !tbaa !26, !alias.scope !530
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i8 0, ptr %i.dh, align 4, !tbaa !17, !alias.scope !530
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

._crit_edge.i.i14.i:                              ; preds = %bb.t
  store ptr %i.dd, ptr %14, align 8, !tbaa !81, !alias.scope !530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.dd, ptr noundef nonnull align 1 dereferenceable(5) @.str.262, i64 5, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 5, ptr %i.di, align 8, !tbaa !26, !alias.scope !530
  %i.dj = getelementptr inbounds nuw i8, ptr %14, i64 21
  store i8 0, ptr %i.dj, align 1, !tbaa !17, !alias.scope !530
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

._crit_edge.i.i22.i:                              ; preds = %bb.t
  store ptr %i.dd, ptr %14, align 8, !tbaa !81, !alias.scope !530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.dd, ptr noundef nonnull align 1 dereferenceable(13) @.str.263, i64 13, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 13, ptr %i.dk, align 8, !tbaa !26, !alias.scope !530
  %i.dl = getelementptr inbounds nuw i8, ptr %14, i64 29
  store i8 0, ptr %i.dl, align 1, !tbaa !17, !alias.scope !530
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i: ; preds = %bb.t
  %i.dm = invoke noalias noundef nonnull dereferenceable(18) ptr @_Znwm(i64 noundef 18) #31
          to label %.noexc96 unwind label %bb.bg  ; 3 uses

.noexc96:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i
  store ptr %i.dm, ptr %14, align 8, !tbaa !12, !alias.scope !530
  store i64 17, ptr %i.dd, align 8, !tbaa !17, !alias.scope !530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.dm, ptr noundef nonnull align 1 dereferenceable(17) @.str.264, i64 17, i1 false), !noalias !530
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 17, ptr %i.dn, align 8, !tbaa !26, !alias.scope !530
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 17
  store i8 0, ptr %i.do, align 1, !tbaa !17, !noalias !530
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

._crit_edge.i.i38.i:                              ; preds = %bb.t
  store ptr %i.dd, ptr %14, align 8, !tbaa !81, !alias.scope !530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.dd, ptr noundef nonnull align 1 dereferenceable(11) @.str.265, i64 11, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 11, ptr %i.dp, align 8, !tbaa !26, !alias.scope !530
  %i.dq = getelementptr inbounds nuw i8, ptr %14, i64 27
  store i8 0, ptr %i.dq, align 1, !tbaa !17, !alias.scope !530
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit: ; preds = %._crit_edge.i.i38.i, %.noexc96, %._crit_edge.i.i22.i, %._crit_edge.i.i14.i, %._crit_edge.i.i6.i, %._crit_edge.i.i.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.u unwind label %bb.bh

bb.u:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.dr = load ptr, ptr %7, align 8, !tbaa !12, !noalias !533 ; 3 uses
  %i.ds = load i64, ptr %i.an, align 8, !tbaa !26, !noalias !533 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !26, !noalias !533 ; 5 uses
  %i.dv = sub i64 9223372036854775807, %i.du
  %i.dw = icmp ult i64 %i.dv, %i.ds
  br i1 %i.dw, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.252) #32
          to label %.noexc97 unwind label %bb.bi

.noexc97:                                         ; preds = %bb.v
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.u
  %i.dx = add i64 %i.du, %i.ds                    ; 3 uses
  %i.dy = load ptr, ptr %12, align 8, !tbaa !12, !noalias !533 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.eb = icmp ult i64 %i.du, 16
  call void @llvm.assume(i1 %i.eb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ec = load i64, ptr %i.dz, align 8, !tbaa !17, !noalias !533
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ed = phi i64 [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.dx, %i.ed
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.du ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.ds, 1
  br i1 %cond.i.i.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ef = load i8, ptr %i.dr, align 1, !tbaa !17, !noalias !533
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !17, !noalias !533
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr align 1 %i.dr, i64 %i.ds, i1 false), !noalias !533
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.du, i64 noundef 0, ptr noundef %i.dr, i64 noundef %i.ds)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i unwind label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.aa, %bb.z, %bb.y, %bb.w
  store i64 %i.dx, ptr %i.dt, align 8, !tbaa !26, !noalias !533
  %i.eg = load ptr, ptr %12, align 8, !tbaa !12, !noalias !533
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dx
  store i8 0, ptr %i.eh, align 1, !tbaa !17, !noalias !533
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.ei, ptr %11, align 8, !tbaa !81, !alias.scope !533
  %i.ej = load ptr, ptr %12, align 8, !tbaa !12, !noalias !533 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.dz
  br i1 %i.ek, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.el = load i64, ptr %i.dt, align 8, !tbaa !26, !noalias !533 ; 3 uses
  %i.em = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.em)
  %i.en = add nuw nsw i64 %i.el, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ei, ptr noundef nonnull align 8 dereferenceable(1) %i.dz, i64 %i.en, i1 false)
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.ej, ptr %11, align 8, !tbaa !12, !alias.scope !533
  %i.eo = load i64, ptr %i.dz, align 8, !tbaa !17, !noalias !533
  store i64 %i.eo, ptr %i.ei, align 8, !tbaa !17, !alias.scope !533
  %.pre.i = load i64, ptr %i.dt, align 8, !tbaa !26, !noalias !533
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ab
  %i.ep = phi i64 [ %i.el, %bb.ab ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !26, !alias.scope !533
  store ptr %i.dz, ptr %12, align 8, !tbaa !12, !noalias !533
  store i64 0, ptr %i.dt, align 8, !tbaa !26, !noalias !533
  store i8 0, ptr %i.dz, align 8, !tbaa !17, !noalias !533
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.er = load i64, ptr %i.a, align 8, !tbaa !143 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.es = icmp ult i64 %i.er, 10
  br i1 %i.es, label %.thread.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.ac
  %i.et = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.et, ptr %15, align 8, !tbaa !81, !alias.scope !536
  br label %bb.ak

end_hunk_0
