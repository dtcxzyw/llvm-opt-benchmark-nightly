Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4crow13WebSocketRuleINS_4CrowIJEEEE14handle_upgradeERKNS_7requestERNS_8responseEONS_17UnixSocketAdaptorE:bb.a
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
  %i.a = alloca [5 x i32], align 16               ; 8 uses
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
  %i.g = alloca [20 x i8], align 16               ; 24 uses
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
  %.pre216 = load i8, ptr %i.hh, align 8, !tbaa !586, !range !274
  %i.kn = trunc nuw i8 %.pre216 to i1
  br i1 %i.kn, label %bb.br, label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread

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
  %i.mu = load i32, ptr %i.a, align 16, !tbaa !276 ; 4 uses
  %35 = lshr i32 %i.mu, 24
  %36 = trunc nuw i32 %35 to i8
  store i8 %36, ptr %i.g, align 16, !tbaa !165
  %37 = lshr i32 %i.mu, 16
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %38, ptr %39, align 1, !tbaa !165
  %40 = lshr i32 %i.mu, 8
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 %41, ptr %42, align 2, !tbaa !165
  %43 = trunc i32 %i.mu to i8
  %44 = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store i8 %43, ptr %44, align 1, !tbaa !165
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !276 ; 4 uses
  %45 = lshr i32 %i.mw, 24
  %46 = trunc nuw i32 %45 to i8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i8 %46, ptr %i.mx, align 4, !tbaa !165
  %47 = lshr i32 %i.mw, 16
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  store i8 %48, ptr %49, align 1, !tbaa !165
  %50 = lshr i32 %i.mw, 8
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  store i8 %51, ptr %52, align 2, !tbaa !165
  %53 = trunc i32 %i.mw to i8
  %54 = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  store i8 %53, ptr %54, align 1, !tbaa !165
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !276 ; 4 uses
  %55 = lshr i32 %i.mz, 24
  %56 = trunc nuw i32 %55 to i8
  %i.na = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %56, ptr %i.na, align 8, !tbaa !165
  %57 = lshr i32 %i.mz, 16
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  store i8 %58, ptr %59, align 1, !tbaa !165
  %60 = lshr i32 %i.mz, 8
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  store i8 %61, ptr %62, align 2, !tbaa !165
  %63 = trunc i32 %i.mz to i8
  %64 = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  store i8 %63, ptr %64, align 1, !tbaa !165
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !276 ; 4 uses
  %65 = lshr i32 %i.nc, 24
  %66 = trunc nuw i32 %65 to i8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i8 %66, ptr %i.nd, align 4, !tbaa !165
  %67 = lshr i32 %i.nc, 16
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  store i8 %68, ptr %69, align 1, !tbaa !165
  %70 = lshr i32 %i.nc, 8
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  store i8 %71, ptr %72, align 2, !tbaa !165
  %73 = trunc i32 %i.nc to i8
  %74 = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  store i8 %73, ptr %74, align 1, !tbaa !165
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nf = load i32, ptr %i.ne, align 16, !tbaa !276 ; 4 uses
  %75 = lshr i32 %i.nf, 24
  %76 = trunc nuw i32 %75 to i8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 %76, ptr %i.ng, align 16, !tbaa !165
  %77 = lshr i32 %i.nf, 16
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  store i8 %78, ptr %79, align 1, !tbaa !165
  %80 = lshr i32 %i.nf, 8
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  store i8 %81, ptr %82, align 2, !tbaa !165
  %83 = trunc i32 %i.nf to i8
  %84 = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  store i8 %83, ptr %84, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.nh = load ptr, ptr %14, align 8, !tbaa !583  ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 120
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !623
  store ptr %i.nh, ptr %33, align 8, !tbaa !626
  %i.nk = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !312 ; 3 uses
  store ptr %i.nm, ptr %i.nk, align 8, !tbaa !312
  %.not.i.i.i174 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i174, label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 3 uses
  %i.no = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i = icmp eq i8 %i.no, 0
  br i1 %.not.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.np = load i32, ptr %i.nn, align 4, !tbaa !276
  %i.nq = add nsw i32 %i.np, 1
  store i32 %i.nq, ptr %i.nn, align 4, !tbaa !276
  br label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit

bb.ce:                                            ; preds = %bb.cc
  %i.nr = atomicrmw volatile add ptr %i.nn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit: ; preds = %bb.cb, %bb.cd, %bb.ce
  invoke void @_ZN4crow4CrowIJEE13add_websocketESt10shared_ptrINS_9websocket10connectionEE(ptr noundef nonnull align 8 dereferenceable(4016) %i.nj, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.cf unwind label %bb.da

bb.cf:                                            ; preds = %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit
  %i.ns = load ptr, ptr %i.nk, align 8, !tbaa !312 ; 8 uses
  %.not.i.i175 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i175, label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 4 uses
  %i.nu = load atomic i64, ptr %i.nt acquire, align 8 ; 2 uses
  %i.nv = icmp eq i64 %i.nu, 4294967297
  %i.nw = trunc i64 %i.nu to i32                  ; 2 uses
  br i1 %i.nv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.nt, align 8, !tbaa !314
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 12
  store i32 0, ptr %i.nx, align 4, !tbaa !315
  %i.ny = load ptr, ptr %i.ns, align 8, !tbaa !257
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #40, !inline_history !29
  %i.ob = load ptr, ptr %i.ns, align 8, !tbaa !257
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #40, !inline_history !29
  br label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ci:                                            ; preds = %bb.cg
  %i.oe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i176 = icmp eq i8 %i.oe, 0
  br i1 %.not.i.i.i176, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.of = add nsw i32 %i.nw, -1
  store i32 %i.of, ptr %i.nt, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.og = atomicrmw volatile add ptr %i.nt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i = phi i32 [ %i.nw, %bb.cj ], [ %i.og, %bb.ck ]
  %i.oh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.oh, label %bb.cl, label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #40
  br label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cf, %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cl
  %i.oi = load ptr, ptr %14, align 8, !tbaa !583
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #40
  invoke fastcc void @_ZN4crow7utilityL12base64encodeB5cxx11EPKhmPKc(ptr dead_on_unwind noalias writable align 8 %34, ptr noundef %i.g)
          to label %bb.cm unwind label %bb.db

bb.cm:                                            ; preds = %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE5startEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(4592) %i.oi, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.cn unwind label %bb.dc

bb.cn:                                            ; preds = %bb.cm
  %i.oj = load ptr, ptr %34, align 8, !tbaa !164  ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ol = icmp eq ptr %i.oj, %i.ok
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.cn
  %i.om = load i64, ptr %i.ok, align 8, !tbaa !165
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.on) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #40
  %i.oo = load ptr, ptr %30, align 8, !tbaa !164  ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.li
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.oq = load i64, ptr %i.li, align 8, !tbaa !165
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.or) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #40
  br label %bb.co

bb.co:                                            ; preds = %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  %i.os = load ptr, ptr %21, align 8, !tbaa !164  ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.el
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.co
  %i.ou = load i64, ptr %i.el, align 8, !tbaa !165
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN4crow13SocketAdaptor5closeEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %i.ow = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !312 ; 8 uses
  %.not.i.i186 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i186, label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8 ; 4 uses
  %i.oz = load atomic i64, ptr %i.oy acquire, align 8 ; 2 uses
  %i.pa = icmp eq i64 %i.oz, 4294967297
  %i.pb = trunc i64 %i.oz to i32                  ; 2 uses
  br i1 %i.pa, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.oy, align 8, !tbaa !314
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ox, i64 12
  store i32 0, ptr %i.pc, align 4, !tbaa !315
  %i.pd = load ptr, ptr %i.ox, align 8, !tbaa !257
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8
  call void %i.pf(ptr noundef nonnull align 8 dereferenceable(16) %i.ox) #40, !inline_history !30
  %i.pg = load ptr, ptr %i.ox, align 8, !tbaa !257
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  %i.pi = load ptr, ptr %i.ph, align 8
  call void %i.pi(ptr noundef nonnull align 8 dereferenceable(16) %i.ox) #40, !inline_history !30
  br label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cs:                                            ; preds = %bb.cq
  %i.pj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i187 = icmp eq i8 %i.pj, 0
  br i1 %.not.i.i.i187, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pk = add nsw i32 %i.pb, -1
  store i32 %i.pk, ptr %i.oy, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188

bb.cu:                                            ; preds = %bb.cs
  %i.pl = atomicrmw volatile add ptr %i.oy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i189 = phi i32 [ %i.pb, %bb.ct ], [ %i.pl, %bb.cu ]
  %i.pm = icmp eq i32 %.0.i.i.i.i189, 1
  br i1 %i.pm, label %bb.cv, label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ox) #40
  br label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cp, %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  ret void

bb.cw:                                            ; preds = %.noexc.i159
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

bb.cx:                                            ; preds = %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_1
begin_hunk_2_@_ZN4asio6detail17executor_function8completeINS0_7binder2IZN4crow9websocket10ConnectionINS4_13SocketAdaptorENS4_4CrowIJEEEE7do_readEvEUlRKSt10error_codemE3_SB_mEESaIvEEEvPNS1_9impl_baseEb:bb.a
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
  %i.a = alloca [5 x i32], align 16               ; 8 uses
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
  %i.g = alloca [20 x i8], align 16               ; 24 uses
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
end_hunk_2
begin_hunk_3_@_ZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE6createERKNS_7requestES2_PS4_mRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EESt8functionIFvRNS0_10connectionEEESL_IFvSN_RKSG_bEESL_IFvSN_SR_tEESL_IFvSN_SR_EESL_IFvS8_RSt8optionalINS_8responseEEPPvEEb:bb.a
  %.pre216 = load i8, ptr %i.hh, align 8, !tbaa !586, !range !274
  %i.kn = trunc nuw i8 %.pre216 to i1
  br i1 %i.kn, label %bb.br, label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread

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
  %i.mu = load i32, ptr %i.a, align 16, !tbaa !276 ; 4 uses
  %35 = lshr i32 %i.mu, 24
  %36 = trunc nuw i32 %35 to i8
  store i8 %36, ptr %i.g, align 16, !tbaa !165
  %37 = lshr i32 %i.mu, 16
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %38, ptr %39, align 1, !tbaa !165
  %40 = lshr i32 %i.mu, 8
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 %41, ptr %42, align 2, !tbaa !165
  %43 = trunc i32 %i.mu to i8
  %44 = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store i8 %43, ptr %44, align 1, !tbaa !165
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !276 ; 4 uses
  %45 = lshr i32 %i.mw, 24
  %46 = trunc nuw i32 %45 to i8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i8 %46, ptr %i.mx, align 4, !tbaa !165
  %47 = lshr i32 %i.mw, 16
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  store i8 %48, ptr %49, align 1, !tbaa !165
  %50 = lshr i32 %i.mw, 8
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  store i8 %51, ptr %52, align 2, !tbaa !165
  %53 = trunc i32 %i.mw to i8
  %54 = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  store i8 %53, ptr %54, align 1, !tbaa !165
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !276 ; 4 uses
  %55 = lshr i32 %i.mz, 24
  %56 = trunc nuw i32 %55 to i8
  %i.na = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %56, ptr %i.na, align 8, !tbaa !165
  %57 = lshr i32 %i.mz, 16
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  store i8 %58, ptr %59, align 1, !tbaa !165
  %60 = lshr i32 %i.mz, 8
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  store i8 %61, ptr %62, align 2, !tbaa !165
  %63 = trunc i32 %i.mz to i8
  %64 = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  store i8 %63, ptr %64, align 1, !tbaa !165
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !276 ; 4 uses
  %65 = lshr i32 %i.nc, 24
  %66 = trunc nuw i32 %65 to i8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i8 %66, ptr %i.nd, align 4, !tbaa !165
  %67 = lshr i32 %i.nc, 16
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  store i8 %68, ptr %69, align 1, !tbaa !165
  %70 = lshr i32 %i.nc, 8
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  store i8 %71, ptr %72, align 2, !tbaa !165
  %73 = trunc i32 %i.nc to i8
  %74 = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  store i8 %73, ptr %74, align 1, !tbaa !165
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nf = load i32, ptr %i.ne, align 16, !tbaa !276 ; 4 uses
  %75 = lshr i32 %i.nf, 24
  %76 = trunc nuw i32 %75 to i8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 %76, ptr %i.ng, align 16, !tbaa !165
  %77 = lshr i32 %i.nf, 16
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  store i8 %78, ptr %79, align 1, !tbaa !165
  %80 = lshr i32 %i.nf, 8
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  store i8 %81, ptr %82, align 2, !tbaa !165
  %83 = trunc i32 %i.nf to i8
  %84 = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  store i8 %83, ptr %84, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.nh = load ptr, ptr %14, align 8, !tbaa !852  ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 120
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !860
  store ptr %i.nh, ptr %33, align 8, !tbaa !626
  %i.nk = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !312 ; 3 uses
  store ptr %i.nm, ptr %i.nk, align 8, !tbaa !312
  %.not.i.i.i174 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i174, label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 3 uses
  %i.no = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i = icmp eq i8 %i.no, 0
  br i1 %.not.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.np = load i32, ptr %i.nn, align 4, !tbaa !276
  %i.nq = add nsw i32 %i.np, 1
  store i32 %i.nq, ptr %i.nn, align 4, !tbaa !276
  br label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit

bb.ce:                                            ; preds = %bb.cc
  %i.nr = atomicrmw volatile add ptr %i.nn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit: ; preds = %bb.cb, %bb.cd, %bb.ce
  invoke void @_ZN4crow4CrowIJEE13add_websocketESt10shared_ptrINS_9websocket10connectionEE(ptr noundef nonnull align 8 dereferenceable(4016) %i.nj, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.cf unwind label %bb.da

bb.cf:                                            ; preds = %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit
  %i.ns = load ptr, ptr %i.nk, align 8, !tbaa !312 ; 8 uses
  %.not.i.i175 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i175, label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 4 uses
  %i.nu = load atomic i64, ptr %i.nt acquire, align 8 ; 2 uses
  %i.nv = icmp eq i64 %i.nu, 4294967297
  %i.nw = trunc i64 %i.nu to i32                  ; 2 uses
  br i1 %i.nv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.nt, align 8, !tbaa !314
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 12
  store i32 0, ptr %i.nx, align 4, !tbaa !315
  %i.ny = load ptr, ptr %i.ns, align 8, !tbaa !257
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #40, !inline_history !29
  %i.ob = load ptr, ptr %i.ns, align 8, !tbaa !257
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #40, !inline_history !29
  br label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ci:                                            ; preds = %bb.cg
  %i.oe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i176 = icmp eq i8 %i.oe, 0
  br i1 %.not.i.i.i176, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.of = add nsw i32 %i.nw, -1
  store i32 %i.of, ptr %i.nt, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.og = atomicrmw volatile add ptr %i.nt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i = phi i32 [ %i.nw, %bb.cj ], [ %i.og, %bb.ck ]
  %i.oh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.oh, label %bb.cl, label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #40
  br label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cf, %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cl
  %i.oi = load ptr, ptr %14, align 8, !tbaa !852
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #40
  invoke fastcc void @_ZN4crow7utilityL12base64encodeB5cxx11EPKhmPKc(ptr dead_on_unwind noalias writable align 8 %34, ptr noundef %i.g)
          to label %bb.cm unwind label %bb.db

bb.cm:                                            ; preds = %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE5startEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(4592) %i.oi, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.cn unwind label %bb.dc

bb.cn:                                            ; preds = %bb.cm
  %i.oj = load ptr, ptr %34, align 8, !tbaa !164  ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ol = icmp eq ptr %i.oj, %i.ok
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.cn
  %i.om = load i64, ptr %i.ok, align 8, !tbaa !165
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.on) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #40
  %i.oo = load ptr, ptr %30, align 8, !tbaa !164  ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.li
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.oq = load i64, ptr %i.li, align 8, !tbaa !165
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.or) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #40
  br label %bb.co

bb.co:                                            ; preds = %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  %i.os = load ptr, ptr %21, align 8, !tbaa !164  ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.el
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.co
  %i.ou = load i64, ptr %i.el, align 8, !tbaa !165
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN4crow17UnixSocketAdaptor5closeEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %i.ow = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !312 ; 8 uses
  %.not.i.i186 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i186, label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8 ; 4 uses
  %i.oz = load atomic i64, ptr %i.oy acquire, align 8 ; 2 uses
  %i.pa = icmp eq i64 %i.oz, 4294967297
  %i.pb = trunc i64 %i.oz to i32                  ; 2 uses
  br i1 %i.pa, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.oy, align 8, !tbaa !314
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ox, i64 12
  store i32 0, ptr %i.pc, align 4, !tbaa !315
  %i.pd = load ptr, ptr %i.ox, align 8, !tbaa !257
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8
  call void %i.pf(ptr noundef nonnull align 8 dereferenceable(16) %i.ox) #40, !inline_history !76
  %i.pg = load ptr, ptr %i.ox, align 8, !tbaa !257
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  %i.pi = load ptr, ptr %i.ph, align 8
  call void %i.pi(ptr noundef nonnull align 8 dereferenceable(16) %i.ox) #40, !inline_history !76
  br label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cs:                                            ; preds = %bb.cq
  %i.pj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i187 = icmp eq i8 %i.pj, 0
  br i1 %.not.i.i.i187, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pk = add nsw i32 %i.pb, -1
  store i32 %i.pk, ptr %i.oy, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188

bb.cu:                                            ; preds = %bb.cs
  %i.pl = atomicrmw volatile add ptr %i.oy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i189 = phi i32 [ %i.pb, %bb.ct ], [ %i.pl, %bb.cu ]
  %i.pm = icmp eq i32 %.0.i.i.i.i189, 1
  br i1 %i.pm, label %bb.cv, label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ox) #40
  br label %_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow9websocket10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cp, %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i188, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  ret void

bb.cw:                                            ; preds = %.noexc.i159
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

bb.cx:                                            ; preds = %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_3
