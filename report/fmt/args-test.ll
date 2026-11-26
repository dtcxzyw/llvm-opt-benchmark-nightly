Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/args-test?download=true
inline.NumInlined: 1795
inline.NumDeleted: 828
begin_hunk_0_@_ZN20args_test_basic_Test8TestBodyEv:_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w, %bb.g
  %.pn7.pn.pn.pn = phi { ptr, i32 } [ %.pn7.pn.pn, %bb.w ], [ %i.br, %bb.g ]
  call void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn7.pn.pn.pn
}

declare void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #0

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !34
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #20
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !117
  br label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit

_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit:    ; preds = %bb.a, %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit: ; preds = %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit, %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !41     ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN31args_test_strings_and_refs_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::dynamic_format_arg_store", align 8 ; 18 uses
  %i.a = alloca [11 x i8], align 1                ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @__const._ZN28args_test_named_strings_Test8TestBodyEv.str, i64 11, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(11) %i.a)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.a
  %i.d = invoke noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA11_cEEvRKT_.exit unwind label %bb.k ; 0 uses

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA11_cEEvRKT_.exit: ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %.not.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA11_cEEvRKT_.exit
  store ptr %i.a, ptr %i.f, align 16, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 12, ptr %i.i, align 16, !tbaa !38
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store ptr %i.k, ptr %i.e, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !43
  br label %bb.e

bb.c:                                             ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA11_cEEvRKT_.exit
  %i.l = load ptr, ptr %1, align 8, !tbaa !41     ; 5 uses
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775776
  br i1 %i.p, label %.invoke, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

.invoke:                                          ; preds = %bb.g, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 5                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = call i64 @llvm.umin.i64(i64 %i.r, i64 288230376151711743)
  %i.u = select i1 %i.s, i64 288230376151711743, i64 %i.t ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.u, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 5
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #18
          to label %.noexc14 unwind label %bb.k   ; 5 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o ; 2 uses
  store ptr %i.a, ptr %i.x, align 16, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 12, ptr %i.y, align 16, !tbaa !38
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc14, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %i.w, %.noexc14 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %i.l, %.noexc14 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !45, !alias.scope !128
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc14
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.w, %.noexc14 ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i33.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i33.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i.i.i
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.d, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i.i.i
  store ptr %i.w, ptr %1, align 8, !tbaa !41
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.u ; 2 uses
  store ptr %i.af, ptr %i.g, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %i.ag = phi ptr [ %.pre, %bb.b ], [ %i.af, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ] ; 3 uses
  %i.ah = phi ptr [ %i.k, %bb.b ], [ %i.ab, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ] ; 6 uses
  %i.ai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.a, ptr %i.ah, align 16, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i32 13, ptr %i.ak, align 16, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  store ptr %i.al, ptr %i.e, align 8, !tbaa !42
  %.pre35 = load ptr, ptr %1, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %1, align 8, !tbaa !41    ; 5 uses
  %i.an = ptrtoint ptr %i.ah to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775776
  br i1 %i.aq, label %.invoke, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ar = ashr exact i64 %i.ap, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 288230376151711743)
  %i.av = select i1 %i.at, i64 288230376151711743, i64 %i.au ; 3 uses
  %.not.i.i.i27 = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i27)
  %i.aw = shl nuw nsw i64 %i.av, 5
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #18
          to label %.noexc30 unwind label %bb.k   ; 6 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap ; 3 uses
  store ptr %i.a, ptr %i.ay, align 16, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %i.ai, ptr %i.az, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 13, ptr %i.ba, align 16, !tbaa !38
  %.not10.i.i.i.i.i = icmp eq ptr %i.am, %i.ag
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc30, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.ax, %.noexc30 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %i.am, %.noexc30 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !45, !alias.scope !129
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq ptr %i.bb, %i.ag
  br i1 %.not.i.i.i.i.i28, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc30
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ax, %.noexc30 ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNS1_17basic_string_viewIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bg) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNS1_17basic_string_viewIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNS1_17basic_string_viewIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  store ptr %i.ax, ptr %1, align 8, !tbaa !41
  store ptr %i.bd, ptr %i.e, align 8, !tbaa !42
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bh, ptr %i.g, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNS1_17basic_string_viewIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.bi = phi ptr [ %i.al, %bb.f ], [ %i.bd, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNS1_17basic_string_viewIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.bj = phi ptr [ %.pre35, %bb.f ], [ %i.ax, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNS1_17basic_string_viewIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 2 uses
  store i8 88, ptr %i.a, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48
  %i.bo = icmp eq ptr %i.bl, %i.bn                ; 2 uses
  %.idx.i.i = select i1 %i.bo, i64 0, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i.i
  %i.bq = ptrtoint ptr %i.bi to i64
  %i.br = ptrtoint ptr %i.bj to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = lshr exact i64 %i.bs, 5
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = select i1 %i.bo, i64 -9223372036854775808, i64 -4611686018427387904
  %i.bw = or disjoint i64 %i.bu, %i.bv
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.7, i64 16, i64 %i.bw, ptr %i.bp)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !52, !noalias !130
  %i.bz = icmp eq i64 %i.by, 40
  br i1 %i.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i: ; preds = %bb.j
  %i.ca = load ptr, ptr %2, align 8, !tbaa !53, !noalias !130
  %bcmp.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(40) %i.ca, ptr noundef nonnull align 1 dereferenceable(41) @.str.12, i64 40), !noalias !130
  %i.cb = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cb, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3)
          to label %_ZN7testing8internal8EqHelper7CompareIA41_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.m

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, %bb.j
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA41_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(41) @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIA41_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.m

_ZN7testing8internal8EqHelper7CompareIA41_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i
  %i.cc = load i8, ptr %3, align 8, !tbaa !63, !range !64, !noundef !65
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.w, label %bb.n

bb.k:                                             ; preds = %.invoke, %bb.a, %.noexc, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.l:                                             ; preds = %bb.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.n:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA41_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !66 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !53
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.p, %bb.o
  %i.ck = phi ptr [ %i.cj, %bb.p ], [ @.str.19, %bb.o ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 32, ptr noundef %i.ck)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.cl = load ptr, ptr %4, align 8, !tbaa !68    ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i18, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(128) %i.cl) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.r, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.w

bb.s:                                             ; preds = %bb.n
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit21

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.u ], [ %i.cq, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.cs = load ptr, ptr %4, align 8, !tbaa !68    ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i19, label %_ZN7testing7MessageD2Ev.exit21, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20: ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %i.cs) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit21

_ZN7testing7MessageD2Ev.exit21:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20, %bb.v, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.cp, %bb.s ], [ %.pn, %bb.v ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  br label %bb.aa

bb.w:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA41_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZN7testing7MessageD2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN20args_test_clear_Test8TestBodyEv:_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  store i8 0, ptr %i.bn, align 1, !tbaa !34
  %i.bp = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !34
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !52, !noalias !192
  %i.bv = icmp eq i64 %i.bu, 9
  br i1 %i.bv, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i43, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i42

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load ptr, ptr %2, align 8, !tbaa !53, !noalias !192 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 1
  %i.by = xor i64 %i.bx, 3756112514465673780
  %i.bz = getelementptr i8, ptr %i.bw, i64 8
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i64
  %i.cc = xor i64 %i.cb, 51
  %i.cd = or i64 %i.by, %i.cc
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i45, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i42

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i45: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i43
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.x

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i42: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(10) @.str.52, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.x

_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i45, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i42
  %i.ch = load i8, ptr %7, align 8, !tbaa !63, !range !64, !noundef !65
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.ah, label %bb.y

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit35, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit35 ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.bm

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i113.preheader
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bm

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i42, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i45
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.y:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !66 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i48, label %_ZNK7testing15AssertionResult15failure_messageEv.exit49, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !53
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit49

_ZNK7testing15AssertionResult15failure_messageEv.exit49: ; preds = %bb.aa, %bb.z
  %i.co = phi ptr [ %i.cn, %bb.aa ], [ @.str.19, %bb.z ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 135, ptr noundef %i.co)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit49
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.cp = load ptr, ptr %8, align 8, !tbaa !68    ; 3 uses
  %.not.i.i50 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i50, label %_ZN7testing7MessageD2Ev.exit52, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51: ; preds = %bb.ac
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.cp) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit52

_ZN7testing7MessageD2Ev.exit52:                   ; preds = %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit55

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit49
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #17
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn20 = phi { ptr, i32 } [ %i.cv, %bb.af ], [ %i.cu, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.cw = load ptr, ptr %8, align 8, !tbaa !68    ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i53, label %_ZN7testing7MessageD2Ev.exit55, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54: ; preds = %bb.ag
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit55

_ZN7testing7MessageD2Ev.exit55:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54, %bb.ag, %bb.ad
  %.pn20.pn = phi { ptr, i32 } [ %i.ct, %bb.ad ], [ %.pn20, %bb.ag ], [ %.pn20, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #17
  br label %bb.au

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZN7testing7MessageD2Ev.exit52
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !66 ; 4 uses
  %.not.i.i56 = icmp eq ptr %i.db, null
  br i1 %.not.i.i56, label %_ZN7testing15AssertionResultD2Ev.exit60, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !53 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57: ; preds = %bb.ai
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !34
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit60

_ZN7testing15AssertionResultD2Ev.exit60:          ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.dh = load ptr, ptr %1, align 8, !tbaa !41    ; 9 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.di, %i.dh
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit60
  store ptr %i.dh, ptr %i.a, align 8, !tbaa !42
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit60
  %i.dj = phi ptr [ %i.dh, %_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i ], [ %i.di, %_ZN7testing15AssertionResultD2Ev.exit60 ] ; 7 uses
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !72  ; 2 uses
  %i.dl = load ptr, ptr %i.g, align 8, !tbaa !94
  %.not.i.i1.i = icmp eq ptr %i.dl, %i.dk
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN3fmt3v126detail14named_arg_infoIcEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3fmt3v126detail14named_arg_infoIcEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i
  store ptr %i.dk, ptr %i.g, align 8, !tbaa !94
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN3fmt3v126detail14named_arg_infoIcEES4_EvT_S6_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !70 ; 3 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !22
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #17, !inline_history !7
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i, %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i.i
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %.not.i124 = icmp eq ptr %i.dj, %i.dr
  br i1 %.not.i124, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit
  store i32 44, ptr %i.dj, align 16, !tbaa !34
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i32 1, ptr %i.ds, align 16, !tbaa !38
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 2 uses
  store ptr %i.dt, ptr %i.a, align 8, !tbaa !42
  br label %bb.an

bb.ak:                                            ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit
  %i.du = ptrtoint ptr %i.dj to i64
  %i.dv = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dw = sub i64 %i.du, %i.dv                    ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775776
  br i1 %i.dx, label %bb.al, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i125

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc137 unwind label %bb.av

.noexc137:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i125: ; preds = %bb.ak
  %i.dy = ashr exact i64 %i.dw, 5                 ; 3 uses
  %.sroa.speculated.i.i.i126 = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i126, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 288230376151711743)
  %i.ec = select i1 %i.ea, i64 288230376151711743, i64 %i.eb ; 3 uses
  %.not.i.i.i127 = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i127)
  %i.ed = shl nuw nsw i64 %i.ec, 5
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #18
          to label %.noexc138 unwind label %bb.av ; 6 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i125
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dw ; 2 uses
  store i32 44, ptr %i.ef, align 16, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i32 1, ptr %i.eg, align 16, !tbaa !38
  %.not10.i.i.i.i.i128 = icmp eq ptr %i.dh, %i.dj
  br i1 %.not10.i.i.i.i.i128, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133, label %.lr.ph.i.i.i.i.i129

.lr.ph.i.i.i.i.i129:                              ; preds = %.noexc138, %.lr.ph.i.i.i.i.i129
  %.012.i.i.i.i.i130 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i129 ], [ %i.ee, %.noexc138 ] ; 2 uses
  %.0911.i.i.i.i.i131 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i129 ], [ %i.dh, %.noexc138 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i130, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i131, i64 32, i1 false), !tbaa.struct !45, !alias.scope !193
  %i.eh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i131, i64 32 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i130, i64 32 ; 2 uses
  %.not.i.i.i.i.i132 = icmp eq ptr %i.eh, %i.dj
  br i1 %.not.i.i.i.i.i132, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133, label %.lr.ph.i.i.i.i.i129, !llvm.loop !0

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133: ; preds = %.lr.ph.i.i.i.i.i129, %.noexc138
  %.0.lcssa.i.i.i.i.i134 = phi ptr [ %i.ee, %.noexc138 ], [ %i.ei, %.lr.ph.i.i.i.i.i129 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i134, i64 32 ; 2 uses
  %.not.i33.i.i135 = icmp eq ptr %i.dh, null
  br i1 %.not.i33.i.i135, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133
  %14 = ptrtoint ptr %i.dr to i64
  %15 = sub i64 %14, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %15) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136: ; preds = %bb.am, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133
  store ptr %i.ee, ptr %1, align 8, !tbaa !41
  store ptr %i.ej, ptr %i.a, align 8, !tbaa !42
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.ee, i64 %i.ec
  store ptr %i.ek, ptr %i.b, align 8, !tbaa !43
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136
  %i.el = phi ptr [ %i.dt, %bb.aj ], [ %i.ej, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136 ]
  %i.em = phi ptr [ %i.dh, %bb.aj ], [ %i.ee, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = lshr exact i64 %i.ep, 5
  %i.er = and i64 %i.eq, 4294967295
  %i.es = or disjoint i64 %i.er, -9223372036854775808
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.49, i64 2, i64 %i.es, ptr %i.em)
          to label %bb.ao unwind label %bb.aw

bb.ao:                                            ; preds = %bb.an
  %i.et = load ptr, ptr %2, align 8, !tbaa !53    ; 6 uses
  %i.eu = icmp eq ptr %i.et, %i.aw
  %i.ev = load ptr, ptr %10, align 8, !tbaa !53   ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew                ; 2 uses
  br i1 %i.eu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71: ; preds = %bb.ao
  br i1 %i.ex, label %bb.ap, label %.thread.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66: ; preds = %bb.ao
  br i1 %i.ex, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !52 ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 16
  call void @llvm.assume(i1 %i.fa)
  switch i64 %i.ez, label %bb.ar [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.fb = load i8, ptr %i.ev, align 1, !tbaa !34
  store i8 %i.fb, ptr %i.et, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.et, ptr align 1 %i.ev, i64 %i.ez, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.fc = load i64, ptr %i.ey, align 8, !tbaa !52 ; 2 uses
  store i64 %i.fc, ptr %i.h, align 8, !tbaa !52
  %i.fd = load ptr, ptr %2, align 8, !tbaa !53
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fc
  store i8 0, ptr %i.fe, align 1, !tbaa !34
  %.pre.i70 = load ptr, ptr %10, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73

.thread.i72:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71
  store ptr %i.ev, ptr %2, align 8, !tbaa !53
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fg = load <2 x i64>, ptr %i.ff, align 8, !tbaa !34
  store <2 x i64> %i.fg, ptr %i.h, align 8, !tbaa !34
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66
  %i.fh = load i64, ptr %i.aw, align 8, !tbaa !34
  store ptr %i.ev, ptr %2, align 8, !tbaa !53
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fj = load <2 x i64>, ptr %i.fi, align 8, !tbaa !34
  store <2 x i64> %i.fj, ptr %i.h, align 8, !tbaa !34
  %.not.i68 = icmp eq ptr %i.et, null
  br i1 %.not.i68, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67
  store ptr %i.et, ptr %10, align 8, !tbaa !53
  store i64 %i.fh, ptr %i.ew, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67, %.thread.i72
  store ptr %i.ew, ptr %10, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69, %bb.as, %bb.at
  %i.fk = phi ptr [ %.pre.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69 ], [ %i.et, %bb.as ], [ %i.ew, %bb.at ]
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.fl, align 8, !tbaa !52
  store i8 0, ptr %i.fk, align 1, !tbaa !34
  %i.fm = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !34
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.fr = load i64, ptr %i.h, align 8, !tbaa !52, !noalias !194
  %i.fs = icmp eq i64 %i.fr, 2
  br i1 %i.fs, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i78, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.ft = load ptr, ptr %2, align 8, !tbaa !53, !noalias !194
  %i.fu = load i16, ptr %i.ft, align 1
  %i.fv = icmp ne i16 %i.fu, 13364
  %i.fw = zext i1 %i.fv to i32
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i80, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i80: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i78
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83 unwind label %bb.ax

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(3) @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83 unwind label %bb.ax

_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i80, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77
  %i.fy = load i8, ptr %11, align 8, !tbaa !63, !range !64, !noundef !65
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.bh, label %bb.ay

bb.au:                                            ; preds = %_ZN7testing7MessageD2Ev.exit55, %bb.x
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZN7testing7MessageD2Ev.exit55 ], [ %i.ck, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.bm

bb.av:                                            ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i109, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i125, %bb.al
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.aw:                                            ; preds = %bb.an
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.bm

bb.ax:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i80
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ay:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.gd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !66 ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i84, label %_ZNK7testing15AssertionResult15failure_messageEv.exit85, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !53
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit85

_ZNK7testing15AssertionResult15failure_messageEv.exit85: ; preds = %bb.ba, %bb.az
  %i.gg = phi ptr [ %i.gf, %bb.ba ], [ @.str.19, %bb.az ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 140, ptr noundef %i.gg)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit85
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.gh = load ptr, ptr %12, align 8, !tbaa !68   ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit88, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %bb.bc
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !22
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(128) %i.gh) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit88

_ZN7testing7MessageD2Ev.exit88:                   ; preds = %bb.bc, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ay
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit91

bb.be:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit85
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #17
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn24 = phi { ptr, i32 } [ %i.gn, %bb.bf ], [ %i.gm, %bb.be ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.go = load ptr, ptr %12, align 8, !tbaa !68   ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.go, null
  br i1 %.not.i.i89, label %_ZN7testing7MessageD2Ev.exit91, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.bg
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !22
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(128) %i.go) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit91

_ZN7testing7MessageD2Ev.exit91:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, %bb.bg, %bb.bd
  %.pn24.pn = phi { ptr, i32 } [ %i.gl, %bb.bd ], [ %.pn24, %bb.bg ], [ %.pn24, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #17
  br label %bb.bl

bb.bh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83, %_ZN7testing7MessageD2Ev.exit88
  %i.gs = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !66 ; 4 uses
  %.not.i.i92 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i92, label %_ZN7testing15AssertionResultD2Ev.exit96, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !53 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93: ; preds = %bb.bi
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !34
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit96

_ZN7testing15AssertionResultD2Ev.exit96:          ; preds = %bb.bh, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.gz = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.aw
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZN7testing15AssertionResultD2Ev.exit96
  %i.hb = load i64, ptr %i.aw, align 8, !tbaa !34
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZN7testing15AssertionResultD2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.hd = load ptr, ptr %i.dm, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i100 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i100, label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !22
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #17, !inline_history !2
  br label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i

_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i:  ; preds = %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.hh = load ptr, ptr %i.f, align 8, !tbaa !72  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !73
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hh to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hm) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i: ; preds = %bb.bj, %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.hn = load ptr, ptr %1, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i1.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i
  %i.ho = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hr) #20
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.bl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit91, %bb.ax
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %_ZN7testing7MessageD2Ev.exit91 ], [ %i.gc, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.aw, %bb.av, %bb.au, %bb.w, %bb.v
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %bb.bl ], [ %i.gb, %bb.aw ], [ %i.ga, %bb.av ], [ %.pn20.pn.pn, %bb.au ], [ %i.cj, %bb.w ], [ %.pn.pn.pn, %bb.v ] ; 2 uses
  %i.hs = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.bm
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !34
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.c
  %.pn24.pn.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.c ], [ %.pn24.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn24.pn.pn.pn, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.b
  %.pn24.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.r, %bb.b ]
  call void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn24.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN22args_test_reserve_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_M_allocateEm.exit.i.i:
  %1 = alloca %"struct.fmt::v12::detail::named_arg", align 8 ; 5 uses
  %2 = alloca %"class.fmt::v12::dynamic_format_arg_store", align 8 ; 19 uses
  %3 = alloca %"struct.fmt::v12::detail::named_arg", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18
          to label %.noexc unwind label %bb.l     ; 5 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_M_allocateEm.exit.i.i
  %i.e = load ptr, ptr %2, align 8, !tbaa !41     ; 5 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %i.d, %.noexc ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.e, %.noexc ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !45, !alias.scope !205
  %i.g = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc
  %.not.i8.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i, label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.l) #20
  br label %_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i

_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i: ; preds = %bb.a, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i
  store ptr %i.d, ptr %2, align 8, !tbaa !41
  store ptr %i.d, ptr %i.c, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.m, ptr %i.b, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !72   ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt12_Vector_baseIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_M_allocateEm.exit.i.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit.thread

_ZNSt12_Vector_baseIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !94
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.s
  %i.x = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18
          to label %.noexc11 unwind label %bb.l   ; 4 uses

.noexc11:                                         ; preds = %_ZNSt12_Vector_baseIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_M_allocateEm.exit.i.i
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !72   ; 4 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !94
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i

bb.b:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.y, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i: ; preds = %bb.b, %.noexc11
  %.not.i8.i4.i = icmp eq ptr %i.y, null
  br i1 %.not.i8.i4.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #20
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i, %bb.c
  store ptr %i.x, ptr %i.n, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store ptr %i.ah, ptr %i.t, align 8, !tbaa !94
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ai, ptr %i.o, align 8, !tbaa !73
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !42  ; 3 uses
  %.pre36 = load ptr, ptr %i.b, align 8, !tbaa !43 ; 3 uses
  %.not.i = icmp eq ptr %.pre, %.pre36
  br i1 %.not.i, label %bb.d, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit.thread

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit.thread: ; preds = %_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i, %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit
  %i.aj = phi ptr [ %.pre, %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit ], [ %i.d, %_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ] ; 2 uses
  store float 1.500000e+00, ptr %i.aj, align 16, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 9, ptr %i.ak, align 16, !tbaa !38
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.am, ptr %i.c, align 8, !tbaa !42
  br label %bb.g

bb.d:                                             ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit
  %i.an = load ptr, ptr %2, align 8, !tbaa !41    ; 5 uses
  %i.ao = ptrtoint ptr %.pre to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775776
  br i1 %i.ar, label %bb.e, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc33 unwind label %bb.l

.noexc33:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.as = ashr exact i64 %i.aq, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 288230376151711743)
  %i.aw = select i1 %i.au, i64 288230376151711743, i64 %i.av ; 3 uses
  %.not.i.i.i27 = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i27)
  %i.ax = shl nuw nsw i64 %i.aw, 5
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #18
          to label %.noexc34 unwind label %bb.l   ; 5 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store float 1.500000e+00, ptr %i.az, align 16, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 9, ptr %i.ba, align 16, !tbaa !38
  %.not10.i.i.i.i.i28 = icmp eq ptr %i.an, %.pre36
  br i1 %.not10.i.i.i.i.i28, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %.noexc34, %.lr.ph.i.i.i.i.i29
  %.012.i.i.i.i.i30 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i29 ], [ %i.ay, %.noexc34 ] ; 2 uses
  %.0911.i.i.i.i.i31 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i29 ], [ %i.an, %.noexc34 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i30, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i31, i64 32, i1 false), !tbaa.struct !45, !alias.scope !206
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i31, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.bb, %.pre36
  br i1 %.not.i.i.i.i.i32, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i29, !llvm.loop !0

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i29, %.noexc34
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ay, %.noexc34 ], [ %i.bc, %.lr.ph.i.i.i.i.i29 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i33.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.bg) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  store ptr %i.ay, ptr %2, align 8, !tbaa !41
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !42
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 42, ptr %i.a, align 4, !tbaa !76
  store ptr @.str.57, ptr %3, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.bk = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
          to label %.noexc14 unwind label %bb.m   ; 6 uses

.noexc14:                                         ; preds = %bb.g
  invoke void @_ZN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IPKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !70
  store ptr null, ptr %i.bj, align 8, !tbaa !70
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !70 ; 3 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread.i.i, label %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i.i

_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread.i.i: ; preds = %bb.h
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !70
  br label %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i

_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i.i: ; preds = %bb.h
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #17, !inline_history !3
  %.pr.i.i = load ptr, ptr %i.bj, align 8, !tbaa !70 ; 3 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !70
  %.not.i.i.i.i.i13 = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i.i.i13, label %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i.i
  %i.br = load ptr, ptr %.pr.i.i, align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i) #17, !inline_history !4
  br label %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i

bb.i:                                             ; preds = %.noexc14
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 48) #20
  br label %.body

_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i: ; preds = %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i.i, %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !79, !nonnull !65, !align !80
  store ptr %i.bw, ptr %1, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bx, ptr %i.by, align 8
  invoke void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE11emplace_argIiEEvRKNS0_6detail9named_argIT_cEE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.bz = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !48
  %i.cc = icmp eq ptr %i.bz, %i.cb                ; 2 uses
  %i.cd = load ptr, ptr %2, align 8               ; 2 uses
  %.idx.i.i = select i1 %i.cc, i64 0, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = lshr exact i64 %i.ci, 5
  %i.ck = and i64 %i.cj, 4294967295
  %i.cl = select i1 %i.cc, i64 -9223372036854775808, i64 -4611686018427387904
  %i.cm = or disjoint i64 %i.ck, %i.cl
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.58, i64 10, i64 %i.cm, ptr %i.ce)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !52, !noalias !207
  %i.cp = icmp eq i64 %i.co, 10
  br i1 %i.cp, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i: ; preds = %bb.k
  %i.cq = load ptr, ptr %4, align 8, !tbaa !53, !noalias !207 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 1
  %i.cs = xor i64 %i.cr, 2334111870315998769
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  %i.cu = load i16, ptr %i.ct, align 1
  %i.cv = zext i16 %i.cu to i64
  %i.cw = xor i64 %i.cv, 12852
  %i.cx = or i64 %i.cs, %i.cw
  %i.cy = icmp ne i64 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.o

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, %bb.k
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(11) @.str.60, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal8EqHelper7CompareIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.o

_ZN7testing8internal8EqHelper7CompareIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i
  %i.db = load i8, ptr %5, align 8, !tbaa !63, !range !64, !noundef !65
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.y, label %bb.p

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_M_allocateEm.exit.i.i, %_ZNSt12_Vector_baseIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_M_allocateEm.exit.i.i, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.e
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.m:                                             ; preds = %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i, %bb.g
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.de, %bb.m ], [ %i.bu, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.ad

bb.n:                                             ; preds = %bb.j
  %i.df = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN31args_test_move_constructor_Test8TestBodyEv:_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !34
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.cw = load ptr, ptr %i.ah, align 8, !tbaa !22
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #17, !inline_history !2
  br label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i

_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i:  ; preds = %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.cz = ptrtoint ptr %i.ae to i64
  %i.da = ptrtoint ptr %i.y to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.db) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i: ; preds = %bb.s, %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %.not.i.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i1.i, label %_ZNSt10unique_ptrIN3fmt3v1224dynamic_format_arg_storeINS1_7contextEEESt14default_deleteIS4_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i
  %i.dc = ptrtoint ptr %i.v to i64
  %i.dd = sub i64 %i.dc, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.dd) #20
  br label %_ZNSt10unique_ptrIN3fmt3v1224dynamic_format_arg_storeINS1_7contextEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN3fmt3v1224dynamic_format_arg_storeINS1_7contextEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.t, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.pn10.pn.pn = phi { ptr, i32 } [ %.pn10.pn, %_ZN7testing7MessageD2Ev.exit32 ], [ %.pn8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.c
  %.pn10.pn.pn.pn = phi { ptr, i32 } [ %.pn10.pn.pn, %bb.u ], [ %i.bs, %bb.e ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.bm, %bb.c ]
  call void @_ZNSt10unique_ptrIN3fmt3v1224dynamic_format_arg_storeINS1_7contextEEESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn10.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA4_cEEvRKNS0_6detail9named_argIT_cEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::named_arg.141", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 6 uses
  invoke void @_ZN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IPKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !70
  store ptr null, ptr %i.a, align 8, !tbaa !70
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !70   ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !70
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread.i, label %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i

_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread.i: ; preds = %bb.b
  store ptr %i.b, ptr %i.a, align 8, !tbaa !70
  br label %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit

_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17, !inline_history !5
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !70 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !70
  %.not.i.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i
  %i.i = load ptr, ptr %.pr.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i) #17, !inline_history !6
  br label %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #20
  resume { ptr, i32 } %i.l

_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit: ; preds = %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread.i, %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i, %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !219, !nonnull !65
  %i.q = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA4_cEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(4) %i.p)
  store ptr %i.n, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.q, ptr %i.r, align 8
  call void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE11emplace_argINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS0_6detail9named_argIT_cEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN3fmt3v1224dynamic_format_arg_storeINS1_7contextEEESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100    ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i.i, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #17, !inline_history !220
  br label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i.i

_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i.i, label %_ZNKSt14default_deleteIN3fmt3v1224dynamic_format_arg_storeINS1_7contextEEEEclEPS4_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #20
  br label %_ZNKSt14default_deleteIN3fmt3v1224dynamic_format_arg_storeINS1_7contextEEEEclEPS4_.exit

_ZNKSt14default_deleteIN3fmt3v1224dynamic_format_arg_storeINS1_7contextEEEEclEPS4_.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #20
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN3fmt3v1224dynamic_format_arg_storeINS1_7contextEEEEclEPS4_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN19args_test_size_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::dynamic_format_arg_store", align 8 ; 19 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.b

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.a
  %i.h = load i8, ptr %2, align 8, !tbaa !63, !range !64, !noundef !65
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.l, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.n = phi ptr [ %i.m, %bb.e ], [ @.str.19, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 192, ptr noundef %i.n)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.o = load ptr, ptr %3, align 8, !tbaa !68     ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.o, null
  br i1 %.not.i.i32, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(128) %i.o) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit35

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.t, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.v = load ptr, ptr %3, align 8, !tbaa !68     ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.v, null
  br i1 %.not.i.i33, label %_ZN7testing7MessageD2Ev.exit35, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34: ; preds = %bb.k
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit35

_ZN7testing7MessageD2Ev.exit35:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34, %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %.pn, %bb.k ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #17
  br label %bb.t

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !66  ; 4 uses
  %.not.i.i36 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i36, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !34
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !42  ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  store i32 42, ptr %i.ag, align 16, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 1, ptr %i.aj, align 16, !tbaa !38
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  store ptr %i.al, ptr %i.g, align 8, !tbaa !42
  %.pre = load ptr, ptr %1, align 8, !tbaa !41
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIiEEvRKT_.exit

bb.o:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !41    ; 5 uses
  %i.an = ptrtoint ptr %i.ag to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775776
  br i1 %i.aq, label %bb.p, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc90 unwind label %bb.aj

.noexc90:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.ar = ashr exact i64 %i.ap, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 288230376151711743)
  %i.av = select i1 %i.at, i64 288230376151711743, i64 %i.au ; 3 uses
  %.not.i.i.i89 = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i89)
  %i.aw = shl nuw nsw i64 %i.av, 5
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #18
          to label %.noexc91 unwind label %bb.aj  ; 6 uses

.noexc91:                                         ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i32 42, ptr %i.ay, align 16, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 1, ptr %i.az, align 16, !tbaa !38
  %.not10.i.i.i.i.i = icmp eq ptr %i.am, %i.ag
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc91, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %i.ax, %.noexc91 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %i.am, %.noexc91 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !45, !alias.scope !224
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, %i.ag
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc91
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ax, %.noexc91 ], [ %i.bb, %.lr.ph.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  %i.bd = load ptr, ptr %i.ah, align 8, !tbaa !43
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bf) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  store ptr %i.ax, ptr %1, align 8, !tbaa !41
  store ptr %i.bc, ptr %i.g, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.av
end_hunk_2
begin_hunk_3_@_ZN19args_test_size_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.cc = load ptr, ptr %6, align 8, !tbaa !68    ; 3 uses
  %.not.i.i46 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i46, label %_ZN7testing7MessageD2Ev.exit48, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47: ; preds = %bb.ad
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(128) %i.cc) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit48

_ZN7testing7MessageD2Ev.exit48:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47, %bb.ad, %bb.aa
  %.pn18.pn = phi { ptr, i32 } [ %i.bz, %bb.aa ], [ %.pn18, %bb.ad ], [ %.pn18, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #17
  br label %bb.ai

bb.ae:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit40, %_ZN7testing7MessageD2Ev.exit45
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !66 ; 4 uses
  %.not.i.i49 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i49, label %_ZN7testing15AssertionResultD2Ev.exit53, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !53 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50: ; preds = %bb.af
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit53

_ZN7testing15AssertionResultD2Ev.exit53:          ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull align 1 dereferenceable(11) @.str.77)
          to label %.noexc54 unwind label %bb.aj

.noexc54:                                         ; preds = %_ZN7testing15AssertionResultD2Ev.exit53
  %i.cp = invoke noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.co)
          to label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA11_cEEvRKT_.exit unwind label %bb.aj ; 0 uses

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA11_cEEvRKT_.exit: ; preds = %.noexc54
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.cq = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.cr = load ptr, ptr %1, align 8, !tbaa !41
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = ashr exact i64 %i.cu, 5
  store i64 %i.cv, ptr %i.c, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 2, ptr %i.d, align 4, !tbaa !76
  %i.cw = icmp eq i64 %i.cu, 64
  br i1 %i.cw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA11_cEEvRKT_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit58 unwind label %bb.ak

bb.ah:                                            ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA11_cEEvRKT_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.78, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit58 unwind label %bb.ak

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit58: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.cx = load i8, ptr %8, align 8, !tbaa !63, !range !64, !noundef !65
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.au, label %bb.al

bb.ai:                                            ; preds = %_ZN7testing7MessageD2Ev.exit48, %bb.u
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn, %_ZN7testing7MessageD2Ev.exit48 ], [ %i.bq, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.bo

bb.aj:                                            ; preds = %bb.p, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.noexc54, %_ZN7testing15AssertionResultD2Ev.exit53
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.ay

bb.al:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit58
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !66 ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i59, label %_ZNK7testing15AssertionResult15failure_messageEv.exit60, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !53
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit60

_ZNK7testing15AssertionResult15failure_messageEv.exit60: ; preds = %bb.an, %bb.am
  %i.de = phi ptr [ %i.dd, %bb.an ], [ @.str.19, %bb.am ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 198, ptr noundef %i.de)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit60
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.df = load ptr, ptr %9, align 8, !tbaa !68    ; 3 uses
  %.not.i.i61 = icmp eq ptr %i.df, null
  br i1 %.not.i.i61, label %_ZN7testing7MessageD2Ev.exit63, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62: ; preds = %bb.ap
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !22
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit63

_ZN7testing7MessageD2Ev.exit63:                   ; preds = %bb.ap, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.au

bb.aq:                                            ; preds = %bb.al
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit66

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit60
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #17
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn22 = phi { ptr, i32 } [ %i.dl, %bb.as ], [ %i.dk, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.dm = load ptr, ptr %9, align 8, !tbaa !68    ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i64, label %_ZN7testing7MessageD2Ev.exit66, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %bb.at
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(128) %i.dm) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit66

_ZN7testing7MessageD2Ev.exit66:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65, %bb.at, %bb.aq
  %.pn22.pn = phi { ptr, i32 } [ %i.dj, %bb.aq ], [ %.pn22, %bb.at ], [ %.pn22, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #17
  br label %bb.ay

bb.au:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit58, %_ZN7testing7MessageD2Ev.exit63
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !66 ; 4 uses
  %.not.i.i67 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i67, label %_ZN7testing15AssertionResultD2Ev.exit71, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !53 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68: ; preds = %bb.av
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !34
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit71

_ZN7testing15AssertionResultD2Ev.exit71:          ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.dx = load ptr, ptr %1, align 8, !tbaa !41    ; 4 uses
  %i.dy = load ptr, ptr %i.g, align 8, !tbaa !42  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dy, %i.dx
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit71
  store ptr %i.dx, ptr %i.g, align 8, !tbaa !42
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit71
  %14 = phi ptr [ %i.dx, %_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i ], [ %i.dy, %_ZN7testing15AssertionResultD2Ev.exit71 ]
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !72 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !94
  %.not.i.i1.i = icmp eq ptr %i.ec, %i.ea
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN3fmt3v126detail14named_arg_infoIcEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3fmt3v126detail14named_arg_infoIcEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !94
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN3fmt3v126detail14named_arg_infoIcEES4_EvT_S6_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i
  %i.ed = load ptr, ptr %i.cn, align 8, !tbaa !70 ; 3 uses
  store ptr null, ptr %i.cn, align 8, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit.thread

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit.thread: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i
  %15 = load ptr, ptr %i.ed, align 8, !tbaa !22
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  call void %17(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #17, !inline_history !7
  %.pre93 = load ptr, ptr %i.g, align 8, !tbaa !42
  %.pre94 = load ptr, ptr %1, align 8, !tbaa !41
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i, %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit.thread
  %18 = phi ptr [ %i.dx, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i ], [ %.pre94, %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit.thread ] ; 2 uses
  %19 = phi ptr [ %14, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i ], [ %.pre93, %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.ee = ptrtoint ptr %19 to i64
  %i.ef = ptrtoint ptr %18 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = ashr exact i64 %i.eg, 5
  store i64 %i.eh, ptr %i.e, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i32 0, ptr %i.f, align 4, !tbaa !76
  %i.ei = icmp eq ptr %19, %18
  br i1 %i.ei, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit74 unwind label %bb.az

bb.ax:                                            ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit74 unwind label %bb.az

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit74: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.ej = load i8, ptr %11, align 8, !tbaa !63, !range !64, !noundef !65
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.bj, label %bb.ba

bb.ay:                                            ; preds = %_ZN7testing7MessageD2Ev.exit66, %bb.ak
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZN7testing7MessageD2Ev.exit66 ], [ %i.da, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.bo

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.bn

bb.ba:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !66 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.en, null
  br i1 %.not.i.i75, label %_ZNK7testing15AssertionResult15failure_messageEv.exit76, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !53
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit76

_ZNK7testing15AssertionResult15failure_messageEv.exit76: ; preds = %bb.bc, %bb.bb
  %i.ep = phi ptr [ %i.eo, %bb.bc ], [ @.str.19, %bb.bb ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 201, ptr noundef %i.ep)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit76
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.eq = load ptr, ptr %12, align 8, !tbaa !68   ; 3 uses
  %.not.i.i77 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i77, label %_ZN7testing7MessageD2Ev.exit79, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78: ; preds = %bb.be
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !22
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(128) %i.eq) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit79

_ZN7testing7MessageD2Ev.exit79:                   ; preds = %bb.be, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.bj

bb.bf:                                            ; preds = %bb.ba
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit82

bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit76
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #17
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn26 = phi { ptr, i32 } [ %i.ew, %bb.bh ], [ %i.ev, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.ex = load ptr, ptr %12, align 8, !tbaa !68   ; 3 uses
  %.not.i.i80 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i80, label %_ZN7testing7MessageD2Ev.exit82, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i81

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i81: ; preds = %bb.bi
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !22
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(128) %i.ex) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit82

_ZN7testing7MessageD2Ev.exit82:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i81, %bb.bi, %bb.bf
  %.pn26.pn = phi { ptr, i32 } [ %i.eu, %bb.bf ], [ %.pn26, %bb.bi ], [ %.pn26, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #17
  br label %bb.bn

bb.bj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit74, %_ZN7testing7MessageD2Ev.exit79
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !66 ; 4 uses
  %.not.i.i83 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i83, label %_ZN7testing15AssertionResultD2Ev.exit87, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !53 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84: ; preds = %bb.bk
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !34
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit87

_ZN7testing15AssertionResultD2Ev.exit87:          ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.fi = load ptr, ptr %i.cn, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i88, label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit87
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !22
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #17, !inline_history !2
  br label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i

_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i:  ; preds = %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit87
  %i.fm = load ptr, ptr %i.dz, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !73
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fr) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i: ; preds = %bb.bl, %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.fs = load ptr, ptr %1, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i1.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i
  %i.ft = load ptr, ptr %i.ah, align 8, !tbaa !43
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fw) #20
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.bn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit82, %bb.az
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %_ZN7testing7MessageD2Ev.exit82 ], [ %i.el, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.ay, %bb.aj, %bb.ai, %bb.t
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %bb.bn ], [ %.pn22.pn.pn, %bb.ay ], [ %i.cz, %bb.aj ], [ %.pn18.pn.pn, %bb.ai ], [ %.pn.pn.pn, %bb.t ]
  call void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn26.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN20args_test_basic_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr null
}
end_hunk_3
