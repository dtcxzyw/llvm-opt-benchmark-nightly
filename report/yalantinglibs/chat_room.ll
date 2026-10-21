Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/chat_room?download=true
inline.NumInlined: 36272
inline.NumDeleted: 14368
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_:bb.a
  %i.aad = load ptr, ptr %.sroa.0466.0730, align 8, !tbaa !230 ; 2 uses
  %i.aae = load i64, ptr %i.uf, align 8, !tbaa !231 ; 8 uses
  %i.aaf = icmp ugt i64 %i.aae, 15
  br i1 %i.aaf, label %bb.gz, label %._crit_edge.i.i434

bb.gz:                                            ; preds = %bb.gy
  %i.aag = icmp slt i64 %i.aae, 0
  br i1 %i.aag, label %.noexc.i437, label %bb.ha

.noexc.i437:                                      ; preds = %bb.gz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.914) #55
          to label %.noexc438 unwind label %.loopexit.split-lp503.loopexit.split-lp.loopexit.split-lp

.noexc438:                                        ; preds = %.noexc.i437
  unreachable

bb.ha:                                            ; preds = %bb.gz
  %i.aah = add nuw i64 %i.aae, 1                  ; 2 uses
  %i.aai = icmp slt i64 %i.aah, 0
  br i1 %i.aai, label %.noexc6.i436, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i435, !prof !227

.noexc6.i436:                                     ; preds = %bb.ha
  invoke void @_ZSt17__throw_bad_allocv() #55
          to label %.noexc439 unwind label %.loopexit.split-lp503.loopexit.split-lp.loopexit.split-lp

.noexc439:                                        ; preds = %.noexc6.i436
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i435: ; preds = %bb.ha
  %i.aaj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aah) #56
          to label %.noexc440 unwind label %.loopexit.split-lp503.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc440:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i435
  store ptr %i.aaj, ptr %i.sa, align 8, !tbaa !230
  store i64 %i.aae, ptr %i.sb, align 8, !tbaa !221
  br label %._crit_edge.i.i434

._crit_edge.i.i434:                               ; preds = %.noexc440, %bb.gy
  %i.aak = phi ptr [ %i.aaj, %.noexc440 ], [ %i.sb, %bb.gy ] ; 3 uses
  switch i64 %i.aae, label %bb.hc [
    i64 1, label %bb.hb
    i64 0, label %bb.hd
  ]

bb.hb:                                            ; preds = %._crit_edge.i.i434
  %i.aal = load i8, ptr %i.aad, align 1, !tbaa !221
  store i8 %i.aal, ptr %i.aak, align 1, !tbaa !221
  br label %bb.hd

bb.hc:                                            ; preds = %._crit_edge.i.i434
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aak, ptr align 1 %i.aad, i64 %i.aae, i1 false)
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb, %._crit_edge.i.i434
  store i64 %i.aae, ptr %i.sc, align 8, !tbaa !231
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aak, i64 %i.aae
  store i8 0, ptr %i.aam, align 1, !tbaa !221
  invoke void @_ZN7cinatra16coro_http_server16set_http_handlerIJLNS_11http_methodE1EEZNS0_18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEDpOT_EUlRNS_17coro_http_requestERNS_18coro_http_responseEE_JEEEvSB_T0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(1256) %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %43, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %44)
          to label %bb.he unwind label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.aan = load ptr, ptr %i.sa, align 8, !tbaa !230 ; 2 uses
  %i.aao = icmp eq ptr %i.aan, %i.sb
  br i1 %i.aao, label %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENUlRNS_17coro_http_requestERNS_18coro_http_responseEE_D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i442

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i442: ; preds = %bb.he
  %i.aap = load i64, ptr %i.sb, align 8, !tbaa !221
  %i.aaq = add i64 %i.aap, 1
  call void @_ZdlPvm(ptr noundef %i.aan, i64 noundef %i.aaq) #54
  br label %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENUlRNS_17coro_http_requestERNS_18coro_http_responseEE_D2Ev.exit

_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENUlRNS_17coro_http_requestERNS_18coro_http_responseEE_D2Ev.exit: ; preds = %bb.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i442
  %i.aar = load ptr, ptr %43, align 8, !tbaa !230 ; 2 uses
  %i.aas = icmp eq ptr %i.aar, %i.ry
  br i1 %i.aas, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445: ; preds = %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENUlRNS_17coro_http_requestERNS_18coro_http_responseEE_D2Ev.exit
  %i.aat = load i64, ptr %i.ry, align 8, !tbaa !221
  %i.aau = add i64 %i.aat, 1
  call void @_ZdlPvm(ptr noundef %i.aar, i64 noundef %i.aau) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447: ; preds = %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENUlRNS_17coro_http_requestERNS_18coro_http_responseEE_D2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445
  %i.aav = load ptr, ptr %36, align 8, !tbaa !230 ; 2 uses
  %i.aaw = icmp eq ptr %i.aav, %i.rk
  br i1 %i.aaw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447
  %i.aax = load i64, ptr %i.rk, align 8, !tbaa !221
  %i.aay = add i64 %i.aax, 1
  call void @_ZdlPvm(ptr noundef %i.aav, i64 noundef %i.aay) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #43
  %i.aaz = getelementptr inbounds nuw i8, ptr %.sroa.0466.0730, i64 32 ; 2 uses
  %i.aba = icmp eq ptr %i.aaz, %i.rc
  br i1 %i.aba, label %._crit_edge, label %bb.fc

.loopexit.split-lp503.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i435, %.noexc.i437, %.noexc6.i436
  %lpad.loopexit.split-lp1201 = landingpad { ptr, i32 }
          cleanup
  br label %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENUlRNS_17coro_http_requestERNS_18coro_http_responseEE_D2Ev.exit454

bb.hf:                                            ; preds = %bb.hd
  %i.abb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abc = load ptr, ptr %i.sa, align 8, !tbaa !230 ; 2 uses
  %i.abd = icmp eq ptr %i.abc, %i.sb
  br i1 %i.abd, label %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENUlRNS_17coro_http_requestERNS_18coro_http_responseEE_D2Ev.exit454, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i451

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i451: ; preds = %bb.hf
  %i.abe = load i64, ptr %i.sb, align 8, !tbaa !221
  %i.abf = add i64 %i.abe, 1
  call void @_ZdlPvm(ptr noundef %i.abc, i64 noundef %i.abf) #54
  br label %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENUlRNS_17coro_http_requestERNS_18coro_http_responseEE_D2Ev.exit454

_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENUlRNS_17coro_http_requestERNS_18coro_http_responseEE_D2Ev.exit454: ; preds = %bb.hf, %.loopexit.split-lp503.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i451
  %.pn60 = phi { ptr, i32 } [ %i.abb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i451 ], [ %lpad.loopexit.split-lp1201, %.loopexit.split-lp503.loopexit.split-lp.loopexit.split-lp ], [ %i.abb, %bb.hf ] ; 2 uses
  %i.abg = load ptr, ptr %43, align 8, !tbaa !230 ; 2 uses
  %i.abh = icmp eq ptr %i.abg, %i.ry
  br i1 %i.abh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455: ; preds = %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENUlRNS_17coro_http_requestERNS_18coro_http_responseEE_D2Ev.exit454
  %i.abi = load i64, ptr %i.ry, align 8, !tbaa !221
  %i.abj = add i64 %i.abi, 1
  call void @_ZdlPvm(ptr noundef %i.abg, i64 noundef %i.abj) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457: ; preds = %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENUlRNS_17coro_http_requestERNS_18coro_http_responseEE_D2Ev.exit454, %.loopexit.split-lp498.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455, %bb.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396
  %.pn60.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396 ], [ %.pn60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455 ], [ %.pn58, %bb.gt ], [ %lpad.loopexit.split-lp1198, %.loopexit.split-lp498.loopexit.split-lp.loopexit.split-lp ], [ %.pn60, %_ZZN7cinatra16coro_http_server18set_static_res_dirIJEEEvSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEEDpOT_ENUlRNS_17coro_http_requestERNS_18coro_http_responseEE_D2Ev.exit454 ] ; 2 uses
  %i.abk = load ptr, ptr %36, align 8, !tbaa !230 ; 2 uses
  %i.abl = icmp eq ptr %i.abk, %i.rk
  br i1 %i.abl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457
  %i.abm = load i64, ptr %i.rk, align 8, !tbaa !221
  %i.abn = add i64 %i.abm, 1
  call void @_ZdlPvm(ptr noundef %i.abk, i64 noundef %i.abn) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390 ], [ %.pn60.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458 ], [ %.pn60.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #43
  %i.abo = load ptr, ptr %35, align 8, !tbaa !230 ; 2 uses
  %i.abp = icmp eq ptr %i.abo, %i.qz
  br i1 %i.abp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460
  %i.abq = load i64, ptr %i.qz, align 8, !tbaa !221
  %i.abr = add i64 %i.abq, 1
  call void @_ZdlPvm(ptr noundef %i.abo, i64 noundef %i.abr) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #43
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %34) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #43
  br label %bb.hg

bb.hg:                                            ; preds = %bb.ei, %bb.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463 ], [ %.pn67, %bb.fa ], [ %i.sd, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, %bb.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %bb.ca, %bb.ag, %bb.q, %bb.k
  %.pn71 = phi { ptr, i32 } [ %i.bt, %bb.q ], [ %.pn67.pn.pn, %bb.hg ], [ %.pn47.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284 ], [ %.pn43.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %i.lh, %bb.cs ], [ %.pn, %bb.ca ], [ %i.dp, %bb.ag ], [ %i.ba, %bb.k ]
  resume { ptr, i32 } %.pn71
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { i32, ptr } @_ZN7cinatra16coro_http_server10sync_startEv(ptr noundef nonnull align 8 dereferenceable(1256) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::Future", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  invoke void @_ZN7cinatra16coro_http_server11async_startEv(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::Future") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1256) %0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN12async_simple6FutureISt10error_codeE4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.a = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN12async_simple6FutureISt10error_codeE6getTryIS2_EEDcRT_(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.c
  %i.b = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNR12async_simple3TryISt10error_codeE5valueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZNR12async_simple6FutureISt10error_codeE5valueEv.exit unwind label %bb.j ; 2 uses

_ZNR12async_simple6FutureISt10error_codeE5valueEv.exit: ; preds = %.noexc
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 8, !tbaa !222
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !475
  %i.c = load ptr, ptr %1, align 8, !tbaa !488    ; 5 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNR12async_simple6FutureISt10error_codeE5valueEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %2 = atomicrmw add ptr %i.d, i8 -1 acq_rel, align 1
  %.not.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i, label %bb.e, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.f, !prof !227

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ne i8 %i.g, 2
  %i.i = load ptr, ptr %i.e, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  %or.cond.i.i.i.i.i.i = select i1 %i.h, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.c, i64 noundef 96) #54
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, %bb.d, %_ZNR12async_simple6FutureISt10error_codeE5valueEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i.i1.i = icmp eq i8 %i.l, -1
  br i1 %.not.i.i.i.i1.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.h, !prof !227

bb.h:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i
  %i.m = icmp ne i8 %i.l, 2
  %i.n = load ptr, ptr %i.j, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.n, null
  %or.cond.i.i.i.i.i3.i = select i1 %i.m, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i
  br i1 %or.cond.i.i.i.i.i3.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j) #43
  br label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit

_ZN12async_simple6FutureISt10error_codeED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.21.0.copyload, 1
  ret { i32, ptr } %.fca.1.insert

bb.j:                                             ; preds = %.noexc, %bb.c, %bb.b, %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #53
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7cinatra16coro_http_serverD2Ev(ptr noundef nonnull align 8 dead_on_return(1256) dereferenceable(1256) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.easylog::record_t", align 8 ; 9 uses
  %2 = alloca %"struct.refvalue::meta_string.2462", align 1 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, !prof !223

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit:         ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.g = icmp slt i32 %i.f, 4
  br i1 %i.g, label %bb.f, label %bb.u

bb.f:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.h = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #43 ; 2 uses
  %i.i = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.g, label %_ZN7easylog6loggerILm0EE8instanceEv.exit8, !prof !223

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  %.not.i5 = icmp eq i32 %i.k, 0
  br i1 %.not.i5, label %_ZN7easylog6loggerILm0EE8instanceEv.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit8

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit8:        ; preds = %bb.i, %bb.g, %bb.f
  %i.n = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit8
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 24), align 8, !tbaa !285
  %i.p = sub nsw i64 %i.h, %.sroa.0.0.copyload.i2.i.i
  %i.q = sdiv i64 %i.p, 1000000
  %i.r = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.s = srem i64 %i.q, %i.r
  %i.t = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 16) monotonic, align 8
  %i.u = icmp slt i64 %i.s, %i.t
  br i1 %i.u, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.u

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit8, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store i8 91, ptr %2, align 1, !alias.scope !3313
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.0.i.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) @__const._ZZN7cinatra16coro_http_serverD1EvENKUlvE_clEv.prefix, i64 23, i1 false), !tbaa.struct !490
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.965, i64 3, i1 false), !tbaa.struct !465
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %i.h, i32 noundef 3, i64 26, ptr nonnull %2)
          to label %bb.k unwind label %bb.ap

bb.k:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !231  ; 5 uses
  %i.y = icmp sgt i64 %i.x, 9223372036854775781
  br i1 %i.y, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.915) #55
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.k
  %i.z = add nsw i64 %i.x, 26                     ; 3 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !230 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ad = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.ad)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !221
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.af = phi i64 [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.z, %i.af
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ag, ptr noundef nonnull align 1 dereferenceable(26) @.str.1193, i64 26, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.x, i64 noundef 0, ptr noundef nonnull @.str.1193, i64 noundef 26)
          to label %bb.o unwind label %bb.ap

bb.o:                                             ; preds = %bb.m, %bb.n
  store i64 %i.z, ptr %i.w, align 8, !tbaa !231
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !230
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i8 0, ptr %i.ai, align 1, !tbaa !221
  %i.aj = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %_ZN7easylog6loggerILm0EE8instanceEv.exit13, !prof !223

bb.p:                                             ; preds = %bb.o
  %i.al = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  %.not.i10 = icmp eq i32 %i.al, 0
  br i1 %.not.i10, label %_ZN7easylog6loggerILm0EE8instanceEv.exit13, label %bb.q
end_hunk_0
begin_hunk_1_@_ZN4asio6detail16thread_info_baseD2Ev:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !260  ; 2 uses
  %.not.2 = icmp eq ptr %i.e, null
  br i1 %.not.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.e) #43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260  ; 2 uses
  %.not.3 = icmp eq ptr %i.g, null
  br i1 %.not.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.g) #43
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !260  ; 2 uses
  %.not.4 = icmp eq ptr %i.i, null
  br i1 %.not.4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.i) #43
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260  ; 2 uses
  %.not.5 = icmp eq ptr %i.k, null
  br i1 %.not.5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.k) #43
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !260  ; 2 uses
  %.not.6 = icmp eq ptr %i.m, null
  br i1 %.not.6, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.m) #43
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !260  ; 2 uses
  %.not.7 = icmp eq ptr %i.o, null
  br i1 %.not.7, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.o) #43
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !260  ; 2 uses
  %.not.8 = icmp eq ptr %i.q, null
  br i1 %.not.8, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.q) #43
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !260  ; 2 uses
  %.not.9 = icmp eq ptr %i.s, null
  br i1 %.not.9, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.s) #43
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !653
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #27

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail9scheduler12task_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !643  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !647  ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !641
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = atomicrmw add ptr %i.g, i64 %i.d seq_cst, align 8 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !643
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i64 0, ptr %i.j, align 8, !tbaa !647
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !642  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !637, !nonnull !295, !align !426 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i8, ptr %i.n, align 8, !tbaa !565, !range !294, !noundef !295
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !636, !range !294, !noundef !295
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #43 ; 0 uses
  store i8 1, ptr %i.q, align 8, !tbaa !636
  %.pre3 = load ptr, ptr %i.a, align 8, !tbaa !643
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.v = phi ptr [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %.pre3, %bb.e ] ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !641    ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  store i8 1, ptr %i.x, align 8, !tbaa !568
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !602  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 224
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 232 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !603 ; 2 uses
  %.not8.i = icmp eq ptr %i.ac, null
  %..i = select i1 %.not8.i, ptr %i.aa, ptr %i.ac
  store ptr %i.z, ptr %..i, align 8, !tbaa !602
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !602
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !603
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %.pre4 = load ptr, ptr %0, align 8, !tbaa !641
  br label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit: ; preds = %bb.f, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.af = phi ptr [ %.pre4, %bb.f ], [ %i.w, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 184 ; 3 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !608
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 232 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !603 ; 2 uses
  %.not.i1 = icmp eq ptr %i.aj, null
  %..i2 = select i1 %.not.i1, ptr %i.ag, ptr %i.aj
  store ptr %i.ah, ptr %..i2, align 8, !tbaa !602
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !603
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail9scheduler12work_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !651
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !647  ; 3 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !649
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = add nsw i64 %i.d, -1
  %i.i = atomicrmw add ptr %i.g, i64 %i.h seq_cst, align 8 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %_ZN4asio6detail9scheduler13work_finishedEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !649    ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %1 = atomicrmw add ptr %i.k, i64 -1 seq_cst, align 8
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.e, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !565, !range !294, !noundef !295
  %i.o = trunc nuw i8 %i.n to i1                  ; 3 uses
  br i1 %i.o, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  store i8 1, ptr %i.p, align 8, !tbaa !622
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.r = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #43 ; 0 uses
  %.pre.i.i = load i8, ptr %i.m, align 8, !tbaa !565, !range !294
  %i.s = trunc nuw i8 %.pre.i.i to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  store i8 1, ptr %i.t, align 8, !tbaa !622
  br i1 %i.s, label %bb.f, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.f:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !623
  %i.x = or i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !623
  %i.y = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.u) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.f, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 208 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !568, !range !294, !noundef !295
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !566 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.z, align 8, !tbaa !568
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !205
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.j, !inline_history !25

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.h, %bb.g, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.o, label %bb.i, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.i:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #43 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.o, label %bb.k, label %.body

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ak) #43 ; 0 uses
  br label %.body

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.i, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.d, %bb.c, %bb.b
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !651 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  store i64 0, ptr %i.an, align 8, !tbaa !647
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !610 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail9scheduler13work_finishedEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !650 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !637, !nonnull !295, !align !426 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load i8, ptr %i.au, align 8, !tbaa !565, !range !294, !noundef !295
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.m, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !636, !range !294, !noundef !295
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit: ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bb = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #43 ; 0 uses
  store i8 1, ptr %i.ax, align 8, !tbaa !636
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !651 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  %.pre1 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !602 ; 2 uses
  %.not.i = icmp eq ptr %.pre1, null
  br i1 %.not.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread: ; preds = %bb.m, %bb.l, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.bc = phi ptr [ %.pre, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit ], [ %i.am, %bb.l ], [ %i.am, %bb.m ] ; 2 uses
  %i.bd = phi ptr [ %.pre1, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit ], [ %i.ap, %bb.l ], [ %i.ap, %bb.m ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.bf = load ptr, ptr %0, align 8, !tbaa !649   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 232 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !603 ; 2 uses
  %.not8.i = icmp eq ptr %i.bi, null
  %..i = select i1 %.not8.i, ptr %i.bg, ptr %i.bi
  store ptr %i.bd, ptr %..i, align 8, !tbaa !602
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !602
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !603
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  br label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit, %_ZN4asio6detail9scheduler13work_finishedEv.exit
  ret void

.body:                                            ; preds = %bb.j, %bb.k
  %i.bl = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #53
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofreeobj noundef align 8 dereferenceable(8)) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #12

declare i32 @pause() local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #13

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio17execution_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !415    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.04.i.i = load ptr, ptr %i.b, align 8, !tbaa !577 ; 2 uses
  %.not5.i.i = icmp eq ptr %.04.i.i, null
  br i1 %.not5.i.i, label %_ZN4asio17execution_context7destroyEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc
  %.06.i.i = phi ptr [ %.0.i.i, %.noexc ], [ %.04.i.i, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !205
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %.06.i.i)
          to label %.noexc unwind label %bb.c, !inline_history !28

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  %.0.i.i = load ptr, ptr %i.f, align 8, !tbaa !577 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN4asio17execution_context8shutdownEv.exit, label %.lr.ph.i.i, !llvm.loop !29

_ZN4asio17execution_context8shutdownEv.exit:      ; preds = %.noexc
  %.pre = load ptr, ptr %0, align 8, !tbaa !415   ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %.pre2 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !548 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %.not2.i.i = icmp eq ptr %.pre2, null
  br i1 %.not2.i.i, label %_ZN4asio17execution_context7destroyEv.exit, label %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i

_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i: ; preds = %_ZN4asio17execution_context8shutdownEv.exit, %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i
  %i.h = phi ptr [ %i.j, %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i ], [ %.pre2, %_ZN4asio17execution_context8shutdownEv.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !550  ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !205
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #43, !inline_history !3392
  store ptr %i.j, ptr %i.g, align 8, !tbaa !548
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZN4asio17execution_context7destroyEv.exitthread-pre-split, label %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i, !llvm.loop !30

_ZN4asio17execution_context7destroyEv.exitthread-pre-split: ; preds = %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !415
  br label %_ZN4asio17execution_context7destroyEv.exit

_ZN4asio17execution_context7destroyEv.exit:       ; preds = %_ZN4asio17execution_context7destroyEv.exitthread-pre-split, %_ZN4asio17execution_context8shutdownEv.exit
  %i.n = phi ptr [ %.pr, %_ZN4asio17execution_context7destroyEv.exitthread-pre-split ], [ %.pre, %_ZN4asio17execution_context8shutdownEv.exit ] ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %_ZN4asio17execution_context7destroyEv.exit.thread

_ZN4asio17execution_context7destroyEv.exit.thread: ; preds = %bb.a, %_ZN4asio17execution_context7destroyEv.exit
  %i.p = phi ptr [ %i.n, %_ZN4asio17execution_context7destroyEv.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #43 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 64) #54
  br label %bb.b

bb.b:                                             ; preds = %_ZN4asio17execution_context7destroyEv.exit.thread, %_ZN4asio17execution_context7destroyEv.exit
  ret void

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #53
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !527  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !415  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.04.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !577 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.04.i.i.i, null
  br i1 %.not5.i.i.i, label %_ZN4asio17execution_context7destroyEv.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.noexc.i
  %.06.i.i.i = phi ptr [ %.0.i.i.i, %.noexc.i ], [ %.04.i.i.i, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.06.i.i.i, align 8, !tbaa !205
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(40) %.06.i.i.i)
          to label %.noexc.i unwind label %bb.c, !inline_history !28

.noexc.i:                                         ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  %.0.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !577 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZN4asio17execution_context8shutdownEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZN4asio17execution_context8shutdownEv.exit.i:    ; preds = %.noexc.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !415 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 56 ; 2 uses
  %.pre2.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !548 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %.pre2.i, null
  br i1 %.not2.i.i.i, label %_ZN4asio17execution_context7destroyEv.exit.thread.i, label %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i

_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i: ; preds = %_ZN4asio17execution_context8shutdownEv.exit.i, %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i
  %i.j = phi ptr [ %i.l, %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i ], [ %.pre2.i, %_ZN4asio17execution_context8shutdownEv.exit.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !550  ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !205
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #43, !inline_history !3393
  store ptr %i.l, ptr %.phi.trans.insert.i, align 8, !tbaa !548
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZN4asio17execution_context7destroyEv.exit.i, label %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i, !llvm.loop !30

_ZN4asio17execution_context7destroyEv.exit.i:     ; preds = %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !415 ; 2 uses
  %i.p = icmp eq ptr %.pr.i, null
  br i1 %i.p, label %_ZN4asio17execution_contextD2Ev.exit, label %_ZN4asio17execution_context7destroyEv.exit.thread.i

_ZN4asio17execution_context7destroyEv.exit.thread.i: ; preds = %_ZN4asio17execution_context8shutdownEv.exit.i, %_ZN4asio17execution_context7destroyEv.exit.i, %bb.b
  %i.q = phi ptr [ %.pr.i, %_ZN4asio17execution_context7destroyEv.exit.i ], [ %i.d, %bb.b ], [ %.pre.i, %_ZN4asio17execution_context8shutdownEv.exit.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #43 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 64) #54
  br label %_ZN4asio17execution_contextD2Ev.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #53
  unreachable

_ZN4asio17execution_contextD2Ev.exit:             ; preds = %_ZN4asio17execution_context7destroyEv.exit.i, %_ZN4asio17execution_context7destroyEv.exit.thread.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #54
  br label %bb.d

bb.d:                                             ; preds = %_ZN4asio17execution_contextD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio10io_context4workD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !655, !nonnull !295, !align !426 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %1 = atomicrmw add ptr %i.b, i64 -1 seq_cst, align 8
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !565, !range !294, !noundef !295
  %i.f = trunc nuw i8 %i.e to i1                  ; 3 uses
  br i1 %i.f, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i8 1, ptr %i.g, align 8, !tbaa !622
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #43 ; 0 uses
  %.pre.i.i = load i8, ptr %i.d, align 8, !tbaa !565, !range !294
  %i.j = trunc nuw i8 %.pre.i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i8 1, ptr %i.k, align 8, !tbaa !622
  br i1 %i.j, label %bb.c, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.c:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !623
  %i.o = or i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !623
  %i.p = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.c, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !568, !range !294, !noundef !295
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !566  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.q, align 8, !tbaa !568
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !205
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.g, !inline_history !25

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.e, %bb.d, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.f, label %bb.f, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.f:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #43 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.f, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #43 ; 0 uses
  br label %.body

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.f, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.a
  ret void

.body:                                            ; preds = %bb.g, %bb.h
  %i.ad = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #53
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !536  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !655, !nonnull !295, !align !426 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %1 = atomicrmw add ptr %i.e, i64 -1 seq_cst, align 8
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.c, label %_ZN4asio10io_context4workD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !565, !range !294, !noundef !295
  %i.i = trunc nuw i8 %i.h to i1                  ; 3 uses
  br i1 %i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store i8 1, ptr %i.j, align 8, !tbaa !622
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #43 ; 0 uses
  %.pre.i.i.i = load i8, ptr %i.g, align 8, !tbaa !565, !range !294
  %i.m = trunc nuw i8 %.pre.i.i.i to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store i8 1, ptr %i.n, align 8, !tbaa !622
  br i1 %i.m, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !623
  %i.r = or i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !623
  %i.s = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.o) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i: ; preds = %bb.d, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !568, !range !294, !noundef !295
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !566  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.t, align 8, !tbaa !568
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !205
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i unwind label %bb.h, !inline_history !25

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.f, %bb.e, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i
  br i1 %i.i, label %bb.g, label %_ZN4asio10io_context4workD2Ev.exit

bb.g:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #43 ; 0 uses
  br label %_ZN4asio10io_context4workD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.i, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #43 ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h
  %i.ag = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #53
  unreachable

_ZN4asio10io_context4workD2Ev.exit:               ; preds = %bb.b, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #54
  br label %bb.j

bb.j:                                             ; preds = %_ZN4asio10io_context4workD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !401  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !402    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.944) #55
  unreachable

_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #56 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !280  ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !260
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !260
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !221
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !222
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !222
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3402)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !260, !alias.scope !3402
  store ptr null, ptr %i.z, align 8, !tbaa !280, !alias.scope !3402
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !260, !alias.scope !3401
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !525, !alias.scope !3402
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !3397

_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3404)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !260, !alias.scope !3404
  store ptr null, ptr %i.ae, align 8, !tbaa !280, !alias.scope !3404
  store <2 x ptr> %i.af, ptr %.012.i.i.i18, align 8, !tbaa !260, !alias.scope !3403
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !525, !alias.scope !3404
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !3397

_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN4asio10io_contextEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !537
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #54
end_hunk_1
begin_hunk_2_@_ZN4asio9execution6detail17any_executor_base10require_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESJ_EET_PKvS11_:bb.a
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.a, align 8, !tbaa !410, !alias.scope !3661
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.b, align 8, !tbaa !411, !alias.scope !3661
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.c, align 8, !tbaa !409, !alias.scope !3661
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.d, align 8, !tbaa !412, !alias.scope !3661
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESJ_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::io_context::basic_executor_type.445", align 8 ; 4 uses
  %4 = alloca %"class.asio::io_context::basic_executor_type.445", align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3674)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3678)
  %i.a = load i64, ptr %1, align 8, !tbaa !408, !noalias !3679 ; 3 uses
  %i.b = and i64 %i.a, -4                         ; 2 uses
  store i64 %i.a, ptr %4, align 8, !tbaa !805, !alias.scope !3680, !noalias !3674
  %.not.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio9execution6detail17any_executor_base14prefer_fn_implINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESJ_EET_PKvS11_PNSt9enable_ifIXaantsr7is_sameIT0_vEE5valuesrT1_13is_preferableEvE4typeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !530, !noalias !3679, !nonnull !295, !align !426
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.g = atomicrmw add ptr %i.f, i64 1 seq_cst, align 8, !noalias !3679 ; 0 uses
  %.pre.i = load i64, ptr %4, align 8, !tbaa !805, !noalias !3674
  br label %_ZN4asio9execution6detail17any_executor_base14prefer_fn_implINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESJ_EET_PKvS11_PNSt9enable_ifIXaantsr7is_sameIT0_vEE5valuesrT1_13is_preferableEvE4typeE.exit

_ZN4asio9execution6detail17any_executor_base14prefer_fn_implINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESJ_EET_PKvS11_PNSt9enable_ifIXaantsr7is_sameIT0_vEE5valuesrT1_13is_preferableEvE4typeE.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ %i.a, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !3674
  store i64 0, ptr %4, align 8, !tbaa !805, !noalias !3674
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm4EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.i, align 8, !tbaa !409, !alias.scope !3674
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm4EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_St10shared_ptrIvEEE5valueEvE4typeEE3fns, ptr %i.j, align 8, !tbaa !410, !alias.scope !3674
  store i64 %i.h, ptr %0, align 8, !tbaa !805, !alias.scope !3674
  store i64 0, ptr %3, align 8, !tbaa !805, !noalias !3674
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.k, align 8, !tbaa !411, !alias.scope !3674
  call void @_ZN4asio10io_context19basic_executor_typeISaIvELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43, !inline_history !3672
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm4EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.l, align 8, !tbaa !412, !alias.scope !3674
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !3674
  call void @_ZN4asio10io_context19basic_executor_typeISaIvELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #43, !inline_history !3673
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base8query_fnINS_10io_context19basic_executor_typeISaIvELm0EEENS0_11prefer_onlyINS1_16outstanding_work11untracked_tILi0EEEEEEEvPvPKvSF_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #56 ; 2 uses
  store i32 0, ptr %i.a, align 4
  store ptr %i.a, ptr %0, align 8, !tbaa !803
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10require_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESM_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.a, align 8, !tbaa !410, !alias.scope !3683
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.b, align 8, !tbaa !411, !alias.scope !3683
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.c, align 8, !tbaa !409, !alias.scope !3683
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.d, align 8, !tbaa !412, !alias.scope !3683
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESM_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3686)
  %i.a = load i64, ptr %1, align 8, !tbaa !408, !noalias !3686
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.b, align 8, !tbaa !409, !alias.scope !3686
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_St10shared_ptrIvEEE5valueEvE4typeEE3fns, ptr %i.c, align 8, !tbaa !410, !alias.scope !3686
  store i64 %i.a, ptr %0, align 8, !tbaa !408, !alias.scope !3686
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.d, align 8, !tbaa !411, !alias.scope !3686
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.e, align 8, !tbaa !412, !alias.scope !3686
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base8query_fnINS_10io_context19basic_executor_typeISaIvELm0EEENS0_11prefer_onlyINS1_12relationship6fork_tILi0EEEEEEEvPvPKvSF_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #56 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !408
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 1
  %spec.select.i.i.i.i.i.i = and i32 %i.d, 1
  store i32 %spec.select.i.i.i.i.i.i, ptr %i.a, align 4
  store ptr %i.a, ptr %0, align 8, !tbaa !807
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10require_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESQ_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.a, align 8, !tbaa !410, !alias.scope !3689
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.b, align 8, !tbaa !411, !alias.scope !3689
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.c, align 8, !tbaa !409, !alias.scope !3689
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.d, align 8, !tbaa !412, !alias.scope !3689
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESQ_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3700)
  %i.a = load i64, ptr %1, align 8, !tbaa !408, !noalias !3701
  %i.b = and i64 %i.a, -3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.c, align 8, !tbaa !409, !alias.scope !3700
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_St10shared_ptrIvEEE5valueEvE4typeEE3fns, ptr %i.d, align 8, !tbaa !410, !alias.scope !3700
  store i64 %i.b, ptr %0, align 8, !tbaa !408, !alias.scope !3700
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.e, align 8, !tbaa !411, !alias.scope !3700
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.f, align 8, !tbaa !412, !alias.scope !3700
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base8query_fnINS_10io_context19basic_executor_typeISaIvELm0EEENS0_11prefer_onlyINS1_12relationship14continuation_tILi0EEEEEEEvPvPKvSF_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #56 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !408
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 1
  %spec.select.i.i.i.i.i.i = and i32 %i.d, 1
  store i32 %spec.select.i.i.i.i.i.i, ptr %i.a, align 4
  store ptr %i.a, ptr %0, align 8, !tbaa !807
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10require_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEEST_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.a, align 8, !tbaa !410, !alias.scope !3704
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.b, align 8, !tbaa !411, !alias.scope !3704
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.c, align 8, !tbaa !409, !alias.scope !3704
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.d, align 8, !tbaa !412, !alias.scope !3704
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEEST_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3715)
  %i.a = load i64, ptr %1, align 8, !tbaa !408, !noalias !3716
  %i.b = or i64 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.c, align 8, !tbaa !409, !alias.scope !3715
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_St10shared_ptrIvEEE5valueEvE4typeEE3fns, ptr %i.d, align 8, !tbaa !410, !alias.scope !3715
  store i64 %i.b, ptr %0, align 8, !tbaa !408, !alias.scope !3715
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.e, align 8, !tbaa !411, !alias.scope !3715
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.f, align 8, !tbaa !412, !alias.scope !3715
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio10io_context19basic_executor_typeISaIvELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !805
  %i.b = and i64 %i.a, -4                         ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZN4asio6detail9scheduler13work_finishedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !530, !nonnull !295, !align !426 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %1 = atomicrmw add ptr %i.f, i64 -1 seq_cst, align 8
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !565, !range !294, !noundef !295
  %i.j = trunc nuw i8 %i.i to i1                  ; 3 uses
  br i1 %i.j, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  store i8 1, ptr %i.k, align 8, !tbaa !622
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #43 ; 0 uses
  %.pre.i.i = load i8, ptr %i.h, align 8, !tbaa !565, !range !294
  %i.n = trunc nuw i8 %.pre.i.i to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  store i8 1, ptr %i.o, align 8, !tbaa !622
  br i1 %i.n, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !623
  %i.s = or i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !623
  %i.t = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.p) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.d, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !568, !range !294, !noundef !295
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !566  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.u, align 8, !tbaa !568
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !205
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.h, !inline_history !25

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.f, %bb.e, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.j, label %bb.g, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.g:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #43 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.j, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.af) #43 ; 0 uses
  br label %.body

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.g, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.b, %bb.a
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  %i.ah = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #53
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4asio9execution6detail17any_executor_base14target_type_exINS_10io_context19basic_executor_typeISaIvELm4EEEEERKSt9type_infov() #9 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4asio10io_context19basic_executor_typeISaIvELm4EEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio9execution6detail17any_executor_base8equal_exINS_10io_context19basic_executor_typeISaIvELm4EEEEEbRKS2_S9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !411
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !411
  %i.e = load i64, ptr %i.b, align 8, !tbaa !805
  %i.f = load i64, ptr %i.d, align 8, !tbaa !805
  %i.g = icmp eq i64 %i.e, %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10execute_exINS_10io_context19basic_executor_typeISaIvELm4EEEEEvRKS2_ONS_6detail17executor_functionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !411
  tail call void @_ZNK4asio10io_context19basic_executor_typeISaIvELm4EE7executeINS_6detail17executor_functionEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio10io_context19basic_executor_typeISaIvELm4EE7executeINS_6detail17executor_functionEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.asio::detail::executor_op<asio::detail::executor_function, std::allocator<void>>::ptr", align 8 ; 10 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !805    ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge

._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge: ; preds = %bb.a
  %.pre = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  br label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, -4
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !530, !nonnull !295, !align !426
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E) ; 3 uses
  %.08.i.i = load ptr, ptr %i.h, align 8, !tbaa !631 ; 2 uses
  %.not9.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not9.i.i, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread.thread, label %.lr.ph.i.i

_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %0, ptr %2, align 8, !tbaa !797
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZN4asio6detail11executor_opINS0_17executor_functionESaIvENS0_19scheduler_operationEE3ptr8allocateERKS3_.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.010.i.i = phi ptr [ %.0.i.i, %bb.c ], [ %.08.i.i, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.010.i.i, align 8, !tbaa !629
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %.0.i.i = load ptr, ptr %i.l, align 8, !tbaa !631 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread, label %.lr.ph.i.i, !llvm.loop !31

_ZN4asio6detail9scheduler12can_dispatchEv.exit:   ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !630
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail9scheduler12can_dispatchEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !769    ; 3 uses
  store ptr null, ptr %1, align 8, !tbaa !769
  fence acquire
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail17executor_functionES3_EEvRT_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !766
  invoke void %i.p(ptr noundef nonnull %i.o, i1 noundef zeroext true)
          to label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail17executor_functionES3_EEvRT_RT0_.exit unwind label %bb.f, !inline_history !44

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail17executor_functionES3_EEvRT_RT0_.exit: ; preds = %bb.d, %bb.e
  fence release
  br label %_ZN4asio6detail17executor_functionD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  fence release
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #43 ; 0 uses
  %i.t = load i64, ptr %0, align 8, !tbaa !805
  %i.u = and i64 %i.t, -4
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !530, !nonnull !295, !align !426
  invoke void @_ZN4asio6detail9scheduler25capture_current_exceptionEv(ptr noundef nonnull align 8 dereferenceable(256) %i.x)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_end_catch()
  br label %_ZN4asio6detail17executor_functionD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN4asio6detail17executor_functionD2Ev.exit13 unwind label %bb.k

_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread: ; preds = %bb.c, %._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge, %_ZN4asio6detail9scheduler12can_dispatchEv.exit
  %.pre-phi.ph = phi ptr [ %.pre, %._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge ], [ %i.h, %_ZN4asio6detail9scheduler12can_dispatchEv.exit ], [ %i.h, %bb.c ]
  %.pr = load ptr, ptr %.pre-phi.ph, align 8, !tbaa !631 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %0, ptr %2, align 8, !tbaa !797
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN7cinatra16coro_http_server11async_startEv:bb.a

.body51:                                          ; preds = %bb.an, %bb.aq
  %eh.lpad-body52 = phi { ptr, i32 } [ %i.de, %bb.aq ], [ %i.da, %bb.an ]
  %i.df = load i8, ptr %i.cx, align 8, !tbaa !489 ; 2 uses
  %.not.i.i.i54 = icmp eq i8 %i.df, -1
  br i1 %.not.i.i.i54, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit57, label %bb.ar, !prof !227

bb.ar:                                            ; preds = %.body51
  %i.dg = icmp ne i8 %i.df, 2
  %i.dh = load ptr, ptr %9, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i55 = icmp eq ptr %i.dh, null
  %or.cond.i.i.i.i56 = select i1 %i.dg, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i55
  br i1 %or.cond.i.i.i.i56, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit57, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #43
  br label %_ZN12async_simple3TryISt10error_codeED2Ev.exit57

_ZN12async_simple3TryISt10error_codeED2Ev.exit57: ; preds = %bb.as, %bb.ar, %.body51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  br label %bb.au

bb.at:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit46, %_ZN12async_simple3TryISt10error_codeED2Ev.exit
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  ret void

bb.au:                                            ; preds = %bb.k, %.body, %_ZN12async_simple3TryISt10error_codeED2Ev.exit57, %_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit48, %_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit35
  %.pn17.pn = phi { ptr, i32 } [ %eh.lpad-body52, %_ZN12async_simple3TryISt10error_codeED2Ev.exit57 ], [ %i.cr, %_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit48 ], [ %.pn12.pn, %_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit35 ], [ %eh.lpad-body, %.body ], [ %i.aj, %bb.k ]
  call void @_ZN12async_simple6FutureISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #43
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.j
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.au ], [ %i.ai, %bb.j ]
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  resume { ptr, i32 } %.pn17.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple6FutureISt10error_codeE4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::Promise", align 8 ; 10 uses
  %2 = alloca %"class.async_simple::Future", align 8 ; 10 uses
  %3 = alloca %"class.std::mutex", align 8        ; 7 uses
  %4 = alloca %"class.std::condition_variable", align 8 ; 8 uses
  %5 = alloca %"struct.std::atomic.110", align 1  ; 7 uses
  %6 = alloca %class.anon.2448, align 8           ; 9 uses
  %7 = alloca %"class.std::unique_lock.2401", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !488    ; 2 uses
  %.not.i = icmp ne ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8
  %i.d = icmp ne i8 %i.c, 0                       ; 2 uses
  %i.e = select i1 %.not.i, i1 true, i1 %i.d
  br i1 %i.e, label %_ZN12async_simple11logicAssertEbPKc.exit, label %bb.b, !prof !575

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.1190)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %bb.y, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %.pn.pn.pn, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  br i1 %i.d, label %_ZNK12async_simple6FutureISt10error_codeE9hasResultEv.exit.thread, label %_ZNK12async_simple6FutureISt10error_codeE9hasResultEv.exit

_ZNK12async_simple6FutureISt10error_codeE9hasResultEv.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.h = load atomic i8, ptr %i.a acquire, align 1
  %i.i = and i8 %i.h, 33
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.e, label %_ZNK12async_simple6FutureISt10error_codeE9hasResultEv.exit.thread

bb.e:                                             ; preds = %_ZNK12async_simple6FutureISt10error_codeE9hasResultEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  %i.j = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #56 ; 7 uses
  store i8 0, ptr %i.j, align 1, !tbaa !900
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !902
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 0, ptr %i.l, align 1, !tbaa !902
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 0, ptr %i.m, align 8, !tbaa !489
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.n, i8 0, i64 25, i1 false)
  store ptr %i.j, ptr %1, align 8, !tbaa !904
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i8 0, ptr %i.o, align 8, !tbaa !905
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8 ; 0 uses
  %i.r = atomicrmw add ptr %i.k, i8 1 monotonic, align 1 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  invoke void @_ZN12async_simple7PromiseISt10error_codeE9getFutureEv(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::Future") align 8 %2, ptr noundef nonnull align 8 dereferenceable(9) %1)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !488
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr null, ptr %i.t, align 8, !tbaa !918
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  store i8 0, ptr %5, align 1, !tbaa !456
  %i.u = load ptr, ptr %0, align 8, !tbaa !488
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  store ptr %3, ptr %6, align 8, !tbaa !450
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.v, align 8, !tbaa !3926
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %5, ptr %i.w, align 8, !tbaa !3927
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !904
  store ptr %i.y, ptr %i.x, align 8, !tbaa !904
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = load i8, ptr %i.o, align 8, !tbaa !905, !range !294, !noundef !295
  store i8 %i.aa, ptr %i.z, align 8, !tbaa !905
  store ptr null, ptr %1, align 8, !tbaa !904
  store i8 0, ptr %i.o, align 8, !tbaa !905
  invoke void @_ZN12async_simple11FutureStateISt10error_codeE15setContinuationIZNS_6FutureIS1_E4waitEvEUlONS_3TryIS1_EEE_EEvOT_(ptr noundef nonnull align 8 dereferenceable(89) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.g unwind label %bb.s

bb.g:                                             ; preds = %bb.f
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.x) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  store ptr %3, ptr %7, align 8, !tbaa !922
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ac = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %3) #43 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ac) #55
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  store i8 1, ptr %i.ab, align 8, !tbaa !923
  %i.ad = load atomic i8, ptr %5 monotonic, align 1, !range !294, !noundef !295
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.noexc9
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(9) %7)
          to label %.noexc9 unwind label %bb.u

.noexc9:                                          ; preds = %.lr.ph.i
  %i.af = load atomic i8, ptr %5 monotonic, align 1, !range !294, !noundef !295
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i, !llvm.loop !3925

.loopexit:                                        ; preds = %.noexc9, %bb.i
  %i.ah = load ptr, ptr %0, align 8, !tbaa !3928
  %i.ai = load ptr, ptr %2, align 8, !tbaa !3928
  store ptr %i.ai, ptr %0, align 8, !tbaa !3928
  store ptr %i.ah, ptr %2, align 8, !tbaa !3928
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12async_simple10LocalStateISt10error_codeEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.aj) ; 0 uses
  %i.am = load i8, ptr %i.ab, align 8, !tbaa !923, !range !294, !noundef !295
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.j, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.j:                                             ; preds = %.loopexit
  %i.ao = load ptr, ptr %7, align 8, !tbaa !922   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #43 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.loopexit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %i.aq = load ptr, ptr %2, align 8, !tbaa !488   ; 5 uses
  %.not.i11 = icmp eq ptr %i.aq, null
  br i1 %.not.i11, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %8 = atomicrmw add ptr %i.ar, i8 -1 acq_rel, align 1
  %.not.i.i12 = icmp eq i8 %8, 1
  br i1 %.not.i.i12, label %bb.m, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.au = load i8, ptr %i.at, align 8, !tbaa !489 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.au, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.n, !prof !227

bb.n:                                             ; preds = %bb.m
  %i.av = icmp ne i8 %i.au, 2
  %i.aw = load ptr, ptr %i.as, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  %or.cond.i.i.i.i.i.i = select i1 %i.av, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.as) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.aq, i64 noundef 96) #54
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, %bb.l, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !489 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq i8 %i.ay, -1
  br i1 %.not.i.i.i.i1.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.p, !prof !227

bb.p:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i
  %i.az = icmp ne i8 %i.ay, 2
  %i.ba = load ptr, ptr %i.aj, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.ba, null
  %or.cond.i.i.i.i.i3.i = select i1 %i.az, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i
  br i1 %or.cond.i.i.i.i.i3.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aj) #43
  br label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit

_ZN12async_simple6FutureISt10error_codeED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  br label %_ZNK12async_simple6FutureISt10error_codeE9hasResultEv.exit.thread

_ZNK12async_simple6FutureISt10error_codeE9hasResultEv.exit.thread: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit, %_ZNK12async_simple6FutureISt10error_codeE9hasResultEv.exit, %_ZN12async_simple6FutureISt10error_codeED2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.s:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.x) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %bb.x

bb.t:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit14

bb.u:                                             ; preds = %.lr.ph.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bf = load i8, ptr %i.ab, align 8, !tbaa !923, !range !294, !noundef !295
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.v, label %_ZNSt11unique_lockISt5mutexED2Ev.exit14

bb.v:                                             ; preds = %bb.u
  %i.bh = load ptr, ptr %7, align 8, !tbaa !922   ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i13, label %_ZNSt11unique_lockISt5mutexED2Ev.exit14, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bh) #43 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit14

_ZNSt11unique_lockISt5mutexED2Ev.exit14:          ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.t ], [ %i.be, %bb.u ], [ %i.be, %bb.v ], [ %i.be, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit14, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt11unique_lockISt5mutexED2Ev.exit14 ], [ %i.bc, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @_ZN12async_simple6FutureISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #43
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.x ], [ %i.bb, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple6FutureISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !488    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %1 = atomicrmw add ptr %i.b, i8 -1 acq_rel, align 1
  %.not.i = icmp eq i8 %1, 1
  br i1 %.not.i, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, label %bb.d, !prof !227

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.a, i64 noundef 96) #54
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i.i1 = icmp eq i8 %i.j, -1
  br i1 %.not.i.i.i.i1, label %_ZN12async_simple10LocalStateISt10error_codeED2Ev.exit, label %bb.f, !prof !227

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit
  %i.k = icmp ne i8 %i.j, 2
  %i.l = load ptr, ptr %i.h, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2 = icmp eq ptr %i.l, null
  %or.cond.i.i.i.i.i3 = select i1 %i.k, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2
  br i1 %or.cond.i.i.i.i.i3, label %_ZN12async_simple10LocalStateISt10error_codeED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #43
  br label %_ZN12async_simple10LocalStateISt10error_codeED2Ev.exit

_ZN12async_simple10LocalStateISt10error_codeED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i32, ptr } @_ZN7cinatra16coro_http_server6listenEv(ptr noundef nonnull align 8 dereferenceable(1256) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::error_code", align 8   ; 6 uses
  %2 = alloca %"struct.std::array.549", align 4   ; 4 uses
  %3 = alloca %"class.std::error_code", align 8   ; 7 uses
  %4 = alloca %"class.asio::ip::address", align 4 ; 6 uses
  %5 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %6 = alloca %"struct.refvalue::meta_string", align 1 ; 7 uses
  %7 = alloca %"class.std::error_code", align 8   ; 12 uses
  %8 = alloca %"class.std::optional.595", align 4 ; 13 uses
  %9 = alloca %"class.asio::any_io_executor", align 8 ; 10 uses
  %10 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %11 = alloca %"struct.refvalue::meta_string", align 1 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %14 = alloca %"struct.refvalue::meta_string", align 1 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.asio::ip::basic_endpoint", align 4 ; 5 uses
  %17 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %18 = alloca %"struct.refvalue::meta_string", align 1 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.asio::any_io_executor", align 8 ; 10 uses
  %21 = alloca %"class.asio::ip::basic_endpoint", align 4 ; 4 uses
  %22 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %23 = alloca %"struct.refvalue::meta_string", align 1 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %26 = alloca %"struct.refvalue::meta_string", align 1 ; 7 uses
  %27 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %28 = alloca %"struct.refvalue::meta_string", align 1 ; 7 uses
  %i.a = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, !prof !223

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit

common.resume:                                    ; preds = %.body, %bb.gy, %bb.gi, %bb.gd, %bb.fr, %bb.er, %bb.dh, %bb.dc, %bb.ca, %bb.bv, %bb.ak, %bb.ad, %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.m, %bb.j ], [ %i.cj, %bb.ad ], [ %i.cw, %bb.ak ], [ %i.ia, %bb.bv ], [ %i.ii, %bb.ca ], [ %i.lv, %bb.dc ], [ %i.md, %bb.dh ], [ %i.qx, %bb.er ], [ %i.tr, %bb.fr ], [ %i.us, %bb.gd ], [ %i.va, %bb.gi ], [ %.pn65.pn.pn.pn, %bb.gy ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %common.resume

_ZN7easylog6loggerILm0EE8instanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.g = icmp slt i32 %i.f, 4
  br i1 %i.g, label %bb.f, label %bb.v

bb.f:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.h = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #43 ; 2 uses
  %i.i = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.g, label %_ZN7easylog6loggerILm0EE8instanceEv.exit72, !prof !223

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  %.not.i71 = icmp eq i32 %i.k, 0
  br i1 %.not.i71, label %_ZN7easylog6loggerILm0EE8instanceEv.exit72, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit72

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %common.resume

_ZN7easylog6loggerILm0EE8instanceEv.exit72:       ; preds = %bb.f, %bb.g, %bb.i
  %i.n = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit72
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 24), align 8, !tbaa !285
  %i.p = sub nsw i64 %i.h, %.sroa.0.0.copyload.i2.i.i
  %i.q = sdiv i64 %i.p, 1000000
  %i.r = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.s = srem i64 %i.q, %i.r
  %i.t = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 16) monotonic, align 8
  %i.u = icmp slt i64 %i.s, %i.t
  br i1 %i.u, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.v

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit72, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  store i8 91, ptr %6, align 1, !alias.scope !3967
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.i.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(24) @__const._ZZN7cinatra16coro_http_server6listenEvENKUlvE_clEv.prefix, i64 24, i1 false), !tbaa.struct !464
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.965, i64 3, i1 false), !tbaa.struct !465
  call void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 %i.h, i32 noundef 3, i64 27, ptr nonnull %6)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !231  ; 5 uses
  %i.y = and i64 %i.x, -16
  %i.z = icmp eq i64 %i.y, 9223372036854775792
  br i1 %i.z, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.k:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.915) #55
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.aa = add nsw i64 %i.x, 16                    ; 3 uses
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !230 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ae = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.ae)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !221
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ag = phi i64 [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.aa, %i.ag
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ah, ptr noundef nonnull align 1 dereferenceable(16) @.str.955, i64 16, i1 false)
  br label %bb.n
end_hunk_3
begin_hunk_4_@_ZN7cinatra16coro_http_server6listenEv:bb.a

.body322:                                         ; preds = %bb.gt, %bb.gv
  %eh.lpad-body323 = phi { ptr, i32 } [ %i.xd, %bb.gv ], [ %i.wq, %bb.gt ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %27) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #43
  br label %bb.gw

_ZNSt8optionalIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEEE5resetEv.exit: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit294, %_ZN7easylog8record_tD2Ev.exit332, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit299, %bb.fk, %_ZN7coro_io6detail18close_acceptor_nowERN4asio21basic_socket_acceptorINS1_2ip3tcpENS1_15any_io_executorEEE.exit, %bb.ef
  %.sroa.0339.0 = phi i32 [ %.sroa.0339.0.copyload343, %bb.ef ], [ %i.qr, %bb.fk ], [ %i.qr, %_ZN7coro_io6detail18close_acceptor_nowERN4asio21basic_socket_acceptorINS1_2ip3tcpENS1_15any_io_executorEEE.exit ], [ 0, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit299 ], [ 0, %_ZN7easylog8record_tD2Ev.exit332 ], [ 0, %_ZN7easylog6loggerILm0EE8instanceEv.exit294 ]
  %.sroa.11346.0 = phi ptr [ %.sroa.11346.0.copyload348, %bb.ef ], [ %i.qs, %bb.fk ], [ %i.qs, %_ZN7coro_io6detail18close_acceptor_nowERN4asio21basic_socket_acceptorINS1_2ip3tcpENS1_15any_io_executorEEE.exit ], [ %i.bf, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit299 ], [ %i.bf, %_ZN7easylog8record_tD2Ev.exit332 ], [ %i.bf, %_ZN7easylog6loggerILm0EE8instanceEv.exit294 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  %i.xe = insertvalue { i32, ptr } poison, i32 %.sroa.0339.0, 0
  %i.xf = insertvalue { i32, ptr } %i.xe, ptr %.sroa.11346.0, 1
  br label %bb.gx

bb.gw:                                            ; preds = %.body322, %bb.fy, %bb.fd, %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit265, %bb.ee
  %.pn61.pn.pn = phi { ptr, i32 } [ %.pn61.pn, %bb.ee ], [ %.pn58.pn, %bb.fd ], [ %eh.lpad-body323, %.body322 ], [ %i.un, %bb.fy ], [ %i.ra, %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit265 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  br label %bb.gy

bb.gx:                                            ; preds = %_ZNSt8optionalIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEEE5resetEv.exit, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit148, %_ZN7easylog8record_tD2Ev.exit197, %_ZN7easylog6loggerILm0EE8instanceEv.exit143, %bb.bp, %bb.bo
  %.fca.1.insert.merged = phi { i32, ptr } [ %i.ht, %_ZN7easylog8record_tD2Ev.exit197 ], [ %i.ht, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit148 ], [ %i.ht, %_ZN7easylog6loggerILm0EE8instanceEv.exit143 ], [ %i.xf, %_ZNSt8optionalIN4asio21basic_socket_acceptorINS0_2ip3tcpENS0_15any_io_executorEEEE5resetEv.exit ], [ %i.gw, %bb.bo ], [ %i.gy, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  ret { i32, ptr } %.fca.1.insert.merged

bb.gy:                                            ; preds = %bb.cw, %bb.gw, %bb.bm, %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit79
  %.pn65.pn.pn.pn = phi { ptr, i32 } [ %i.cm, %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit79 ], [ %.pn.pn, %bb.bm ], [ %.pn65.pn, %bb.cw ], [ %.pn61.pn.pn, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple7PromiseISt10error_codeE9getFutureEv(ptr dead_on_unwind noalias writable sret(%"class.async_simple::Future") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !904    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !227

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.991)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.g, %bb.g ], [ %i.b, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #43
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !905, !range !294, !noundef !295
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %_ZN12async_simple6FutureISt10error_codeEC2EPNS_11FutureStateIS1_EE.exit, !prof !227

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.992)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12async_simple6FutureISt10error_codeEC2EPNS_11FutureStateIS1_EE.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  store i8 1, ptr %i.d, align 8, !tbaa !905
  store ptr %i.a, ptr %0, align 8, !tbaa !488
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.i, align 8, !tbaa !489
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !3985
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = atomicrmw add ptr %i.k, i8 1 monotonic, align 1 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EE5startIZN7cinatra16coro_http_server11async_startEvEUlOT_E_EEvS9_Q14isLazyCallbackIS8_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.591, align 8            ; 7 uses
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.from..i, !prof !227

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.1003)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %.thread, %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.p, %.thread ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #43
  br label %common.resume

.from..i:                                         ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !913
  %i.d = load ptr, ptr %1, align 8, !tbaa !904    ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !904
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !905, !range !294, !noundef !295 ; 2 uses
  store i8 %i.g, ptr %i.e, align 8, !tbaa !905
  store ptr null, ptr %1, align 8, !tbaa !904
  store i8 0, ptr %i.f, align 8, !tbaa !905
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !915  ; 2 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !915
  %i.k = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #64
          to label %AfterCoroEnd.i unwind label %bb.e, !inline_history !3986 ; 9 uses

AfterCoroEnd.i:                                   ; preds = %.from..i
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EE5startIZN7cinatra16coro_http_server11async_startEvEUlOT_E_EEvS9_Q14isLazyCallbackIS8_TL0__EENKUlS4_SA_E_clES4_SA_.resume, ptr %i.k, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EE5startIZN7cinatra16coro_http_server11async_startEvEUlOT_E_EEvS9_Q14isLazyCallbackIS8_TL0__EENKUlS4_SA_E_clES4_SA_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.reload.addr41.i = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.reload.addr42.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.d, ptr %.reload.addr.i, align 8, !tbaa !904
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i8 %i.g, ptr %i.l, align 8, !tbaa !905
  store ptr null, ptr %2, align 8, !tbaa !904
  store i8 0, ptr %i.e, align 8, !tbaa !905
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.j, ptr %i.m, align 8, !tbaa !915
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr42.i, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %.reload.addr41.i, align 8, !tbaa !260, !alias.scope !3989
  %index.addr43.i = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store i8 0, ptr %index.addr43.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.n, align 8, !tbaa !260
  %i.o = load ptr, ptr %i.a, align 8
  invoke void %i.o(ptr nonnull %i.a)
          to label %_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit unwind label %.thread, !inline_history !3986

.thread:                                          ; preds = %AfterCoroEnd.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %2) #43
  br label %common.resume

_ZN12async_simple4coro6detail8LazyBaseISt10error_codeLb0EED2Ev.exit: ; preds = %AfterCoroEnd.i
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %2) #43
  ret void

bb.e:                                             ; preds = %.from..i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %2) #43
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr nonnull %i.a)
          to label %common.resume unwind label %bb.f, !inline_history !56

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #53
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::Try", align 8 ; 11 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !904    ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %3 = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.c = load atomic i8, ptr %i.a acquire, align 1
  %i.d = and i8 %i.c, 33
  %i.e = icmp ne i8 %i.d, 0
  %i.f = icmp ne i64 %3, 1
  %or.cond.not.i = or i1 %i.f, %i.e
  br i1 %or.cond.not.i, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.991)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #55
          to label %bb.u unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #43
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  %.0.i = extractvalue { ptr, i32 } %.pn.i, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %.0.i) #43 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %2) #43
  %i.k = load ptr, ptr %2, align 8, !tbaa !653    ; 2 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !653
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #43
  br label %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit

_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit: ; preds = %bb.g, %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i8 2, ptr %i.l, align 8, !tbaa !489
  invoke void @_ZN12async_simple11FutureStateISt10error_codeE9setResultEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(89) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit
  %i.m = load i8, ptr %i.l, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit, label %bb.j, !prof !227

bb.j:                                             ; preds = %bb.i
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %1, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #43
  br label %_ZN12async_simple3TryISt10error_codeED2Ev.exit

_ZN12async_simple3TryISt10error_codeED2Ev.exit:   ; preds = %bb.i, %bb.j, %bb.k
  %i.p = load ptr, ptr %2, align 8, !tbaa !653
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  invoke void @__cxa_end_catch()
          to label %.noexc unwind label %bb.w

bb.m:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = load i8, ptr %i.l, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i1 = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i1, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit4, label %bb.n, !prof !227

bb.n:                                             ; preds = %bb.m
  %i.s = icmp ne i8 %i.r, 2
  %i.t = load ptr, ptr %1, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i2 = icmp eq ptr %i.t, null
  %or.cond.i.i.i.i3 = select i1 %i.s, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i2
  br i1 %or.cond.i.i.i.i3, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit4, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #43
  br label %_ZN12async_simple3TryISt10error_codeED2Ev.exit4

_ZN12async_simple3TryISt10error_codeED2Ev.exit4:  ; preds = %bb.m, %bb.n, %bb.o
  %i.u = load ptr, ptr %2, align 8, !tbaa !653
  %.not.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i5, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6, label %bb.p

bb.p:                                             ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit4
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6:  ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit4, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.t

.noexc:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %4 = atomicrmw add ptr %i.v, i8 -1 acq_rel, align 1
  %.not.i.i = icmp eq i8 %4, 1
  br i1 %.not.i.i, label %bb.q, label %_ZN12async_simple11FutureStateISt10error_codeE13detachPromiseEv.exit

bb.q:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.y = load i8, ptr %i.x, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.y, -1
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, label %bb.r, !prof !227

bb.r:                                             ; preds = %bb.q
  %i.z = icmp ne i8 %i.y, 2
  %i.aa = load ptr, ptr %i.w, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  %or.cond.i.i.i.i.i = select i1 %i.z, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.a, i64 noundef 96) #54
  br label %_ZN12async_simple11FutureStateISt10error_codeE13detachPromiseEv.exit

bb.t:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #53
  unreachable

bb.u:                                             ; preds = %bb.d
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE13detachPromiseEv.exit: ; preds = %.noexc, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.v

bb.v:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE13detachPromiseEv.exit, %bb.a
  ret void

bb.w:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.w ], [ %i.q, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6 ]
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.ae) #53
  unreachable
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %1, i32 noundef %2, i64 %3, ptr %4) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !285
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !290
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i8, ptr @_ZGVZN7easylog8record_t8_get_tidEvE3tid, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %._crit_edge.i, !prof !291

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN7easylog8record_t8_get_tidEvE3tid)
  %.pre = load i32, ptr %.pre.i, align 4, !tbaa !222
  br label %_ZN7easylog8record_t8_get_tidEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 (i64, ...) @syscall(i64 noundef 186) #43
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN7easylog8record_t8_get_tidEvE3tid)
  store i32 %i.f, ptr %i.g, align 4, !tbaa !222
  store i8 1, ptr @_ZGVZN7easylog8record_t8_get_tidEvE3tid, align 8
  br label %_ZN7easylog8record_t8_get_tidEv.exit

_ZN7easylog8record_t8_get_tidEv.exit:             ; preds = %._crit_edge.i, %bb.b
  %i.h = phi i32 [ %.pre, %._crit_edge.i ], [ %i.f, %bb.b ]
  store i32 %i.h, ptr %i.b, align 4, !tbaa !292
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !226
  %i.k = icmp eq ptr %4, null
  %i.l = icmp ne i64 %3, 0
  %or.cond.i.i.i = and i1 %i.l, %i.k
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_ZN7easylog8record_t8_get_tidEv.exit
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.913) #55
  unreachable

bb.c:                                             ; preds = %_ZN7easylog8record_t8_get_tidEv.exit
  %i.m = icmp ugt i64 %3, 15
  br i1 %i.m, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = icmp slt i64 %3, 0
  br i1 %i.n, label %.noexc.i.i.i, label %bb.e

.noexc.i.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.914) #55
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw i64 %3, 1                        ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !227

.noexc9.i.i.i:                                    ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #55
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.e
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #56 ; 2 uses
  store ptr %i.q, ptr %i.i, align 8, !tbaa !230
  store i64 %3, ptr %i.j, align 8, !tbaa !221
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.r = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  switch i64 %3, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.s = load i8, ptr %4, align 1, !tbaa !221
  store i8 %i.s, ptr %i.r, align 1, !tbaa !221
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %4, i64 %3, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %i.t, align 8, !tbaa !231
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %3
  store i8 0, ptr %i.u, align 1, !tbaa !221
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !226
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.x, align 8, !tbaa !231
  store i8 0, ptr %i.w, align 8, !tbaa !221
  %i.y = invoke noalias noundef nonnull dereferenceable(65) ptr @_Znwm(i64 noundef 65) #56
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ; 2 uses

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.z = load i8, ptr %i.w, align 8, !tbaa !221
  store i8 %i.z, ptr %i.y, align 1, !tbaa !221
  store ptr %i.y, ptr %i.v, align 8, !tbaa !230
  store i64 64, ptr %i.w, align 8, !tbaa !221
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %.pre18 = load ptr, ptr %i.i, align 8, !tbaa !230 ; 2 uses
  %i.ab = icmp eq ptr %.pre18, %i.j
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.j, align 8, !tbaa !221
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %.pre18, i64 noundef %i.ad) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsItEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.b = load i16, ptr %1, align 2, !tbaa !926    ; 6 uses
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = icmp eq i16 %i.b, 0
  br i1 %i.d, label %_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i16 %i.b, 10
  br i1 %i.e, label %._crit_edge.i.i.i.thread7, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.f = icmp ult i16 %i.b, 100
  br i1 %i.f, label %._crit_edge.i.i.i.thread, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i
  %i.g = icmp ult i16 %i.b, 1000
  %i.h = icmp ult i16 %i.b, 10000
  %..i = select i1 %i.h, i32 4, i32 5
  %.022.i.i.i.ph = select i1 %i.g, i32 3, i32 %..i ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN7easylog6loggerILm0EE5writeERNS_8record_tE:bb.a
  br label %_ZN7easylog8record_tD2Ev.exit

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN7easylog8appender12write_recordILb1ELb0EEEvRNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(1361) %i.bt, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %_ZN7easylog8record_tD2Ev.exit

_ZN7easylog8record_tD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.n, %bb.m, %_ZN7easylog6loggerILm0EE21apply_extra_appendersERNS_8record_tE.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !290
  %i.bz = icmp eq i32 %i.by, 6
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN7easylog8record_tD2Ev.exit
  %i.ca = call noundef ptr @_ZN3ylt4util23b_stacktrace_get_stringEv() ; 2 uses
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ca)
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.cb), !inline_history !4016 ; 0 uses
  call void @free(ptr noundef %i.ca) #43
  call void @_ZN7easylog6loggerILm0EE5flushEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  call void @exit(i32 noundef 1) #59
  unreachable

bb.p:                                             ; preds = %_ZN7easylog8record_tD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt4util23b_stacktrace_get_stringEv() local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8200) ptr @malloc(i64 noundef 8200) #62 ; 4 uses
  %i.b = tail call i32 @backtrace(ptr noundef %i.a, i32 noundef 1024)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8192
  store i32 %i.b, ptr %i.c, align 8, !tbaa !938
  %i.d = tail call noundef ptr @_ZN3ylt4util22b_stacktrace_to_stringEPNS0_16b_stacktrace_tagE(ptr noundef %i.a)
  tail call void @free(ptr noundef %i.a) #43
  ret ptr %i.d
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7easylog6loggerILm0EE5flushEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !844  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.d = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #43
  %i.e = icmp eq i32 %i.d, 35
  br i1 %i.e, label %bb.c, label %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #55
  unreachable

_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.g = tail call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.f) #57
  br i1 %i.g, label %bb.d, label %_ZN7easylog8appender5flushEv.exit

bb.d:                                             ; preds = %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN7easylog8appender5flushEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #43 ; 0 uses
  resume { ptr, i32 } %i.j

_ZN7easylog8appender5flushEv.exit:                ; preds = %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit.i, %bb.d
  %i.l = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #43 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN7easylog8appender5flushEv.exit, %bb.a
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #33

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN3ylt6detail10moodycamel7details9thread_idEvE1x)
  %i.b = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.c = lshr i64 %i.b, 33
  %i.d = xor i64 %i.c, %i.b
  %i.e = mul i64 %i.d, -49064778989728563         ; 2 uses
  %i.f = lshr i64 %i.e, 33
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -4265267296055464877       ; 2 uses
  %i.i = lshr i64 %i.h, 33
  %i.j = xor i64 %i.i, %i.h                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.l = load atomic ptr, ptr %i.k acquire, align 8 ; 6 uses
  %.not150 = icmp eq ptr %i.l, null
  br i1 %.not150, label %.thread131, label %.preheader142

.preheader142:                                    ; preds = %bb.a, %bb.e
  %.087151 = phi ptr [ %i.ai, %bb.e ], [ %i.l, %bb.a ] ; 4 uses
  %i.m = load i64, ptr %.087151, align 8, !tbaa !854
  %i.n = add i64 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %.087151, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !855
  br label %bb.b

bb.b:                                             ; preds = %.preheader142, %bb.d
  %.080 = phi i64 [ %i.ag, %bb.d ], [ %i.j, %.preheader142 ]
  %i.q = and i64 %i.n, %.080                      ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !4026 ; 3 uses
  %.not103 = icmp eq ptr %.087151, %i.l
  br i1 %.not103, label %.thread134, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader
  %.181 = phi i64 [ %i.ae, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112 ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader ]
  %i.x = load i64, ptr %i.l, align 8, !tbaa !854
  %i.y = add i64 %i.x, -1
  %i.z = and i64 %i.y, %.181                      ; 3 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !855
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = cmpxchg ptr %i.ab, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = add i64 %i.z, 1
  br i1 %i.ad, label %bb.f, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

bb.d:                                             ; preds = %bb.b
  %i.af = icmp eq i64 %i.s, 0
  %i.ag = add i64 %i.q, 1
  br i1 %i.af, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.087151, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !856 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.thread131, label %.preheader142, !llvm.loop !4020

bb.f:                                             ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !855
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.z
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.v, ptr %i.al, align 8, !tbaa !4026
  br label %.thread134

.thread131:                                       ; preds = %bb.e, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = add i64 %i.an, 1                        ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.thread131
  %.088 = phi ptr [ %i.l, %.thread131 ], [ %i.ck, %bb.o ] ; 3 uses
  %i.aq = load i64, ptr %.088, align 8, !tbaa !854
  %i.ar = lshr i64 %i.aq, 1
  %.not104 = icmp ult i64 %i.ao, %i.ar
  br i1 %.not104, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = atomicrmw xchg ptr %i.ap, i8 1 acquire, align 1
  %.0.in.i.not = icmp eq i8 %i.as, 0
  br i1 %.0.in.i.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = load atomic ptr, ptr %i.k acquire, align 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !854 ; 2 uses
  %i.av = lshr i64 %i.au, 1
  %.not105 = icmp ult i64 %i.ao, %i.av
  br i1 %.not105, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.i, %.preheader
  %.079.in = phi i64 [ %.079, %.preheader ], [ %i.au, %bb.i ] ; 3 uses
  %.079 = shl i64 %.079.in, 1                     ; 4 uses
  %i.aw = and i64 %.079.in, 9223372036854775807
  %.not106 = icmp ult i64 %i.ao, %i.aw
  br i1 %.not106, label %bb.j, label %.preheader, !llvm.loop !4021

bb.j:                                             ; preds = %.preheader
  %i.ax = shl i64 %.079.in, 5
  %i.ay = or disjoint i64 %i.ax, 31
  %i.az = tail call noalias noundef ptr @malloc(i64 noundef %i.ay) #62 ; 7 uses
  %.not108 = icmp eq ptr %i.az, null
  br i1 %.not108, label %.thread136, label %bb.k

.thread136:                                       ; preds = %bb.j
  %1 = atomicrmw add ptr %i.am, i64 -1 monotonic, align 8 ; 0 uses
  store atomic i8 0, ptr %i.ap monotonic, align 8
  br label %.thread134

bb.k:                                             ; preds = %bb.j
  store i64 %.079, ptr %i.az, align 8, !tbaa !854
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 0, %i.bb
  %i.bd = and i64 %i.bc, 7
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !855
  %.not107152 = icmp eq i64 %.079, 0
  br i1 %.not107152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.078153 = phi i64 [ %i.bp, %.lr.ph ], [ 0, %bb.k ] ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !855
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.078153
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !855
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.078153
  store atomic i64 0, ptr %i.bj monotonic, align 8
  %i.bk = or disjoint i64 %.078153, 1             ; 2 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !855
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bk
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !855
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bk
  store atomic i64 0, ptr %i.bo monotonic, align 8
  %i.bp = add nuw i64 %.078153, 2                 ; 2 uses
  %.not107.1 = icmp eq i64 %i.bp, %.079
  br i1 %.not107.1, label %._crit_edge, label %.lr.ph, !llvm.loop !4022

._crit_edge:                                      ; preds = %.lr.ph, %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.at, ptr %i.bq, align 8, !tbaa !856
  store atomic ptr %i.az, ptr %i.k release, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %._crit_edge
  %.290.ph = phi ptr [ %i.az, %._crit_edge ], [ %i.at, %bb.i ]
  store atomic i8 0, ptr %i.ap release, align 8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.g
  %.290 = phi ptr [ %.088, %bb.h ], [ %.088, %bb.g ], [ %.290.ph, %.sink.split ] ; 3 uses
  %i.br = load i64, ptr %.290, align 8, !tbaa !854 ; 2 uses
  %i.bs = lshr i64 %i.br, 1
  %i.bt = lshr i64 %i.br, 2
  %i.bu = add nuw i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.ao, %i.bu
  br i1 %i.bv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext false) ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.n, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader: ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %.290, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

bb.n:                                             ; preds = %bb.m
  %2 = atomicrmw add ptr %i.am, i64 -1 monotonic, align 8 ; 0 uses
  br label %.thread134

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader
  %.0 = phi i64 [ %i.cg, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader ]
  %i.bz = load i64, ptr %.290, align 8, !tbaa !854
  %i.ca = add i64 %i.bz, -1
  %i.cb = and i64 %i.ca, %.0                      ; 3 uses
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !855
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = cmpxchg ptr %i.cd, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  %i.cg = add i64 %i.cb, 1
  br i1 %i.cf, label %.thread139, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread139:                                       ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !855
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.cb
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.bw, ptr %i.cj, align 8, !tbaa !4026
  br label %.thread134

bb.o:                                             ; preds = %bb.l
  %i.ck = load atomic ptr, ptr %i.k acquire, align 8
  br label %bb.g, !llvm.loop !4023

.thread134:                                       ; preds = %bb.f, %bb.c, %.thread139, %.thread136, %bb.n
  %.9 = phi ptr [ %i.v, %bb.f ], [ null, %.thread136 ], [ null, %bb.n ], [ %i.bw, %.thread139 ], [ %i.v, %bb.c ]
  ret ptr %.9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7enqueueILNS6_14AllocationModeE0ES4_EEbOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 4 uses
  %i.d = add i64 %i.c, 1
  %i.e = and i64 %i.c, 31                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !941
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %reass.sub = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub, 9223372036854775775
  %i.j = icmp ult i64 %i.i, 9223372036854775807
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.k = call noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer24insert_block_index_entryILNS6_14AllocationModeE0EEEbRPNS7_15BlockIndexEntryEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
  br i1 %i.k, label %bb.d, label %.critedge.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !942  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !868  ; 2 uses
  %.not.i.i = icmp ult i64 %i.o, %i.q
  br i1 %.not.i.i, label %bb.e, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw add ptr %i.n, i64 1 monotonic, align 8 ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !869  ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 5 uses
  %i.w = load atomic ptr, ptr %i.v acquire, align 8 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not24.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i
  %.025.i.i.i = phi ptr [ %.114.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i ], [ %i.w, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 2608 ; 6 uses
  %i.y = load atomic i32, ptr %i.x monotonic, align 4 ; 3 uses
  %i.z = and i32 %i.y, 2147483647
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = add i32 %i.y, 1
  %i.ac = cmpxchg ptr %i.x, i32 %i.y, i32 %i.ab acquire monotonic, align 4
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %.lr.ph.i.i.i
  %i.ae = load atomic ptr, ptr %i.v acquire, align 8
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, !llvm.loop !4027

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 2616 ; 2 uses
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8
  %i.ah = cmpxchg ptr %i.v, ptr %.025.i.i.i, ptr %i.ag acquire monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = extractvalue { ptr, i1 } %i.ah, 0       ; 3 uses
  %2 = atomicrmw add ptr %i.x, i32 -1 acq_rel, align 4
  %i.ak = icmp eq i32 %2, -2147483647
  br i1 %i.ak, label %bb.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.al = load atomic ptr, ptr %i.v monotonic, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ao, %bb.k ] ; 2 uses
  store atomic ptr %.0.i.i.i.i, ptr %i.af monotonic, align 8
  store atomic i32 1, ptr %i.x release, align 8
  %i.am = cmpxchg ptr %i.v, ptr %.0.i.i.i.i, ptr %.025.i.i.i release monotonic, align 8 ; 2 uses
  %i.an = extractvalue { ptr, i1 } %i.am, 1
  br i1 %i.an, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = extractvalue { ptr, i1 } %i.am, 0
  %i.ap = atomicrmw add ptr %i.x, i32 2147483647 release, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.j, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, !llvm.loop !58

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.114.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %bb.h ], [ %i.aj, %bb.j ], [ %i.aj, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.114.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i: ; preds = %bb.g
  %3 = atomicrmw add ptr %i.x, i32 -2 release, align 4 ; 0 uses
  br label %.thread

.loopexit.i:                                      ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i
  %i.ar = call noalias noundef dereferenceable_or_null(2632) ptr @malloc(i64 noundef 2632) #62 ; 5 uses
  %.not.i9.i = icmp eq ptr %i.ar, null
  br i1 %.not.i9.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread21, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2560
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 2616
  store ptr null, ptr %i.at, align 8, !tbaa !870
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 2624
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.as, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.au, align 8, !tbaa !872
  br label %.thread

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i
  %i.av = getelementptr inbounds nuw [2632 x i8], ptr %i.u, i64 %i.r
  br label %.thread

.thread:                                          ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, %bb.l
  %.0.i20 = phi ptr [ %i.av, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit ], [ %i.ar, %bb.l ], [ %.025.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i20, i64 2568
  store atomic i64 0, ptr %i.aw monotonic, align 8
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !944
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store atomic ptr %.0.i20, ptr %i.ay monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.0.i20, ptr %i.az, align 8, !tbaa !941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.m

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread21: ; preds = %.loopexit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load atomic ptr, ptr %i.ba monotonic, align 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load atomic i64, ptr %i.bc monotonic, align 8
  %i.be = add i64 %i.bd, -1
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !948
  %i.bg = add i64 %i.bf, -1
  %i.bh = and i64 %i.bg, %i.be
  store atomic i64 %i.bh, ptr %i.bc monotonic, align 8
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !944
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store atomic ptr null, ptr %i.bj monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %.critedge

bb.m:                                             ; preds = %._crit_edge, %.thread
  %i.bk = phi ptr [ %.pre, %._crit_edge ], [ %.0.i20, %.thread ]
  %i.bl = getelementptr inbounds nuw [80 x i8], ptr %i.bk, i64 %i.e ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bl, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !226
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !230 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !231 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !230
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !221
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !221
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !231
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !231
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !230
  store i64 0, ptr %i.bx, align 8, !tbaa !231
  store i8 0, ptr %i.bq, align 8, !tbaa !221
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 64 ; 3 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !226
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !230 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !231 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false)
  br label %_ZN7easylog8record_tC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !230
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !221
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !221
  br label %_ZN7easylog8record_tC2EOS0_.exit

_ZN7easylog8record_tC2EOS0_.exit:                 ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !231
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !231
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !230
  store i64 0, ptr %i.cl, align 8, !tbaa !231
  store i8 0, ptr %i.ce, align 8, !tbaa !221
  store atomic i64 %i.d, ptr %i.b release, align 8
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %.critedge

.critedge:                                        ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread21, %.critedge.critedge, %bb.b, %_ZN7easylog8record_tC2EOS0_.exit
  %.3 = phi i1 [ true, %_ZN7easylog8record_tC2EOS0_.exit ], [ false, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread21 ], [ false, %bb.b ], [ false, %.critedge.critedge ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not27 = icmp eq ptr %i.a, null
  br i1 %.not27, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i1 %1 to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit
  %.01128 = phi ptr [ %i.a, %.lr.ph ], [ %i.n, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01128, i64 16 ; 2 uses
  %i.d = load atomic i8, ptr %i.c monotonic, align 1, !range !294, !noundef !295
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.01128, i64 72
  %i.g = load i8, ptr %i.f, align 8, !tbaa !4029, !range !294, !noundef !295
  %i.h = icmp eq i8 %i.g, %i.b
  br i1 %i.h, label %bb.d, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = cmpxchg ptr %i.c, i8 1, i8 0 acquire monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNS6_12ProducerBaseE.exit, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.01128, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !877  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8
  br i1 %i.m, label %select.unfold._crit_edge, label %bb.b

select.unfold._crit_edge:                         ; preds = %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit, %bb.a
  br i1 %1, label %bb.e, label %bb.h

bb.e:                                             ; preds = %select.unfold._crit_edge
  %i.o = tail call noalias noundef dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #62 ; 14 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNS6_12ProducerBaseE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !877
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i8 0, ptr %i.q, align 8, !tbaa !456
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.s, align 8, !tbaa !4029
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %0, ptr %i.t, align 8, !tbaa !942
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducerE, i64 16), ptr %i.o, align 8, !tbaa !205
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.y = load i64, ptr %i.x, align 8, !tbaa !868
  %i.z = add i64 %i.y, -1                         ; 2 uses
  %i.aa = lshr i64 %i.z, 1
  %i.ab = or i64 %i.aa, %i.z                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = or i64 %i.ac, %i.ab                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 4
  %i.af = or i64 %i.ae, %i.ad                     ; 2 uses
  %i.ag = lshr i64 %i.af, 8
  %i.ah = or i64 %i.ag, %i.af                     ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4asio6detail21resolver_service_baseC2ERNS_17execution_contextE:bb.a
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i8 1, ptr %i.m, align 8, !tbaa !565
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  invoke void @_ZN4asio6detail11posix_eventC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #43 ; 0 uses
  br label %.body

bb.d:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  store ptr null, ptr %i.q, align 8, !tbaa !566
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  store ptr @_ZN4asio6detail9scheduler16get_default_taskERNS_17execution_contextE, ptr %i.r, align 8, !tbaa !567
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store i8 1, ptr %i.t, align 8, !tbaa !568
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 216 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 244
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.u, i8 0, i64 26, i1 false)
  store i32 -1, ptr %i.v, align 4, !tbaa !569
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  store ptr null, ptr %i.w, align 8, !tbaa !570
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.x, align 8, !tbaa !1008
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.y, align 8, !tbaa !1010
  %i.z = atomicrmw add ptr %i.u, i64 1 seq_cst, align 8 ; 0 uses
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.o, %bb.c ]
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 256) #54
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.e
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.aa, %bb.e ]
  %i.ac = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #43 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN4asio6detail21resolver_service_base13base_shutdownEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1010 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !573, !range !294, !noundef !295
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4asio6detail12posix_threadD2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.c, align 8, !tbaa !624
  %i.i = tail call i32 @pthread_detach(i64 noundef %i.h) #43 ; 0 uses
  br label %_ZN4asio6detail12posix_threadD2Ev.exit.i.i

_ZN4asio6detail12posix_threadD2Ev.exit.i.i:       ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #54
  br label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i

_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i: ; preds = %_ZN4asio6detail12posix_threadD2Ev.exit.i.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1008 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4asio6detail21resolver_service_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !205
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(256) %i.k) #43, !inline_history !4099
  br label %_ZN4asio6detail21resolver_service_baseD2Ev.exit

bb.f:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #53
  unreachable

_ZN4asio6detail21resolver_service_baseD2Ev.exit:  ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #43 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN4asio6detail21resolver_service_base13base_shutdownEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1010 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !573, !range !294, !noundef !295
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4asio6detail12posix_threadD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.c, align 8, !tbaa !624
  %i.i = tail call i32 @pthread_detach(i64 noundef %i.h) #43 ; 0 uses
  br label %_ZN4asio6detail12posix_threadD2Ev.exit.i.i.i

_ZN4asio6detail12posix_threadD2Ev.exit.i.i.i:     ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #54
  br label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i

_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i: ; preds = %_ZN4asio6detail12posix_threadD2Ev.exit.i.i.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1008 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !205
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(256) %i.k) #43, !inline_history !4100
  br label %_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED2Ev.exit

bb.f:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #53
  unreachable

_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED2Ev.exit: ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #43 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #54
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16resolver_serviceINS_2ip3tcpEE8shutdownEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4asio6detail21resolver_service_base13base_shutdownEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16resolver_serviceINS_2ip3tcpEE11notify_forkENS_17execution_context10fork_eventE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4asio6detail21resolver_service_base16base_notify_forkENS_17execution_context10fork_eventE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail30execution_context_service_baseINS0_16resolver_serviceINS_2ip3tcpEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #53
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail21resolver_service_base13base_shutdownEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1008 ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %1 = atomicrmw add ptr %i.c, i64 -1 seq_cst, align 8
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.c, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !565, !range !294, !noundef !295
  %i.g = trunc nuw i8 %i.f to i1                  ; 3 uses
  br i1 %i.g, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i8 1, ptr %i.h, align 8, !tbaa !622
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #43 ; 0 uses
  %.pre.i.i = load i8, ptr %i.e, align 8, !tbaa !565, !range !294
  %i.k = trunc nuw i8 %.pre.i.i to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i8 1, ptr %i.l, align 8, !tbaa !622
  br i1 %i.k, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !623
  %i.p = or i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !623
  %i.q = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.d, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !568, !range !294, !noundef !295
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !566  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.r, align 8, !tbaa !568
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !205
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.h, !inline_history !25

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.f, %bb.e, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.g, label %bb.g, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.g:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #43 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.g, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %bb.h, %bb.m
  %.sink7 = phi ptr [ %i.ae, %bb.m ], [ %i.b, %bb.h ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bc, %bb.m ], [ %i.ab, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink7, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #43 ; 0 uses
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.m, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.bc, %bb.m ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.b, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.g
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !1008 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !565, !range !294, !noundef !295
  %i.ah = trunc nuw i8 %i.ag to i1                ; 3 uses
  br i1 %i.ah, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i: ; preds = %_ZN4asio6detail9scheduler13work_finishedEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  store i8 1, ptr %i.ai, align 8, !tbaa !622
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i: ; preds = %_ZN4asio6detail9scheduler13work_finishedEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ak = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #43 ; 0 uses
  %.pre.i = load i8, ptr %i.af, align 8, !tbaa !565, !range !294
  %i.al = trunc nuw i8 %.pre.i to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  store i8 1, ptr %i.am, align 8, !tbaa !622
  br i1 %i.al, label %bb.i, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

bb.i:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 160 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !623
  %i.aq = or i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !623
  %i.ar = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.an) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 208 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !568, !range !294, !noundef !295
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !566 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.as, align 8, !tbaa !568
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !205
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i unwind label %bb.m, !inline_history !25

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i: ; preds = %bb.k, %bb.j, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  br i1 %i.ah, label %bb.l, label %_ZN4asio6detail9scheduler4stopEv.exit

bb.l:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.bb = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #43 ; 0 uses
  br label %_ZN4asio6detail9scheduler4stopEv.exit

bb.m:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ah, label %common.resume.sink.split, label %common.resume

_ZN4asio6detail9scheduler4stopEv.exit:            ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1010 ; 4 uses
  %.not1 = icmp eq ptr %i.be, null
  br i1 %.not1, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN4asio6detail9scheduler4stopEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !573, !range !294, !noundef !295
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN4asio6detail12posix_thread4joinEv.exit.thread, label %_ZN4asio6detail12posix_thread4joinEv.exit

_ZN4asio6detail12posix_thread4joinEv.exit:        ; preds = %bb.n
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !624
  %i.bj = tail call i32 @pthread_join(i64 noundef %i.bi, ptr noundef null) ; 0 uses
  store i8 1, ptr %i.bf, align 8, !tbaa !573
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !1010 ; 2 uses
  %i.bk = icmp eq ptr %.pre, null
  br i1 %i.bk, label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEE5resetEPS2_.exit, label %_ZN4asio6detail12posix_thread4joinEv.exit.thread

_ZN4asio6detail12posix_thread4joinEv.exit.thread: ; preds = %bb.n, %_ZN4asio6detail12posix_thread4joinEv.exit
  %i.bl = phi ptr [ %.pre, %_ZN4asio6detail12posix_thread4joinEv.exit ], [ %i.be, %bb.n ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !573, !range !294, !noundef !295
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZN4asio6detail12posix_threadD2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN4asio6detail12posix_thread4joinEv.exit.thread
  %i.bp = load i64, ptr %i.bl, align 8, !tbaa !624
  %i.bq = tail call i32 @pthread_detach(i64 noundef %i.bp) #43 ; 0 uses
  br label %_ZN4asio6detail12posix_threadD2Ev.exit.i

_ZN4asio6detail12posix_threadD2Ev.exit.i:         ; preds = %bb.o, %_ZN4asio6detail12posix_thread4joinEv.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 16) #54
  br label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEE5resetEPS2_.exit

_ZN4asio6detail10scoped_ptrINS0_12posix_threadEE5resetEPS2_.exit: ; preds = %_ZN4asio6detail12posix_thread4joinEv.exit, %_ZN4asio6detail12posix_threadD2Ev.exit.i
  store ptr null, ptr %i.bd, align 8, !tbaa !1010
  br label %bb.p

bb.p:                                             ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEE5resetEPS2_.exit, %_ZN4asio6detail9scheduler4stopEv.exit
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !1008 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN4asio6detail10scoped_ptrINS0_9schedulerEE5resetEPS2_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !205
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(256) %i.br) #43, !inline_history !4101
  br label %_ZN4asio6detail10scoped_ptrINS0_9schedulerEE5resetEPS2_.exit

_ZN4asio6detail10scoped_ptrINS0_9schedulerEE5resetEPS2_.exit: ; preds = %bb.p, %bb.q
  store ptr null, ptr %i.a, align 8, !tbaa !1008
  br label %bb.r

bb.r:                                             ; preds = %_ZN4asio6detail10scoped_ptrINS0_9schedulerEE5resetEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
end_hunk_6
begin_hunk_7_@_ZN12async_simple4SlotD2Ev:bb.a
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #43, !inline_history !89
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !205
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #43, !inline_history !89
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !221
  %.not.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !222
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.i ], [ %i.y, %bb.j ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.k, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !227

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #43
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !717 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ac = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !252 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #54
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !92

_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !696
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !695
  %i.ag = shl i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ag, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %0, align 8, !tbaa !696   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt13unordered_mapIhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS1_10SignalTypeEPNS1_6SignalEEEEESt4hashIhESt8equal_toIhESaISt4pairIKhSB_EEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !695
  %i.al = shl i64 %i.ak, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #54
  br label %_ZNSt13unordered_mapIhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS1_10SignalTypeEPNS1_6SignalEEEEESt4hashIhESt8equal_toIhESaISt4pairIKhSB_EEED2Ev.exit

_ZNSt13unordered_mapIhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS1_10SignalTypeEPNS1_6SignalEEEEESt4hashIhESt8equal_toIhESaISt4pairIKhSB_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJS5_bEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS9_IS5_EENS_3TryIS5_EEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !227

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.1003)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.k, %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1391
  %i.d = load i64, ptr %1, align 8, !tbaa !1450   ; 3 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !1450
  %i.f = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #64
          to label %AfterCoroEnd.i unwind label %bb.e, !inline_history !4468 ; 8 uses

AfterCoroEnd.i:                                   ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJS5_bEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS9_IS5_EENS_3TryIS5_EEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__EENKUlS6_SS_E_clES6_SS_.resume, ptr %i.f, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJS5_bEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS9_IS5_EENS_3TryIS5_EEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__EENKUlS6_SS_E_clES6_SS_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr42.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.reload.addr43.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.reload.addr44.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.d, ptr %.reload.addr42.i, align 8, !tbaa !1450
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr44.i, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %.reload.addr43.i, align 8, !tbaa !260, !alias.scope !4471
  %index.addr45.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i8 0, ptr %index.addr45.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.i, align 8, !tbaa !260
  %i.j = load ptr, ptr %i.a, align 8
  tail call void %i.j(ptr nonnull %i.a), !inline_history !4468
  ret void

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.not.i.i4 = icmp eq i64 %i.d, 0
  br i1 %.not.i.i4, label %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6, label %_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5

_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5: ; preds = %bb.e
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !205
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #43, !inline_history !93
  br label %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6

_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6: ; preds = %_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr nonnull %i.a)
          to label %common.resume unwind label %bb.f, !inline_history !90

bb.f:                                             ; preds = %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #53
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENKUlOSE_E_clISM_EEDaSO_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1228, align 8           ; 4 uses
  %3 = alloca %"class.std::shared_ptr.296", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1459 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4472, !nonnull !295, !align !426
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %i.d, ptr %2, align 8, !tbaa !1466
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_JRSt7variantIJS4_S7_S9_EEEEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN12async_simple3TryISt4pairISt10error_codemEEaSEOS4_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #53
  unreachable

_ZN12async_simple3TryISt4pairISt10error_codemEEaSEOS4_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !280  ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !260
  store <2 x ptr> %i.k, ptr %3, align 16, !tbaa !260
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN12async_simple3TryISt4pairISt10error_codemEEaSEOS4_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !221
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !222
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !222
  br label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit: ; preds = %_ZN12async_simple3TryISt4pairISt10error_codemEEaSEOS4_.exit, %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1467
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %4 = atomicrmw add ptr %i.s, i64 -1 acq_rel, align 8
  switch i64 %4, label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit [
    i64 1, label %bb.h
    i64 2, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit
  %i.t = load ptr, ptr %3, align 16, !tbaa !692
  %i.u = call noundef i64 @_ZN12async_simple6Signal5emitsENS_10SignalTypeE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.r) #43 ; 0 uses
  br label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit

bb.g:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !260  ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !1155
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr nonnull %i.y)
          to label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit unwind label %bb.g, !inline_history !94

_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit: ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit, %bb.f, %bb.i, %bb.h
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !280 ; 8 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ab, align 8, !tbaa !283
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !284
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !205
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #43, !inline_history !89
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !205
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #43, !inline_history !89
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !221
  %.not.i.i.i4 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !222
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !227

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #43
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail17DetachedCoroutine12promise_type19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %1) #43
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %1) #55
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 1
  %i.c = load ptr, ptr %1, align 8, !tbaa !653
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.c, %bb.d
  %i.d = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #43
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.f = extractvalue { ptr, i32 } %i.a, 0
  %i.g = call ptr @__cxa_begin_catch(ptr %i.f) #43 ; 2 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !4473
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !205
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #43
  %i.m = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.1029, ptr noundef %i.l) #65 ; 0 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !4473
  %i.o = call i32 @fflush(ptr noundef %i.n)       ; 0 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %2) #43
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %2) #55
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !653
  %.not.i6 = icmp eq ptr %i.q, null
  br i1 %.not.i6, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7:  ; preds = %bb.g, %bb.h
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %.merged = phi { ptr, i32 } [ %i.a, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %i.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7 ]
  resume { ptr, i32 } %.merged

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #53
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_JRSt7variantIJS4_S7_S9_EEEEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1387
  %i.c = load ptr, ptr %0, align 8, !tbaa !1466   ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1387  ; 7 uses
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.i
    i8 -1, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.c [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSB_EUlOT_T0_E_RSt7variantIJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !1204

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.c) #43
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !1387
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSB_EUlOT_T0_E_RSt7variantIJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit

bb.e:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.g [
    i8 1, label %bb.f
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
end_hunk_7
begin_hunk_8_@_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE9tryResultEv:bb.a
_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i
  %.str.1006.sink = phi ptr [ @.str.1005, %_ZSt26__throw_bad_variant_accessb.exit.i.i ], [ @.str.1006, %bb.a ]
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.h, align 8, !tbaa !205
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.str.1006.sink, ptr %i.i, align 8, !tbaa !1188
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #55
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.cont unwind label %bb.e

_ZSt26__throw_bad_variant_accessb.exit.i.i.cont:  ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke
  unreachable

_ZSt3getISt4pairISt10error_codemEJSt9monostateS2_NSt15__exception_ptr13exception_ptrEEERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.j, align 8, !tbaa !1387
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.d, %_ZN12async_simple3TryISt4pairISt10error_codemEEC2ENSt15__exception_ptr13exception_ptrE.exit, %_ZN12async_simple3TryISt4pairISt10error_codemEEC2ENSt15__exception_ptr13exception_ptrE.exit.thread, %_ZSt3getISt4pairISt10error_codemEJSt9monostateS2_NSt15__exception_ptr13exception_ptrEEERT_RSt7variantIJDpT0_EE.exit
  ret void

bb.e:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #53
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getINSt15__exception_ptr13exception_ptrEJSt9monostateSt4pairISt10error_codemES1_EERT_RSt7variantIJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1387
  switch i8 %i.b, label %bb.b [
    i8 2, label %_ZSt3getILm2EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i
  ], !prof !1204

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !205
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.1006, ptr %i.d, align 8, !tbaa !1188
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #55
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i:         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !205
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str.1005, ptr %i.f, align 8, !tbaa !1188
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #55
  unreachable

_ZSt3getILm2EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit: ; preds = %bb.a
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #35

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail8LazyBaseIbLb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS6_IbEENS_3TryIbEEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !227

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.1003)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.k, %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1393
  %i.d = load i64, ptr %1, align 8, !tbaa !1450   ; 3 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !1450
  %i.f = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #64
          to label %AfterCoroEnd.i unwind label %bb.e, !inline_history !4474 ; 8 uses

AfterCoroEnd.i:                                   ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseIbLb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS6_IbEENS_3TryIbEEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__EENKUlS3_SS_E_clES3_SS_.resume, ptr %i.f, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseIbLb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS6_IbEENS_3TryIbEEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__EENKUlS3_SS_E_clES3_SS_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.reload.addr43.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.reload.addr44.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.d, ptr %.reload.addr.i, align 8, !tbaa !1450
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr44.i, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %.reload.addr43.i, align 8, !tbaa !260, !alias.scope !4477
  %index.addr45.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i8 0, ptr %index.addr45.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.i, align 8, !tbaa !260
  %i.j = load ptr, ptr %i.a, align 8
  tail call void %i.j(ptr nonnull %i.a), !inline_history !4474
  ret void

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.not.i.i4 = icmp eq i64 %i.d, 0
  br i1 %.not.i.i4, label %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6, label %_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5

_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5: ; preds = %bb.e
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !205
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #43, !inline_history !95
  br label %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6

_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6: ; preds = %_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr nonnull %i.a)
          to label %common.resume unwind label %bb.f, !inline_history !91

bb.f:                                             ; preds = %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #53
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENKUlOSE_E_clISM_EEDaSO_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1241, align 8           ; 4 uses
  %3 = alloca %"class.std::shared_ptr.296", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1462 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4478, !nonnull !295, !align !426
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %i.d, ptr %2, align 8, !tbaa !1473
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS7_EUlOT_T0_E_JRSt7variantIJS4_bS6_EEEEDcOSB_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN12async_simple3TryIbEaSEOS1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #53
  unreachable

_ZN12async_simple3TryIbEaSEOS1_.exit:             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !280  ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !260
  store <2 x ptr> %i.k, ptr %3, align 16, !tbaa !260
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN12async_simple3TryIbEaSEOS1_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !221
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !222
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !222
  br label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit: ; preds = %_ZN12async_simple3TryIbEaSEOS1_.exit, %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1467
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %4 = atomicrmw add ptr %i.s, i64 -1 acq_rel, align 8
  switch i64 %4, label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit [
    i64 1, label %bb.g
    i64 2, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit
  %i.t = load ptr, ptr %3, align 16, !tbaa !692
  %i.u = call noundef i64 @_ZN12async_simple6Signal5emitsENS_10SignalTypeE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.r) #43 ; 0 uses
  br label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !260  ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !1155
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr nonnull %i.x)
          to label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit unwind label %bb.i, !inline_history !94

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.z

_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit: ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit, %bb.f, %bb.h, %bb.g
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !280 ; 8 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ab, align 8, !tbaa !283
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !284
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !205
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #43, !inline_history !89
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !205
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #43, !inline_history !89
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !221
  %.not.i.i.i4 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !222
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !227

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #43
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS7_EUlOT_T0_E_JRSt7variantIJS4_bS6_EEEEDcOSB_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1389
  %i.c = load ptr, ptr %0, align 8, !tbaa !1473   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1389  ; 7 uses
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.i
    i8 -1, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.c [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !1204

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.c) #43
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !1389
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.e:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.g [
    i8 1, label %bb.f
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !1204

bb.f:                                             ; preds = %bb.e
  %i.h = load i8, ptr %1, align 8, !tbaa !676, !range !294, !noundef !295
  store i8 %i.h, ptr %i.c, align 8, !tbaa !676
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.g:                                             ; preds = %bb.e
  %i.i = icmp ne i8 %i.e, 2
  %i.j = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10 = icmp eq ptr %i.j, null
  %or.cond.i.i.i.i.i.i.i11 = select i1 %i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10
  br i1 %or.cond.i.i.i.i.i.i.i11, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.c) #43
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.k = load i8, ptr %1, align 8, !tbaa !676, !range !294, !noundef !295
  store i8 %i.k, ptr %i.c, align 8, !tbaa !1475
  store i8 1, ptr %i.d, align 8, !tbaa !1389
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.i:                                             ; preds = %bb.a
  %cond.i.i.i.i = icmp eq i8 %i.e, 2
  br i1 %cond.i.i.i.i, label %bb.j, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, !prof !1470

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.l = load ptr, ptr %1, align 8, !tbaa !653
  store ptr null, ptr %1, align 8, !tbaa !653
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !653  ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !653
  store ptr %i.l, ptr %i.c, align 8, !tbaa !653
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.i
  %i.n = load ptr, ptr %1, align 8, !tbaa !653
  store ptr %i.n, ptr %i.c, align 8, !tbaa !653
  store ptr null, ptr %1, align 8, !tbaa !653
  store i8 2, ptr %i.d, align 8, !tbaa !1389
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.l:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit, label %bb.m, !prof !227

bb.m:                                             ; preds = %bb.l
  %i.o = icmp ne i8 %i.e, 2
  %i.p = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  %or.cond.i.i.i.i.i.i = select i1 %i.o, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS5_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.c) #43
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS5_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS5_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  store i8 -1, ptr %i.d, align 8, !tbaa !1389
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.o:                                             ; preds = %bb.a
  unreachable

end_hunk_8
begin_hunk_9_@_ZNSt12__shared_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !222
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !227

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #43
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIPvEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const._ZN7easylog8record_tlsIPN7coro_io16ib_buffer_pool_tEEERS0_RKT_.buf, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !260    ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = sub nuw nsw i32 67, %i.g
  %i.i = lshr i32 %i.h, 2                         ; 2 uses
  %i.j = icmp ugt ptr %i.c, inttoptr (i64 255 to ptr)
  br i1 %i.j, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.k = add nsw i32 %i.i, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.031.i.i = phi i32 [ %i.y, %.lr.ph.i.i ], [ %i.k, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %i.d, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.l = and i64 %.02830.i.i, 15
  %i.m = lshr i64 %.02830.i.i, 4
  %i.n = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !tbaa !221
  %i.p = zext i32 %.031.i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p
  store i8 %i.o, ptr %i.q, align 1, !tbaa !221
  %i.r = and i64 %i.m, 15
  %i.s = lshr i64 %.02830.i.i, 8                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !tbaa !221
  %i.v = add nsw i32 %.031.i.i, -1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.w
  store i8 %i.u, ptr %i.x, align 1, !tbaa !221
  %i.y = add nsw i32 %.031.i.i, -2
  %i.z = icmp ugt i64 %.02830.i.i, 65535
  br i1 %i.z, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !98

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.028.lcssa.i.i = phi i64 [ %i.d, %bb.b ], [ %i.s, %.lr.ph.i.i ] ; 4 uses
  %i.aa = icmp samesign ugt i64 %.028.lcssa.i.i, 15
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ab = and i64 %.028.lcssa.i.i, 15
  %i.ac = lshr i64 %.028.lcssa.i.i, 4
  %i.ad = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !221
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !221
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.028.pn.i.i = phi i64 [ %i.ac, %bb.c ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !221
  %narrow = add nuw nsw i32 %i.i, 2
  %i.ag = zext nneg i32 %narrow to i64
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %bb.d, %bb.a
  %.sink109.i = phi i8 [ %storemerge.i.i, %bb.d ], [ 48, %bb.a ]
  %.sink.i = phi i64 [ %i.ag, %bb.d ], [ 3, %bb.a ] ; 4 uses
  store i8 %.sink109.i, ptr %i.b, align 2, !tbaa !221
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !231 ; 5 uses
  %i.ak = sub i64 9223372036854775807, %i.aj
  %i.al = icmp ult i64 %i.ak, %.sink.i
  br i1 %i.al, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.e:                                             ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.915) #55
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i
  %i.am = add i64 %i.aj, %.sink.i                 ; 3 uses
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !230 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aq = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !221
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = phi i64 [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.am, %i.as
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 16 %i.a, i64 %.sink.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.aj, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %.sink.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.f, %bb.g
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !231
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !230
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  store i8 0, ptr %i.av, align 1, !tbaa !221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io16ib_buffer_pool_t7enqueueERNS_11ib_buffer_tE(ptr noundef nonnull align 8 dereferenceable(1352) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.1290", align 8 ; 9 uses
  %3 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %4 = alloca %"struct.refvalue::meta_string.617", align 1 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.async_simple::coro::Lazy.734", align 8 ; 8 uses
  %6 = alloca %"class.std::weak_ptr.1029", align 16 ; 3 uses
  %7 = alloca %class.anon.1300, align 1           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4540)
  %i.d = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #56, !noalias !4540 ; 5 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !1484, !noalias !4540
  store ptr %i.e, ptr %i.d, align 8, !tbaa !1484, !noalias !4540
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1485, !noalias !4540
  store i64 %i.h, ptr %i.f, align 8, !tbaa !1485, !noalias !4540
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load <2 x ptr>, ptr %i.j, align 8, !tbaa !260, !noalias !4540
  store ptr null, ptr %i.k, align 8, !tbaa !280, !noalias !4540
  store <2 x ptr> %i.l, ptr %i.i, align 8, !tbaa !260, !noalias !4540
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 24, i1 false), !noalias !4540
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.n = load i64, ptr %i.b, align 8, !tbaa !1487, !noalias !4540
  store i64 %i.n, ptr %i.m, align 8, !tbaa !1487, !noalias !4540
  store ptr null, ptr %i.b, align 8, !tbaa !1487, !noalias !4540
  store ptr %i.d, ptr %2, align 8, !tbaa !1508, !alias.scope !4540
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %i.t = atomicrmw add ptr %i.s, i64 1 seq_cst, align 8
  %i.u = getelementptr inbounds [616 x i8], ptr %i.o, i64 %i.q
  %i.v = invoke noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %i.u)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit.thread, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS9_.exit.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS9_.exit.i: ; preds = %.noexc
  %i.x = invoke noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7enqueueILNSB_14AllocationModeE0ES9_EEbOT0_(ptr noundef nonnull align 8 dereferenceable(104) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc22 unwind label %bb.m

.noexc22:                                         ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS9_.exit.i
  br i1 %i.x, label %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit, label %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit.thread

_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit.thread: ; preds = %.noexc, %.noexc22
  %8 = atomicrmw add ptr %i.s, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_order.exit

_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit: ; preds = %.noexc22
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %bb.b, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_order.exit

bb.b:                                             ; preds = %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.aa = cmpxchg ptr %i.z, i64 0, i64 1 seq_cst seq_cst, align 8
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.c, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_order.exit

bb.c:                                             ; preds = %bb.b
  %i.ac = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 8
  %i.ae = icmp slt i32 %i.ad, 2
  br i1 %i.ae, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.af = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #43 ; 2 uses
  %i.ag = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.f unwind label %bb.m       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load atomic i64, ptr %i.ah monotonic, align 8
  %i.aj = icmp slt i64 %i.ai, 1
  br i1 %i.aj, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.ak, align 8, !tbaa !285
  %i.al = sub nsw i64 %i.af, %.sroa.0.0.copyload.i2.i.i
  %i.am = sdiv i64 %i.al, 1000000
  %i.an = load atomic i64, ptr %i.ah monotonic, align 8
  %i.ao = srem i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aq = load atomic i64, ptr %i.ap monotonic, align 8
  %i.ar = icmp slt i64 %i.ao, %i.aq
  br i1 %i.ar, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.s

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %bb.f, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store i8 91, ptr %4, align 1, !alias.scope !4541
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.0.i.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(17) @__const._ZZN7coro_io16ib_buffer_pool_t7enqueueERNS_11ib_buffer_tEENKUlvE_clEv.prefix, i64 17, i1 false), !tbaa.struct !1371
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.965, i64 3, i1 false), !tbaa.struct !465
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 %i.af, i32 noundef 1, i64 20, ptr nonnull %4)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.as = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA47_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 1 dereferenceable(47) @.str.1043)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store ptr %0, ptr %i.a, align 8, !tbaa !1509
  %i.at = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIPN7coro_io16ib_buffer_pool_tEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.au = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA2_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 1 dereferenceable(2) @.str.1044)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.av = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aw = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !294, !noundef !295
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, label %bb.l, !prof !227

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(80) %i.au)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit unwind label %bb.p

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit:   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.s

bb.m:                                             ; preds = %bb.a, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS9_.exit.i, %bb.c, %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.n:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.l, %bb.j, %bb.i, %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.p ], [ %i.ba, %bb.o ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #43
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.az, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.an

bb.s:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !4542)
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !220, !noalias !4542 ; 2 uses
  %i.bf = load <2 x ptr>, ptr %0, align 8, !tbaa !260, !noalias !4542
  store <2 x ptr> %i.bf, ptr %6, align 16, !tbaa !260, !alias.scope !4542
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZNSt23enable_shared_from_thisIN7coro_io16ib_buffer_pool_tEE14weak_from_thisEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !221, !noalias !4542
  %.not.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !222, !noalias !4542
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !222, !noalias !4542
  br label %_ZNSt23enable_shared_from_thisIN7coro_io16ib_buffer_pool_tEE14weak_from_thisEv.exit

bb.v:                                             ; preds = %bb.t
  %i.bk = atomicrmw volatile add ptr %i.bg, i32 1 acq_rel, align 4, !noalias !4542 ; 0 uses
  br label %_ZNSt23enable_shared_from_thisIN7coro_io16ib_buffer_pool_tEE14weak_from_thisEv.exit

_ZNSt23enable_shared_from_thisIN7coro_io16ib_buffer_pool_tEE14weak_from_thisEv.exit: ; preds = %bb.s, %bb.u, %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !285
  %.sroa.0.0.copyload.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.bm, i64 50)
  invoke void @_ZN7coro_io16ib_buffer_pool_t27collect_idle_timeout_clientESt8weak_ptrIS0_ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::coro::Lazy.734") align 8 %5, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %6, i64 %.sroa.0.0.copyload.sroa.speculated)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %_ZNSt23enable_shared_from_thisIN7coro_io16ib_buffer_pool_tEE14weak_from_thisEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  %i.bn = call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #43
  %i.bo = invoke noundef nonnull align 8 dereferenceable(113) ptr @_ZN7coro_io17g_io_context_poolINS_15io_context_poolEEERT_j(i32 noundef %i.bn)
          to label %bb.x unwind label %bb.af      ; 4 uses

bb.x:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = atomicrmw add ptr %i.bp, i64 1 monotonic, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !401
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !402
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 4
  %i.bz = urem i64 %i.bq, %i.by
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !405
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !406
  %i.cd = load ptr, ptr %5, align 8, !tbaa !1370
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !911
  invoke void @_ZN12async_simple4coro6detail8LazyBaseIvLb0EE5startIZN7coro_io16ib_buffer_pool_t7enqueueERNS5_11ib_buffer_tEEUlOT_E_EEvSA_Q14isLazyCallbackIS9_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN12async_simple4coro4LazyIvE13directlyStartIZN7coro_io16ib_buffer_pool_t7enqueueERNS4_11ib_buffer_tEEUlOT_E_EEvS9_PNS_8ExecutorEQsr6detailE14isLazyCallbackIS8_TL0__E.exit unwind label %bb.af

_ZN12async_simple4coro4LazyIvE13directlyStartIZN7coro_io16ib_buffer_pool_t7enqueueERNS4_11ib_buffer_tEEUlOT_E_EEvS9_PNS_8ExecutorEQsr6detailE14isLazyCallbackIS8_TL0__E.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.cf = load ptr, ptr %5, align 8, !tbaa !1370  ; 3 uses
  %.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i, label %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN12async_simple4coro4LazyIvE13directlyStartIZN7coro_io16ib_buffer_pool_t7enqueueERNS4_11ib_buffer_tEEUlOT_E_EEvS9_PNS_8ExecutorEQsr6detailE14isLazyCallbackIS8_TL0__E.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr nonnull %i.cf)
          to label %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit unwind label %bb.z, !inline_history !88

bb.z:                                             ; preds = %bb.y
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #53
  unreachable
end_hunk_9
begin_hunk_10_@_ZN7easylog8record_tlsIA2_cEERS0_RKT_:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !221
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %1, align 1, !tbaa !221
  store i8 %i.o, ptr %i.n, align 1, !tbaa !221
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !231
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !230
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !221
  ret ptr %0
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io16ib_buffer_pool_t27collect_idle_timeout_clientESt8weak_ptrIS0_ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr dead_on_unwind writable sret(%"class.async_simple::coro::Lazy.734") align 8 %0, ptr nofreeobj noundef align 8 dereferenceable(16) %1, i64 %2) local_unnamed_addr #42 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(264) ptr @_ZnamRKSt9nothrow_t(i64 noundef 264, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #63 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.c, align 1
  store ptr @_ZN7coro_io16ib_buffer_pool_t27collect_idle_timeout_clientESt8weak_ptrIS0_ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN7coro_io16ib_buffer_pool_t27collect_idle_timeout_clientESt8weak_ptrIS0_ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.destroy, ptr %destroy.addr, align 8
  %.reload.addr470 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i64 %2, ptr %.spill.addr, align 8
  %.spill.addr425 = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !260
  store <2 x ptr> %i.d, ptr %.spill.addr425, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr470, i8 0, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !260, !alias.scope !4547
  %index.addr471 = getelementptr inbounds nuw i8, ptr %i.a, i64 253
  store i8 0, ptr %index.addr471, align 1
  br label %AfterCoroEnd

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !260, !alias.scope !4548
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt6thread20hardware_concurrencyEv() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN3ylt6detail10moodycamel7details9thread_idEvE1x)
  %i.b = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.c = lshr i64 %i.b, 33
  %i.d = xor i64 %i.c, %i.b
  %i.e = mul i64 %i.d, -49064778989728563         ; 2 uses
  %i.f = lshr i64 %i.e, 33
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -4265267296055464877       ; 2 uses
  %i.i = lshr i64 %i.h, 33
  %i.j = xor i64 %i.i, %i.h                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.l = load atomic ptr, ptr %i.k acquire, align 8 ; 6 uses
  %.not150 = icmp eq ptr %i.l, null
  br i1 %.not150, label %.thread131, label %.preheader142

.preheader142:                                    ; preds = %bb.a, %bb.e
  %.087151 = phi ptr [ %i.ai, %bb.e ], [ %i.l, %bb.a ] ; 4 uses
  %i.m = load i64, ptr %.087151, align 8, !tbaa !4553
  %i.n = add i64 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %.087151, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !4554
  br label %bb.b

bb.b:                                             ; preds = %.preheader142, %bb.d
  %.080 = phi i64 [ %i.ag, %bb.d ], [ %i.j, %.preheader142 ]
  %i.q = and i64 %i.n, %.080                      ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !4557 ; 3 uses
  %.not103 = icmp eq ptr %.087151, %i.l
  br i1 %.not103, label %.thread134, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader
  %.181 = phi i64 [ %i.ae, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112 ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader ]
  %i.x = load i64, ptr %i.l, align 8, !tbaa !4553
  %i.y = add i64 %i.x, -1
  %i.z = and i64 %i.y, %.181                      ; 3 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !4554
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = cmpxchg ptr %i.ab, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = add i64 %i.z, 1
  br i1 %i.ad, label %bb.f, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

bb.d:                                             ; preds = %bb.b
  %i.af = icmp eq i64 %i.s, 0
  %i.ag = add i64 %i.q, 1
  br i1 %i.af, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.087151, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !4558 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.thread131, label %.preheader142, !llvm.loop !4549

bb.f:                                             ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !4554
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.z
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.v, ptr %i.al, align 8, !tbaa !4557
  br label %.thread134

.thread131:                                       ; preds = %bb.e, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = add i64 %i.an, 1                        ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.thread131
  %.088 = phi ptr [ %i.l, %.thread131 ], [ %i.ck, %bb.o ] ; 3 uses
  %i.aq = load i64, ptr %.088, align 8, !tbaa !4553
  %i.ar = lshr i64 %i.aq, 1
  %.not104 = icmp ult i64 %i.ao, %i.ar
  br i1 %.not104, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = atomicrmw xchg ptr %i.ap, i8 1 acquire, align 1
  %.0.in.i.not = icmp eq i8 %i.as, 0
  br i1 %.0.in.i.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = load atomic ptr, ptr %i.k acquire, align 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !4553 ; 2 uses
  %i.av = lshr i64 %i.au, 1
  %.not105 = icmp ult i64 %i.ao, %i.av
  br i1 %.not105, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.i, %.preheader
  %.079.in = phi i64 [ %.079, %.preheader ], [ %i.au, %bb.i ] ; 3 uses
  %.079 = shl i64 %.079.in, 1                     ; 4 uses
  %i.aw = and i64 %.079.in, 9223372036854775807
  %.not106 = icmp ult i64 %i.ao, %i.aw
  br i1 %.not106, label %bb.j, label %.preheader, !llvm.loop !4550

bb.j:                                             ; preds = %.preheader
  %i.ax = shl i64 %.079.in, 5
  %i.ay = or disjoint i64 %i.ax, 31
  %i.az = tail call noalias noundef ptr @malloc(i64 noundef %i.ay) #62 ; 7 uses
  %.not108 = icmp eq ptr %i.az, null
  br i1 %.not108, label %.thread136, label %bb.k

.thread136:                                       ; preds = %bb.j
  %1 = atomicrmw add ptr %i.am, i64 -1 monotonic, align 8 ; 0 uses
  store atomic i8 0, ptr %i.ap monotonic, align 8
  br label %.thread134

bb.k:                                             ; preds = %bb.j
  store i64 %.079, ptr %i.az, align 8, !tbaa !4553
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 0, %i.bb
  %i.bd = and i64 %i.bc, 7
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !4554
  %.not107152 = icmp eq i64 %.079, 0
  br i1 %.not107152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.078153 = phi i64 [ %i.bp, %.lr.ph ], [ 0, %bb.k ] ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !4554
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.078153
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !4554
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.078153
  store atomic i64 0, ptr %i.bj monotonic, align 8
  %i.bk = or disjoint i64 %.078153, 1             ; 2 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !4554
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bk
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !4554
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bk
  store atomic i64 0, ptr %i.bo monotonic, align 8
  %i.bp = add nuw i64 %.078153, 2                 ; 2 uses
  %.not107.1 = icmp eq i64 %i.bp, %.079
  br i1 %.not107.1, label %._crit_edge, label %.lr.ph, !llvm.loop !4551

._crit_edge:                                      ; preds = %.lr.ph, %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.at, ptr %i.bq, align 8, !tbaa !4558
  store atomic ptr %i.az, ptr %i.k release, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %._crit_edge
  %.290.ph = phi ptr [ %i.az, %._crit_edge ], [ %i.at, %bb.i ]
  store atomic i8 0, ptr %i.ap release, align 8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.g
  %.290 = phi ptr [ %.088, %bb.h ], [ %.088, %bb.g ], [ %.290.ph, %.sink.split ] ; 3 uses
  %i.br = load i64, ptr %.290, align 8, !tbaa !4553 ; 2 uses
  %i.bs = lshr i64 %i.br, 1
  %i.bt = lshr i64 %i.br, 2
  %i.bu = add nuw i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.ao, %i.bu
  br i1 %i.bv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext false) ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.n, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader: ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %.290, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

bb.n:                                             ; preds = %bb.m
  %2 = atomicrmw add ptr %i.am, i64 -1 monotonic, align 8 ; 0 uses
  br label %.thread134

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader
  %.0 = phi i64 [ %i.cg, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader ]
  %i.bz = load i64, ptr %.290, align 8, !tbaa !4553
  %i.ca = add i64 %i.bz, -1
  %i.cb = and i64 %i.ca, %.0                      ; 3 uses
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !4554
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = cmpxchg ptr %i.cd, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  %i.cg = add i64 %i.cb, 1
  br i1 %i.cf, label %.thread139, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread139:                                       ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !4554
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.cb
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.bw, ptr %i.cj, align 8, !tbaa !4557
  br label %.thread134

bb.o:                                             ; preds = %bb.l
  %i.ck = load atomic ptr, ptr %i.k acquire, align 8
  br label %bb.g, !llvm.loop !4552

.thread134:                                       ; preds = %bb.f, %bb.c, %.thread139, %.thread136, %bb.n
  %.9 = phi ptr [ %i.v, %bb.f ], [ null, %.thread136 ], [ null, %bb.n ], [ %i.bw, %.thread139 ], [ %i.v, %bb.c ]
  ret ptr %.9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7enqueueILNSB_14AllocationModeE0ES9_EEbOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 4 uses
  %i.d = add i64 %i.c, 1
  %i.e = and i64 %i.c, 31                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1516
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %reass.sub = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub, 9223372036854775775
  %i.j = icmp ult i64 %i.i, 9223372036854775807
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.k = call noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer24insert_block_index_entryILNSB_14AllocationModeE0EEEbRPNSC_15BlockIndexEntryEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
  br i1 %i.k, label %bb.d, label %.critedge.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1517 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1528 ; 2 uses
  %.not.i.i = icmp ult i64 %i.o, %i.q
  br i1 %.not.i.i, label %bb.e, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw add ptr %i.n, i64 1 monotonic, align 8 ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !4560 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 5 uses
  %i.w = load atomic ptr, ptr %i.v acquire, align 8 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not24.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i
  %.025.i.i.i = phi ptr [ %.114.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i ], [ %i.w, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 304 ; 6 uses
  %i.y = load atomic i32, ptr %i.x monotonic, align 4 ; 3 uses
  %i.z = and i32 %i.y, 2147483647
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = add i32 %i.y, 1
  %i.ac = cmpxchg ptr %i.x, i32 %i.y, i32 %i.ab acquire monotonic, align 4
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %.lr.ph.i.i.i
  %i.ae = load atomic ptr, ptr %i.v acquire, align 8
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, !llvm.loop !4559

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 312 ; 2 uses
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8
  %i.ah = cmpxchg ptr %i.v, ptr %.025.i.i.i, ptr %i.ag acquire monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = extractvalue { ptr, i1 } %i.ah, 0       ; 3 uses
  %2 = atomicrmw add ptr %i.x, i32 -1 acq_rel, align 4
  %i.ak = icmp eq i32 %2, -2147483647
  br i1 %i.ak, label %bb.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.al = load atomic ptr, ptr %i.v monotonic, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ao, %bb.k ] ; 2 uses
  store atomic ptr %.0.i.i.i.i, ptr %i.af monotonic, align 8
  store atomic i32 1, ptr %i.x release, align 8
  %i.am = cmpxchg ptr %i.v, ptr %.0.i.i.i.i, ptr %.025.i.i.i release monotonic, align 8 ; 2 uses
  %i.an = extractvalue { ptr, i1 } %i.am, 1
  br i1 %i.an, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = extractvalue { ptr, i1 } %i.am, 0
  %i.ap = atomicrmw add ptr %i.x, i32 2147483647 release, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.j, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, !llvm.loop !99

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.114.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %bb.h ], [ %i.aj, %bb.j ], [ %i.aj, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.114.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i: ; preds = %bb.g
  %3 = atomicrmw add ptr %i.x, i32 -2 release, align 4 ; 0 uses
  br label %.thread

.loopexit.i:                                      ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i
  %i.ar = call noalias noundef dereferenceable_or_null(328) ptr @malloc(i64 noundef 328) #62 ; 5 uses
  %.not.i9.i = icmp eq ptr %i.ar, null
  br i1 %.not.i9.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 256
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 312
  store ptr null, ptr %i.at, align 8, !tbaa !4561
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.as, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.au, align 8, !tbaa !1530
  br label %.thread

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i
  %i.av = getelementptr inbounds nuw [328 x i8], ptr %i.u, i64 %i.r
  br label %.thread

.thread:                                          ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, %bb.l
  %.0.i20 = phi ptr [ %i.av, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit ], [ %i.ar, %bb.l ], [ %.025.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i20, i64 264
  store atomic i64 0, ptr %i.aw monotonic, align 8
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !1532
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store atomic ptr %.0.i20, ptr %i.ay monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.0.i20, ptr %i.az, align 8, !tbaa !1516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.m

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21: ; preds = %.loopexit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load atomic ptr, ptr %i.ba monotonic, align 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load atomic i64, ptr %i.bc monotonic, align 8
  %i.be = add i64 %i.bd, -1
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !1536
  %i.bg = add i64 %i.bf, -1
  %i.bh = and i64 %i.bg, %i.be
  store atomic i64 %i.bh, ptr %i.bc monotonic, align 8
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !1532
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store atomic ptr null, ptr %i.bj monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %.critedge

bb.m:                                             ; preds = %._crit_edge, %.thread
  %i.bk = phi ptr [ %.pre, %._crit_edge ], [ %.0.i20, %.thread ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.e
  %i.bm = load i64, ptr %1, align 8, !tbaa !1508
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !1508
  store ptr null, ptr %1, align 8, !tbaa !1508
  store atomic i64 %i.d, ptr %i.b release, align 8
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %.critedge

.critedge:                                        ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21, %.critedge.critedge, %bb.b, %bb.m
  %.3 = phi i1 [ true, %bb.m ], [ false, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21 ], [ false, %bb.b ], [ false, %.critedge.critedge ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not27 = icmp eq ptr %i.a, null
  br i1 %.not27, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i1 %1 to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit
  %.01128 = phi ptr [ %i.a, %.lr.ph ], [ %i.n, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01128, i64 16 ; 2 uses
  %i.d = load atomic i8, ptr %i.c monotonic, align 1, !range !294, !noundef !295
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.01128, i64 72
  %i.g = load i8, ptr %i.f, align 8, !tbaa !1537, !range !294, !noundef !295
  %i.h = icmp eq i8 %i.g, %i.b
  br i1 %i.h, label %bb.d, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = cmpxchg ptr %i.c, i8 1, i8 0 acquire monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNSB_12ProducerBaseE.exit, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.01128, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !877  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8
  br i1 %i.m, label %select.unfold._crit_edge, label %bb.b

select.unfold._crit_edge:                         ; preds = %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit, %bb.a
  br i1 %1, label %bb.e, label %bb.h

bb.e:                                             ; preds = %select.unfold._crit_edge
  %i.o = tail call noalias noundef dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #62 ; 14 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNSB_12ProducerBaseE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !877
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i8 0, ptr %i.q, align 8, !tbaa !456
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.s, align 8, !tbaa !1537
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %0, ptr %i.t, align 8, !tbaa !1517
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducerE, i64 16), ptr %i.o, align 8, !tbaa !205
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1528
  %i.z = add i64 %i.y, -1                         ; 2 uses
  %i.aa = lshr i64 %i.z, 1
  %i.ab = or i64 %i.aa, %i.z                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = or i64 %i.ac, %i.ab                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 4
  %i.af = or i64 %i.ae, %i.ad                     ; 2 uses
  %i.ag = lshr i64 %i.af, 8
  %i.ah = or i64 %i.ag, %i.af                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 16
  %i.aj = or i64 %i.ai, %i.ah                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 32
  %i.al = or i64 %i.ak, %i.aj
  %i.am = add i64 %i.al, 1
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.am, i64 33) ; 2 uses
  %spec.select.i.i = lshr i64 %i.an, 1            ; 2 uses
  %i.ao = and i64 %i.an, -2                       ; 2 uses
  store i64 %i.ao, ptr %i.v, align 8, !tbaa !1543
  %i.ap = shl i64 %spec.select.i.i, 5
  %i.aq = add i64 %i.ap, 39
  %i.ar = tail call noalias noundef ptr @malloc(i64 noundef %i.aq) #62 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %bb.g, label %.loopexit.i.i.i

bb.g:                                             ; preds = %bb.f
  store i64 %spec.select.i.i, ptr %i.v, align 8, !tbaa !1543
  br label %bb.p

.loopexit.i.i.i:                                  ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 0, %i.av
  %i.ax = and i64 %i.aw, 7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ao, ptr %i.ar, align 8, !tbaa !1545
  store atomic i64 -1, ptr %i.az monotonic, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !1546
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr null, ptr %i.bb, align 8, !tbaa !1547
  store i64 0, ptr %i.w, align 8, !tbaa !1548
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !1549
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1550
  store atomic ptr %i.ar, ptr %i.u release, align 8
  br label %bb.p

bb.h:                                             ; preds = %select.unfold._crit_edge
  %i.bc = tail call noalias noundef dereferenceable_or_null(104) ptr @malloc(i64 noundef 104) #62 ; 10 uses
  %.not.i14 = icmp eq ptr %i.bc, null
  br i1 %.not.i14, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNSB_12ProducerBaseE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr null, ptr %i.bd, align 8, !tbaa !877
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i8 0, ptr %i.be, align 8, !tbaa !456
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.bf, i8 0, i64 49, i1 false)
  store ptr %0, ptr %i.bg, align 8, !tbaa !1517
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducerE, i64 16), ptr %i.bc, align 8, !tbaa !205
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 88 ; 2 uses
  store i64 32, ptr %i.bh, align 8, !tbaa !1554
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 96 ; 3 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !4563
  %i.bj = load atomic ptr, ptr %i.bi monotonic, align 8 ; 6 uses
  %i.bk = icmp eq ptr %i.bj, null                 ; 2 uses
  br i1 %i.bk, label %bb.k, label %bb.j
end_hunk_10
begin_hunk_11_@_ZNR12async_simple3TryISt10error_codeE5valueEv:bb.a
bb.i:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.f, %bb.e, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.h, %bb.i ], [ %i.e, %bb.e ], [ %i.e, %bb.f ]
  resume { ptr, i32 } %.pn.i

_ZNK12async_simple3TryISt10error_codeE11checkHasTryEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %cond = icmp eq i8 %i.b, -1
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !205
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %cond, label %_ZSt26__throw_bad_variant_accessb.exit.i.i, label %bb.j, !prof !824

bb.j:                                             ; preds = %_ZNK12async_simple3TryISt10error_codeE11checkHasTryEv.exit
  store ptr @.str.1006, ptr %i.j, align 8, !tbaa !1188
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #55
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i:       ; preds = %_ZNK12async_simple3TryISt10error_codeE11checkHasTryEv.exit
  store ptr @.str.1005, ptr %i.j, align 8, !tbaa !1188
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #55
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateISt10error_codeE9setResultEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.2443, align 8           ; 4 uses
  %i.a = load atomic i8, ptr %0 acquire, align 8
  %i.b = and i8 %i.a, 33
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %_ZN12async_simple11logicAssertEbPKc.exit, label %bb.b, !prof !575

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.1186)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.o, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %i.e, ptr %2, align 8, !tbaa !2564
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_JRSt7variantIJS4_S5_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #53
  unreachable

_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.h = load atomic i8, ptr %0 acquire, align 8  ; 2 uses
  switch i8 %i.h, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5 [
    i8 0, label %bb.f
    i8 2, label %bb.g
  ]

bb.f:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit
  %i.i = cmpxchg ptr %0, i8 0, i8 1 release monotonic, align 1 ; 2 uses
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit: ; preds = %bb.f
  %i.k = extractvalue { i8, i1 } %i.i, 0
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit, %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit
  %.0 = phi i8 [ %i.k, %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit ], [ %i.h, %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit ]
  %i.l = cmpxchg ptr %0, i8 %.0, i8 32 release monotonic, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %bb.h, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5

bb.h:                                             ; preds = %bb.g
  call void @_ZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEb(ptr noundef nonnull align 8 dereferenceable(89) %0, i1 noundef zeroext false)
  br label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5: ; preds = %bb.g, %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1187)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5
  call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

bb.j:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #43
  br label %common.resume

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread: ; preds = %bb.f, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEb(ptr noundef nonnull align 8 dereferenceable(89) %0, i1 noundef zeroext %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 5 uses
  %3 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 7 uses
  %4 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 5 uses
  %5 = alloca %"class.std::function.244", align 8 ; 9 uses
  %6 = alloca %class.anon.2446, align 8           ; 6 uses
  %7 = alloca %"class.std::function.244", align 8 ; 9 uses
  %8 = alloca %class.anon.2447, align 8           ; 6 uses
  %i.a = load atomic i8, ptr %0 monotonic, align 8
  %i.b = icmp eq i8 %i.a, 32
  br i1 %i.b, label %_ZN12async_simple11logicAssertEbPKc.exit, label %bb.b, !prof !575

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.1188)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.bf, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %.merged23, %bb.bf ], [ %i.ah, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !6289, !range !294, !noundef !295
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.p, label %bb.e

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !918  ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  %or.cond = or i1 %1, %i.j
  br i1 %or.cond, label %bb.f, label %_ZNK12async_simple11FutureStateISt10error_codeE23currentThreadInExecutorEv.exit

_ZNK12async_simple11FutureStateISt10error_codeE23currentThreadInExecutorEv.exit: ; preds = %bb.e
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !205
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.i), !inline_history !6288
  br i1 %i.n, label %bb.f, label %bb.p

bb.f:                                             ; preds = %_ZNK12async_simple11FutureStateISt10error_codeE23currentThreadInExecutorEv.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %0, ptr %2, align 8, !tbaa !2566
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.p = atomicrmw add ptr %i.o, i8 1 monotonic, align 1 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i8 1 monotonic, align 1 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !203
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.u, align 8, !tbaa !205
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #55
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2568
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit unwind label %bb.o, !inline_history !2569

_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit: ; preds = %bb.h
  %9 = atomicrmw add ptr %i.q, i8 -1 monotonic, align 1
  %i.z = icmp eq i8 %9, 1
  br i1 %i.z, label %bb.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.i:                                             ; preds = %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !203 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #53
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.j, %bb.i, %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %10 = atomicrmw add ptr %i.o, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %10, 1
  br i1 %.not.i.i.i, label %bb.l, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.l:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !489 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.m, !prof !227

bb.m:                                             ; preds = %bb.l
  %i.af = icmp ne i8 %i.ae, 2
  %i.ag = load ptr, ptr %i.w, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.af, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %0, i64 noundef 96) #54
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %bb.bg

bb.o:                                             ; preds = %bb.h, %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %common.resume

bb.p:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit, %_ZNK12async_simple11FutureStateISt10error_codeE23currentThreadInExecutorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.aj = atomicrmw add ptr %i.ai, i8 1 monotonic, align 1 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.al = atomicrmw add ptr %i.ak, i8 1 monotonic, align 1 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store ptr %0, ptr %4, align 8, !tbaa !2566
  %i.am = atomicrmw add ptr %i.ai, i8 1 monotonic, align 1 ; 0 uses
  %i.an = atomicrmw add ptr %i.ak, i8 1 monotonic, align 1 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !6290 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !918 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  store ptr %0, ptr %6, align 8, !tbaa !2566
  store ptr null, ptr %3, align 8, !tbaa !2566
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.au = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #56
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.au, align 8, !tbaa !2566
  store ptr null, ptr %6, align 8, !tbaa !2566
  store ptr %i.au, ptr %5, align 8, !tbaa !260
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.av, align 8, !tbaa !660
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.at, align 8, !tbaa !254
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !205
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !254 ; 2 uses
  %.not.i29 = icmp eq ptr %i.ba, null
  br i1 %.not.i29, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #53
  unreachable

_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br i1 %i.az, label %bb.ap, label %bb.ai

bb.v:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt14_Function_baseD2Ev.exit33

bb.w:                                             ; preds = %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !254 ; 2 uses
  %.not.i32 = icmp eq ptr %i.bg, null
  br i1 %.not.i32, label %_ZNSt14_Function_baseD2Ev.exit33, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit33 unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #53
  unreachable

_ZNSt14_Function_baseD2Ev.exit33:                 ; preds = %bb.x, %bb.w, %bb.v
  %.pn16 = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bf, %bb.w ], [ %i.bf, %bb.x ]
  call void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %bb.am

bb.z:                                             ; preds = %bb.p
  %i.bk = load i8, ptr %i.e, align 8, !tbaa !6289, !range !294, !noundef !295
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !918 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  store ptr %0, ptr %8, align 8, !tbaa !2566
  store ptr null, ptr %3, align 8, !tbaa !2566
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.bo = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #56
          to label %bb.aa unwind label %bb.ae     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bq = xor i8 %i.bk, 1
  store ptr %0, ptr %i.bo, align 8, !tbaa !2566
  store ptr null, ptr %8, align 8, !tbaa !2566
  store ptr %i.bo, ptr %7, align 8, !tbaa !260
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bp, align 8, !tbaa !660
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.bn, align 8, !tbaa !254
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !205
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.ap, i8 %i.bq)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.bv = load ptr, ptr %i.bn, align 8, !tbaa !254 ; 2 uses
  %.not.i35 = icmp eq ptr %i.bv, null
  br i1 %.not.i35, label %_ZNSt14_Function_baseD2Ev.exit36, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit36 unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #53
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt14_Function_baseD2Ev.exit46

bb.af:                                            ; preds = %bb.aa
  %i.ca = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.cb = load ptr, ptr %i.bn, align 8, !tbaa !254 ; 2 uses
  %.not.i45 = icmp eq ptr %i.cb, null
  br i1 %.not.i45, label %_ZNSt14_Function_baseD2Ev.exit46, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cc = invoke noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit46 unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #53
  unreachable

_ZNSt14_Function_baseD2Ev.exit46:                 ; preds = %bb.ag, %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.ae ], [ %i.ca, %bb.af ], [ %i.ca, %bb.ag ]
  call void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %bb.am

_ZNSt14_Function_baseD2Ev.exit36:                 ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br i1 %i.bu, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit, %_ZNSt14_Function_baseD2Ev.exit36
  %i.cf = call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.1189)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #55
          to label %bb.bi unwind label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.cg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @__cxa_free_exception(ptr nonnull %i.cf) #43
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %_ZNSt14_Function_baseD2Ev.exit46, %_ZNSt14_Function_baseD2Ev.exit33
  %.pn18 = phi { ptr, i32 } [ %i.ch, %bb.al ], [ %i.cg, %bb.ak ], [ %.pn16, %_ZNSt14_Function_baseD2Ev.exit33 ], [ %.pn, %_ZNSt14_Function_baseD2Ev.exit46 ] ; 3 uses
  %.210 = extractvalue { ptr, i32 } %.pn18, 1
  %i.ci = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #43
  %i.cj = icmp eq i32 %.210, %i.ci
  br i1 %i.cj, label %bb.an, label %bb.bf

bb.an:                                            ; preds = %bb.am
  %.2 = extractvalue { ptr, i32 } %.pn18, 0
  %i.ck = call ptr @__cxa_begin_catch(ptr %.2) #43 ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %bb.ao unwind label %bb.bd

bb.ao:                                            ; preds = %bb.an
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %bb.be

bb.ap:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit36, %bb.ao, %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit
  %11 = atomicrmw add ptr %i.ak, i8 -1 monotonic, align 1
  %i.cn = icmp eq i8 %11, 1
  br i1 %i.cn, label %bb.aq, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48

bb.aq:                                            ; preds = %bb.ap
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !203 ; 2 uses
  %.not.i.i.i.i54 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i54, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.cq, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #53
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48: ; preds = %bb.ar, %bb.aq, %bb.ap
  %12 = atomicrmw add ptr %i.ai, i8 -1 acq_rel, align 1
  %.not.i.i.i49 = icmp eq i8 %12, 1
  br i1 %.not.i.i.i49, label %bb.at, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55

bb.at:                                            ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !489 ; 2 uses
  %.not.i.i.i.i.i.i50 = icmp eq i8 %i.cv, -1
  br i1 %.not.i.i.i.i.i.i50, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53, label %bb.au, !prof !227

bb.au:                                            ; preds = %bb.at
  %i.cw = icmp ne i8 %i.cv, 2
  %i.cx = load ptr, ptr %i.ct, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.cx, null
  %or.cond.i.i.i.i.i.i.i52 = select i1 %i.cw, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i51
  br i1 %or.cond.i.i.i.i.i.i.i52, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53: ; preds = %bb.av, %bb.au, %bb.at
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %0, i64 noundef 96) #54
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  %i.cy = load ptr, ptr %3, align 8, !tbaa !2566  ; 8 uses
  %.not.i.i56 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i56, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64, label %bb.aw

bb.aw:                                            ; preds = %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %13 = atomicrmw add ptr %i.cz, i8 -1 monotonic, align 1
  %i.da = icmp eq i8 %13, 1
  br i1 %i.da, label %bb.ax, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57

bb.ax:                                            ; preds = %bb.aw
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !203 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i63, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 2 uses
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #53
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57: ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %14 = atomicrmw add ptr %i.dg, i8 -1 acq_rel, align 1
  %.not.i.i.i58 = icmp eq i8 %14, 1
  br i1 %.not.i.i.i58, label %bb.ba, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64

bb.ba:                                            ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !489 ; 2 uses
  %.not.i.i.i.i.i.i59 = icmp eq i8 %i.dj, -1
  br i1 %.not.i.i.i.i.i.i59, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62, label %bb.bb, !prof !227

bb.bb:                                            ; preds = %bb.ba
  %i.dk = icmp ne i8 %i.dj, 2
  %i.dl = load ptr, ptr %i.dh, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i60 = icmp eq ptr %i.dl, null
  %or.cond.i.i.i.i.i.i.i61 = select i1 %i.dk, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i60
  br i1 %or.cond.i.i.i.i.i.i.i61, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dh) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62: ; preds = %bb.bc, %bb.bb, %bb.ba
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.cy, i64 noundef 96) #54
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.bg

bb.bd:                                            ; preds = %bb.an
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bf unwind label %bb.bh

bb.be:                                            ; preds = %bb.ao
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.am
  %.merged23 = phi { ptr, i32 } [ %.pn18, %bb.am ], [ %i.dn, %bb.be ], [ %i.dm, %bb.bd ]
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %common.resume

bb.bg:                                            ; preds = %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64, %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit
  ret void

bb.bh:                                            ; preds = %bb.bd
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #53
  unreachable

bb.bi:                                            ; preds = %bb.aj
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_JRSt7variantIJS4_S5_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !489
  %i.c = load ptr, ptr %0, align 8, !tbaa !2564   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !489   ; 7 uses
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.i
    i8 -1, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.c [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !1204

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.c) #43
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !489
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.e:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.g [
    i8 1, label %bb.f
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS3_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !1204

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 16, i1 false), !tbaa.struct !574
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.g:                                             ; preds = %bb.e
  %i.h = icmp ne i8 %i.e, 2
  %i.i = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10 = icmp eq ptr %i.i, null
  %or.cond.i.i.i.i.i.i.i11 = select i1 %i.h, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10
  br i1 %or.cond.i.i.i.i.i.i.i11, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.c) #43
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  store i8 -1, ptr %i.d, align 8, !tbaa !489
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS3_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS3_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.c, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 16, i1 false), !tbaa.struct !574
  store i8 1, ptr %i.d, align 8, !tbaa !489
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.i:                                             ; preds = %bb.a
  %cond.i.i.i.i = icmp eq i8 %i.e, 2
  br i1 %cond.i.i.i.i, label %bb.j, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, !prof !1470

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.j = load ptr, ptr %1, align 8, !tbaa !653
  store ptr null, ptr %1, align 8, !tbaa !653
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !653  ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !653
  store ptr %i.j, ptr %i.c, align 8, !tbaa !653
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.i
  %i.l = load ptr, ptr %1, align 8, !tbaa !653
  store ptr %i.l, ptr %i.c, align 8, !tbaa !653
  store ptr null, ptr %1, align 8, !tbaa !653
  store i8 2, ptr %i.d, align 8, !tbaa !489
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.l:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit, label %bb.m, !prof !227

bb.m:                                             ; preds = %bb.l
  %i.m = icmp ne i8 %i.e, 2
  %i.n = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  %or.cond.i.i.i.i.i.i = select i1 %i.m, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.c) #43
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  store i8 -1, ptr %i.d, align 8, !tbaa !489
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.o:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, %bb.l, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS3_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.f, %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.c, align 8, !tbaa !205
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2568
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2566   ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReference6detachEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %1 = atomicrmw add ptr %i.b, i8 -1 monotonic, align 1
  %i.c = icmp eq i8 %1, 1
  br i1 %i.c, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !203  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #53
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !2566   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %2 = atomicrmw add ptr %i.j, i8 -1 acq_rel, align 1
  %.not.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i, label %bb.f, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReference6detachEv.exit

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.g, !prof !227

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.i, i64 noundef 96) #54
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReference6detachEv.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReference6detachEv.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2566   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %1 = atomicrmw add ptr %i.b, i8 -1 monotonic, align 1
  %i.c = icmp eq i8 %1, 1
  br i1 %i.c, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !203  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #53
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !2566   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %2 = atomicrmw add ptr %i.j, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.g, !prof !227

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.i, i64 noundef 96) #54
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %bb.a, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2566   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %1 = atomicrmw add ptr %i.b, i8 -1 monotonic, align 1
  %i.c = icmp eq i8 %1, 1
  br i1 %i.c, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !203  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #53
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !2566   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %2 = atomicrmw add ptr %i.j, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.g, !prof !227

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.i, i64 noundef 96) #54
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %bb.a, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  ret void
}

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple4util6detail14_function_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void %i.b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #53
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !260
  tail call void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_, ptr %0, align 8, !tbaa !580
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !260
  store ptr %i.a, ptr %0, align 8, !tbaa !260
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !260
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #56 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !2566 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !2566
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = atomicrmw add ptr %i.e, i8 1 monotonic, align 1 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.h = atomicrmw add ptr %i.g, i8 1 monotonic, align 1 ; 0 uses
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.e, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !260
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  %i.a = load ptr, ptr %0, align 8, !tbaa !2566   ; 9 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !2566
  store ptr null, ptr %0, align 8, !tbaa !2566
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !203
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.d, align 8, !tbaa !205
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #55
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2568
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit unwind label %bb.j, !inline_history !2569

_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %2 = atomicrmw add ptr %i.i, i8 -1 monotonic, align 1
  %i.j = icmp eq i8 %2, 1
  br i1 %i.j, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.d:                                             ; preds = %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !203  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #53
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = atomicrmw add ptr %i.n, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %3, 1
  br i1 %.not.i.i.i, label %bb.g, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.h, !prof !227

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ne i8 %i.p, 2
  %i.r = load ptr, ptr %i.f, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.q, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.a, i64 noundef 96) #54
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !260    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !2566 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %1 = atomicrmw add ptr %i.d, i8 -1 monotonic, align 1
  %i.e = icmp eq i8 %1, 1
  br i1 %i.e, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #53
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !2566 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %2 = atomicrmw add ptr %i.l, i8 -1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.h, !prof !227

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ne i8 %i.o, 2
  %i.q = load ptr, ptr %i.m, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.k, i64 noundef 96) #54
  br label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit

_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit: ; preds = %bb.b, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #54
  br label %bb.j

bb.j:                                             ; preds = %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !260
  tail call void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_, ptr %0, align 8, !tbaa !580
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !260
  store ptr %i.a, ptr %0, align 8, !tbaa !260
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !260
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #56 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !2566 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !2566
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = atomicrmw add ptr %i.e, i8 1 monotonic, align 1 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.h = atomicrmw add ptr %i.g, i8 1 monotonic, align 1 ; 0 uses
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.e, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !260
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  %i.a = load ptr, ptr %0, align 8, !tbaa !2566   ; 9 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !2566
  store ptr null, ptr %0, align 8, !tbaa !2566
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !203
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.d, align 8, !tbaa !205
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #55
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2568
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit unwind label %bb.j, !inline_history !2569

_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %2 = atomicrmw add ptr %i.i, i8 -1 monotonic, align 1
  %i.j = icmp eq i8 %2, 1
  br i1 %i.j, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.d:                                             ; preds = %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !203  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #53
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = atomicrmw add ptr %i.n, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %3, 1
  br i1 %.not.i.i.i, label %bb.g, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.h, !prof !227

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ne i8 %i.p, 2
  %i.r = load ptr, ptr %i.f, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.q, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.a, i64 noundef 96) #54
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !260    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !2566 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %1 = atomicrmw add ptr %i.d, i8 -1 monotonic, align 1
  %i.e = icmp eq i8 %1, 1
  br i1 %i.e, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #53
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !2566 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %2 = atomicrmw add ptr %i.l, i8 -1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !489   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.h, !prof !227

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ne i8 %i.o, 2
  %i.q = load ptr, ptr %i.m, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.k, i64 noundef 96) #54
  br label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit

_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit: ; preds = %bb.b, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #54
  br label %bb.j

bb.j:                                             ; preds = %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateISt10error_codeE15setContinuationIZNS_6FutureIS1_E4waitEvEUlONS_3TryIS1_EEE_EEvOT_(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.2450, align 8           ; 7 uses
  %i.a = load atomic i8, ptr %0 acquire, align 8
  %i.b = and i8 %i.a, 34
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %_ZN12async_simple11logicAssertEbPKc.exit, label %bb.b, !prof !575

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.1191)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.f, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.r, %bb.f ], [ %i.y, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !904  ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !904
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !905, !range !294, !noundef !295 ; 2 uses
  store i8 %i.j, ptr %i.h, align 8, !tbaa !905
  store ptr null, ptr %i.f, align 8, !tbaa !904
  store i8 0, ptr %i.i, align 8, !tbaa !905
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !203
  %i.l = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #56
          to label %bb.e unwind label %bb.f       ; 4 uses

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.g, ptr %i.n, align 8, !tbaa !904
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i8 %i.j, ptr %i.o, align 8, !tbaa !905
  store ptr null, ptr %i.e, align 8, !tbaa !904
  store i8 0, ptr %i.h, align 8, !tbaa !905
  store ptr %i.l, ptr %i.m, align 8, !tbaa !260
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN12async_simple4util6detail15FunctionHandlerIFvONS_3TryISt10error_codeEEEZNS_11FutureStateIS4_E15setContinuationIZNS_6FutureIS4_E4waitEvEUlS6_E_EEvOT_EUlS6_E_E9_m_invokeERKNS1_9_any_dataES6_, ptr %i.p, align 8, !tbaa !2568
  store ptr @_ZN12async_simple4util6detail15FunctionHandlerIFvONS_3TryISt10error_codeEEEZNS_11FutureStateIS4_E15setContinuationIZNS_6FutureIS4_E4waitEvEUlS6_E_EEvOT_EUlS6_E_E10_m_managerERNS1_9_any_dataERKSI_NS1_18_manager_operationE, ptr %i.k, align 8, !tbaa !203
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.q = load atomic i8, ptr %0 acquire, align 8  ; 2 uses
  switch i8 %i.q, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit6 [
    i8 0, label %bb.g
    i8 1, label %bb.h
  ]

bb.f:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %common.resume

bb.g:                                             ; preds = %bb.e
  %i.s = cmpxchg ptr %0, i8 0, i8 2 release monotonic, align 1 ; 2 uses
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit: ; preds = %bb.g
  %i.u = extractvalue { i8, i1 } %i.s, 0
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit, %bb.e
  %.0 = phi i8 [ %i.u, %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit ], [ %i.q, %bb.e ]
  %i.v = cmpxchg ptr %0, i8 %.0, i8 32 release monotonic, align 1
  %i.w = extractvalue { i8, i1 } %i.v, 1
  br i1 %i.w, label %bb.i, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit6

bb.i:                                             ; preds = %bb.h
  call void @_ZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEb(ptr noundef nonnull align 8 dereferenceable(89) %0, i1 noundef zeroext true)
  br label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit6: ; preds = %bb.h, %bb.e
  %i.x = call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull @.str.1187)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit6
  call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
  unreachable

bb.k:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit6
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.x) #43
  br label %common.resume

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread: ; preds = %bb.g, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4util6detail15FunctionHandlerIFvONS_3TryISt10error_codeEEEZNS_11FutureStateIS4_E15setContinuationIZNS_6FutureIS4_E4waitEvEUlS6_E_EEvOT_EUlS6_E_E9_m_invokeERKNS1_9_any_dataES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !260
  tail call void @_ZZN12async_simple6FutureISt10error_codeE4waitEvENUlONS_3TryIS1_EEE_clES5_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4util6detail15FunctionHandlerIFvONS_3TryISt10error_codeEEEZNS_11FutureStateIS4_E15setContinuationIZNS_6FutureIS4_E4waitEvEUlS6_E_EEvOT_EUlS6_E_E10_m_managerERNS1_9_any_dataERKSI_NS1_18_manager_operationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2) #8 comdat align 2 {
bb.a:
  %cond.i = icmp eq i8 %2, 0
  br i1 %cond.i, label %bb.b, label %_ZN12async_simple4util6detail14_function_base13_base_managerIZNS_11FutureStateISt10error_codeE15setContinuationIZNS_6FutureIS5_E4waitEvEUlONS_3TryIS5_EEE_EEvOT_EUlSC_E_E10_m_managerERNS1_9_any_dataERKSI_NS1_18_manager_operationE.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !260    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN12async_simple4util6detail14_function_base13_base_managerIZNS_11FutureStateISt10error_codeE15setContinuationIZNS_6FutureIS5_E4waitEvEUlONS_3TryIS5_EEE_EEvOT_EUlSC_E_E10_m_managerERNS1_9_any_dataERKSI_NS1_18_manager_operationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.c) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #54
  br label %_ZN12async_simple4util6detail14_function_base13_base_managerIZNS_11FutureStateISt10error_codeE15setContinuationIZNS_6FutureIS5_E4waitEvEUlONS_3TryIS5_EEE_EEvOT_EUlSC_E_E10_m_managerERNS1_9_any_dataERKSI_NS1_18_manager_operationE.exit

_ZN12async_simple4util6detail14_function_base13_base_managerIZNS_11FutureStateISt10error_codeE15setContinuationIZNS_6FutureIS5_E4waitEvEUlONS_3TryIS5_EEE_EEvOT_EUlSC_E_E10_m_managerERNS1_9_any_dataERKSI_NS1_18_manager_operationE.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN12async_simple6FutureISt10error_codeE4waitEvENUlONS_3TryIS1_EEE_clES5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !6292, !nonnull !295, !align !426 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #43 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #55
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !904  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %_ZN12async_simple11logicAssertEbPKc.exit.i, !prof !227

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.991)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #55
          to label %.noexc unwind label %bb.f
end_hunk_11
