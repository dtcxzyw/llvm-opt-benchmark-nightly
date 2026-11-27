Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/chat-peg-parser?download=true
inline.NumInlined: 4148
inline.NumDeleted: 1813
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN29common_chat_peg_gemma4_mapper5visitERK20common_peg_ast_arenam:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.fq = load i64, ptr %i.eo, align 8, !tbaa !45
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eb, i64 104
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !66 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eb, i64 112
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !66
  %i.fw = icmp eq ptr %i.ft, %i.fv
  br i1 %i.fw, label %bb.ar, label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.fx = load i64, ptr %i.ft, align 8, !tbaa !44
  invoke fastcc void @_ZL14gemma4_to_jsonB5cxx11RK20common_peg_ast_arenam(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fx)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.fy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %9) #25 ; 0 uses
  %i.fz = load ptr, ptr %9, align 8, !tbaa !42    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.am
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !45
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ar

bb.an:                                            ; preds = %bb.u
  %i.ge = landingpad { ptr, i32 }
          cleanup
  %i.gf = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.dc
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.an
  %i.gh = load i64, ptr %i.dc, align 8, !tbaa !45
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.aw

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i83
  %i.gj = landingpad { ptr, i32 }
          cleanup
  %i.gk = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.dk
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.ao
  %i.gm = load i64, ptr %i.dk, align 8, !tbaa !45
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.aw

bb.ap:                                            ; preds = %.noexc.i.i.i101, %bb.ab
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.av

bb.aq:                                            ; preds = %bb.al
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.av

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !122, !nonnull !80, !align !81 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 96 ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !124 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 104
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !125
  %.not.i117 = icmp eq ptr %i.gt, %i.gv
  br i1 %.not.i117, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN21common_chat_tool_callC2ERKS_(ptr noundef nonnull align 8 dereferenceable(96) %i.gt, ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %.noexc118 unwind label %bb.au

.noexc118:                                        ; preds = %bb.as
  %i.gw = load ptr, ptr %i.gs, align 8, !tbaa !124
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 96
  store ptr %i.gx, ptr %i.gs, align 8, !tbaa !124
  br label %_ZNSt6vectorI21common_chat_tool_callSaIS0_EE9push_backERKS0_.exit

bb.at:                                            ; preds = %bb.ar
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 88
  invoke void @_ZNSt6vectorI21common_chat_tool_callSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, ptr %i.gt, ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %_ZNSt6vectorI21common_chat_tool_callSaIS0_EE9push_backERKS0_.exit unwind label %bb.au

_ZNSt6vectorI21common_chat_tool_callSaIS0_EE9push_backERKS0_.exit: ; preds = %.noexc118, %bb.at
  %i.gz = load ptr, ptr %i.ek, align 8, !tbaa !42 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.el
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorI21common_chat_tool_callSaIS0_EE9push_backERKS0_.exit
  %i.hb = load i64, ptr %i.el, align 8, !tbaa !45
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorI21common_chat_tool_callSaIS0_EE9push_backERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.hd = load ptr, ptr %i.eh, align 8, !tbaa !42 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.ei
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.hf = load i64, ptr %i.ei, align 8, !tbaa !45
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.hh = load ptr, ptr %7, align 8, !tbaa !42    ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.ef
  br i1 %i.hi, label %_ZN21common_chat_tool_callD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.hj = load i64, ptr %i.ef, align 8, !tbaa !45
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #27
  br label %_ZN21common_chat_tool_callD2Ev.exit

_ZN21common_chat_tool_callD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.loopexit

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.aq, %bb.ap
  %.pn43 = phi { ptr, i32 } [ %i.hl, %bb.au ], [ %i.gp, %bb.aq ], [ %i.go, %bb.ap ]
  call void @_ZN21common_chat_tool_callD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aw

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread: ; preds = %_ZNK20common_peg_ast_arena3getEm.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80
  %i.hm = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !66 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !66 ; 2 uses
  %.not130 = icmp eq ptr %i.hn, %i.hp
  br i1 %.not130, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread, %.lr.ph
  %.sroa.0120.0131 = phi ptr [ %i.hr, %.lr.ph ], [ %i.hn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread ] ; 2 uses
  %i.hq = load i64, ptr %.sroa.0120.0131, align 8, !tbaa !44
  tail call void @_ZN29common_chat_peg_gemma4_mapper5visitERK20common_peg_ast_arenam(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hq)
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0120.0131, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.hr, %i.hp
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZN21common_chat_tool_callD2Ev.exit, %_ZNK20common_peg_ast_arena3getEm.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %.pn43, %bb.av ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ]
  resume { ptr, i32 } %.pn49.pn
}

declare noundef i64 @_ZNK20common_peg_ast_arena11find_by_tagERK19common_peg_ast_nodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14gemma4_to_jsonB5cxx11RK20common_peg_ast_arenam(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %9 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::allocator.8", align 1 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::allocator.8", align 1 ; 3 uses
  %16 = alloca %"class.std::allocator.8", align 1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 136                 ; 2 uses
  %.not.i.i.i273 = icmp ult i64 %2, %i.i
  br i1 %.not.i.i.i273, label %_ZNK20common_peg_ast_arena3getEm.exit, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr195.lcssa = phi i64 [ %2, %bb.a ], [ %i.kn, %tailrecurse ]
  %.lcssa215 = phi i64 [ %i.i, %bb.a ], [ %i.kt, %tailrecurse ]
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.68, i64 noundef %.tr195.lcssa, i64 noundef %.lcssa215) #28
  unreachable

_ZNK20common_peg_ast_arena3getEm.exit:            ; preds = %bb.a, %tailrecurse
  %i.j = phi ptr [ %i.kp, %tailrecurse ], [ %i.e, %bb.a ]
  %.tr195274 = phi i64 [ %i.kn, %tailrecurse ], [ %2, %bb.a ]
  %i.k = getelementptr inbounds nuw [136 x i8], ptr %i.j, i64 %.tr195274 ; 22 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !116  ; 9 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK20common_peg_ast_arena3getEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !43
  store i8 0, ptr %i.o, align 8, !tbaa !45
  br label %.loopexit201

bb.c:                                             ; preds = %_ZNK20common_peg_ast_arena3getEm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !43
  switch i64 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread [
    i64 13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
    i64 21, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !42   ; 4 uses
  %i.u = load i64, ptr %i.t, align 1
  %i.v = xor i64 %i.u, 7939059311176410471
  %i.w = getelementptr i8, ptr %i.t, i64 5
  %i.x = load i64, ptr %i.w, align 1
  %i.y = xor i64 %i.x, 8243102915232673076
  %i.z = or i64 %i.v, %i.y
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92: ; preds = %bb.c
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !42  ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 1
  %i.af = xor i64 %i.ae, 7074368182721275239
  %i.ag = getelementptr i8, ptr %i.ad, i64 3
  %i.ah = load i64, ptr %i.ag, align 1
  %i.ai = xor i64 %i.ah, 7813586345966985581
  %i.aj = or i64 %i.af, %i.ai
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  %i.an = load i64, ptr %i.ad, align 1
  %i.ao = xor i64 %i.an, 7939059311176410471
  %i.ap = getelementptr i8, ptr %i.ad, i64 3
  %i.aq = load i64, ptr %i.ap, align 1
  %i.ar = xor i64 %i.aq, 7812748569646227821
  %i.as = or i64 %i.ao, %i.ar
  %i.at = icmp ne i64 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !126 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !40
  %i.ax = icmp eq ptr %.sroa.2.0.copyload.i, null
  br i1 %i.ax, label %.noexc95, label %bb.e

.noexc95:                                         ; preds = %bb.d
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.89) #28
  unreachable

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.m, ptr %i.b, align 8, !tbaa !44
  %i.ay = icmp ugt i64 %i.m, 15
  br i1 %i.ay, label %._crit_edge.i.i.i.i.thread, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.e
  %i.az = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !42
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !44
  store i64 %i.ba, ptr %i.aw, align 8, !tbaa !45
  br label %bb.g

._crit_edge.i.i.i.i:                              ; preds = %bb.e
  %cond = icmp eq i64 %i.m, 1
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bb = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !45
  store i8 %i.bb, ptr %i.aw, align 8, !tbaa !45
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.thread, %._crit_edge.i.i.i.i
  %i.bc = phi ptr [ %i.az, %._crit_edge.i.i.i.i.thread ], [ %i.aw, %._crit_edge.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr nonnull align 1 %.sroa.2.0.copyload.i, i64 %i.m, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !43
  %i.bf = load ptr, ptr %0, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit201

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98: ; preds = %bb.c
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !42  ; 2 uses
  %i.bi = load i128, ptr %i.bh, align 1
  %i.bj = xor i128 %i.bi, 148059265824224341911251153183344256359
  %i.bk = getelementptr i8, ptr %i.bh, i64 5
  %i.bl = load i128, ptr %i.bk, align 1
  %i.bm = xor i128 %i.bl, 154763657913503902967519432295782231348
  %i.bn = or i128 %i.bj, %i.bm
  %i.bo = icmp ne i128 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.2.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.sroa.2.0.copyload.i101 = load ptr, ptr %.sroa.2.0..sroa_idx.i100, align 8, !tbaa !126 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.br, ptr %3, align 8, !tbaa !40
  %i.bs = icmp eq ptr %.sroa.2.0.copyload.i101, null
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.89) #28
          to label %.noexc105 unwind label %bb.p

.noexc105:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.m, ptr %i.a, align 8, !tbaa !44
  %i.bt = icmp ugt i64 %i.m, 15
  br i1 %i.bt, label %.noexc.i.i.i104, label %._crit_edge.i.i.i.i103

.noexc.i.i.i104:                                  ; preds = %bb.k
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc106 unwind label %bb.p  ; 2 uses

.noexc106:                                        ; preds = %.noexc.i.i.i104
  store ptr %i.bu, ptr %3, align 8, !tbaa !42
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.bv, ptr %i.br, align 8, !tbaa !45
  br label %._crit_edge.i.i.i.i103

._crit_edge.i.i.i.i103:                           ; preds = %.noexc106, %bb.k
  %i.bw = phi ptr [ %i.bu, %.noexc106 ], [ %i.br, %bb.k ] ; 2 uses
  %cond450 = icmp eq i64 %i.m, 1
  br i1 %cond450, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.i103
  %i.bx = load i8, ptr %.sroa.2.0.copyload.i101, align 1, !tbaa !45
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !45
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i103
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 1 %.sroa.2.0.copyload.i101, i64 %i.m, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.by = load i64, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !43
  %i.ca = load ptr, ptr %3, align 8, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke fastcc void @_ZL24escape_json_string_innerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cc = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.br
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ce = load i64, ptr %i.br, align 8, !tbaa !45
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit201

bb.p:                                             ; preds = %.noexc.i.i.i104, %bb.j
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.q:                                             ; preds = %bb.n
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.br
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.q
  %i.ck = load i64, ptr %i.br, align 8, !tbaa !45
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.p
  %.pn87 = phi { ptr, i32 } [ %i.cg, %bb.p ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %i.ch, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cm = load i64, ptr %i.t, align 1
  %i.cn = xor i64 %i.cm, 8299347281366050151
  %i.co = getelementptr i8, ptr %i.t, i64 5
  %i.cp = load i64, ptr %i.co, align 1
  %i.cq = xor i64 %i.cp, 7453010373645643060
  %i.cr = or i64 %i.cn, %i.cq
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = zext i1 %i.cs to i32
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !66 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !66
  %i.cz = icmp eq ptr %i.cw, %i.cy
  br i1 %i.cz, label %.loopexit201, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.da = load i64, ptr %i.cw, align 8, !tbaa !44
  invoke fastcc void @_ZL14gemma4_to_jsonB5cxx11RK20common_peg_ast_arenam(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.da)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.u unwind label %bb.x       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.dc = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.u
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !45
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !154, !range !120, !noundef !80
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %.loopexit201, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.dk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.2)
          to label %.loopexit201 unwind label %bb.y ; 0 uses

bb.w:                                             ; preds = %bb.s
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.x:                                             ; preds = %bb.t
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.x
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !45
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.w
  %.pn83 = phi { ptr, i32 } [ %i.dl, %bb.w ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %i.dm, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %.pn85 = phi { ptr, i32 } [ %i.ds, %bb.y ], [ %.pn83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ] ; 2 uses
  %i.dt = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.z
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !45
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112
  %i.dy = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull @.str.74)
  br i1 %i.dy, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !66 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !66 ; 3 uses
  %.not193283 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not193283, label %._crit_edge288, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.eh = load i64, ptr %i.ea, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke fastcc void @_ZL14gemma4_to_jsonB5cxx11RK20common_peg_ast_arenam(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.eh)
          to label %bb.ac unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.ei = load i64, ptr %i.ef, align 8, !tbaa !43 ; 2 uses
  %i.ej = load i64, ptr %i.ed, align 8, !tbaa !43
  %i.ek = sub i64 4611686018427387903, %i.ej
  %i.el = icmp ult i64 %i.ek, %i.ei
  br i1 %i.el, label %.loopexit340, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.ac
  %i.em = load ptr, ptr %7, align 8, !tbaa !42
  %i.en = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.em, i64 noundef %i.ei)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.eo = load ptr, ptr %7, align 8, !tbaa !42    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.eg
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.eq = load i64, ptr %i.eg, align 8, !tbaa !45
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.es = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %.not193.peel = icmp eq ptr %i.es, %i.ec
  br i1 %.not193.peel, label %._crit_edge288, label %.peel.next331

._crit_edge288:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.peel, %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.eu = load i8, ptr %i.et, align 8, !tbaa !154, !range !120, !noundef !80
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %.loopexit201, label %bb.ag

.peel.next331:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %.sroa.0179.0284 = phi ptr [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.peel ] ; 2 uses
  %i.ew = load i64, ptr %.sroa.0179.0284, align 8, !tbaa !44
  %i.ex = load i64, ptr %i.ed, align 8, !tbaa !43 ; 4 uses
  %i.ey = add i64 %i.ex, 1                        ; 3 uses
  %i.ez = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ee
  br i1 %i.fa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %.peel.next331
  %i.fb = icmp ult i64 %i.ex, 16
  call void @llvm.assume(i1 %i.fb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.peel.next331
  %i.fc = load i64, ptr %i.ee, align 8, !tbaa !45
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.fd = phi i64 [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.fe = icmp ugt i64 %i.ey, %i.fd
  br i1 %i.fe, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ex, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.ad
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !42
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ff = phi ptr [ %.pre.i.i, %.noexc122 ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ex
  store i8 44, ptr %i.fg, align 1, !tbaa !45
  store i64 %i.ey, ptr %i.ed, align 8, !tbaa !43
  %i.fh = load ptr, ptr %0, align 8, !tbaa !42
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ey
  store i8 0, ptr %i.fi, align 1, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke fastcc void @_ZL14gemma4_to_jsonB5cxx11RK20common_peg_ast_arenam(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ew)
          to label %bb.af unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.fj = load i64, ptr %i.ef, align 8, !tbaa !43 ; 2 uses
  %i.fk = load i64, ptr %i.ed, align 8, !tbaa !43
  %i.fl = sub i64 4611686018427387903, %i.fk
  %i.fm = icmp ult i64 %i.fl, %i.fj
  br i1 %i.fm, label %.loopexit340, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit340:                                     ; preds = %bb.af, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #28
          to label %.noexc123 unwind label %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp

.noexc123:                                        ; preds = %.loopexit340
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.af
  %i.fn = load ptr, ptr %7, align 8, !tbaa !42
  %i.fo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.fn, i64 noundef %i.fj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.fp = load ptr, ptr %7, align 8, !tbaa !42    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.eg
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.fr = load i64, ptr %i.eg, align 8, !tbaa !45
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0179.0284, i64 8 ; 2 uses
  %.not193 = icmp eq ptr %i.ft, %i.ec
  br i1 %.not193, label %._crit_edge288, label %.peel.next331, !llvm.loop !637

.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %bb.ab
  %lpad.loopexit.split-lp496 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel, %.loopexit340
  %lpad.loopexit.split-lp499 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = load ptr, ptr %7, align 8, !tbaa !42    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.eg
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp
  %i.fw = load i64, ptr %i.eg, align 8, !tbaa !45
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  %.pn79 = phi { ptr, i32 } [ %lpad.loopexit.split-lp499, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128 ], [ %lpad.loopexit.split-lp496, %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp499, %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.loopexit.split-lp

bb.ag:                                            ; preds = %._crit_edge288
  %i.fy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 93)
          to label %.loopexit201 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ag
  %lpad.loopexit.split-lp494 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %.pn79.pn.pn = phi { ptr, i32 } [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ %lpad.loopexit.split-lp494, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fz = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %.loopexit.split-lp
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !45
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112.thread
  %i.ge = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull @.str.75)
  br i1 %i.ge, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.loopexit201

bb.aj:                                            ; preds = %bb.ah
  %i.gg = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull @.str.76)
  br i1 %i.gg, label %bb.ak, label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.gh = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !66 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !66
  %i.gl = icmp eq ptr %i.gi, %i.gk
  br i1 %i.gl, label %bb.as, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.gm = load i64, ptr %i.gi, align 8, !tbaa !44
  invoke fastcc void @_ZL14gemma4_to_jsonB5cxx11RK20common_peg_ast_arenam(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.gm)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_ZL24escape_json_string_innerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.gn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ao unwind label %bb.ar     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.go = load ptr, ptr %10, align 8, !tbaa !42   ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.ao
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !45
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  %i.gt = load ptr, ptr %11, align 8, !tbaa !42   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !45
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.as

bb.ap:                                            ; preds = %bb.al
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

bb.aq:                                            ; preds = %bb.am
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.ar:                                            ; preds = %bb.an
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hb = load ptr, ptr %10, align 8, !tbaa !42   ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.ar
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !45
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.aq
  %.pn74 = phi { ptr, i32 } [ %i.gz, %bb.aq ], [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %i.ha, %bb.ar ] ; 2 uses
  %i.hg = load ptr, ptr %11, align 8, !tbaa !42   ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !45
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.ap
  %.pn74.pn = phi { ptr, i32 } [ %i.gy, %bb.ap ], [ %.pn74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.av

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %bb.ak
  %i.hl = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !154, !range !120, !noundef !80
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %.loopexit201, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ho = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.77)
          to label %.loopexit201 unwind label %bb.au ; 0 uses

bb.au:                                            ; preds = %bb.at
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %.pn77 = phi { ptr, i32 } [ %i.hp, %bb.au ], [ %.pn74.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ] ; 2 uses
  %i.hq = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.av
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !45
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

bb.aw:                                            ; preds = %bb.aj
  %i.hv = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull @.str.78)
  br i1 %i.hv, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.hw, ptr %0, align 8, !tbaa !40
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.hx, align 8, !tbaa !43
  store i8 0, ptr %i.hw, align 8, !tbaa !45
  %i.hy = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !66 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !66 ; 2 uses
  %.not192279 = icmp eq ptr %i.hz, %i.ib
  br i1 %.not192279, label %.loopexit201, label %.lr.ph282

.lr.ph282:                                        ; preds = %bb.ax
  %i.ic = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %.sroa.0175.0280 = phi ptr [ %i.hz, %.lr.ph282 ], [ %i.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ] ; 2 uses
  %i.ie = load i64, ptr %.sroa.0175.0280, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke fastcc void @_ZL14gemma4_to_jsonB5cxx11RK20common_peg_ast_arenam(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ie)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.if = load i64, ptr %i.ic, align 8, !tbaa !43 ; 2 uses
  %i.ig = load i64, ptr %i.hx, align 8, !tbaa !43
  %i.ih = sub i64 4611686018427387903, %i.ig
  %i.ii = icmp ult i64 %i.ih, %i.if
  br i1 %i.ii, label %bb.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i149

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #28
          to label %.noexc150 unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp

.noexc150:                                        ; preds = %bb.ba
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i149: ; preds = %bb.az
  %i.ij = load ptr, ptr %12, align 8, !tbaa !42
  %i.ik = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ij, i64 noundef %i.if)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit152 unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i149
  %i.il = load ptr, ptr %12, align 8, !tbaa !42   ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.id
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit152
  %i.in = load i64, ptr %i.id, align 8, !tbaa !45
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0175.0280, i64 8 ; 2 uses
  %.not192 = icmp eq ptr %i.ip, %i.ib
  br i1 %.not192, label %.loopexit201, label %bb.ay

bb.bb:                                            ; preds = %bb.ay
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i149, %bb.ba
  %lpad.loopexit.split-lp502 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ir = load ptr, ptr %12, align 8, !tbaa !42   ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.id
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp
  %i.it = load i64, ptr %i.id, align 8, !tbaa !45
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %bb.bb
  %.pn72 = phi { ptr, i32 } [ %i.iq, %bb.bb ], [ %lpad.loopexit.split-lp502, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %lpad.loopexit.split-lp502, %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.iv = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.hw
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.ix = load i64, ptr %i.hw, align 8, !tbaa !45
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

bb.bc:                                            ; preds = %bb.aw
  %i.iz = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull @.str.79)
  br i1 %i.iz, label %bb.bd, label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.ja = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !66 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !66 ; 3 uses
  %.not276 = icmp eq ptr %i.jb, %i.jd
  br i1 %.not276, label %._crit_edge, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.je = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.jf = load i64, ptr %i.jb, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke fastcc void @_ZL14gemma4_to_jsonB5cxx11RK20common_peg_ast_arenam(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jf)
          to label %bb.bf unwind label %.loopexit.split-lp321.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %i.jg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bg unwind label %.loopexit.split-lp326.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  %i.jh = load ptr, ptr %14, align 8, !tbaa !42   ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.je
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.peel: ; preds = %bb.bg
  %i.jj = load i64, ptr %i.je, align 8, !tbaa !45
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.peel: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 2 uses
  %.not.peel = icmp eq ptr %i.jl, %i.jd
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.peel, %bb.bd
  %i.jm = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.jn = load i8, ptr %i.jm, align 8, !tbaa !154, !range !120, !noundef !80
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %.loopexit201, label %bb.bk

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %.sroa.0171.0277 = phi ptr [ %i.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.peel ] ; 2 uses
  %i.jp = load i64, ptr %.sroa.0171.0277, align 8, !tbaa !44
  %i.jq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 44)
          to label %bb.bh unwind label %.loopexit.split-lp208.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bh:                                            ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke fastcc void @_ZL14gemma4_to_jsonB5cxx11RK20common_peg_ast_arenam(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jp)
          to label %bb.bi unwind label %.loopexit.split-lp321.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bh
  %i.jr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bj unwind label %.loopexit.split-lp326.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.js = load ptr, ptr %14, align 8, !tbaa !42   ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.je
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.bj
  %i.ju = load i64, ptr %i.je, align 8, !tbaa !45
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0171.0277, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.jw, %i.jd
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !638

.loopexit.split-lp321.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bh, %bb.be
  %lpad.loopexit.split-lp508 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

.loopexit.split-lp326.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi, %bb.bf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jx = load ptr, ptr %14, align 8, !tbaa !42   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.je
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %.loopexit.split-lp326.loopexit.split-lp.loopexit.split-lp
  %i.jz = load i64, ptr %i.je, align 8, !tbaa !45
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %.loopexit.split-lp326.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp321.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ], [ %lpad.loopexit.split-lp508, %.loopexit.split-lp321.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp326.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.loopexit.split-lp208

bb.bk:                                            ; preds = %._crit_edge
  %i.kb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 125)
          to label %.loopexit201 unwind label %.loopexit.split-lp208.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp208.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %bb.bk
  %lpad.loopexit.split-lp505 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp208

.loopexit.split-lp208:                            ; preds = %.loopexit.split-lp208.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ], [ %lpad.loopexit.split-lp505, %.loopexit.split-lp208.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.kc = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %.loopexit.split-lp208
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !45
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

bb.bl:                                            ; preds = %bb.bc
  %i.kh = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull @.str.80)
  br i1 %i.kh, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.ki = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !66 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !66
  %i.km = icmp eq ptr %i.kj, %i.kl
  br i1 %i.km, label %bb.bn, label %tailrecurse

tailrecurse:                                      ; preds = %bb.bm
  %i.kn = load i64, ptr %i.kj, align 8, !tbaa !44 ; 3 uses
  %i.ko = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.kp = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = sdiv exact i64 %i.ks, 136               ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.kn, %i.kt
  br i1 %.not.i.i.i, label %_ZNK20common_peg_ast_arena3getEm.exit, label %tailrecurse._crit_edge

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.loopexit201

bb.bo:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.loopexit201

.loopexit201:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %bb.ax, %._crit_edge, %bb.bk, %bb.as, %bb.at, %._crit_edge288, %bb.ag, %bb.r, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %bb.bo, %bb.bn, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %bb.b
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %.loopexit.split-lp208, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %bb.av, %.loopexit.split-lp, %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %.pn89 = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %.pn72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %.pn77, %bb.av ], [ %.pn79.pn.pn, %.loopexit.split-lp ], [ %.pn85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %.pn85, %bb.z ], [ %.pn77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %.pn79.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %.pn72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %.pn.pn.pn, %.loopexit.split-lp208 ]
  resume { ptr, i32 } %.pn89
}

; Function Attrs: mustprogress uwtable
define void @_ZN33common_chat_peg_minimax_m3_mapper8from_astERK20common_peg_ast_arenaRK23common_peg_parse_result(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %.not9 = icmp eq ptr %i.b, %i.d
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.06.010 = phi ptr [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load i64, ptr %.sroa.06.010, align 8, !tbaa !44
  tail call void @_ZN33common_chat_peg_minimax_m3_mapper5visitERK20common_peg_ast_arenam(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define void @_ZN33common_chat_peg_minimax_m3_mapper5visitERK20common_peg_ast_arenam(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %struct.common_chat_tool_call, align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 136                 ; 2 uses
  %.not.i.i.i = icmp ult i64 %2, %i.j
  br i1 %.not.i.i.i, label %_ZNK20common_peg_ast_arena3getEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.68, i64 noundef %2, i64 noundef %i.j) #28
  unreachable

_ZNK20common_peg_ast_arena3getEm.exit:            ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [136 x i8], ptr %i.f, i64 %2 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !43
  switch i64 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69.thread [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK20common_peg_ast_arena3getEm.exit
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !42   ; 2 uses
  %i.p = load i64, ptr %i.o, align 1
  %i.q = xor i64 %i.p, 7956011641682879858
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = xor i64 %i.t, 103
  %i.v = or i64 %i.q, %i.u
  %i.w = icmp ne i64 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69.thread

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %.sroa.0.0.copyload.i = load i64, ptr %i.z, align 8, !tbaa !44 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !126 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !40
  %i.ab = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.ac = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.ac, %i.ab
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.89) #28
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %.sroa.0.0.copyload.i, ptr %i.c, align 8, !tbaa !44
  %i.ad = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.ad, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc41 unwind label %bb.j   ; 2 uses

.noexc41:                                         ; preds = %.noexc.i.i.i
  store ptr %i.ae, ptr %3, align 8, !tbaa !42
  %i.af = load i64, ptr %i.c, align 8, !tbaa !44
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !45
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc41, %bb.e
  %i.ag = phi ptr [ %i.ae, %.noexc41 ], [ %i.aa, %bb.e ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !45
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !45
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
end_hunk_0
