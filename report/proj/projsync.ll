Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/projsync?download=true
inline.NumInlined: 3658
inline.NumDeleted: 1216
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN13proj_nlohmann6detail16invalid_iterator6createEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:.noexc.i
  invoke void @_ZN13proj_nlohmann6detail9exception4nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !28, !noalias !408 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28, !noalias !408
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.i
  br i1 %i.m, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #30
          to label %.noexc11 unwind label %bb.i, !noalias !408

.noexc11:                                         ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.b
  %i.n = load ptr, ptr %2, align 8, !tbaa !31, !noalias !408
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.n, i64 noundef %i.i)
          to label %.noexc12 unwind label %bb.i, !noalias !408 ; 6 uses

.noexc12:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !25, !alias.scope !408
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %.noexc12
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !28   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc12
  store ptr %i.q, ptr %3, align 8, !tbaa !31, !alias.scope !408
  %i.x = load i64, ptr %i.r, align 8, !tbaa !29
  store i64 %i.x, ptr %i.p, align 8, !tbaa !29, !alias.scope !408
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.y = phi i64 [ %i.u, %bb.d ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !28, !alias.scope !408
  store ptr %i.r, ptr %i.o, align 8, !tbaa !31
  store i64 0, ptr %i.z, align 8, !tbaa !28
  store i8 0, ptr %i.r, align 8, !tbaa !29
  %i.ab = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.e
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !29
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.ag = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.b
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !29
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ak = load ptr, ptr %3, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %0, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.al, align 8, !tbaa !108
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull %i.ak)
          to label %bb.f unwind label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #29
  %i.ao = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.p
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail16invalid_iteratorE, i64 16), ptr %0, align 8, !tbaa !38
  %i.aq = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.p
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.f
  %i.as = load i64, ptr %i.p, align 8, !tbaa !29
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.g:                                             ; preds = %.noexc.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.h:                                             ; preds = %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !29
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.h
  %.pn = phi { ptr, i32 } [ %i.av, %bb.h ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.aw, %bb.i ] ; 2 uses
  %i.bc = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.b
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.be = load i64, ptr %i.b, align 8, !tbaa !29
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.au, %bb.g ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %.body
  %i.bg = load i64, ptr %i.p, align 8, !tbaa !29
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.bh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn9 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.an, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn9
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13proj_nlohmann6detail16invalid_iteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #29, !inline_history !109
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #29, !inline_history !109
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #31
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #18

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE5parseEbRSE_(ptr noundef nonnull align 8 dereferenceable(193) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.proj_nlohmann::detail::json_sax_dom_callback_parser", align 8 ; 10 uses
  %4 = alloca %"class.std::function", align 8     ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.proj_nlohmann::detail::parse_error", align 8 ; 12 uses
  %7 = alloca %"struct.proj_nlohmann::detail::position_t", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 2 uses
  %11 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 2 uses
  %12 = alloca %"class.proj_nlohmann::detail::json_sax_dom_parser", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.proj_nlohmann::detail::parse_error", align 8 ; 12 uses
  %15 = alloca %"struct.proj_nlohmann::detail::position_t", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2)
          to label %_ZNSt8functionIFbiN13proj_nlohmann6detail13parse_event_tERNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEEC2ERKSI_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.f, null
  br i1 %.not.i.i40, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit49, %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEED2Ev.exit90, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %.pn36.pn, %_ZNSt14_Function_baseD2Ev.exit49 ], [ %.pn28, %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEED2Ev.exit90 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFbiN13proj_nlohmann6detail13parse_event_tERNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEEC2ERKSI_.exit: ; preds = %bb.b
  %i.j = load <2 x ptr>, ptr %i.a, align 8, !tbaa !111
  store <2 x ptr> %i.j, ptr %i.c, align 8, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = load i8, ptr %i.k, align 8, !tbaa !121, !range !43, !noundef !44
  %i.m = trunc nuw i8 %i.l to i1
  invoke void @_ZN13proj_nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEC2ERSE_St8functionIFbiNS0_13parse_event_tESG_EEb(ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %4, i1 noundef zeroext %i.m)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZNSt8functionIFbiN13proj_nlohmann6detail13parse_event_tERNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEEC2ERKSI_.exit
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.f, %bb.g
  %i.r = invoke noundef zeroext i1 @_ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18sax_parse_internalINS0_28json_sax_dom_callback_parserISE_EEEEbPT_(ptr noundef nonnull align 8 dereferenceable(193) %0, ptr noundef %3)
          to label %bb.i unwind label %bb.t       ; 0 uses

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  br i1 %1, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = invoke noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE4scanEv(ptr noundef nonnull align 8 dereferenceable(148) %i.s)
          to label %bb.k unwind label %bb.t       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.t, ptr %i.u, align 8, !tbaa !122
  %.not30 = icmp eq i32 %i.t, 15
  br i1 %.not30, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZNK13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE16get_token_stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(148) %i.s)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !123
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.w, ptr %9, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.w, ptr noundef nonnull align 1 dereferenceable(5) @.str.156, i64 5, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 5, ptr %i.x, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 21
  store i8 0, ptr %i.y, align 1, !tbaa !29
  invoke void @_ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE17exception_messageENS0_10lexer_baseISE_E10token_typeERKSA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(193) %0, i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN13proj_nlohmann6detail11parse_error6createEiRKNS0_10position_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::detail::parse_error") align 8 %6, i32 noundef 101, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i8 1, ptr %i.z, align 8, !tbaa !138
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !139, !range !43, !noundef !44
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.p, label %_ZN13proj_nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit

bb.p:                                             ; preds = %bb.o
  %i.ad = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %i.ad, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !108
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !108
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @_ZNSt13runtime_errorC1ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail11parse_errorE, i64 16), ptr %i.ad, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !141
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !141
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN13proj_nlohmann6detail11parse_errorE, ptr nonnull @_ZN13proj_nlohmann6detail9exceptionD2Ev) #30
          to label %.noexc41 unwind label %bb.x

.noexc41:                                         ; preds = %bb.p
  unreachable

_ZN13proj_nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit: ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %6, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.am) #29, !inline_history !109
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %6) #29, !inline_history !109
  %i.an = load ptr, ptr %8, align 8, !tbaa !31    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN13proj_nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !29
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN13proj_nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.as = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.w
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = load i64, ptr %i.w, align 8, !tbaa !29
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.aw = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !29
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.z

bb.q:                                             ; preds = %_ZNSt8functionIFbiN13proj_nlohmann6detail13parse_event_tERNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEEC2ERKSI_.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %.not.i48 = icmp eq ptr %i.bc, null
  br i1 %.not.i48, label %_ZNSt14_Function_baseD2Ev.exit49, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit49 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #33
  unreachable

bb.t:                                             ; preds = %bb.j, %_ZNSt14_Function_baseD2Ev.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.u:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.v:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.w:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.p
  %i.bk = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %6, align 8, !tbaa !38
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ai) #29, !inline_history !109
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %6) #29, !inline_history !109
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn31 = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %i.bj, %bb.w ] ; 2 uses
  %i.bl = load ptr, ptr %8, align 8, !tbaa !31    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.y
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !29
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.v
  %.pn31.pn = phi { ptr, i32 } [ %i.bi, %bb.v ], [ %.pn31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.pn31, %bb.y ] ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.w
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.bs = load i64, ptr %i.w, align 8, !tbaa !29
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.bu = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !29
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.u
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.u ], [ %.pn31.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %.pn31.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.ae

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.k, %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !138, !range !43, !noundef !44
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cd = load i8, ptr %2, align 8, !tbaa !110    ; 2 uses
  store i8 9, ptr %2, align 8, !tbaa !110
  store i8 %i.cd, ptr %10, align 8, !tbaa !110
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ce, align 8, !tbaa !29
  store i64 0, ptr %i.ce, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.cc, align 8, !tbaa !29
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, i8 noundef zeroext %i.cd) #29, !inline_history !2
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.cf = load i8, ptr %2, align 8, !tbaa !58
  %i.cg = icmp eq i8 %i.cf, 9
  br i1 %i.cg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i8 0, ptr %2, align 8, !tbaa !110
  store i8 9, ptr %11, align 8, !tbaa !110
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i60 = load ptr, ptr %i.ci, align 8, !tbaa !29
  store i64 0, ptr %i.ci, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i.i60, ptr %i.ch, align 8, !tbaa !29
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i8 noundef zeroext 9) #29, !inline_history !2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  call void @_ZN13proj_nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ba

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.t
  %.pn36 = phi { ptr, i32 } [ %i.bg, %bb.t ], [ %.pn31.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  call void @_ZN13proj_nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %3) #29
  br label %_ZNSt14_Function_baseD2Ev.exit49

_ZNSt14_Function_baseD2Ev.exit49:                 ; preds = %bb.r, %bb.q, %bb.ae
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %bb.ae ], [ %i.bb, %bb.q ], [ %i.bb, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %common.resume

bb.af:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !121, !range !43, !noundef !44
  store ptr %2, ptr %12, align 8, !tbaa !68
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 41 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.cl, i8 0, i64 33, i1 false)
  store i8 %i.ck, ptr %i.cm, align 1, !tbaa !143
  %i.cn = invoke noundef zeroext i1 @_ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18sax_parse_internalINS0_19json_sax_dom_parserISE_EEEEbPT_(ptr noundef nonnull align 8 dereferenceable(193) %0, ptr noundef %12)
          to label %bb.ag unwind label %bb.ao     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  br i1 %1, label %bb.ah, label %bb.au

bb.ah:                                            ; preds = %bb.ag
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cp = invoke noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE4scanEv(ptr noundef nonnull align 8 dereferenceable(148) %i.co)
          to label %bb.ai unwind label %bb.ao     ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !122
  %.not = icmp eq i32 %i.cp, 15
  br i1 %.not, label %bb.au, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  invoke void @_ZNK13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE16get_token_stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(148) %i.co)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !tbaa.struct !123
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.cs = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.cs, ptr %17, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cs, ptr noundef nonnull align 1 dereferenceable(5) @.str.156, i64 5, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 5, ptr %i.ct, align 8, !tbaa !28
  %i.cu = getelementptr inbounds nuw i8, ptr %17, i64 21
  store i8 0, ptr %i.cu, align 1, !tbaa !29
  invoke void @_ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE17exception_messageENS0_10lexer_baseISE_E10token_typeERKSA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(193) %0, i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN13proj_nlohmann6detail11parse_error6createEiRKNS0_10position_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::detail::parse_error") align 8 %14, i32 noundef 101, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i8 1, ptr %19, align 8, !tbaa !144
  %i.cv = load i8, ptr %i.cm, align 1, !tbaa !143, !range !43, !noundef !44
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.an, label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit

bb.an:                                            ; preds = %bb.am
  %i.cx = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %i.cx, align 8, !tbaa !38
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !108
  store i32 %i.da, ptr %i.cy, align 8, !tbaa !108
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  call void @_ZNSt13runtime_errorC1ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail11parse_errorE, i64 16), ptr %i.cx, align 8, !tbaa !38
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.df = load i64, ptr %i.de, align 8, !tbaa !141
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !141
  invoke void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTIN13proj_nlohmann6detail11parse_errorE, ptr nonnull @_ZN13proj_nlohmann6detail9exceptionD2Ev) #30
          to label %.noexc67 unwind label %bb.as

.noexc67:                                         ; preds = %bb.an
  unreachable

_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit: ; preds = %bb.am
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %14, align 8, !tbaa !38
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dg) #29, !inline_history !109
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #29, !inline_history !109
  %i.dh = load ptr, ptr %16, align 8, !tbaa !31   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !29
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  %i.dm = load ptr, ptr %17, align 8, !tbaa !31   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cs
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.do = load i64, ptr %i.cs, align 8, !tbaa !29
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.dq = load ptr, ptr %13, align 8, !tbaa !31   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !29
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.au

bb.ao:                                            ; preds = %bb.ah, %bb.af
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ap:                                            ; preds = %bb.aj
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.aq:                                            ; preds = %bb.ak
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.ar:                                            ; preds = %bb.al
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.an
  %i.dz = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %14, align 8, !tbaa !38
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dc) #29, !inline_history !109
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #29, !inline_history !109
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.as ], [ %i.dy, %bb.ar ] ; 2 uses
  %i.ea = load ptr, ptr %16, align 8, !tbaa !31   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.at
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !29
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.aq
  %.pn.pn = phi { ptr, i32 } [ %i.dx, %bb.aq ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.pn, %bb.at ] ; 2 uses
  %i.ef = load ptr, ptr %17, align 8, !tbaa !31   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.cs
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.eh = load i64, ptr %i.cs, align 8, !tbaa !29
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.ej = load ptr, ptr %13, align 8, !tbaa !31   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !29
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.ap
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.ap ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.ay

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.ai, %bb.ag
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.eo = load i8, ptr %20, align 8, !tbaa !144, !range !43, !noundef !44
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.er = load i8, ptr %2, align 8, !tbaa !110    ; 2 uses
  store i8 9, ptr %2, align 8, !tbaa !110
  store i8 %i.er, ptr %18, align 8, !tbaa !110
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i88 = load ptr, ptr %i.es, align 8, !tbaa !29
  store i64 0, ptr %i.es, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i.i88, ptr %i.eq, align 8, !tbaa !29
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, i8 noundef zeroext %i.er) #29, !inline_history !2
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.et = load ptr, ptr %i.cl, align 8, !tbaa !145 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i, label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !146
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #31
  br label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEED2Ev.exit

_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEED2Ev.exit: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.ba

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.ao
  %.pn28 = phi { ptr, i32 } [ %i.dv, %bb.ao ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ]
  %i.ez = load ptr, ptr %i.cl, align 8, !tbaa !145 ; 3 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i89, label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEED2Ev.exit90, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fa = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !146
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #31
  br label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEED2Ev.exit90

_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEED2Ev.exit90: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %common.resume

bb.ba:                                            ; preds = %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEED2Ev.exit, %bb.ad
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(193) dereferenceable(193) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !29
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #31
  br label %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEED2Ev.exit

_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEED2Ev.exit
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i8 %1, label %bb.j [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6createIS8_JRA1_KcEEEPT_DpOT0_.exit
    i8 8, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 0, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.d, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !55
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %i.f, ptr %0, align 8, !tbaa !29
  br label %bb.k

_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6createIS8_JRA1_KcEEEPT_DpOT0_.exit: ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !28
  store i8 0, ptr %i.h, align 8, !tbaa !29
  store ptr %i.g, ptr %0, align 8, !tbaa !29
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.j, i8 0, i64 26, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !29
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !29
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !tbaa !29
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !tbaa !29
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %0, align 8, !tbaa !29
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6createIS8_JRA1_KcEEEPT_DpOT0_.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEEC2EOSL_St8functionIFbiNS0_13parse_event_tERSE_EEbb(ptr noundef nonnull align 8 dereferenceable(193) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef align 8 %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFbiN13proj_nlohmann6detail13parse_event_tERNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEEC2ERKSI_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

end_hunk_0
begin_hunk_1_@_ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18sax_parse_internalINS0_19json_sax_dom_parserISE_EEEEbPT_:.critedge
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

bb.bc:                                            ; preds = %bb.av
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

bb.bd:                                            ; preds = %bb.aw
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

bb.be:                                            ; preds = %bb.ax
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

bb.bf:                                            ; preds = %bb.ay
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.az
  %i.fk = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %16, align 8, !tbaa !38
  %i.fl = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.fl) #29, !inline_history !109
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %16) #29, !inline_history !109
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn81 = phi { ptr, i32 } [ %i.fk, %bb.bg ], [ %i.fj, %bb.bf ] ; 2 uses
  %i.fm = load ptr, ptr %17, align 8, !tbaa !31   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.bh
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !29
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, %bb.be
  %.pn81.pn = phi { ptr, i32 } [ %i.fi, %bb.be ], [ %.pn81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %.pn81, %bb.bh ] ; 2 uses
  %i.fr = load ptr, ptr %18, align 8, !tbaa !31   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !29
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %bb.bd
  %.pn81.pn.pn = phi { ptr, i32 } [ %i.fh, %bb.bd ], [ %.pn81.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %.pn81.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ] ; 2 uses
  %i.fw = load ptr, ptr %19, align 8, !tbaa !31   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !29
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, %bb.bc
  %.pn81.pn.pn.pn = phi { ptr, i32 } [ %i.fg, %bb.bc ], [ %.pn81.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ], [ %.pn81.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  %i.gb = load ptr, ptr %15, align 8, !tbaa !31   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !29
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193, %bb.bb
  %.pn81.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ff, %bb.bb ], [ %.pn81.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193 ], [ %.pn81.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %bb.ez

bb.bi:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store double %i.ef, ptr %i.f, align 8, !tbaa !77
  %i.gg = invoke noundef nonnull ptr @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueIRdEEPSE_OT_(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.thread unwind label %.loopexit.split-lp ; 0 uses

.thread:                                          ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit.preheader

.loopexit.split-lp:                               ; preds = %bb.df, %bb.cp, %bb.ak, %bb.a, %bb.c, %bb.r, %bb.s, %bb.aj, %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %bb.am, %bb.as, %bb.bi, %bb.bj, %bb.bl, %bb.bn, %bb.bp, %bb.br, %bb.bs, %bb.cr, %bb.dh, %bb.dv, %bb.dw, %bb.ek
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %.loopexit

bb.bj:                                            ; preds = %.critedge482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.e, align 1, !tbaa !42
  %i.gh = invoke noundef nonnull ptr @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueIRbEEPSE_OT_(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.bk unwind label %.loopexit.split-lp ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit.preheader

bb.bl:                                            ; preds = %.critedge482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store ptr null, ptr %i.d, align 8, !tbaa !166
  %i.gi = invoke noundef nonnull ptr @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueIDnEEPSE_OT_(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.bm unwind label %.loopexit.split-lp ; 0 uses

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  br label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit.preheader

bb.bn:                                            ; preds = %.critedge482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 1, ptr %i.c, align 1, !tbaa !42
  %i.gj = invoke noundef nonnull ptr @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueIRbEEPSE_OT_(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.bo unwind label %.loopexit.split-lp ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit.preheader

bb.bp:                                            ; preds = %.critedge482
  %i.gk = load i64, ptr %i.n, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.gk, ptr %i.b, align 8, !tbaa !30
  %i.gl = invoke noundef nonnull ptr @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueIRlEEPSE_OT_(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bq unwind label %.loopexit.split-lp ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit.preheader

bb.br:                                            ; preds = %.critedge482
  %i.gm = invoke noundef nonnull ptr @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueIRSA_EEPSE_OT_(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit.preheader unwind label %.loopexit.split-lp ; 0 uses

bb.bs:                                            ; preds = %.critedge482
  %i.gn = load i64, ptr %i.l, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.gn, ptr %i.a, align 8, !tbaa !30
  %i.go = invoke noundef nonnull ptr @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueIRmEEPSE_OT_(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.bt unwind label %.loopexit.split-lp ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit.preheader

_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit.preheader: ; preds = %bb.e, %bb.ao, %.thread, %bb.bk, %bb.bm, %bb.bo, %bb.bq, %bb.br, %bb.bt
  br label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit

bb.bu:                                            ; preds = %.critedge482
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  invoke void @_ZNK13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE16get_token_stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(148) %i.p)
          to label %bb.bv unwind label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.gp, i64 24, i1 false), !tbaa.struct !123
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  %i.gq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.gq, ptr %24, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.gq, ptr noundef nonnull align 1 dereferenceable(5) @.str.156, i64 5, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 5, ptr %i.gr, align 8, !tbaa !28
  %i.gs = getelementptr inbounds nuw i8, ptr %24, i64 21
  store i8 0, ptr %i.gs, align 1, !tbaa !29
  invoke void @_ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE17exception_messageENS0_10lexer_baseISE_E10token_typeERKSA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(193) %0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.bw unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN13proj_nlohmann6detail11parse_error6createEiRKNS0_10position_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::detail::parse_error") align 8 %21, i32 noundef 101, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.gt, align 8, !tbaa !144
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !143, !range !43, !noundef !44
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.by, label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit

bb.by:                                            ; preds = %bb.bx
  %i.gx = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %i.gx, align 8, !tbaa !38
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !108
  store i32 %i.ha, ptr %i.gy, align 8, !tbaa !108
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  call void @_ZNSt13runtime_errorC1ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail11parse_errorE, i64 16), ptr %i.gx, align 8, !tbaa !38
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !141
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !141
  invoke void @__cxa_throw(ptr nonnull %i.gx, ptr nonnull @_ZTIN13proj_nlohmann6detail11parse_errorE, ptr nonnull @_ZN13proj_nlohmann6detail9exceptionD2Ev) #30
          to label %.noexc205 unwind label %bb.cc

.noexc205:                                        ; preds = %bb.by
  unreachable

_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit: ; preds = %bb.bx
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %21, align 8, !tbaa !38
  %i.hg = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hg) #29, !inline_history !109
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %21) #29, !inline_history !109
  %i.hh = load ptr, ptr %23, align 8, !tbaa !31   ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !29
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  %i.hm = load ptr, ptr %24, align 8, !tbaa !31   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.gq
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.ho = load i64, ptr %i.gq, align 8, !tbaa !29
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  %i.hq = load ptr, ptr %20, align 8, !tbaa !31   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !29
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %.loopexit

bb.bz:                                            ; preds = %bb.bu
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

bb.ca:                                            ; preds = %bb.bv
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

bb.cb:                                            ; preds = %bb.bw
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.by
  %i.hy = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %21, align 8, !tbaa !38
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hc) #29, !inline_history !109
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %21) #29, !inline_history !109
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn = phi { ptr, i32 } [ %i.hy, %bb.cc ], [ %i.hx, %bb.cb ] ; 2 uses
  %i.hz = load ptr, ptr %23, align 8, !tbaa !31   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %bb.cd
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !29
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215, %bb.ca
  %.pn.pn = phi { ptr, i32 } [ %i.hw, %bb.ca ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215 ], [ %.pn, %bb.cd ] ; 2 uses
  %i.ie = load ptr, ptr %24, align 8, !tbaa !31   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.gq
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217
  %i.ig = load i64, ptr %i.gq, align 8, !tbaa !29
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  %i.ii = load ptr, ptr %20, align 8, !tbaa !31   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !29
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221, %bb.bz
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hv, %bb.bz ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %bb.ez

bb.ce:                                            ; preds = %.critedge482
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  invoke void @_ZNK13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE16get_token_stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(148) %i.p)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %i.in, i64 24, i1 false), !tbaa.struct !123
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  %i.io = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.io, ptr %29, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.io, ptr noundef nonnull align 1 dereferenceable(5) @.str.156, i64 5, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 5, ptr %i.ip, align 8, !tbaa !28
  %i.iq = getelementptr inbounds nuw i8, ptr %29, i64 21
  store i8 0, ptr %i.iq, align 1, !tbaa !29
  invoke void @_ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE17exception_messageENS0_10lexer_baseISE_E10token_typeERKSA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(193) %0, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.cg unwind label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN13proj_nlohmann6detail11parse_error6createEiRKNS0_10position_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::detail::parse_error") align 8 %26, i32 noundef 101, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.ch unwind label %bb.cl

bb.ch:                                            ; preds = %bb.cg
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.ir, align 8, !tbaa !144
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.it = load i8, ptr %i.is, align 1, !tbaa !143, !range !43, !noundef !44
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.ci, label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit229

bb.ci:                                            ; preds = %bb.ch
  %i.iv = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %i.iv, align 8, !tbaa !38
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !108
  store i32 %i.iy, ptr %i.iw, align 8, !tbaa !108
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  call void @_ZNSt13runtime_errorC1ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail11parse_errorE, i64 16), ptr %i.iv, align 8, !tbaa !38
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.jc = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !141
  store i64 %i.jd, ptr %i.jb, align 8, !tbaa !141
  invoke void @__cxa_throw(ptr nonnull %i.iv, ptr nonnull @_ZTIN13proj_nlohmann6detail11parse_errorE, ptr nonnull @_ZN13proj_nlohmann6detail9exceptionD2Ev) #30
          to label %.noexc228 unwind label %bb.cm

.noexc228:                                        ; preds = %bb.ci
  unreachable

_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit229: ; preds = %bb.ch
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %26, align 8, !tbaa !38
  %i.je = getelementptr inbounds nuw i8, ptr %26, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.je) #29, !inline_history !109
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %26) #29, !inline_history !109
  %i.jf = load ptr, ptr %28, align 8, !tbaa !31   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit229
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !29
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_.exit229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  %i.jk = load ptr, ptr %29, align 8, !tbaa !31   ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.io
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.jm = load i64, ptr %i.io, align 8, !tbaa !29
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  %i.jo = load ptr, ptr %25, align 8, !tbaa !31   ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !29
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br label %.loopexit

bb.cj:                                            ; preds = %bb.ce
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.ck:                                            ; preds = %bb.cf
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

bb.cl:                                            ; preds = %bb.cg
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ci
  %i.jw = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %26, align 8, !tbaa !38
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ja) #29, !inline_history !109
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %26) #29, !inline_history !109
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.pn99 = phi { ptr, i32 } [ %i.jw, %bb.cm ], [ %i.jv, %bb.cl ] ; 2 uses
  %i.jx = load ptr, ptr %28, align 8, !tbaa !31   ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.cn
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !29
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239, %bb.ck
  %.pn99.pn = phi { ptr, i32 } [ %i.ju, %bb.ck ], [ %.pn99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239 ], [ %.pn99, %bb.cn ] ; 2 uses
  %i.kc = load ptr, ptr %29, align 8, !tbaa !31   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.io
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %i.ke = load i64, ptr %i.io, align 8, !tbaa !29
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  %i.kg = load ptr, ptr %25, align 8, !tbaa !31   ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !29
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.cj
  %.pn99.pn.pn.pn = phi { ptr, i32 } [ %i.jt, %bb.cj ], [ %.pn99.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.pn99.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br label %bb.ez

_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit: ; preds = %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit.backedge, %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit.preheader
  %i.kl = load ptr, ptr %2, align 8, !tbaa !160
  %i.km = load ptr, ptr %i.h, align 8, !tbaa !160 ; 2 uses
  %i.kn = load i32, ptr %i.i, align 8, !tbaa !162 ; 2 uses
  %i.ko = icmp eq ptr %i.kl, %i.km
  %i.kp = icmp eq i32 %i.kn, 0
  %i.kq = select i1 %i.ko, i1 %i.kp, i1 false
  br i1 %i.kq, label %.loopexit, label %bb.co

bb.co:                                            ; preds = %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit
  %i.kr = zext i32 %i.kn to i64
  %i.ks = add nsw i64 %i.kr, -1                   ; 3 uses
  %i.kt = sdiv i64 %i.ks, 64
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kt
  %i.kv = and i64 %i.ks, -9223372036854775745
  %i.kw = icmp ugt i64 %i.kv, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.kw, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ku, i64 %storemerge.idx.i.i.i.i.i
  %i.kx = and i64 %i.ks, 63
  %i.ky = shl nuw i64 1, %i.kx
  %i.kz = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !30
  %i.la = and i64 %i.kz, %i.ky
  %.not = icmp eq i64 %i.la, 0
  br i1 %.not, label %bb.df, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lb = invoke noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE4scanEv(ptr noundef nonnull align 8 dereferenceable(148) %i.p)
          to label %bb.cq unwind label %.loopexit.split-lp ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  store i32 %i.lb, ptr %i.k, align 8, !tbaa !122
  switch i32 %i.lb, label %bb.ct [
    i32 13, label %bb.cr
    i32 10, label %bb.cs
  ], !prof !163

bb.cr:                                            ; preds = %bb.cq
  %i.lc = invoke noundef i32 @_ZN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE4scanEv(ptr noundef nonnull align 8 dereferenceable(148) %i.p)
          to label %_ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE9get_tokenEv.exit252 unwind label %.loopexit.split-lp

_ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE9get_tokenEv.exit252: ; preds = %bb.cr
  store i32 %i.lc, ptr %i.k, align 8, !tbaa !122
  br label %.critedge482.backedge

bb.cs:                                            ; preds = %bb.cq
  %i.ld = load ptr, ptr %i.q, align 8, !tbaa !167
  %i.le = getelementptr inbounds i8, ptr %i.ld, i64 -8
  store ptr %i.le, ptr %i.q, align 8, !tbaa !167
  %i.lf = load i32, ptr %i.i, align 8, !tbaa !162 ; 2 uses
  %i.lg = add i32 %i.lf, -1
  store i32 %i.lg, ptr %i.i, align 8, !tbaa !162
  %i.lh = icmp eq i32 %i.lf, 0
  br i1 %i.lh, label %.backedge.sink.split, label %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit.backedge

bb.ct:                                            ; preds = %bb.cq
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.0342.0.copyload = load i64, ptr %i.li, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29
  invoke void @_ZNK13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE16get_token_stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull align 8 dereferenceable(148) %i.p)
          to label %bb.cu unwind label %bb.cz
end_hunk_1
begin_hunk_2_@_ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE18sax_parse_internalINS0_19json_sax_dom_parserISE_EEEEbPT_:.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #29
  invoke void @_ZNK13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE16get_token_stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %48, ptr noundef nonnull align 8 dereferenceable(148) %i.p)
          to label %bb.en unwind label %bb.es

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(24) %i.qk, i64 24, i1 false), !tbaa.struct !123
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(1) %53)
          to label %bb.eo unwind label %bb.et

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE17exception_messageENS0_10lexer_baseISE_E10token_typeERKSA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %51, ptr noundef nonnull align 8 dereferenceable(193) %0, i32 noundef 11, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %bb.ep unwind label %bb.eu

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZN13proj_nlohmann6detail11parse_error6createEiRKNS0_10position_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::detail::parse_error") align 8 %49, i32 noundef 101, ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(32) %51)
          to label %bb.eq unwind label %bb.ev

bb.eq:                                            ; preds = %bb.ep
  %i.ql = invoke noundef zeroext i1 @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_(ptr noundef nonnull align 8 dereferenceable(42) %1, i64 noundef %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(40) %49)
          to label %bb.er unwind label %bb.ew

bb.er:                                            ; preds = %bb.eq
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %49, align 8, !tbaa !38
  %i.qm = getelementptr inbounds nuw i8, ptr %49, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.qm) #29, !inline_history !109
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %49) #29, !inline_history !109
  %i.qn = load ptr, ptr %51, align 8, !tbaa !31   ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.qp = icmp eq ptr %i.qn, %i.qo
  br i1 %i.qp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %bb.er
  %i.qq = load i64, ptr %i.qo, align 8, !tbaa !29
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  %i.qs = load ptr, ptr %52, align 8, !tbaa !31   ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.qu = icmp eq ptr %i.qs, %i.qt
  br i1 %i.qu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
  %i.qv = load i64, ptr %i.qt, align 8, !tbaa !29
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  %i.qx = load ptr, ptr %48, align 8, !tbaa !31   ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.qz = icmp eq ptr %i.qx, %i.qy
  br i1 %i.qz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323
  %i.ra = load i64, ptr %i.qy, align 8, !tbaa !29
  %i.rb = add i64 %i.ra, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.rb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  br label %.loopexit

bb.es:                                            ; preds = %bb.em
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

bb.et:                                            ; preds = %bb.en
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332

bb.eu:                                            ; preds = %bb.eo
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

bb.ev:                                            ; preds = %bb.ep
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eq
  %i.rg = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %49, align 8, !tbaa !38
  %i.rh = getelementptr inbounds nuw i8, ptr %49, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.rh) #29, !inline_history !109
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %49) #29, !inline_history !109
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.pn104 = phi { ptr, i32 } [ %i.rg, %bb.ew ], [ %i.rf, %bb.ev ] ; 2 uses
  %i.ri = load ptr, ptr %51, align 8, !tbaa !31   ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.rk = icmp eq ptr %i.ri, %i.rj
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327: ; preds = %bb.ex
  %i.rl = load i64, ptr %i.rj, align 8, !tbaa !29
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329: ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327, %bb.eu
  %.pn104.pn = phi { ptr, i32 } [ %i.re, %bb.eu ], [ %.pn104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327 ], [ %.pn104, %bb.ex ] ; 2 uses
  %i.rn = load ptr, ptr %52, align 8, !tbaa !31   ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.rp = icmp eq ptr %i.rn, %i.ro
  br i1 %i.rp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329
  %i.rq = load i64, ptr %i.ro, align 8, !tbaa !29
  %i.rr = add i64 %i.rq, 1
  call void @_ZdlPvm(ptr noundef %i.rn, i64 noundef %i.rr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330, %bb.et
  %.pn104.pn.pn = phi { ptr, i32 } [ %i.rd, %bb.et ], [ %.pn104.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330 ], [ %.pn104.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  %i.rs = load ptr, ptr %48, align 8, !tbaa !31   ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.ru = icmp eq ptr %i.rs, %i.rt
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332
  %i.rv = load i64, ptr %i.rt, align 8, !tbaa !29
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333, %bb.es
  %.pn104.pn.pn.pn = phi { ptr, i32 } [ %i.rc, %bb.es ], [ %.pn104.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333 ], [ %.pn104.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  br label %bb.ez

.loopexit:                                        ; preds = %bb.al, %bb.b, %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %.376 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214 ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ], [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261 ], [ %i.my, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i182 ], [ %i.os, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %i.ql, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238 ], [ true, %_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE6stringERSA_.exit ], [ false, %bb.b ], [ false, %bb.al ]
  %i.rx = load ptr, ptr %2, align 8, !tbaa !160   ; 2 uses
  %.not.i.i = icmp eq ptr %i.rx, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ey

bb.ey:                                            ; preds = %.loopexit
  %i.ry = load ptr, ptr %i.j, align 8, !tbaa !161 ; 2 uses
  %i.rz = ptrtoint ptr %i.ry to i64
  %i.sa = ptrtoint ptr %i.rx to i64
  %i.sb = sub i64 %i.rz, %i.sa                    ; 2 uses
  %i.sc = ashr exact i64 %i.sb, 3
  %i.sd = sub nsw i64 0, %i.sc
  %i.se = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %i.sd
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.sb) #31
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %.loopexit, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i1 %.376

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %.pn126 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn121.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270 ], [ %.pn116.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ], [ %.pn111.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %.pn104.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335 ], [ %.pn81.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195 ], [ %.pn99.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %.pn94.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %.pn89.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ]
  %i.sf = load ptr, ptr %2, align 8, !tbaa !160   ; 2 uses
  %.not.i.i336 = icmp eq ptr %i.sf, null
  br i1 %.not.i.i336, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit337, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.sg = load ptr, ptr %i.j, align 8, !tbaa !161 ; 2 uses
  %i.sh = ptrtoint ptr %i.sg to i64
  %i.si = ptrtoint ptr %i.sf to i64
  %i.sj = sub i64 %i.sh, %i.si                    ; 2 uses
  %i.sk = ashr exact i64 %i.sj, 3
  %i.sl = sub nsw i64 0, %i.sk
  %i.sm = getelementptr inbounds [8 x i8], ptr %i.sg, i64 %i.sl
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sj) #31
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit337

_ZNSt13_Bvector_baseISaIbEED2Ev.exit337:          ; preds = %bb.ez, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn126
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_11parse_errorEEEbmRKSA_RKT_(ptr noundef nonnull align 8 dereferenceable(42) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.a, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.c = load i8, ptr %i.b, align 1, !tbaa !143, !range !43, !noundef !44
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 2 uses
  tail call void @_ZN13proj_nlohmann6detail11parse_errorC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %3) #29
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN13proj_nlohmann6detail11parse_errorE, ptr nonnull @_ZN13proj_nlohmann6detail9exceptionD2Ev) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = ptrtoint ptr %i.b to i64                 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64                     ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.g, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %2 to i64                       ; 2 uses
  %i.m = sub nsw i64 %i.h, %i.l
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.b
  %i.p = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 63
  %i.s = lshr i64 %i.p, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.n, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.t, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.022.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.r, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.021.i.i.i.i.i = phi ptr [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.b, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.515.020.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.f, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %i.u = add i32 %.sroa.515.020.i.i.i.i.i, -1
  %i.v = icmp eq i32 %.sroa.515.020.i.i.i.i.i, 0  ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.v, i32 63, i32 %i.u ; 2 uses
  %spec.select19.idx.i.i.i.i.i = select i1 %i.v, i64 -8, i64 0
  %spec.select19.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.021.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i ; 2 uses
  %i.w = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = add i32 %.sroa.59.022.i.i.i.i.i, -1
  %i.z = icmp eq i32 %.sroa.59.022.i.i.i.i.i, 0   ; 2 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.z, i32 63, i32 %i.y ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.z, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.023.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %i.aa = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !30
  %i.ad = and i64 %i.x, %i.ac
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ae = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !30
  %i.af = or i64 %i.ae, %i.ab
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ag = xor i64 %i.ab, -1
  %i.ah = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !30
  %i.ai = and i64 %i.ah, %i.ag
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ %i.ai, %bb.d ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !30
  %i.aj = add nsw i64 %.024.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.ak, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !455

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.b
  %i.al = shl nuw i64 1, %i.l                     ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.am = load i64, ptr %1, align 8, !tbaa !30
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %1, align 8, !tbaa !30
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !30
  %i.ar = add i32 %i.f, 1
  store i32 %i.ar, ptr %i.e, align 8, !tbaa !162
  %i.as = icmp eq i32 %i.f, 63
  br i1 %i.as, label %bb.g, label %_ZNSt13_Bit_iteratorppEv.exit

bb.g:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %i.e, align 8, !tbaa !162
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.at, ptr %i.a, align 8, !tbaa !160
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.h:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %0, align 8, !tbaa !160
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.g, %i.av
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = zext i32 %i.f to i64
  %i.az = add nsw i64 %i.ax, %i.ay                ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775744
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.157) #30
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.bb = add i64 %.sroa.speculated.i, %i.az      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775744)
  %i.be = add nuw nsw i64 %i.bd, 63
  %i.bf = select i1 %i.bc, i64 9223372036854775807, i64 %i.be ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1152921504606846968
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #35 ; 5 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !160   ; 4 uses
  %i.bk = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.j, label %bb.k, !prof !87

bb.j:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.bj, i64 %i.bm, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.l, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !30
  store i64 %i.bp, ptr %i.bi, align 8, !tbaa !30
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.l, %bb.k, %bb.j
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 %i.bm ; 3 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZNSt13_Bit_iteratorppEi.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.br = zext i32 %2 to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ch, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.br, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.bq, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.bs = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !30
  %i.bv = and i64 %i.bu, %i.bt
  %.not.i.i.i.i.i.i47 = icmp eq i64 %i.bv, 0
  %i.bw = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.bx = shl nuw i64 1, %i.bw                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.by = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !30
  %i.bz = or i64 %i.by, %i.bx
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ca = xor i64 %i.bx, -1
  %i.cb = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !30
  %i.cc = and i64 %i.cb, %i.ca
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.n, %bb.m
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.cc, %bb.n ], [ %i.bz, %bb.m ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !30
  %i.cd = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
end_hunk_2
begin_hunk_3_@_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12start_objectEm:bb.a

bb.o:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11start_arrayEm(ptr noundef nonnull align 8 dereferenceable(42) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 2, ptr %i.a, align 1, !tbaa !110
  %i.c = call noundef nonnull ptr @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueINS0_7value_tEEEPSE_OT_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !167  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !146
  %.not.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.e, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.d, align 8, !tbaa !167
  br label %_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE9push_backEOSD_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !145  ; 4 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.98) #30
  unreachable

_ZNKSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #35 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 3 uses
  store ptr %i.c, ptr %i.u, align 8, !tbaa !68
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i.i

_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i.i
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !146
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.z) #31
  br label %_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i

_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit16.i.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !145
  store ptr %i.w, ptr %i.d, align 8, !tbaa !167
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !146
  br label %_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE9push_backEOSD_.exit

_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i
  %i.ab = phi ptr [ %i.e, %bb.b ], [ %i.u, %_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not = icmp eq i64 %1, -1
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE9push_backEOSD_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !58  ; 2 uses
  %i.ae = icmp ult i8 %i.ad, 3
  br i1 %i.ae, label %switch.lookup, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8max_sizeEv.exit

switch.lookup:                                    ; preds = %bb.g
  %i.af = zext nneg i8 %i.ad to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11start_arrayEm, i64 %i.af
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8max_sizeEv.exit

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8max_sizeEv.exit: ; preds = %bb.g, %switch.lookup
  %.0.i = phi i64 [ %switch.load, %switch.lookup ], [ 1, %bb.g ]
  %i.ag = icmp ugt i64 %1, %.0.i
  br i1 %i.ag, label %bb.h, label %.critedge, !prof !95

bb.h:                                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8max_sizeEv.exit
  %i.ah = call ptr @__cxa_allocate_exception(i64 32) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %1)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.166, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN13proj_nlohmann6detail12out_of_range6createEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.proj_nlohmann::detail::out_of_range") align 8 %i.ah, i32 noundef 408, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr %i.ah, ptr nonnull @_ZTIN13proj_nlohmann6detail12out_of_rangeE, ptr nonnull @_ZN13proj_nlohmann6detail9exceptionD2Ev) #30
          to label %bb.o unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread: ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !31    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.an = load i64, ptr %i.al, align 8, !tbaa !29
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ap = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !29
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #31
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.az) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0, label %bb.m, label %bb.n

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread
  %.pn.pn20.ph = phi { ptr, i32 } [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn.pn20 = phi { ptr, i32 } [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %.pn.pn20.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ah) #29
  br label %bb.n

.critedge:                                        ; preds = %_ZNSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE9push_backEOSD_.exit, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8max_sizeEv.exit
  ret i1 true

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.m
  %.pn.pn19 = phi { ptr, i32 } [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %.pn.pn20, %bb.m ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ]
  resume { ptr, i32 } %.pn.pn19

bb.o:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11parse_errorINS0_12out_of_rangeEEEbmRKSA_RKT_(ptr noundef nonnull align 8 dereferenceable(42) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.a, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.c = load i8, ptr %i.b, align 1, !tbaa !143, !range !43, !noundef !44
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 32) #29 ; 2 uses
  tail call void @_ZN13proj_nlohmann6detail12out_of_rangeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3) #29
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN13proj_nlohmann6detail12out_of_rangeE, ptr nonnull @_ZN13proj_nlohmann6detail9exceptionD2Ev) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE12handle_valueINS0_7value_tEEEPSE_OT_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 2 uses
  %3 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !tbaa !110     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  switch i8 %i.f, label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6createIS8_JRA1_KcEEEPT_DpOT0_.exit.i
    i8 8, label %bb.e
    i8 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store ptr %i.i, ptr %i.j, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.i, ptr %i.k, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !55
  %i.m = ptrtoint ptr %i.h to i64
  br label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = ptrtoint ptr %i.n to i64
  br label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit

_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6createIS8_JRA1_KcEEEPT_DpOT0_.exit.i: ; preds = %bb.b
  %i.p = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !28
  store i8 0, ptr %i.q, align 8, !tbaa !29
  %i.s = ptrtoint ptr %i.p to i64
  br label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit

bb.e:                                             ; preds = %bb.b
  %i.t = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.t, i8 0, i64 26, i1 false)
  %i.u = ptrtoint ptr %i.t to i64
  br label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit

bb.f:                                             ; preds = %bb.b
  store i8 0, ptr %i.g, align 8, !tbaa !29
  %.pre8 = load i64, ptr %i.g, align 8, !tbaa !29
  br label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit

_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6createIS8_JRA1_KcEEEPT_DpOT0_.exit.i, %bb.e, %bb.f
  %i.v = phi i64 [ %i.m, %bb.c ], [ %i.o, %bb.d ], [ %i.s, %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6createIS8_JRA1_KcEEEPT_DpOT0_.exit.i ], [ %i.u, %bb.e ], [ %.pre8, %bb.f ], [ 0, %bb.b ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !181, !nonnull !44, !align !176 ; 3 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !110   ; 2 uses
  store i8 %i.f, ptr %i.w, align 8, !tbaa !110
  store i8 %i.x, ptr %2, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.y, align 8, !tbaa !29
  store i64 %i.v, ptr %i.y, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.g, align 8, !tbaa !29
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext %i.x) #29, !inline_history !2
  %i.z = load ptr, ptr %0, align 8, !tbaa !181, !nonnull !44, !align !176
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !68 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !58
  %i.ad = icmp eq i8 %i.ac, 2
  br i1 %i.ad, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !93 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !96
  %.not.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %1, align 1, !tbaa !110    ; 2 uses
  store i8 %i.ak, ptr %i.ah, align 8, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  tail call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i8 noundef zeroext %i.ak)
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !93
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.an, ptr %i.ag, align 8, !tbaa !93
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJNS0_6detail7value_tEEEERSC_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJNS0_6detail7value_tEEEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %1)
  br label %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJNS0_6detail7value_tEEEERSC_DpOT_.exit

_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJNS0_6detail7value_tEEEERSC_DpOT_.exit: ; preds = %bb.i, %bb.j
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !168
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !68
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -16
  br label %bb.p

bb.k:                                             ; preds = %bb.g
  %i.aw = load i8, ptr %1, align 1, !tbaa !110    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  switch i8 %i.aw, label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit7 [
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6createIS8_JRA1_KcEEEPT_DpOT0_.exit.i6
    i8 8, label %bb.n
    i8 4, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.ay = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !53
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !54
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !55
  %i.bd = ptrtoint ptr %i.ay to i64
  br label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit7

bb.m:                                             ; preds = %bb.k
  %i.be = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  %i.bf = ptrtoint ptr %i.be to i64
  br label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit7

_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6createIS8_JRA1_KcEEEPT_DpOT0_.exit.i6: ; preds = %bb.k
  %i.bg = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !28
  store i8 0, ptr %i.bh, align 8, !tbaa !29
  %i.bj = ptrtoint ptr %i.bg to i64
  br label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit7

bb.n:                                             ; preds = %bb.k
  %i.bk = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.bk, i8 0, i64 26, i1 false)
  %i.bl = ptrtoint ptr %i.bk to i64
  br label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit7

bb.o:                                             ; preds = %bb.k
  store i8 0, ptr %i.ax, align 8, !tbaa !29
  %.pre = load i64, ptr %i.ax, align 8, !tbaa !29
  br label %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit7

_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit7: ; preds = %bb.k, %bb.l, %bb.m, %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6createIS8_JRA1_KcEEEPT_DpOT0_.exit.i6, %bb.n, %bb.o
  %i.bm = phi i64 [ %i.bd, %bb.l ], [ %i.bf, %bb.m ], [ %i.bj, %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6createIS8_JRA1_KcEEEPT_DpOT0_.exit.i6 ], [ %i.bl, %bb.n ], [ %.pre, %bb.o ], [ 0, %bb.k ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !169 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !110 ; 2 uses
  store i8 %i.aw, ptr %i.bo, align 1, !tbaa !110
  store i8 %i.bp, ptr %3, align 8, !tbaa !110
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i5 = load ptr, ptr %i.bq, align 8, !tbaa !29
  store i64 %i.bm, ptr %i.bq, align 8, !tbaa !29
  store ptr %.sroa.0.0.copyload.i.i5, ptr %i.ax, align 8, !tbaa !29
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i8 noundef zeroext %i.bp) #29, !inline_history !2
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !169
  br label %bb.p

bb.p:                                             ; preds = %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit7, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJNS0_6detail7value_tEEEERSC_DpOT_.exit, %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit
  %.0 = phi ptr [ %i.z, %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit ], [ %i.av, %_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12emplace_backIJNS0_6detail7value_tEEEERSC_DpOT_.exit ], [ %i.br, %_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_valueC2ENS_6detail7value_tE.exit7 ]
end_hunk_3
begin_hunk_4_@llvm.umin.i64
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress norecurse noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(none) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin nounwind }
attributes #32 = { cold noreturn nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{null}
!1 = distinct !{!1, !39}
!2 = distinct !{null}
!3 = distinct !{!3, !39}
!4 = distinct !{!4, !39}
!5 = distinct !{null}
!6 = distinct !{null, null}
!7 = distinct !{!7, !39}
!8 = distinct !{!8, !39}
!9 = distinct !{null, null, null, null}
!10 = distinct !{null, null}
!11 = distinct !{null}
!12 = distinct !{null, null, null, null, null}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"any pointer", !18, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"long", !18, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !26, i64 8, !18, i64 16}
!28 = !{!27, !26, i64 8}
!29 = !{!18, !18, i64 0}
!30 = !{!26, !26, i64 0}
!31 = !{!27, !23, i64 0}
!32 = !{!23, !23, i64 0}
!33 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!34, !33, i64 8}
!36 = !{!34, !33, i64 0}
!37 = !{!"vtable pointer", !17, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!34, !33, i64 16}
!41 = !{!"bool", !18, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!"_ZTSSt14_Function_base", !18, i64 0, !22, i64 16}
!46 = !{!45, !22, i64 16}
!47 = !{!"_ZTSSt14_Rb_tree_color", !18, i64 0}
!48 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!49 = !{!"_ZTSSt18_Rb_tree_node_base", !47, i64 0, !48, i64 8, !48, i64 16, !48, i64 24}
!50 = !{!"_ZTSSt15_Rb_tree_header", !49, i64 0, !26, i64 32}
!51 = !{!50, !47, i64 0}
!52 = !{!50, !48, i64 8}
!53 = !{!50, !48, i64 16}
!54 = !{!50, !48, i64 24}
!55 = !{!50, !26, i64 32}
!56 = !{!"_ZTSN13proj_nlohmann6detail7value_tE", !18, i64 0}
!57 = !{!"_ZTSN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEE", !56, i64 0, !18, i64 8}
!58 = !{!57, !56, i64 0}
!59 = !{!"p1 _ZTSN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEE", !22, i64 0}
!60 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13proj_nlohmann10basic_jsonISt3mapSt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEE", !48, i64 0}
!61 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEEES4_ISE_SaISE_EEEE", !59, i64 0}
!62 = !{!"_ZTSN13proj_nlohmann6detail20primitive_iterator_tE", !26, i64 0}
!63 = !{!"_ZTSN13proj_nlohmann6detail17internal_iteratorINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEE", !60, i64 0, !61, i64 8, !62, i64 16}
!64 = !{!"_ZTSN13proj_nlohmann6detail9iter_implIKNS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEE", !59, i64 0, !63, i64 8}
!65 = !{!64, !59, i64 0}
!66 = !{!62, !26, i64 0}
!67 = !{!48, !48, i64 0}
!68 = !{!59, !59, i64 0}
!69 = !{!"long long", !18, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !22, i64 0}
!72 = !{!"p1 double", !22, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!74 = !{!73, !72, i64 8}
!75 = !{!73, !72, i64 0}
!76 = !{!"double", !18, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!73, !72, i64 16}
!79 = !{!60, !48, i64 0}
!80 = !{!61, !59, i64 0}
!81 = !{!72, !72, i64 0}
!82 = !{!"_ZTSSt8functionIFbiN13proj_nlohmann6detail13parse_event_tERNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEE", !45, i64 0, !22, i64 24}
!83 = !{!82, !22, i64 24}
!84 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!85 = !{!84, !23, i64 0}
!86 = !{!84, !23, i64 16}
!87 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!88 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE", !22, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!49, !48, i64 16}
!91 = !{!49, !48, i64 24}
!92 = !{!"_ZTSNSt12_Vector_baseIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!93 = !{!92, !59, i64 8}
!94 = !{!92, !59, i64 0}
!95 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!96 = !{!92, !59, i64 16}
!97 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!98 = !{!97, !23, i64 0}
!99 = !{!97, !23, i64 16}
!100 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!101 = !{!100, !71, i64 8}
!102 = !{!100, !71, i64 16}
!103 = !{!100, !71, i64 0}
!104 = !{!"_ZTSSt9exception"}
!105 = !{!"_ZTSSt12__cow_string", !18, i64 0}
!106 = !{!"_ZTSSt13runtime_error", !104, i64 0, !105, i64 8}
!107 = !{!"_ZTSN13proj_nlohmann6detail9exceptionE", !104, i64 0, !19, i64 8, !106, i64 16}
!108 = !{!107, !19, i64 8}
!109 = !{ptr @_ZN13proj_nlohmann6detail9exceptionD2Ev}
!110 = !{!56, !56, i64 0}
!111 = !{!22, !22, i64 0}
!112 = !{!"_ZTSN13proj_nlohmann6detail10lexer_baseINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE10token_typeE", !18, i64 0}
!113 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !23, i64 0}
!114 = !{!"_ZTSN13proj_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEE", !113, i64 0, !113, i64 8}
!115 = !{!"_ZTSN13proj_nlohmann6detail10position_tE", !26, i64 0, !26, i64 8, !26, i64 16}
!116 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !84, i64 0}
!117 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !116, i64 0}
!118 = !{!"_ZTSSt6vectorIcSaIcEE", !117, i64 0}
!119 = !{!"_ZTSN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEEE", !114, i64 0, !41, i64 16, !19, i64 20, !41, i64 24, !115, i64 32, !118, i64 56, !27, i64 80, !23, i64 112, !26, i64 120, !26, i64 128, !76, i64 136, !19, i64 144}
!120 = !{!"_ZTSN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEEE", !82, i64 0, !112, i64 32, !119, i64 40, !41, i64 192}
!121 = !{!120, !41, i64 192}
!122 = !{!120, !112, i64 32}
!123 = !{i64 0, i64 8, !30, i64 8, i64 8, !30, i64 16, i64 8, !30}
!124 = !{!"any p2 pointer", !22, i64 0}
!125 = !{!"p2 _ZTSN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEE", !124, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISE_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!127 = !{!"_ZTSNSt12_Vector_baseIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISE_EE12_Vector_implE", !126, i64 0}
!128 = !{!"_ZTSSt12_Vector_baseIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISE_EE", !127, i64 0}
!129 = !{!"_ZTSSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE", !128, i64 0}
!130 = !{!"p1 long", !22, i64 0}
!131 = !{!"_ZTSSt18_Bit_iterator_base", !130, i64 0, !19, i64 8}
!132 = !{!"_ZTSSt13_Bit_iterator", !131, i64 0}
!133 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !132, i64 0, !132, i64 16, !130, i64 32}
!134 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !133, i64 0}
!135 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !134, i64 0}
!136 = !{!"_ZTSSt6vectorIbSaIbEE", !135, i64 0}
!137 = !{!"_ZTSN13proj_nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEE", !59, i64 0, !129, i64 8, !136, i64 32, !136, i64 72, !59, i64 112, !41, i64 120, !82, i64 128, !41, i64 160, !57, i64 168}
!138 = !{!137, !41, i64 120}
!139 = !{!137, !41, i64 160}
!140 = !{!"_ZTSN13proj_nlohmann6detail11parse_errorE", !107, i64 0, !26, i64 32}
!141 = !{!140, !26, i64 32}
!142 = !{!"_ZTSN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEE", !59, i64 0, !129, i64 8, !59, i64 32, !41, i64 40, !41, i64 41}
!143 = !{!142, !41, i64 41}
!144 = !{!142, !41, i64 40}
!145 = !{!126, !125, i64 0}
!146 = !{!126, !125, i64 16}
!147 = !{!119, !41, i64 16}
!148 = !{!119, !19, i64 20}
!149 = !{!119, !41, i64 24}
!150 = !{!119, !23, i64 112}
!151 = !{!119, !19, i64 144}
!152 = !{!119, !26, i64 32}
!153 = !{!119, !26, i64 40}
!154 = !{!119, !26, i64 48}
!155 = !{!84, !23, i64 8}
!156 = !{!113, !23, i64 0}
!157 = !{!19, !19, i64 0}
!158 = !{!119, !26, i64 128}
!159 = !{!119, !26, i64 120}
!160 = !{!131, !130, i64 0}
!161 = !{!133, !130, i64 32}
!162 = !{!131, !19, i64 8}
!163 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!164 = !{!119, !76, i64 136}
!165 = !{!"std::nullptr_t", !18, i64 0}
!166 = !{!165, !165, i64 0}
!167 = !{!126, !125, i64 8}
!168 = !{!125, !125, i64 0}
!169 = !{!142, !59, i64 32}
!170 = !{!"_ZTSN13proj_nlohmann6detail13parse_event_tE", !18, i64 0}
!171 = !{!170, !170, i64 0}
!172 = !{!"_ZTSN13proj_nlohmann6detail9iter_implINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEE", !59, i64 0, !63, i64 8}
!173 = !{!172, !59, i64 0}
!174 = !{!137, !59, i64 112}
!175 = !{!137, !59, i64 0}
!176 = !{i64 8}
!177 = !{!33, !33, i64 0}
!178 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13proj_nlohmann10basic_jsonISt3mapSt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEE", !22, i64 0}
!179 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE10_Auto_nodeE", !88, i64 0, !178, i64 8}
!180 = !{!179, !178, i64 8}
!181 = !{!142, !59, i64 0}
!182 = distinct !{!182, !39}
!183 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!184 = distinct !{!184, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!185 = distinct !{!185, !184, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!186 = distinct !{!186, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!187 = distinct !{!187, !186, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!188 = distinct !{!188, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!189 = distinct !{!189, !188, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!190 = distinct !{!190, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!191 = distinct !{!191, !190, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!192 = distinct !{!192, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!193 = distinct !{!193, !192, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!194 = distinct !{!194, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!195 = distinct !{!195, !194, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!196 = distinct !{null, null, null}
!197 = distinct !{null}
!198 = distinct !{!198, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv"}
!199 = distinct !{!199, !198, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv: argument 0"}
!200 = distinct !{!200, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv"}
!201 = distinct !{!201, !200, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv: argument 0"}
!202 = distinct !{!202, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv"}
!203 = distinct !{!203, !202, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!204 = distinct !{!204, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv"}
!205 = distinct !{!205, !204, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!206 = distinct !{!206, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv"}
!207 = distinct !{!207, !206, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0"}
!208 = distinct !{!208, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv"}
!209 = distinct !{!209, !208, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0"}
!210 = distinct !{!210, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv"}
!211 = distinct !{!211, !210, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!212 = distinct !{!212, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv"}
!213 = distinct !{!213, !212, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!214 = distinct !{!214, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v"}
!215 = distinct !{!215, !214, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v: argument 0"}
!216 = distinct !{!216, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v"}
!217 = distinct !{!217, !216, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v: argument 0"}
!218 = distinct !{!218, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v"}
!219 = distinct !{!219, !218, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v: argument 0"}
!220 = distinct !{!220, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v"}
!221 = distinct !{!221, !220, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v: argument 0"}
!222 = distinct !{!222, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v"}
!223 = distinct !{!223, !222, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v: argument 0"}
!224 = distinct !{!224, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv"}
!225 = distinct !{!225, !224, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv: argument 0"}
!226 = distinct !{!226, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv"}
!227 = distinct !{!227, !226, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv: argument 0"}
!228 = distinct !{!228, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv"}
!229 = distinct !{!229, !228, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!230 = distinct !{!230, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv"}
!231 = distinct !{!231, !230, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!232 = distinct !{!232, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv"}
!233 = distinct !{!233, !232, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0"}
!234 = distinct !{!234, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv"}
!235 = distinct !{!235, !234, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0"}
!236 = distinct !{!236, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv"}
!237 = distinct !{!237, !236, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!238 = distinct !{!238, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv"}
!239 = distinct !{!239, !238, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!240 = distinct !{!240, !39}
!241 = distinct !{null, null}
!242 = !{!"_ZTSSt13_Ios_Fmtflags", !18, i64 0}
!243 = !{!"_ZTSSt12_Ios_Iostate", !18, i64 0}
!244 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!245 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !26, i64 8}
!246 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!247 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!248 = !{!"_ZTSSt6locale", !247, i64 0}
!249 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !242, i64 24, !243, i64 28, !243, i64 32, !244, i64 40, !245, i64 48, !18, i64 64, !19, i64 192, !246, i64 200, !248, i64 208}
!250 = !{!"p1 _ZTSSo", !22, i64 0}
!251 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 0}
!252 = !{!"p1 _ZTSSt5ctypeIcE", !22, i64 0}
!253 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!254 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!255 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !249, i64 0, !250, i64 216, !18, i64 224, !41, i64 225, !251, i64 232, !252, i64 240, !253, i64 248, !254, i64 256}
!256 = !{!255, !252, i64 240}
!257 = !{!"_ZTSNSt6locale5facetE", !19, i64 8}
!258 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!259 = !{!"p1 int", !22, i64 0}
!260 = !{!"p1 short", !22, i64 0}
!261 = !{!"_ZTSSt5ctypeIcE", !257, i64 0, !258, i64 16, !41, i64 24, !259, i64 32, !259, i64 40, !260, i64 48, !18, i64 56, !18, i64 57, !18, i64 313, !18, i64 569}
!262 = !{!261, !18, i64 56}
!263 = !{!185}
!264 = !{!187, !185}
!265 = !{!189}
!266 = !{!191}
!267 = !{!193, !191}
!268 = !{!195}
!269 = !{!"p1 _ZTSN5osgeo4proj4FileE", !22, i64 0}
!270 = !{!269, !269, i64 0}
!271 = !{!199}
!272 = !{!201}
!273 = !{!201, !199}
!274 = !{!205, !203}
!275 = !{!209, !207}
!276 = !{!213, !211}
!277 = !{!207}
!278 = !{!209}
!279 = !{!215}
!280 = !{!217}
!281 = !{!219}
!282 = !{!221}
!283 = !{!223}
!284 = !{!225}
!285 = !{!227}
!286 = !{!227, !225}
!287 = !{!231, !229}
!288 = !{!235, !233}
!289 = !{!239, !237}
!290 = !{!233}
!291 = !{!235}
!292 = !{!71, !71, i64 0}
!293 = distinct !{!293, i1 true, !"_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6parserINS_6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcS8_EEEEEENSE_6parserISC_T_EESN_St8functionIFbiNSE_13parse_event_tERSC_EEbb"}
!294 = distinct !{!294, !293, !"_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6parserINS_6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcS8_EEEEEENSE_6parserISC_T_EESN_St8functionIFbiNSE_13parse_event_tERSC_EEbb: argument 0"}
!295 = !{!294}
!296 = !{i64 0, i64 16, !29}
!297 = distinct !{null, null}
!298 = distinct !{null, null, null, null, null, null}
!299 = distinct !{!299, !39}
!300 = distinct !{!300, !39}
!301 = distinct !{null, null}
!302 = distinct !{null, null, null}
!303 = distinct !{null, null, null, null, null, null, null, null}
!304 = distinct !{!304, !39}
!305 = distinct !{null, null, null, null, null, null, null}
!306 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!307 = !{!97, !23, i64 8}
!308 = distinct !{!308, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv"}
!309 = distinct !{!309, !308, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv: argument 0"}
!310 = distinct !{!310, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv"}
!311 = distinct !{!311, !310, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv: argument 0"}
!312 = distinct !{!312, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv"}
!313 = distinct !{!313, !312, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!314 = distinct !{!314, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv"}
!315 = distinct !{!315, !314, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!316 = distinct !{!316, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv"}
!317 = distinct !{!317, !316, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0"}
!318 = distinct !{!318, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv"}
!319 = distinct !{!319, !318, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0"}
!320 = distinct !{!320, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv"}
!321 = distinct !{!321, !320, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!322 = distinct !{!322, i1 true, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv"}
!323 = distinct !{!323, !322, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!324 = !{!309}
!325 = !{!311}
!326 = !{!311, !309}
!327 = !{!315, !313}
!328 = !{!319, !317}
!329 = !{!323, !321}
!330 = !{!317}
!331 = !{!319}
!332 = distinct !{!332, !39}
!333 = !{ptr @_ZN12_GLOBAL__N_116ParsingExceptionD2Ev}
!334 = distinct !{!334, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!335 = distinct !{!335, !334, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!336 = !{!335}
!337 = distinct !{!337, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!338 = distinct !{!338, !337, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!339 = distinct !{!339, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!340 = distinct !{!340, !339, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!341 = distinct !{!341, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!342 = distinct !{!342, !341, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!343 = distinct !{!343, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!344 = distinct !{!344, !343, !"_ZNSt7__cxx119to_stringEi: argument 0"}
end_hunk_4
