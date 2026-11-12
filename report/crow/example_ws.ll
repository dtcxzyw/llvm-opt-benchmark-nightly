Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4crow13WebSocketRuleINS_4CrowIJEEEE14handle_upgradeERKNS_7requestERNS_8responseEONS_17UnixSocketAdaptorE:bb.a
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_ZN4crow17UnixSocketAdaptorD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !351
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !353
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(56) %i.dt)
          to label %_ZN4crow17UnixSocketAdaptorD2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #42
  unreachable

bb.ar:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit41
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #42
  unreachable

_ZN4crow17UnixSocketAdaptorD2Ev.exit:             ; preds = %bb.ao, %bb.ap
  ret void

bb.as:                                            ; preds = %_ZNSt8functionIFvRKN4crow7requestERSt8optionalINS0_8responseEEPPvEEC2ERKSB_.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %i.cg, align 8, !tbaa !244 ; 2 uses
  %.not.i42 = icmp eq ptr %i.ec, null
  br i1 %.not.i42, label %.body32, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %.body32 unwind label %bb.au   ; 0 uses

bb.au:                                            ; preds = %bb.at
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #42
  unreachable

.body32:                                          ; preds = %bb.at, %bb.as, %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.aa ], [ %i.eb, %bb.at ], [ %i.cm, %bb.ab ], [ %i.eb, %bb.as ] ; 2 uses
  %i.eg = load ptr, ptr %i.bv, align 8, !tbaa !244 ; 2 uses
  %.not.i44 = icmp eq ptr %i.eg, null
  br i1 %.not.i44, label %.body27, label %bb.av

bb.av:                                            ; preds = %.body32
  %i.eh = invoke noundef zeroext i1 %i.eg(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %.body27 unwind label %bb.aw   ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #42
  unreachable

.body27:                                          ; preds = %bb.av, %.body32, %bb.w, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.v ], [ %.pn, %bb.av ], [ %i.cb, %bb.w ], [ %.pn, %.body32 ] ; 2 uses
  %i.ek = load ptr, ptr %i.bk, align 8, !tbaa !244 ; 2 uses
  %.not.i46 = icmp eq ptr %i.ek, null
  br i1 %.not.i46, label %.body22, label %bb.ax

bb.ax:                                            ; preds = %.body27
  %i.el = invoke noundef zeroext i1 %i.ek(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %.body22 unwind label %bb.ay   ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #42
  unreachable

.body22:                                          ; preds = %bb.ax, %.body27, %bb.r, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.q ], [ %.pn.pn, %bb.ax ], [ %i.bq, %bb.r ], [ %.pn.pn, %.body27 ] ; 2 uses
  %i.eo = load ptr, ptr %i.az, align 8, !tbaa !244 ; 2 uses
  %.not.i48 = icmp eq ptr %i.eo, null
  br i1 %.not.i48, label %.body17, label %bb.az

bb.az:                                            ; preds = %.body22
  %i.ep = invoke noundef zeroext i1 %i.eo(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body17 unwind label %bb.ba   ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #42
  unreachable

.body17:                                          ; preds = %bb.az, %.body22, %bb.m, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.l ], [ %.pn.pn.pn, %bb.az ], [ %i.bf, %bb.m ], [ %.pn.pn.pn, %.body22 ] ; 2 uses
  %i.es = load ptr, ptr %i.ao, align 8, !tbaa !244 ; 2 uses
  %.not.i50 = icmp eq ptr %i.es, null
  br i1 %.not.i50, label %.body, label %bb.bb

bb.bb:                                            ; preds = %.body17
  %i.et = invoke noundef zeroext i1 %i.es(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body unwind label %bb.bc     ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #42
  unreachable

.body:                                            ; preds = %bb.bb, %.body17, %bb.h, %bb.g
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.g ], [ %.pn.pn.pn.pn, %bb.bb ], [ %i.au, %bb.h ], [ %.pn.pn.pn.pn, %.body17 ]
  call void @_ZN4crow17UnixSocketAdaptorD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #40
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !569    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !570  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !164 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !165
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !569
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !571
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #41
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !164 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !165
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !24

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE6createERKNS_7requestES2_PS4_mRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EESt8functionIFvRNS0_10connectionEEESL_IFvSN_RKSG_bEESL_IFvSN_SR_tEESL_IFvSN_SR_EESL_IFvS8_RSt8optionalINS_8responseEEPPvEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr nofreeobj noundef align 8 dereferenceable(88) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nofreeobj noundef align 8 dereferenceable(32) %5, ptr nofreeobj noundef align 8 dereferenceable(32) %6, ptr nofreeobj noundef align 8 dereferenceable(32) %7, ptr nofreeobj noundef align 8 dereferenceable(32) %8, ptr nofreeobj noundef align 8 dereferenceable(32) %9, i1 noundef zeroext %10) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 12 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::error_code", align 8  ; 5 uses
  %12 = alloca %"class.__gnu_cxx::__normal_iterator.264", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %13 = alloca %"class.std::error_code", align 8  ; 5 uses
  %14 = alloca %"class.std::shared_ptr.232", align 8 ; 16 uses
  %15 = alloca %"class.std::function.83", align 8 ; 11 uses
  %16 = alloca %"class.std::function.86", align 8 ; 11 uses
  %17 = alloca %"class.std::function.88", align 8 ; 11 uses
  %18 = alloca %"class.std::function.90", align 8 ; 11 uses
  %19 = alloca %"class.std::function.93", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.std::vector.95", align 8   ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %25 = alloca %"class.std::optional", align 8    ; 11 uses
  %26 = alloca %"class.std::vector.243", align 8  ; 14 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::error_code", align 8  ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %32 = alloca %"class.sha1::SHA1", align 8       ; 11 uses
  %i.g = alloca [20 x i8], align 16               ; 21 uses
  %33 = alloca %"class.std::shared_ptr", align 8  ; 4 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  %i.h = tail call noalias noundef nonnull dereferenceable(4592) ptr @_Znwm(i64 noundef 4592) #43 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !576
  store ptr %i.k, ptr %i.i, align 8, !tbaa !576
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !244  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRN4crow9websocket10connectionEEEC2EOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !178
  store ptr %i.m, ptr %i.n, align 8, !tbaa !244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN4crow9websocket10connectionEEEC2EOS5_.exit

_ZNSt8functionIFvRN4crow9websocket10connectionEEEC2EOS5_.exit: ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !577
  store ptr %i.q, ptr %i.o, align 8, !tbaa !577
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !244  ; 2 uses
  %.not.i.i.not.i64 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.not.i64, label %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEC2EOSD_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionEEEC2EOS5_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !178
  store ptr %i.s, ptr %i.t, align 8, !tbaa !244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEC2EOSD_.exit

_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEC2EOSD_.exit: ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionEEEC2EOS5_.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !578
  store ptr %i.w, ptr %i.u, align 8, !tbaa !578
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !244  ; 2 uses
  %.not.i.i.not.i65 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i65, label %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEEC2EOSD_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEC2EOSD_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false), !tbaa.struct !178
  store ptr %i.y, ptr %i.z, align 8, !tbaa !244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEEC2EOSD_.exit

_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEEC2EOSD_.exit: ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEC2EOSD_.exit, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !579
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !579
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.not.i66 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i66, label %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSD_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEEC2EOSD_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 16, i1 false), !tbaa.struct !178
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSD_.exit

_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSD_.exit: ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEEC2EOSD_.exit, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 0, i64 24, i1 false)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !580
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !580
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.not.i67 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.not.i67, label %_ZNSt8functionIFvRKN4crow7requestERSt8optionalINS0_8responseEEPPvEEC2EOSB_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSD_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 16, i1 false), !tbaa.struct !178
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN4crow7requestERSt8optionalINS0_8responseEEPPvEEC2EOSB_.exit

_ZNSt8functionIFvRKN4crow7requestERSt8optionalINS0_8responseEEPPvEEC2EOSB_.exit: ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSD_.exit, %bb.f
  invoke void @_ZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEEC2EOS2_PS4_mSt8functionIFvRNS0_10connectionEEES8_IFvSA_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEES8_IFvSA_SK_tEES8_IFvSA_SK_EES8_IFvRKNS_7requestERSt8optionalINS_8responseEEPPvEE(ptr noundef nonnull align 8 dereferenceable(4592) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2, i64 noundef %3, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %15, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %16, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %17, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %18, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %_ZNSt8functionIFvRKN4crow7requestERSt8optionalINS0_8responseEEPPvEEC2EOSB_.exit
  invoke void @_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EEC2IS6_vEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull %i.h)
          to label %_ZNSt10shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEEC2IS6_vEEPT_.exit unwind label %bb.v

_ZNSt10shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEEC2IS6_vEEPT_.exit: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !244 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEEC2IS6_vEEPT_.exit
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt10shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEEC2IS6_vEEPT_.exit, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !244 ; 2 uses
  %.not.i68 = icmp eq ptr %i.as, null
  br i1 %.not.i68, label %_ZNSt14_Function_baseD2Ev.exit69, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit69 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit69:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !244 ; 2 uses
  %.not.i70 = icmp eq ptr %i.ax, null
  br i1 %.not.i70, label %_ZNSt14_Function_baseD2Ev.exit71, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit69
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit71 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit71:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit69, %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !244 ; 2 uses
  %.not.i72 = icmp eq ptr %i.bc, null
  br i1 %.not.i72, label %_ZNSt14_Function_baseD2Ev.exit73, label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit71
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit73 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit73:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit71, %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !244 ; 2 uses
  %.not.i74 = icmp eq ptr %i.bh, null
  br i1 %.not.i74, label %_ZNSt14_Function_baseD2Ev.exit75, label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit73
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit75 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit75:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit73, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #40
  %i.bl = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.bl, ptr %20, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bl, ptr noundef nonnull align 1 dereferenceable(7) @.str.260, i64 7, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 7, ptr %i.bm, align 8, !tbaa !166
  %i.bn = getelementptr inbounds nuw i8, ptr %20, i64 23
  store i8 0, ptr %i.bn, align 1, !tbaa !165
  %i.bo = load atomic i8, ptr @_ZGVZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11 acquire, align 8
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.r, label %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i, !prof !167

bb.r:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit75
end_hunk_0
begin_hunk_1_@_ZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE6createERKNS_7requestES2_PS4_mRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EESt8functionIFvRNS0_10connectionEEESL_IFvSN_RKSG_bEESL_IFvSN_SR_tEESL_IFvSN_SR_EESL_IFvS8_RSt8optionalINS_8responseEEPPvEEb:bb.a
bb.br:                                            ; preds = %bb.bq
  call void @_ZNSt22_Optional_payload_baseIN4crow8responseEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(360) %25) #40
  br label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread

_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread: ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  br label %bb.co

_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit: ; preds = %bb.bb
  %i.ko = load ptr, ptr %14, align 8, !tbaa !583
  %i.kp = load ptr, ptr %i.f, align 8, !tbaa !179
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !607
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  br label %.noexc.i159

bb.bs:                                            ; preds = %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit156, %bb.bk
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit156 ], [ %i.jv, %bb.bk ]
  %i.kr = load i8, ptr %i.hh, align 8, !tbaa !586, !range !274, !noundef !275
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.bt, label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit157

bb.bt:                                            ; preds = %bb.bs
  call void @_ZNSt22_Optional_payload_baseIN4crow8responseEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(360) %25) #40
  br label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit157

_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit157: ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  br label %bb.df

.noexc.i159:                                      ; preds = %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit126
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #40
  %i.kt = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.kt, ptr %31, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 17, ptr %i.b, align 8, !tbaa !162
  %i.ku = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc160 unwind label %bb.cw ; 2 uses

.noexc160:                                        ; preds = %.noexc.i159
  store ptr %i.ku, ptr %31, align 8, !tbaa !164
  %i.kv = load i64, ptr %i.b, align 8, !tbaa !162 ; 3 uses
  store i64 %i.kv, ptr %i.kt, align 8, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ku, ptr noundef nonnull align 1 dereferenceable(17) @.str.264, i64 17, i1 false)
  %i.kw = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !166
  %i.kx = load ptr, ptr %31, align 8, !tbaa !164
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kv
  store i8 0, ptr %i.ky, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.kz = load atomic i8, ptr @_ZGVZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11 acquire, align 8
  %i.la = icmp eq i8 %i.kz, 0
  br i1 %i.la, label %bb.bu, label %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162, !prof !167

bb.bu:                                            ; preds = %.noexc160
  %i.lb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11) #40
  %.not.i.i165 = icmp eq i32 %i.lb, 0
  br i1 %.not.i.i165, label %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, i64 16), ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, align 8, !tbaa !160
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, i64 8), align 8, !tbaa !166
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, i64 16), align 8, !tbaa !165
  %i.lc = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11) #40
  br label %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162

_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162: ; preds = %bb.bv, %bb.bu, %.noexc160
  %i.ld = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.bw unwind label %bb.cx     ; 2 uses

bb.bw:                                            ; preds = %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162
  %.not6.i.i163 = icmp eq ptr %i.ld, null
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %.0.i.i164 = select i1 %.not6.i.i163, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, ptr %i.le ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  %i.lf = load ptr, ptr %.0.i.i164, align 8, !tbaa !164, !noalias !1712
  %i.lg = getelementptr inbounds nuw i8, ptr %.0.i.i164, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !166, !noalias !1712 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 8 uses
  store ptr %i.li, ptr %30, align 8, !tbaa !160, !alias.scope !1713
  %i.lj = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  store i64 0, ptr %i.lj, align 8, !tbaa !166, !alias.scope !1713
  store i8 0, ptr %i.li, align 8, !tbaa !165, !alias.scope !1713
  %i.lk = add i64 %i.lh, 36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef %i.lk)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ll = load i64, ptr %i.lj, align 8, !tbaa !166, !alias.scope !1713
  %i.lm = sub i64 4611686018427387903, %i.ll
  %i.ln = icmp ult i64 %i.lm, %i.lh
  br i1 %i.ln, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.bx
  %i.lo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.lf, i64 noundef %i.lh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.by ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.lp = load i64, ptr %i.lj, align 8, !tbaa !166, !alias.scope !1713
  %i.lq = add i64 %i.lp, -4611686018427387868
  %i.lr = icmp ult i64 %i.lq, 36
  br i1 %i.lr, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.237) #39
          to label %.cont.i.i unwind label %bb.by

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ls = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.265, i64 noundef 36)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.by ; 0 uses

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.bw
  %i.lt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lu = load ptr, ptr %30, align 8, !tbaa !164, !alias.scope !1713 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.li
  br i1 %i.lv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.by
  %i.lw = load i64, ptr %i.li, align 8, !tbaa !165, !alias.scope !1713
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #41
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ly = load ptr, ptr %31, align 8, !tbaa !164  ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.kt
  br i1 %i.lz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ma = load i64, ptr %i.kt, align 8, !tbaa !165
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #40
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4sha14SHA1E, i64 16), ptr %32, align 8, !tbaa !257
  %i.mc = getelementptr inbounds nuw i8, ptr %32, i64 8
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %i.mc, align 8, !tbaa !276
  %i.md = getelementptr inbounds nuw i8, ptr %32, i64 24
  store i32 -1009589776, ptr %i.md, align 8, !tbaa !276
  %i.me = getelementptr inbounds nuw i8, ptr %32, i64 96 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.me, i8 0, i64 16, i1 false)
  %i.mf = load ptr, ptr %30, align 8, !tbaa !164  ; 2 uses
  %i.mg = load i64, ptr %i.lj, align 8, !tbaa !166 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mg
  %.not7.i.i = icmp samesign eq i64 %i.mg, 0
  br i1 %.not7.i.i, label %_ZN4sha14SHA112processBytesEPKvm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169
  %i.mi = getelementptr inbounds nuw i8, ptr %32, i64 28
  %i.mj = getelementptr inbounds nuw i8, ptr %32, i64 104 ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN4sha14SHA111processByteEh.exit.i.i, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.mf, %.lr.ph.i.i ], [ %i.ms, %_ZN4sha14SHA111processByteEh.exit.i.i ] ; 2 uses
  %i.mk = load i8, ptr %.08.i.i, align 1, !tbaa !165
  %i.ml = load i64, ptr %i.me, align 8, !tbaa !609 ; 2 uses
  %i.mm = add nuw nsw i64 %i.ml, 1
  store i64 %i.mm, ptr %i.me, align 8, !tbaa !609
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ml
  store i8 %i.mk, ptr %i.mn, align 1, !tbaa !165
  %i.mo = load i64, ptr %i.mj, align 8, !tbaa !610
  %i.mp = add i64 %i.mo, 1
  store i64 %i.mp, ptr %i.mj, align 8, !tbaa !610
  %i.mq = load i64, ptr %i.me, align 8, !tbaa !609
  %i.mr = icmp eq i64 %i.mq, 64
  br i1 %i.mr, label %bb.ca, label %_ZN4sha14SHA111processByteEh.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  store i64 0, ptr %i.me, align 8, !tbaa !609
  invoke void @_ZN4sha14SHA112processBlockEv(ptr noundef nonnull align 8 dereferenceable(112) %32)
          to label %_ZN4sha14SHA111processByteEh.exit.i.i unwind label %bb.cy

_ZN4sha14SHA111processByteEh.exit.i.i:            ; preds = %bb.ca, %bb.bz
  %i.ms = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1 ; 2 uses
  %.not.i.i171 = icmp eq ptr %i.ms, %i.mh
  br i1 %.not.i.i171, label %_ZN4sha14SHA112processBytesEPKvm.exit, label %bb.bz, !llvm.loop !28

_ZN4sha14SHA112processBytesEPKvm.exit:            ; preds = %_ZN4sha14SHA111processByteEh.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.mt = invoke noundef ptr @_ZN4sha14SHA19getDigestEPj(ptr noundef nonnull align 8 dereferenceable(112) %32, ptr noundef nonnull %i.a)
          to label %bb.cb unwind label %bb.cz     ; 0 uses

bb.cb:                                            ; preds = %_ZN4sha14SHA112processBytesEPKvm.exit
  %i.mu = load i32, ptr %i.a, align 16, !tbaa !276
  %i.mv = call i32 @llvm.bswap.i32(i32 %i.mu)
  store i32 %i.mv, ptr %i.g, align 16, !tbaa !165
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %35 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %36 = load i8, ptr %35, align 1, !tbaa !276
  %37 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i8 %36, ptr %37, align 4, !tbaa !165
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !276 ; 3 uses
  %38 = lshr i32 %i.mx, 16
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  store i8 %39, ptr %40, align 1, !tbaa !165
  %41 = lshr i32 %i.mx, 8
  %42 = trunc i32 %41 to i8
  %i.my = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  store i8 %42, ptr %i.my, align 2, !tbaa !165
  %43 = trunc i32 %i.mx to i8
  %44 = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  store i8 %43, ptr %44, align 1, !tbaa !165
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %45 = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %46 = load i8, ptr %45, align 1, !tbaa !276
  %47 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %46, ptr %47, align 8, !tbaa !165
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !276 ; 3 uses
  %48 = lshr i32 %i.na, 16
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  store i8 %49, ptr %50, align 1, !tbaa !165
  %51 = lshr i32 %i.na, 8
  %52 = trunc i32 %51 to i8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  store i8 %52, ptr %i.nb, align 2, !tbaa !165
  %53 = trunc i32 %i.na to i8
  %54 = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  store i8 %53, ptr %54, align 1, !tbaa !165
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %55 = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %56 = load i8, ptr %55, align 1, !tbaa !276
  %57 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i8 %56, ptr %57, align 4, !tbaa !165
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !276 ; 3 uses
  %58 = lshr i32 %i.nd, 16
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  store i8 %59, ptr %60, align 1, !tbaa !165
  %61 = lshr i32 %i.nd, 8
  %62 = trunc i32 %61 to i8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  store i8 %62, ptr %i.ne, align 2, !tbaa !165
  %63 = trunc i32 %i.nd to i8
  %64 = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  store i8 %63, ptr %64, align 1, !tbaa !165
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %65 = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %66 = load i8, ptr %65, align 1, !tbaa !276
  %67 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 %66, ptr %67, align 16, !tbaa !165
  %i.ng = load i32, ptr %i.nf, align 16, !tbaa !276 ; 3 uses
  %68 = lshr i32 %i.ng, 16
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  store i8 %69, ptr %70, align 1, !tbaa !165
  %71 = lshr i32 %i.ng, 8
  %72 = trunc i32 %71 to i8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  store i8 %72, ptr %i.nh, align 2, !tbaa !165
  %73 = trunc i32 %i.ng to i8
  %74 = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  store i8 %73, ptr %74, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ni = load ptr, ptr %14, align 8, !tbaa !583  ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 120
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !623
  store ptr %i.ni, ptr %33, align 8, !tbaa !626
  %i.nl = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !312 ; 3 uses
  store ptr %i.nn, ptr %i.nl, align 8, !tbaa !312
  %.not.i.i.i174 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i174, label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8 ; 3 uses
  %i.np = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i = icmp eq i8 %i.np, 0
  br i1 %.not.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nq = load i32, ptr %i.no, align 4, !tbaa !276
  %i.nr = add nsw i32 %i.nq, 1
  store i32 %i.nr, ptr %i.no, align 4, !tbaa !276
  br label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit

bb.ce:                                            ; preds = %bb.cc
  %i.ns = atomicrmw volatile add ptr %i.no, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit: ; preds = %bb.cb, %bb.cd, %bb.ce
  invoke void @_ZN4crow4CrowIJEE13add_websocketESt10shared_ptrINS_9websocket10connectionEE(ptr noundef nonnull align 8 dereferenceable(4016) %i.nk, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.cf unwind label %bb.da

bb.cf:                                            ; preds = %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit
  %i.nt = load ptr, ptr %i.nl, align 8, !tbaa !312 ; 8 uses
  %.not.i.i175 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i175, label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 4 uses
  %i.nv = load atomic i64, ptr %i.nu acquire, align 8 ; 2 uses
  %i.nw = icmp eq i64 %i.nv, 4294967297
  %i.nx = trunc i64 %i.nv to i32                  ; 2 uses
  br i1 %i.nw, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.nu, align 8, !tbaa !314
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 12
  store i32 0, ptr %i.ny, align 4, !tbaa !315
  %i.nz = load ptr, ptr %i.nt, align 8, !tbaa !257
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dereferenceable(16) %i.nt) #40, !inline_history !29
  %i.oc = load ptr, ptr %i.nt, align 8, !tbaa !257
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(16) %i.nt) #40, !inline_history !29
  br label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ci:                                            ; preds = %bb.cg
  %i.of = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i176 = icmp eq i8 %i.of, 0
  br i1 %.not.i.i.i176, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.og = add nsw i32 %i.nx, -1
  store i32 %i.og, ptr %i.nu, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.oh = atomicrmw volatile add ptr %i.nu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i = phi i32 [ %i.nx, %bb.cj ], [ %i.oh, %bb.ck ]
  %i.oi = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.oi, label %bb.cl, label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nt) #40
  br label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cf, %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cl
  %i.oj = load ptr, ptr %14, align 8, !tbaa !583
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #40
  invoke fastcc void @_ZN4crow7utilityL12base64encodeB5cxx11EPKhmPKc(ptr dead_on_unwind noalias writable align 8 %34, ptr noundef %i.g)
          to label %bb.cm unwind label %bb.db

bb.cm:                                            ; preds = %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE5startEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(4592) %i.oj, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.cn unwind label %bb.dc

bb.cn:                                            ; preds = %bb.cm
  %i.ok = load ptr, ptr %34, align 8, !tbaa !164  ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.om = icmp eq ptr %i.ok, %i.ol
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.cn
  %i.on = load i64, ptr %i.ol, align 8, !tbaa !165
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.oo) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #40
  %i.op = load ptr, ptr %30, align 8, !tbaa !164  ; 2 uses
  %i.oq = icmp eq ptr %i.op, %i.li
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.or = load i64, ptr %i.li, align 8, !tbaa !165
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.os) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #40
  br label %bb.co

bb.co:                                            ; preds = %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  %i.ot = load ptr, ptr %21, align 8, !tbaa !164  ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.el
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.co
  %i.ov = load i64, ptr %i.el, align 8, !tbaa !165
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ow) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN4crow13SocketAdaptor5closeEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %i.ox = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !312 ; 8 uses
  %.not.i.i186 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i186, label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8 ; 4 uses
  %i.pa = load atomic i64, ptr %i.oz acquire, align 8 ; 2 uses
  %i.pb = icmp eq i64 %i.pa, 4294967297
  %i.pc = trunc i64 %i.pa to i32                  ; 2 uses
  br i1 %i.pb, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.oz, align 8, !tbaa !314
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oy, i64 12
  store i32 0, ptr %i.pd, align 4, !tbaa !315
  %i.pe = load ptr, ptr %i.oy, align 8, !tbaa !257
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pg = load ptr, ptr %i.pf, align 8
  call void %i.pg(ptr noundef nonnull align 8 dereferenceable(16) %i.oy) #40, !inline_history !30
  %i.ph = load ptr, ptr %i.oy, align 8, !tbaa !257
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pj = load ptr, ptr %i.pi, align 8
  call void %i.pj(ptr noundef nonnull align 8 dereferenceable(16) %i.oy) #40, !inline_history !30
  br label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cs:                                            ; preds = %bb.cq
  %i.pk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i187 = icmp eq i8 %i.pk, 0
  br i1 %.not.i.i.i187, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pl = add nsw i32 %i.pc, -1
  store i32 %i.pl, ptr %i.oz, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188

bb.cu:                                            ; preds = %bb.cs
  %i.pm = atomicrmw volatile add ptr %i.oz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i189 = phi i32 [ %i.pc, %bb.ct ], [ %i.pm, %bb.cu ]
  %i.pn = icmp eq i32 %.0.i.i.i.i189, 1
  br i1 %i.pn, label %bb.cv, label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oy) #40
  br label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cp, %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  ret void

bb.cw:                                            ; preds = %.noexc.i159
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

bb.cx:                                            ; preds = %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_1
begin_hunk_2_@_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSE_13SocketAdaptorENSE_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESL_mEESaIvEE3ptr5resetEv:bb.a
  %.not3 = icmp eq ptr %i.y, null
  br i1 %.not3, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !179
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !179
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.lcssa.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !165
  store i8 %i.ah, ptr %i.u, align 1, !tbaa !165
  store ptr %i.u, ptr %i.af, align 8, !tbaa !179
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_13SocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.u) #40
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_13SocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit

_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_13SocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit: ; preds = %bb.k, %.thread.i.i
  store ptr null, ptr %i.t, align 8, !tbaa !800
  br label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_13SocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio6detail19initiate_async_readINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEclIZN4crow9websocket10ConnectionINS9_13SocketAdaptorENS9_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_NS_14mutable_bufferENS0_14transfer_all_tEEEvOT_RKT0_OT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.asio::mutable_buffer", align 8 ; 5 uses
  %5 = alloca %"class.asio::detail::read_op.364", align 8 ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !802, !nonnull !275, !align !411 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr %i.a, ptr %5, align 8, !tbaa !681
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !605
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !763
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !179
  store ptr null, ptr %i.f, align 8, !tbaa !312
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !179
  store ptr null, ptr %1, align 8, !tbaa !583
  store i32 1, ptr %i.d, align 8, !tbaa !805
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !777
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !795
  %spec.select.i1.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 65536)
  store ptr %i.j, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %spec.select.i1.i.i, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES3_PKS3_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSD_13SocketAdaptorENSD_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES8_EEvRNS1_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit unwind label %bb.b, !inline_history !2055

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #40, !inline_history !2056
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  resume { ptr, i32 } %i.p

_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !312  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.s, align 8, !tbaa !314
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !315
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !257
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #40, !inline_history !2057
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !257
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #40, !inline_history !2057
  br label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.h, label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit, !prof !316

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #40
  br label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit

_ZN4asio6detail7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit: ; preds = %_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_13SocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !314
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !315
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !63
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !63
  br label %_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit, !prof !316

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40
  br label %_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit

_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE7do_readEvENKUlRKSt10error_codemE1_clES8_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::error_code", align 8   ; 5 uses
  %4 = alloca %"class.std::error_code", align 8   ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !583    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4401
  store i8 0, ptr %i.b, align 1, !tbaa !632
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4352 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call i64 @llvm.bswap.i64(i64 %i.d)
  store i64 %i.e, ptr %i.c, align 8, !tbaa !629
  %i.f = load i32, ptr %1, align 8, !tbaa !285
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4344
  store i32 3, ptr %i.g, align 8, !tbaa !627
  tail call void @_ZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE7do_readEv(ptr noundef nonnull align 8 dereferenceable(4592) %i.a)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  store i8 1, ptr %i.h, align 8, !tbaa !631
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store i32 0, ptr %4, align 8, !tbaa !285
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #44 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !286
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !485
  %i.m = call noundef i32 @_ZN4asio6detail10socket_ops8shutdownEiiRSt10error_code(i32 noundef %i.l, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.n = load ptr, ptr %0, align 8, !tbaa !583    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store i32 0, ptr %3, align 8, !tbaa !285
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.j, ptr %i.p, align 8, !tbaa !286
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !505
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.t = call { i32, ptr } @_ZN4asio6detail28reactive_socket_service_base5closeERNS1_24base_implementation_typeERSt10error_code(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.u = load ptr, ptr %0, align 8, !tbaa !583    ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4528
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4544 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !244
  %.not.i.i.not = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !286, !noalias !2060 ; 2 uses
  %i.aa = load i32, ptr %1, align 8, !tbaa !285, !noalias !2060
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !257, !noalias !2060
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !2060
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.aa), !inline_history !1
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !244
  %.not.i.i4 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt25__throw_bad_function_callv() #39
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 4552
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !579
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit unwind label %bb.g, !inline_history !64

_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit: ; preds = %bb.f
  %i.ah = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !165
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %.pre = load ptr, ptr %0, align 8, !tbaa !583
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.g
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !165
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  resume { ptr, i32 } %i.am

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %i.as = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %bb.c ]
  call void @_ZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE13check_destroyENS0_15CloseStatusCodeE(ptr noundef nonnull align 8 dereferenceable(4592) %i.as, i16 noundef zeroext 1006)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES3_PKS3_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSD_13SocketAdaptorENSD_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES8_EEvRNS1_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.asio::detail::reactive_socket_recv_op<asio::mutable_buffer, asio::detail::read_op<asio::basic_stream_socket<asio::ip::tcp>, asio::mutable_buffer, const asio::mutable_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/crow/Crow/include/crow/websocket.h:478:27)>, asio::any_io_executor>::ptr", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !805
  %i.c = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr %4, ptr %6, align 8, !tbaa !809
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !448  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !449
  br label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit

_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.j = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_11default_tagEEEPvT_PS1_mm(ptr noundef %i.i, i64 noundef 208, i64 noundef 8) ; 4 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !810
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !811
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %1, align 8, !tbaa !485
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !488
  invoke void @_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_EC2ESL_ihRS9_iRSN_RKS7_(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i32 noundef %i.m, i8 noundef zeroext %i.o, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit
  store ptr %i.j, ptr %i.k, align 8, !tbaa !811
  %i.p = and i32 %3, 1                            ; 2 uses
  %i.q = shl nuw nsw i32 %i.p, 1
  %i.r = icmp eq i32 %i.p, 0
  %i.s = load i8, ptr %i.n, align 4, !tbaa !488
  %i.t = and i8 %i.s, 16
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !777
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi i1 [ false, %bb.c ], [ %i.w, %bb.d ]
  invoke void @_ZN4asio6detail28reactive_socket_service_base8start_opINS0_23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES4_PKS4_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSE_13SocketAdaptorENSE_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES9_EEEEvRNS1_24base_implementation_typeEiPT_bbbPKvPNSt9enable_ifIXsr7is_sameINS_29associated_immediate_executorINST_12handler_typeENST_16io_executor_typeEE51asio_associated_immediate_executor_is_unspecialisedEvEE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.q, ptr noundef nonnull %i.j, i1 noundef zeroext %i.c, i1 noundef zeroext %i.r, i1 noundef zeroext %i.x, ptr noundef nonnull %5, ptr noundef null)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  invoke void @_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #42
  unreachable

_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret void

bb.h:                                             ; preds = %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit23 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #42
  unreachable

_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_13SocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit23: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %i.aa
}

end_hunk_2
begin_hunk_3_@_ZN4asio6detail17executor_function8completeINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEEEvPNS1_9impl_baseEb:bb.a
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEE3ptrD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #42
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEE3ptrD2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.m

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESF_EEvRT_RT0_.exit: ; preds = %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESF_EEvRT_RT0_.exit_crit_edge, %bb.b
  %i.p = phi ptr [ %.pre, %._ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESF_EEvRT_RT0_.exit_crit_edge ], [ %i.f, %bb.b ] ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail7binder2IZN4crow9websocket10ConnectionINS2_13SocketAdaptorENS2_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_S9_mED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESF_EEvRT_RT0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.q, align 8, !tbaa !314
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !315
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !257
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #40, !inline_history !74
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !257
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #40, !inline_history !74
  br label %_ZN4asio6detail7binder2IZN4crow9websocket10ConnectionINS2_13SocketAdaptorENS2_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_S9_mED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.i ], [ %i.ad, %bb.j ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.k, label %_ZN4asio6detail7binder2IZN4crow9websocket10ConnectionINS2_13SocketAdaptorENS2_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_S9_mED2Ev.exit, !prof !316

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #40
  br label %_ZN4asio6detail7binder2IZN4crow9websocket10ConnectionINS2_13SocketAdaptorENS2_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_S9_mED2Ev.exit

_ZN4asio6detail7binder2IZN4crow9websocket10ConnectionINS2_13SocketAdaptorENS2_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_S9_mED2Ev.exit: ; preds = %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESF_EEvRT_RT0_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  invoke void @_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEE3ptrD2Ev.exit6 unwind label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail7binder2IZN4crow9websocket10ConnectionINS2_13SocketAdaptorENS2_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_S9_mED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #42
  unreachable

_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEE3ptrD2Ev.exit6: ; preds = %_ZN4asio6detail7binder2IZN4crow9websocket10ConnectionINS2_13SocketAdaptorENS2_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_S9_mED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEE3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !848  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !312  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !314
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !315
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !257
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #40, !inline_history !2103
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !257
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #40, !inline_history !2103
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEED2Ev.exit, !prof !316

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #40
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEED2Ev.exit

_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  store ptr null, ptr %i.a, align 8, !tbaa !848
  br label %bb.i

bb.i:                                             ; preds = %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEED2Ev.exit, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !849  ; 5 uses
  %.not1 = icmp eq ptr %i.u, null
  br i1 %.not1, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !448  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i: ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !449  ; 4 uses
  %.not3 = icmp eq ptr %i.y, null
  br i1 %.not3, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !179
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !179
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.lcssa.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !165
  store i8 %i.ah, ptr %i.u, align 1, !tbaa !165
  store ptr %i.u, ptr %i.af, align 8, !tbaa !179
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS5_13SocketAdaptorENS5_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SC_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPSI_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.u) #40
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS5_13SocketAdaptorENS5_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SC_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPSI_m.exit

_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS5_13SocketAdaptorENS5_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SC_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPSI_m.exit: ; preds = %bb.k, %.thread.i.i
  store ptr null, ptr %i.t, align 8, !tbaa !849
  br label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2IZN4crow9websocket10ConnectionINS5_13SocketAdaptorENS5_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SC_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPSI_m.exit, %bb.i
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE6createERKNS_7requestES2_PS4_mRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EESt8functionIFvRNS0_10connectionEEESL_IFvSN_RKSG_bEESL_IFvSN_SR_tEESL_IFvSN_SR_EESL_IFvS8_RSt8optionalINS_8responseEEPPvEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr nofreeobj noundef align 8 dereferenceable(88) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nofreeobj noundef align 8 dereferenceable(32) %5, ptr nofreeobj noundef align 8 dereferenceable(32) %6, ptr nofreeobj noundef align 8 dereferenceable(32) %7, ptr nofreeobj noundef align 8 dereferenceable(32) %8, ptr nofreeobj noundef align 8 dereferenceable(32) %9, i1 noundef zeroext %10) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 12 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::error_code", align 8  ; 5 uses
  %12 = alloca %"class.__gnu_cxx::__normal_iterator.264", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %13 = alloca %"class.std::error_code", align 8  ; 5 uses
  %14 = alloca %"class.std::shared_ptr.406", align 8 ; 16 uses
  %15 = alloca %"class.std::function.83", align 8 ; 11 uses
  %16 = alloca %"class.std::function.86", align 8 ; 11 uses
  %17 = alloca %"class.std::function.88", align 8 ; 11 uses
  %18 = alloca %"class.std::function.90", align 8 ; 11 uses
  %19 = alloca %"class.std::function.93", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.std::vector.95", align 8   ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %25 = alloca %"class.std::optional", align 8    ; 11 uses
  %26 = alloca %"class.std::vector.243", align 8  ; 14 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::error_code", align 8  ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %32 = alloca %"class.sha1::SHA1", align 8       ; 11 uses
  %i.g = alloca [20 x i8], align 16               ; 21 uses
  %33 = alloca %"class.std::shared_ptr", align 8  ; 4 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  %i.h = tail call noalias noundef nonnull dereferenceable(4592) ptr @_Znwm(i64 noundef 4592) #43 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !576
  store ptr %i.k, ptr %i.i, align 8, !tbaa !576
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !244  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRN4crow9websocket10connectionEEEC2EOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !178
  store ptr %i.m, ptr %i.n, align 8, !tbaa !244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN4crow9websocket10connectionEEEC2EOS5_.exit

_ZNSt8functionIFvRN4crow9websocket10connectionEEEC2EOS5_.exit: ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !577
  store ptr %i.q, ptr %i.o, align 8, !tbaa !577
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !244  ; 2 uses
  %.not.i.i.not.i64 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.not.i64, label %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEC2EOSD_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionEEEC2EOS5_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !178
  store ptr %i.s, ptr %i.t, align 8, !tbaa !244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEC2EOSD_.exit

_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEC2EOSD_.exit: ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionEEEC2EOS5_.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !578
  store ptr %i.w, ptr %i.u, align 8, !tbaa !578
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !244  ; 2 uses
  %.not.i.i.not.i65 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i65, label %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEEC2EOSD_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEC2EOSD_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false), !tbaa.struct !178
  store ptr %i.y, ptr %i.z, align 8, !tbaa !244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEEC2EOSD_.exit

_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEEC2EOSD_.exit: ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEC2EOSD_.exit, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !579
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !579
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.not.i66 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i66, label %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSD_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEEC2EOSD_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 16, i1 false), !tbaa.struct !178
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSD_.exit

_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSD_.exit: ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEEC2EOSD_.exit, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 0, i64 24, i1 false)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !580
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !580
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.not.i67 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.not.i67, label %_ZNSt8functionIFvRKN4crow7requestERSt8optionalINS0_8responseEEPPvEEC2EOSB_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSD_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 16, i1 false), !tbaa.struct !178
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN4crow7requestERSt8optionalINS0_8responseEEPPvEEC2EOSB_.exit

_ZNSt8functionIFvRKN4crow7requestERSt8optionalINS0_8responseEEPPvEEC2EOSB_.exit: ; preds = %_ZNSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSD_.exit, %bb.f
  invoke void @_ZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEEC2EOS2_PS4_mSt8functionIFvRNS0_10connectionEEES8_IFvSA_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEES8_IFvSA_SK_tEES8_IFvSA_SK_EES8_IFvRKNS_7requestERSt8optionalINS_8responseEEPPvEE(ptr noundef nonnull align 8 dereferenceable(4592) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2, i64 noundef %3, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %15, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %16, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %17, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %18, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %_ZNSt8functionIFvRKN4crow7requestERSt8optionalINS0_8responseEEPPvEEC2EOSB_.exit
  invoke void @_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EEC2IS6_vEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull %i.h)
          to label %_ZNSt10shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEEC2IS6_vEEPT_.exit unwind label %bb.v

_ZNSt10shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEEC2IS6_vEEPT_.exit: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !244 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEEC2IS6_vEEPT_.exit
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt10shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEEC2IS6_vEEPT_.exit, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !244 ; 2 uses
  %.not.i68 = icmp eq ptr %i.as, null
  br i1 %.not.i68, label %_ZNSt14_Function_baseD2Ev.exit69, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit69 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit69:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !244 ; 2 uses
  %.not.i70 = icmp eq ptr %i.ax, null
  br i1 %.not.i70, label %_ZNSt14_Function_baseD2Ev.exit71, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit69
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit71 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit71:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit69, %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !244 ; 2 uses
  %.not.i72 = icmp eq ptr %i.bc, null
  br i1 %.not.i72, label %_ZNSt14_Function_baseD2Ev.exit73, label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit71
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit73 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit73:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit71, %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !244 ; 2 uses
  %.not.i74 = icmp eq ptr %i.bh, null
  br i1 %.not.i74, label %_ZNSt14_Function_baseD2Ev.exit75, label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit73
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit75 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit75:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit73, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #40
  %i.bl = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.bl, ptr %20, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bl, ptr noundef nonnull align 1 dereferenceable(7) @.str.260, i64 7, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 7, ptr %i.bm, align 8, !tbaa !166
  %i.bn = getelementptr inbounds nuw i8, ptr %20, i64 23
  store i8 0, ptr %i.bn, align 1, !tbaa !165
  %i.bo = load atomic i8, ptr @_ZGVZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11 acquire, align 8
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.r, label %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i, !prof !167

bb.r:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit75
end_hunk_3
begin_hunk_4_@_ZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE6createERKNS_7requestES2_PS4_mRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EESt8functionIFvRNS0_10connectionEEESL_IFvSN_RKSG_bEESL_IFvSN_SR_tEESL_IFvSN_SR_EESL_IFvS8_RSt8optionalINS_8responseEEPPvEEb:bb.a
bb.br:                                            ; preds = %bb.bq
  call void @_ZNSt22_Optional_payload_baseIN4crow8responseEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(360) %25) #40
  br label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread

_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread: ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  br label %bb.co

_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit: ; preds = %bb.bb
  %i.ko = load ptr, ptr %14, align 8, !tbaa !852
  %i.kp = load ptr, ptr %i.f, align 8, !tbaa !179
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !607
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  br label %.noexc.i159

bb.bs:                                            ; preds = %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit156, %bb.bk
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit156 ], [ %i.jv, %bb.bk ]
  %i.kr = load i8, ptr %i.hh, align 8, !tbaa !586, !range !274, !noundef !275
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.bt, label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit157

bb.bt:                                            ; preds = %bb.bs
  call void @_ZNSt22_Optional_payload_baseIN4crow8responseEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(360) %25) #40
  br label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit157

_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit157: ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  br label %bb.df

.noexc.i159:                                      ; preds = %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit126
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #40
  %i.kt = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.kt, ptr %31, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 17, ptr %i.b, align 8, !tbaa !162
  %i.ku = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc160 unwind label %bb.cw ; 2 uses

.noexc160:                                        ; preds = %.noexc.i159
  store ptr %i.ku, ptr %31, align 8, !tbaa !164
  %i.kv = load i64, ptr %i.b, align 8, !tbaa !162 ; 3 uses
  store i64 %i.kv, ptr %i.kt, align 8, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ku, ptr noundef nonnull align 1 dereferenceable(17) @.str.264, i64 17, i1 false)
  %i.kw = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !166
  %i.kx = load ptr, ptr %31, align 8, !tbaa !164
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kv
  store i8 0, ptr %i.ky, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.kz = load atomic i8, ptr @_ZGVZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11 acquire, align 8
  %i.la = icmp eq i8 %i.kz, 0
  br i1 %i.la, label %bb.bu, label %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162, !prof !167

bb.bu:                                            ; preds = %.noexc160
  %i.lb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11) #40
  %.not.i.i165 = icmp eq i32 %i.lb, 0
  br i1 %.not.i.i165, label %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, i64 16), ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, align 8, !tbaa !160
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, i64 8), align 8, !tbaa !166
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, i64 16), align 8, !tbaa !165
  %i.lc = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11) #40
  br label %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162

_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162: ; preds = %bb.bv, %bb.bu, %.noexc160
  %i.ld = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.bw unwind label %bb.cx     ; 2 uses

bb.bw:                                            ; preds = %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162
  %.not6.i.i163 = icmp eq ptr %i.ld, null
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %.0.i.i164 = select i1 %.not6.i.i163, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, ptr %i.le ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  %i.lf = load ptr, ptr %.0.i.i164, align 8, !tbaa !164, !noalias !2112
  %i.lg = getelementptr inbounds nuw i8, ptr %.0.i.i164, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !166, !noalias !2112 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 8 uses
  store ptr %i.li, ptr %30, align 8, !tbaa !160, !alias.scope !2113
  %i.lj = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  store i64 0, ptr %i.lj, align 8, !tbaa !166, !alias.scope !2113
  store i8 0, ptr %i.li, align 8, !tbaa !165, !alias.scope !2113
  %i.lk = add i64 %i.lh, 36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef %i.lk)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ll = load i64, ptr %i.lj, align 8, !tbaa !166, !alias.scope !2113
  %i.lm = sub i64 4611686018427387903, %i.ll
  %i.ln = icmp ult i64 %i.lm, %i.lh
  br i1 %i.ln, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.bx
  %i.lo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.lf, i64 noundef %i.lh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.by ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.lp = load i64, ptr %i.lj, align 8, !tbaa !166, !alias.scope !2113
  %i.lq = add i64 %i.lp, -4611686018427387868
  %i.lr = icmp ult i64 %i.lq, 36
  br i1 %i.lr, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.237) #39
          to label %.cont.i.i unwind label %bb.by

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ls = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.265, i64 noundef 36)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.by ; 0 uses

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.bw
  %i.lt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lu = load ptr, ptr %30, align 8, !tbaa !164, !alias.scope !2113 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.li
  br i1 %i.lv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.by
  %i.lw = load i64, ptr %i.li, align 8, !tbaa !165, !alias.scope !2113
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #41
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ly = load ptr, ptr %31, align 8, !tbaa !164  ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.kt
  br i1 %i.lz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ma = load i64, ptr %i.kt, align 8, !tbaa !165
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #40
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4sha14SHA1E, i64 16), ptr %32, align 8, !tbaa !257
  %i.mc = getelementptr inbounds nuw i8, ptr %32, i64 8
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %i.mc, align 8, !tbaa !276
  %i.md = getelementptr inbounds nuw i8, ptr %32, i64 24
  store i32 -1009589776, ptr %i.md, align 8, !tbaa !276
  %i.me = getelementptr inbounds nuw i8, ptr %32, i64 96 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.me, i8 0, i64 16, i1 false)
  %i.mf = load ptr, ptr %30, align 8, !tbaa !164  ; 2 uses
  %i.mg = load i64, ptr %i.lj, align 8, !tbaa !166 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mg
  %.not7.i.i = icmp samesign eq i64 %i.mg, 0
  br i1 %.not7.i.i, label %_ZN4sha14SHA112processBytesEPKvm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169
  %i.mi = getelementptr inbounds nuw i8, ptr %32, i64 28
  %i.mj = getelementptr inbounds nuw i8, ptr %32, i64 104 ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN4sha14SHA111processByteEh.exit.i.i, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.mf, %.lr.ph.i.i ], [ %i.ms, %_ZN4sha14SHA111processByteEh.exit.i.i ] ; 2 uses
  %i.mk = load i8, ptr %.08.i.i, align 1, !tbaa !165
  %i.ml = load i64, ptr %i.me, align 8, !tbaa !609 ; 2 uses
  %i.mm = add nuw nsw i64 %i.ml, 1
  store i64 %i.mm, ptr %i.me, align 8, !tbaa !609
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ml
  store i8 %i.mk, ptr %i.mn, align 1, !tbaa !165
  %i.mo = load i64, ptr %i.mj, align 8, !tbaa !610
  %i.mp = add i64 %i.mo, 1
  store i64 %i.mp, ptr %i.mj, align 8, !tbaa !610
  %i.mq = load i64, ptr %i.me, align 8, !tbaa !609
  %i.mr = icmp eq i64 %i.mq, 64
  br i1 %i.mr, label %bb.ca, label %_ZN4sha14SHA111processByteEh.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  store i64 0, ptr %i.me, align 8, !tbaa !609
  invoke void @_ZN4sha14SHA112processBlockEv(ptr noundef nonnull align 8 dereferenceable(112) %32)
          to label %_ZN4sha14SHA111processByteEh.exit.i.i unwind label %bb.cy

_ZN4sha14SHA111processByteEh.exit.i.i:            ; preds = %bb.ca, %bb.bz
  %i.ms = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1 ; 2 uses
  %.not.i.i171 = icmp eq ptr %i.ms, %i.mh
  br i1 %.not.i.i171, label %_ZN4sha14SHA112processBytesEPKvm.exit, label %bb.bz, !llvm.loop !28

_ZN4sha14SHA112processBytesEPKvm.exit:            ; preds = %_ZN4sha14SHA111processByteEh.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.mt = invoke noundef ptr @_ZN4sha14SHA19getDigestEPj(ptr noundef nonnull align 8 dereferenceable(112) %32, ptr noundef nonnull %i.a)
          to label %bb.cb unwind label %bb.cz     ; 0 uses

bb.cb:                                            ; preds = %_ZN4sha14SHA112processBytesEPKvm.exit
  %i.mu = load i32, ptr %i.a, align 16, !tbaa !276
  %i.mv = call i32 @llvm.bswap.i32(i32 %i.mu)
  store i32 %i.mv, ptr %i.g, align 16, !tbaa !165
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %35 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %36 = load i8, ptr %35, align 1, !tbaa !276
  %37 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i8 %36, ptr %37, align 4, !tbaa !165
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !276 ; 3 uses
  %38 = lshr i32 %i.mx, 16
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  store i8 %39, ptr %40, align 1, !tbaa !165
  %41 = lshr i32 %i.mx, 8
  %42 = trunc i32 %41 to i8
  %i.my = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  store i8 %42, ptr %i.my, align 2, !tbaa !165
  %43 = trunc i32 %i.mx to i8
  %44 = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  store i8 %43, ptr %44, align 1, !tbaa !165
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %45 = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %46 = load i8, ptr %45, align 1, !tbaa !276
  %47 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %46, ptr %47, align 8, !tbaa !165
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !276 ; 3 uses
  %48 = lshr i32 %i.na, 16
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  store i8 %49, ptr %50, align 1, !tbaa !165
  %51 = lshr i32 %i.na, 8
  %52 = trunc i32 %51 to i8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  store i8 %52, ptr %i.nb, align 2, !tbaa !165
  %53 = trunc i32 %i.na to i8
  %54 = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  store i8 %53, ptr %54, align 1, !tbaa !165
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %55 = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %56 = load i8, ptr %55, align 1, !tbaa !276
  %57 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i8 %56, ptr %57, align 4, !tbaa !165
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !276 ; 3 uses
  %58 = lshr i32 %i.nd, 16
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  store i8 %59, ptr %60, align 1, !tbaa !165
  %61 = lshr i32 %i.nd, 8
  %62 = trunc i32 %61 to i8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  store i8 %62, ptr %i.ne, align 2, !tbaa !165
  %63 = trunc i32 %i.nd to i8
  %64 = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  store i8 %63, ptr %64, align 1, !tbaa !165
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %65 = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %66 = load i8, ptr %65, align 1, !tbaa !276
  %67 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 %66, ptr %67, align 16, !tbaa !165
  %i.ng = load i32, ptr %i.nf, align 16, !tbaa !276 ; 3 uses
  %68 = lshr i32 %i.ng, 16
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  store i8 %69, ptr %70, align 1, !tbaa !165
  %71 = lshr i32 %i.ng, 8
  %72 = trunc i32 %71 to i8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  store i8 %72, ptr %i.nh, align 2, !tbaa !165
  %73 = trunc i32 %i.ng to i8
  %74 = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  store i8 %73, ptr %74, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ni = load ptr, ptr %14, align 8, !tbaa !852  ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 120
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !860
  store ptr %i.ni, ptr %33, align 8, !tbaa !626
  %i.nl = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !312 ; 3 uses
  store ptr %i.nn, ptr %i.nl, align 8, !tbaa !312
  %.not.i.i.i174 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i174, label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8 ; 3 uses
  %i.np = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i = icmp eq i8 %i.np, 0
  br i1 %.not.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nq = load i32, ptr %i.no, align 4, !tbaa !276
  %i.nr = add nsw i32 %i.nq, 1
  store i32 %i.nr, ptr %i.no, align 4, !tbaa !276
  br label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit

bb.ce:                                            ; preds = %bb.cc
  %i.ns = atomicrmw volatile add ptr %i.no, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit: ; preds = %bb.cb, %bb.cd, %bb.ce
  invoke void @_ZN4crow4CrowIJEE13add_websocketESt10shared_ptrINS_9websocket10connectionEE(ptr noundef nonnull align 8 dereferenceable(4016) %i.nk, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.cf unwind label %bb.da

bb.cf:                                            ; preds = %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit
  %i.nt = load ptr, ptr %i.nl, align 8, !tbaa !312 ; 8 uses
  %.not.i.i175 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i175, label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 4 uses
  %i.nv = load atomic i64, ptr %i.nu acquire, align 8 ; 2 uses
  %i.nw = icmp eq i64 %i.nv, 4294967297
  %i.nx = trunc i64 %i.nv to i32                  ; 2 uses
  br i1 %i.nw, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.nu, align 8, !tbaa !314
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 12
  store i32 0, ptr %i.ny, align 4, !tbaa !315
  %i.nz = load ptr, ptr %i.nt, align 8, !tbaa !257
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dereferenceable(16) %i.nt) #40, !inline_history !29
  %i.oc = load ptr, ptr %i.nt, align 8, !tbaa !257
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(16) %i.nt) #40, !inline_history !29
  br label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ci:                                            ; preds = %bb.cg
  %i.of = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i176 = icmp eq i8 %i.of, 0
  br i1 %.not.i.i.i176, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.og = add nsw i32 %i.nx, -1
  store i32 %i.og, ptr %i.nu, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.oh = atomicrmw volatile add ptr %i.nu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i = phi i32 [ %i.nx, %bb.cj ], [ %i.oh, %bb.ck ]
  %i.oi = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.oi, label %bb.cl, label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nt) #40
  br label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cf, %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cl
  %i.oj = load ptr, ptr %14, align 8, !tbaa !852
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #40
  invoke fastcc void @_ZN4crow7utilityL12base64encodeB5cxx11EPKhmPKc(ptr dead_on_unwind noalias writable align 8 %34, ptr noundef %i.g)
          to label %bb.cm unwind label %bb.db

bb.cm:                                            ; preds = %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE5startEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(4592) %i.oj, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.cn unwind label %bb.dc

bb.cn:                                            ; preds = %bb.cm
  %i.ok = load ptr, ptr %34, align 8, !tbaa !164  ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.om = icmp eq ptr %i.ok, %i.ol
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.cn
  %i.on = load i64, ptr %i.ol, align 8, !tbaa !165
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.oo) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #40
  %i.op = load ptr, ptr %30, align 8, !tbaa !164  ; 2 uses
  %i.oq = icmp eq ptr %i.op, %i.li
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.or = load i64, ptr %i.li, align 8, !tbaa !165
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.os) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #40
  br label %bb.co

bb.co:                                            ; preds = %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  %i.ot = load ptr, ptr %21, align 8, !tbaa !164  ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.el
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.co
  %i.ov = load i64, ptr %i.el, align 8, !tbaa !165
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ow) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN4crow17UnixSocketAdaptor5closeEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %i.ox = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !312 ; 8 uses
  %.not.i.i186 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i186, label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8 ; 4 uses
  %i.pa = load atomic i64, ptr %i.oz acquire, align 8 ; 2 uses
  %i.pb = icmp eq i64 %i.pa, 4294967297
  %i.pc = trunc i64 %i.pa to i32                  ; 2 uses
  br i1 %i.pb, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.oz, align 8, !tbaa !314
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oy, i64 12
  store i32 0, ptr %i.pd, align 4, !tbaa !315
  %i.pe = load ptr, ptr %i.oy, align 8, !tbaa !257
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pg = load ptr, ptr %i.pf, align 8
  call void %i.pg(ptr noundef nonnull align 8 dereferenceable(16) %i.oy) #40, !inline_history !76
  %i.ph = load ptr, ptr %i.oy, align 8, !tbaa !257
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pj = load ptr, ptr %i.pi, align 8
  call void %i.pj(ptr noundef nonnull align 8 dereferenceable(16) %i.oy) #40, !inline_history !76
  br label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cs:                                            ; preds = %bb.cq
  %i.pk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i187 = icmp eq i8 %i.pk, 0
  br i1 %.not.i.i.i187, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pl = add nsw i32 %i.pc, -1
  store i32 %i.pl, ptr %i.oz, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188

bb.cu:                                            ; preds = %bb.cs
  %i.pm = atomicrmw volatile add ptr %i.oz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i189 = phi i32 [ %i.pc, %bb.ct ], [ %i.pm, %bb.cu ]
  %i.pn = icmp eq i32 %.0.i.i.i.i189, 1
  br i1 %i.pn, label %bb.cv, label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oy) #40
  br label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cp, %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  ret void

bb.cw:                                            ; preds = %.noexc.i159
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

bb.cx:                                            ; preds = %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_4
begin_hunk_5_@_ZN4asio6detail17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKSA_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSE_17UnixSocketAdaptorENSE_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESL_mEESaIvEE3ptr5resetEv:bb.a
  %.not3 = icmp eq ptr %i.y, null
  br i1 %.not3, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !179
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !179
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.lcssa.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !165
  store i8 %i.ah, ptr %i.u, align 1, !tbaa !165
  store ptr %i.u, ptr %i.af, align 8, !tbaa !179
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_17UnixSocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.u) #40
  br label %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_17UnixSocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit

_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_17UnixSocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit: ; preds = %bb.k, %.thread.i.i
  store ptr null, ptr %i.t, align 8, !tbaa !939
  br label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail19recycling_allocatorINS0_17executor_function4implINS0_7binder2INS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKSB_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSF_17UnixSocketAdaptorENSF_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE0_EESM_mEESaIvEEENS0_16thread_info_base21executor_function_tagEE10deallocateEPST_m.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio6detail19initiate_async_readINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEEEclIZN4crow9websocket10ConnectionINS9_17UnixSocketAdaptorENS9_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_NS_14mutable_bufferENS0_14transfer_all_tEEEvOT_RKT0_OT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.asio::mutable_buffer", align 8 ; 5 uses
  %5 = alloca %"class.asio::detail::read_op.479", align 8 ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !941, !nonnull !275, !align !411 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr %i.a, ptr %5, align 8, !tbaa !881
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !605
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !763
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !179
  store ptr null, ptr %i.f, align 8, !tbaa !312
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !179
  store ptr null, ptr %1, align 8, !tbaa !852
  store i32 1, ptr %i.d, align 8, !tbaa !944
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !777
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !795
  %spec.select.i1.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 65536)
  store ptr %i.j, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %spec.select.i1.i.i, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !349
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES3_PKS3_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSD_17UnixSocketAdaptorENSD_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES8_EEvRNS1_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit unwind label %bb.b, !inline_history !2249

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #40, !inline_history !2250
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  resume { ptr, i32 } %i.p

_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !312  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.s, align 8, !tbaa !314
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !315
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !257
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #40, !inline_history !2251
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !257
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #40, !inline_history !2251
  br label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.h, label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit, !prof !316

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #40
  br label %_ZN4asio6detail7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit

_ZN4asio6detail7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev.exit: ; preds = %_ZN4asio6detail13start_read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EEvRT_RKT0_RKT1_RT2_RT3_.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEENS_14mutable_bufferEPKS7_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSB_17UnixSocketAdaptorENSB_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !314
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !315
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !93
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !93
  br label %_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit, !prof !316

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40
  br label %_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit

_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE7do_readEvENUlRKSt10error_codemE1_D2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE7do_readEvENKUlRKSt10error_codemE1_clES8_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::error_code", align 8   ; 5 uses
  %4 = alloca %"class.std::error_code", align 8   ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !852    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4401
  store i8 0, ptr %i.b, align 1, !tbaa !866
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4352 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call i64 @llvm.bswap.i64(i64 %i.d)
  store i64 %i.e, ptr %i.c, align 8, !tbaa !863
  %i.f = load i32, ptr %1, align 8, !tbaa !285
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4344
  store i32 3, ptr %i.g, align 8, !tbaa !861
  tail call void @_ZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE7do_readEv(ptr noundef nonnull align 8 dereferenceable(4592) %i.a)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  store i8 1, ptr %i.h, align 8, !tbaa !865
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store i32 0, ptr %4, align 8, !tbaa !285
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #44 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !286
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !485
  %i.m = call noundef i32 @_ZN4asio6detail10socket_ops8shutdownEiiRSt10error_code(i32 noundef %i.l, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.n = load ptr, ptr %0, align 8, !tbaa !852    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store i32 0, ptr %3, align 8, !tbaa !285
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.j, ptr %i.p, align 8, !tbaa !286
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !349
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.t = call { i32, ptr } @_ZN4asio6detail28reactive_socket_service_base5closeERNS1_24base_implementation_typeERSt10error_code(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.u = load ptr, ptr %0, align 8, !tbaa !852    ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4528
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4544 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !244
  %.not.i.i.not = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !286, !noalias !2254 ; 2 uses
  %i.aa = load i32, ptr %1, align 8, !tbaa !285, !noalias !2254
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !257, !noalias !2254
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !2254
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.aa), !inline_history !1
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !244
  %.not.i.i4 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt25__throw_bad_function_callv() #39
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 4552
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !579
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit unwind label %bb.g, !inline_history !64

_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit: ; preds = %bb.f
  %i.ah = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !165
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt8functionIFvRN4crow9websocket10connectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES3_SB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %.pre = load ptr, ptr %0, align 8, !tbaa !852
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.g
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !165
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  resume { ptr, i32 } %i.am

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %i.as = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %bb.c ]
  call void @_ZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE13check_destroyENS0_15CloseStatusCodeE(ptr noundef nonnull align 8 dereferenceable(4592) %i.as, i16 noundef zeroext 1006)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES3_PKS3_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSD_17UnixSocketAdaptorENSD_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES8_EEvRNS1_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.asio::detail::reactive_socket_recv_op<asio::mutable_buffer, asio::detail::read_op<asio::basic_stream_socket<asio::local::stream_protocol>, asio::mutable_buffer, const asio::mutable_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/crow/Crow/include/crow/websocket.h:478:27)>, asio::any_io_executor>::ptr", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !944
  %i.c = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr %4, ptr %6, align 8, !tbaa !948
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !448  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !449
  br label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit

_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.j = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_11default_tagEEEPvT_PS1_mm(ptr noundef %i.i, i64 noundef 208, i64 noundef 8) ; 4 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !949
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !950
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %1, align 8, !tbaa !485
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !488
  invoke void @_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_EC2ESL_ihRS9_iRSN_RKS7_(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i32 noundef %i.m, i8 noundef zeroext %i.o, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit
  store ptr %i.j, ptr %i.k, align 8, !tbaa !950
  %i.p = and i32 %3, 1                            ; 2 uses
  %i.q = shl nuw nsw i32 %i.p, 1
  %i.r = icmp eq i32 %i.p, 0
  %i.s = load i8, ptr %i.n, align 4, !tbaa !488
  %i.t = and i8 %i.s, 16
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !777
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi i1 [ false, %bb.c ], [ %i.w, %bb.d ]
  invoke void @_ZN4asio6detail28reactive_socket_service_base8start_opINS0_23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES4_PKS4_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSE_17UnixSocketAdaptorENSE_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES9_EEEEvRNS1_24base_implementation_typeEiPT_bbbPKvPNSt9enable_ifIXsr7is_sameINS_29associated_immediate_executorINST_12handler_typeENST_16io_executor_typeEE51asio_associated_immediate_executor_is_unspecialisedEvEE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.q, ptr noundef nonnull %i.j, i1 noundef zeroext %i.c, i1 noundef zeroext %i.r, i1 noundef zeroext %i.x, ptr noundef nonnull %5, ptr noundef null)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  invoke void @_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #42
  unreachable

_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret void

bb.h:                                             ; preds = %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr8allocateERSN_.exit, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptr5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit23 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #42
  unreachable

_ZN4asio6detail23reactive_socket_recv_opINS_14mutable_bufferENS0_7read_opINS_19basic_stream_socketINS_5local15stream_protocolENS_15any_io_executorEEES2_PKS2_NS0_14transfer_all_tEZN4crow9websocket10ConnectionINSC_17UnixSocketAdaptorENSC_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE1_EES7_E3ptrD2Ev.exit23: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %i.aa
}

end_hunk_5
