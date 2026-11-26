Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/string?download=true
inline.NumInlined: 543
inline.NumDeleted: 227
begin_hunk_0_@_ZN5jinjaL15apply_transformERNS_6stringERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EE:bb.a
bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.f, ptr %3, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.ar = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.y, %bb.l ], [ %i.f, %bb.m ], [ %i.ab, %bb.h ]
  store i64 0, ptr %i.g, align 8, !tbaa !16
  store i8 0, ptr %i.ar, align 1, !tbaa !17
  %i.as = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.f
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.au = load i64, ptr %i.f, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.c
  br i1 %.not, label %._crit_edge.loopexit, label %bb.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN5jinja6string9lowercaseEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.jinja::string") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_EZN5jinja6string9lowercaseEvE3$_0E9_M_invokeERKSt9_Any_dataS7_", ptr %i.b, align 8, !tbaa !34
  store ptr @"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_EZN5jinja6string9lowercaseEvE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.a, align 8, !tbaa !35
  invoke fastcc void @_ZN5jinjaL15apply_transformERNS_6stringERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i2 = icmp eq ptr %i.h, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN5jinja6string10capitalizeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.jinja::string") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_EZN5jinja6string10capitalizeEvE3$_0E9_M_invokeERKSt9_Any_dataS7_", ptr %i.b, align 8, !tbaa !34
  store ptr @"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_EZN5jinja6string10capitalizeEvE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.a, align 8, !tbaa !35
  invoke fastcc void @_ZN5jinjaL15apply_transformERNS_6stringERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i2 = icmp eq ptr %i.h, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN5jinja6string9titlecaseEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.jinja::string") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_EZN5jinja6string9titlecaseEvE3$_0E9_M_invokeERKSt9_Any_dataS7_", ptr %i.b, align 8, !tbaa !34
  store ptr @"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_EZN5jinja6string9titlecaseEvE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.a, align 8, !tbaa !35
  invoke fastcc void @_ZN5jinjaL15apply_transformERNS_6stringERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_EE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i2 = icmp eq ptr %i.h, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN5jinja6string5stripEbbSt8optionalIKSt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.jinja::string") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree noundef readonly byval(%"class.std::optional") align 8 captures(none) %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !19     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN5jinja6stringC2ERKS0_.exit, label %bb.b

_ZN5jinja6stringC2ERKS0_.exit:                    ; preds = %bb.a
  %7 = ptrtoint ptr %i.e to i64
  %8 = ptrtoint ptr %i.c to i64
  %9 = sub i64 %7, %8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = getelementptr inbounds nuw i8, ptr null, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %0, align 8
  store ptr %10, ptr %11, align 8, !tbaa !31
  %i.h = tail call noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5jinja11string_partESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.c, ptr %i.e, ptr noundef null)
  store ptr %i.h, ptr %i.g, align 8, !tbaa !24
  br label %bb.af

common.resume:                                    ; preds = %bb.ad, %bb.ae
  resume { ptr, i32 } %i.ex

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %.lr.ph, label %.loopexit82

.lr.ph:                                           ; preds = %bb.b
  %.sroa.067.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.067.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %.sroa.067.sroa.0.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.067.sroa.2.0.copyload = load ptr, ptr %.sroa.067.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.067.sroa.3.0.copyload = load i8, ptr %.sroa.067.sroa.3.0..sroa_idx, align 8
  %i.k = trunc nuw i8 %.sroa.067.sroa.3.0.copyload to i1
  %i.l = ptrtoint ptr %.sroa.067.sroa.2.0.copyload to i64
  %.not.i.i = icmp eq i64 %.sroa.067.sroa.0.0.copyload, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.o
  %i.m = phi ptr [ %i.c, %.lr.ph ], [ %i.bt, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val18 = load ptr, ptr %i.n, align 8           ; 3 uses
  %i.o = getelementptr i8, ptr %i.m, i64 16
  %.val19 = load i64, ptr %i.o, align 8, !tbaa !16 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %.not74 = icmp eq i64 %.val19, 0
  br i1 %.not74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  br i1 %i.k, label %.lr.ph.split.us.i, label %.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.us.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.us.i: ; preds = %.lr.ph.split.us.i, %bb.d
  %.01811.us.i = phi i64 [ %i.w, %bb.d ], [ 0, %.lr.ph.split.us.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val18, i64 %.01811.us.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !17, !noalias !72
  %i.r = sext i8 %i.q to i32
  %i.s = call ptr @memchr(ptr noundef %.sroa.067.sroa.2.0.copyload, i32 noundef %i.r, i64 noundef %.sroa.067.sroa.0.0.copyload) #23, !noalias !72 ; 2 uses
  %.not.i.i.us.i = icmp ne ptr %i.s, null
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.l
  %i.v = icmp ne i64 %i.u, -1
  %or.cond.us.i = and i1 %.not.i.i.us.i, %i.v
  br i1 %or.cond.us.i, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.us.i
  %i.w = add nuw i64 %.01811.us.i, 1              ; 2 uses
  %exitcond32.not.i = icmp eq i64 %i.w, %.val19
  br i1 %exitcond32.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.us.i, !llvm.loop !62

.split.i:                                         ; preds = %.lr.ph.i, %bb.e
  %.01811.i = phi i64 [ %i.ab, %bb.e ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val18, i64 %.01811.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17, !noalias !72
  %i.z = zext i8 %i.y to i32
  %i.aa = call i32 @isspace(i32 noundef %i.z) #22, !noalias !72
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.split.i
  %i.ab = add nuw i64 %.01811.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %.val19
  br i1 %exitcond.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %.split.i, !llvm.loop !62

.critedge.i:                                      ; preds = %.split.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.us.i
  %.119.i = phi i64 [ %.01811.us.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.us.i ], [ %.01811.i, %.split.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.ac = icmp ugt i64 %.119.i, %.val19
  br i1 %i.ac, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

bb.f:                                             ; preds = %.critedge.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef %.119.i, i64 noundef %.val19) #26, !noalias !74
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.split.us.i, %bb.c, %.critedge.i
  %.1194043.i = phi i64 [ %.119.i, %.critedge.i ], [ %.val19, %bb.d ], [ 0, %.lr.ph.split.us.i ], [ 0, %bb.c ], [ %.val19, %bb.e ] ; 2 uses
  %i.ad = sub i64 %.val19, %.1194043.i            ; 4 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !26, !alias.scope !74
  %i.ae = getelementptr inbounds nuw i8, ptr %.val18, i64 %.1194043.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !74
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !27, !noalias !74
  %i.af = icmp ugt i64 %i.ad, 15
  br i1 %i.af, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.ag = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ag, ptr %5, align 8, !tbaa !15, !alias.scope !74
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !27, !noalias !74
  store i64 %i.ah, ptr %i.i, align 8, !tbaa !17, !alias.scope !74
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.ai = phi ptr [ %i.ag, %.noexc10.i.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %i.ad, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %"_ZZN5jinja6string5stripEbbSt8optionalIKSt17basic_string_viewIcSt11char_traitsIcEEEENK3$_0clERKNSt7__cxx1112basic_stringIcS4_SaIcEEEbbS7_.exit"
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aj = load i8, ptr %i.ae, align 1, !tbaa !17, !noalias !72
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !17
  br label %"_ZZN5jinja6string5stripEbbSt8optionalIKSt17basic_string_viewIcSt11char_traitsIcEEEENK3$_0clERKNSt7__cxx1112basic_stringIcS4_SaIcEEEbbS7_.exit"

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr readonly align 1 %i.ae, i64 %i.ad, i1 false)
  br label %"_ZZN5jinja6string5stripEbbSt8optionalIKSt17basic_string_viewIcSt11char_traitsIcEEEENK3$_0clERKNSt7__cxx1112basic_stringIcS4_SaIcEEEbbS7_.exit"

"_ZZN5jinja6string5stripEbbSt8optionalIKSt17basic_string_viewIcSt11char_traitsIcEEEENK3$_0clERKNSt7__cxx1112basic_stringIcS4_SaIcEEEbbS7_.exit": ; preds = %._crit_edge.i.i.i.i, %bb.g, %bb.h
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !27, !noalias !74 ; 2 uses
  store i64 %i.ak, ptr %i.j, align 8, !tbaa !16, !alias.scope !74
  %i.al = load ptr, ptr %5, align 8, !tbaa !15, !alias.scope !74
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !74
  %i.an = load ptr, ptr %1, align 8, !tbaa !25    ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !15 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 4 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  %i.as = load ptr, ptr %5, align 8, !tbaa !15    ; 6 uses
  %i.at = icmp eq ptr %i.as, %i.i                 ; 2 uses
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %"_ZZN5jinja6string5stripEbbSt8optionalIKSt17basic_string_viewIcSt11char_traitsIcEEEENK3$_0clERKNSt7__cxx1112basic_stringIcS4_SaIcEEEbbS7_.exit"
  br i1 %i.at, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %"_ZZN5jinja6string5stripEbbSt8optionalIKSt17basic_string_viewIcSt11char_traitsIcEEEENK3$_0clERKNSt7__cxx1112basic_stringIcS4_SaIcEEEbbS7_.exit"
  br i1 %i.at, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.au = load i64, ptr %i.j, align 8, !tbaa !16  ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %.not21.i = icmp eq ptr %5, %i.ao
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.j, !prof !36

bb.j:                                             ; preds = %bb.i
  switch i64 %i.au, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !17
  store i8 %i.aw, ptr %i.ap, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.as, i64 %i.au, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !16  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !16
  %i.az = load ptr, ptr %i.ao, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !17
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !15
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !16
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !16
  %i.bd = load i64, ptr %i.i, align 8, !tbaa !17
  store i64 %i.bd, ptr %i.aq, align 8, !tbaa !17
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.be = load i64, ptr %i.aq, align 8, !tbaa !17
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !15
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !16
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !17
  store i64 %i.bh, ptr %i.aq, align 8, !tbaa !17
  %.not.i20 = icmp eq ptr %i.ap, null
  br i1 %.not.i20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ap, ptr %5, align 8, !tbaa !15
  store i64 %i.be, ptr %i.i, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.i, ptr %5, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.bi = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ap, %bb.m ], [ %i.i, %bb.n ], [ %i.as, %bb.i ]
end_hunk_0
