Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/projsync?download=true
inline.NumInlined: 3666
inline.NumDeleted: 1202
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt7__cxx119to_stringEm:bb.a
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.an = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.ao = or disjoint i8 %i.an, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit: ; preds = %bb.h, %bb.i
  %storemerge.i = phi i8 [ %i.ao, %bb.i ], [ %i.am, %bb.h ]
  store i8 %storemerge.i, ptr %i.m, align 1, !tbaa !29
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK13proj_nlohmann6detail9iter_implINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEptEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !173    ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !58
  switch i8 %i.b, label %bb.d [
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !66
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.j, label %bb.e, !prof !87

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 32) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.104, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN13proj_nlohmann6detail16invalid_iterator6createEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.proj_nlohmann::detail::invalid_iterator") align 8 %i.k, i32 noundef 214, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr %i.k, ptr nonnull @_ZTIN13proj_nlohmann6detail16invalid_iteratorE, ptr nonnull @_ZN13proj_nlohmann6detail9exceptionD2Ev) #30
          to label %bb.l unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.q = load i64, ptr %i.o, align 8, !tbaa !29
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0, label %bb.i, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.k) #29
  br label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.06 = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.b ], [ %i.a, %bb.d ]
  ret ptr %.06

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.pn10 = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.l:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5eraseINS_6detail9iter_implISC_EETnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISI_NSF_IKSC_EEEE5valueEiE4typeELi0EEESI_SI_(ptr dead_on_unwind noalias writable sret(%"class.proj_nlohmann::detail::iter_impl.108") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !173
  %.not = icmp eq ptr %1, %i.a
  br i1 %.not, label %bb.f, label %bb.b, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 32) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.163, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN13proj_nlohmann6detail16invalid_iterator6createEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.proj_nlohmann::detail::invalid_iterator") align 8 %i.b, i32 noundef 202, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr %i.b, ptr nonnull @_ZTIN13proj_nlohmann6detail16invalid_iteratorE, ptr nonnull @_ZN13proj_nlohmann6detail9exceptionD2Ev) #30
          to label %bb.aa unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %.sink.split82

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !31     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.h = load i64, ptr %i.f, align 8, !tbaa !29
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.015, label %.sink.split82, label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.015, label %.sink.split82, label %bb.z

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  store ptr %1, ptr %0, align 8, !tbaa !173, !alias.scope !470
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !alias.scope !470
  store i64 -9223372036854775808, ptr %i.k, align 8, !tbaa !66, !alias.scope !470
  %i.l = load i8, ptr %1, align 8, !tbaa !58, !noalias !470 ; 3 uses
  switch i8 %i.l, label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit [
    i8 1, label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit.thread
    i8 2, label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit.thread44
  ]

_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit.thread: ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29, !noalias !470 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.01.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !67 ; 2 uses
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.01.0.copyload) #34
  %i.r = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.01.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #29 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.v = load i8, ptr %i.t, align 8, !tbaa !58
  tail call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef zeroext %i.v) #29, !inline_history !9
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13proj_nlohmann10basic_jsonIS_St6vectorS5_blmdSaNS6_14adl_serializerES8_IhSaIhEEEESt4lessIvESaISt4pairIKS5_SC_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISH_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit.thread44: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29, !noalias !470 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !68, !noalias !470 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !68, !alias.scope !470
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !68 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.al, %i.ac
  br i1 %.not.i.i, label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKSC_SE_EE.exit, label %bb.r

_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit: ; preds = %bb.f
  store i64 1, ptr %i.k, align 8, !tbaa !66, !alias.scope !470
  %.off = add i8 %i.l, -3
  %switch = icmp ult i8 %.off, 6
  br i1 %switch, label %bb.g, label %bb.t

bb.g:                                             ; preds = %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !66
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.h, !prof !87

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 32) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.164, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN13proj_nlohmann6detail16invalid_iterator6createEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.proj_nlohmann::detail::invalid_iterator") align 8 %i.ap, i32 noundef 205, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr %i.ap, ptr nonnull @_ZTIN13proj_nlohmann6detail16invalid_iteratorE, ptr nonnull @_ZN13proj_nlohmann6detail9exceptionD2Ev) #30
          to label %bb.aa unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread: ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %.sink.split82

bb.k:                                             ; preds = %bb.j, %bb.i
  %.017 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.as = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.k
  %i.av = load i64, ptr %i.at, align 8, !tbaa !29
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %.017, label %.sink.split82, label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %.017, label %.sink.split82, label %bb.z

bb.l:                                             ; preds = %bb.g
  switch i8 %i.l, label %bb.q [
    i8 3, label %bb.m
    i8 8, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !29 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.m
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !29
  %i.bd = add i64 %i.bc, 1
  tail call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #31
  %.pre62 = load ptr, ptr %i.ax, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  %i.be = phi ptr [ %.pre62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.ay, %bb.m ]
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef 32) #31
  store ptr null, ptr %i.ax, align 8, !tbaa !29
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !29 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !98 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !99
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #31
  %.pre = load ptr, ptr %i.bf, align 8, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bn = phi ptr [ %.pre, %bb.o ], [ %i.bg, %bb.n ]
  tail call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef 32) #31
  store ptr null, ptr %i.bf, align 8, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31
  store i8 0, ptr %1, align 8, !tbaa !58
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit.thread
  %i.bo = load i64, ptr %i.x, align 8, !tbaa !29
  %i.bp = add i64 %i.bo, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.bp) #31, !inline_history !10
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13proj_nlohmann10basic_jsonIS_St6vectorS5_blmdSaNS6_14adl_serializerES8_IhSaIhEEEESt4lessIvESaISt4pairIKS5_SC_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISH_E.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13proj_nlohmann10basic_jsonIS_St6vectorS5_blmdSaNS6_14adl_serializerES8_IhSaIhEEEESt4lessIvESaISt4pairIKS5_SC_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISH_E.exit: ; preds = %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 80) #31, !inline_history !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !55
  %i.bs = add i64 %i.br, -1
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !55
  store ptr %i.q, ptr %i.j, align 8, !tbaa !67
  br label %bb.y

bb.r:                                             ; preds = %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit.thread44
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bt = ptrtoint ptr %i.ac to i64
  %i.bu = ptrtoint ptr %i.al to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 4                 ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cg, %bb.s ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cf, %bb.s ] ; 4 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ce, %bb.s ] ; 4 uses
  %i.bz = load i8, ptr %.0910.i.i.i.i.i.i.i, align 1, !tbaa !110
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !29
  store i8 0, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !58
  store ptr null, ptr %i.ca, align 8, !tbaa !29
  %i.cc = load i8, ptr %.0811.i.i.i.i.i.i.i, align 1, !tbaa !110 ; 2 uses
  store i8 %i.bz, ptr %.0811.i.i.i.i.i.i.i, align 1, !tbaa !110
  store i8 %i.cc, ptr %3, align 8, !tbaa !110
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !tbaa !29
  store i64 %i.cb, ptr %i.cd, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.by, align 8, !tbaa !29
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.by, i8 noundef zeroext %i.cc) #29, !inline_history !2
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 16
  %i.cg = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ch = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ch, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.loopexit.i.i, !llvm.loop !469

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.loopexit.i.i: ; preds = %bb.s
  %.pre.pre.i.i = load ptr, ptr %i.ab, align 8, !tbaa !93
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.loopexit.i.i, %bb.r
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.loopexit.i.i ], [ %i.ac, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKSC_SE_EE.exit

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKSC_SE_EE.exit: ; preds = %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit.thread44, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i.i
  %i.ci = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS2_14adl_serializerES5_IhSaIhEEEES5_ISF_SaISF_EEEESJ_ET0_T_SL_SK_.exit.i.i ], [ %i.ac, %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit.thread44 ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -16 ; 2 uses
  store ptr %i.cj, ptr %i.ab, align 8, !tbaa !93
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.cl = load i8, ptr %i.cj, align 8, !tbaa !58
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i8 noundef zeroext %i.cl) #29, !inline_history !2
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !68
  br label %bb.y

bb.t:                                             ; preds = %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit
  %i.cm = tail call ptr @__cxa_allocate_exception(i64 32) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.cn = tail call noundef nonnull ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE9type_nameEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %i.cn, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.thread

end_hunk_0
