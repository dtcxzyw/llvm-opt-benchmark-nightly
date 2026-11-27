Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/value?download=true
inline.NumInlined: 7081
inline.NumDeleted: 2280
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK5jinja12value_bool_t9as_stringEv:._crit_edge.i.i
  %i.c = select i1 %.not, ptr @.str.212, ptr @.str.211
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !75
  %i.e = select i1 %.not, i64 5, i64 4            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(4) %i.c, i64 %i.e, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !55
  %.sroa.sel.v.sroa.sel.v = select i1 %.not, i64 21, i64 20
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel, align 1, !tbaa !59
  invoke void @_ZN5jinja6stringC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !56     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !tbaa !59
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !56     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.n = load i64, ptr %i.d, align 8, !tbaa !59
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5jinja12value_bool_t7as_boolEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !153
  %i.c = icmp ne i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5jinja12value_bool_t10is_numericEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5jinja12value_bool_t11is_hashableEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5jinja12value_bool_t11unique_hashEv(ptr dead_on_unwind noalias writable sret(%"struct.jinja::hasher") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"struct.jinja::hasher") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %i.b) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5jinja12value_bool_t10equivalentERKNS_7value_tE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %1)
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !153
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !153
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !154
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !154
  %i.n = fcmp oeq double %i.k, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.n, %bb.c ]
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5jinja12value_bool_t8nonequalERKNS_7value_tE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8, !tbaa !65
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !180  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !180  ; 3 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.h, align 1, !tbaa !59
  %.not.i = icmp eq i8 %i.l, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread4, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.m = load i8, ptr %i.j, align 1, !tbaa !59
  %i.n = icmp eq i8 %i.m, 42
  %.idx.i.i = zext i1 %i.n to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.o) #35
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread4

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !153
  %i.v = icmp ne i64 %i.s, %i.u
  br label %_ZNKSt9type_infoeqERKS_.exit.thread4

_ZNKSt9type_infoeqERKS_.exit.thread4:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit
  %i.w = phi i1 [ true, %_ZNKSt9type_infoeqERKS_.exit ], [ %i.v, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ true, %bb.b ]
  ret i1 %i.w
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5jinja13value_array_tD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN5jinja7value_tD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5jinja13value_array_t4typeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.213, i64 5, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.c, align 1, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5jinja13value_array_t9as_stringEv(ptr dead_on_unwind noalias writable sret(%"struct.jinja::string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  %3 = alloca %"class.std::shared_ptr", align 16  ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %.str.214..str.194 = select i1 %i.d, ptr @.str.214, ptr @.str.194
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.str.214..str.194, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !79   ; 3 uses
  %.not52 = icmp eq ptr %i.h, %i.i
  br i1 %.not52, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.i, align 8, !tbaa !58
  store <2 x ptr> %i.o, ptr %3, align 16, !tbaa !58
  %.not.i.i.i.peel = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.peel, label %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i.i.peel = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.p, align 4, !tbaa !60
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !60
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit.peel

bb.e:                                             ; preds = %bb.c
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit.peel

_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit.peel: ; preds = %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZN5jinja20value_to_string_reprB5cxx11ERKSt10shared_ptrINS_7value_tEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.f unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit.peel
  %i.u = load ptr, ptr %4, align 8, !tbaa !56
  %i.v = load i64, ptr %i.k, align 8, !tbaa !55
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.u, i64 noundef %i.v)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.f
  %i.x = load ptr, ptr %4, align 8, !tbaa !56     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.l
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.z = load i64, ptr %i.l, align 8, !tbaa !59
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !57  ; 8 uses
  %.not.i.i23.peel = icmp eq ptr %i.ab, null
  br i1 %.not.i.i23.peel, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i24.peel = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i24.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ac, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel

bb.j:                                             ; preds = %bb.h
  %i.ai = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.peel = phi i32 [ %i.af, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.peel, 1
  br i1 %i.aj, label %bb.k, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, !prof !76

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #35
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel

bb.l:                                             ; preds = %bb.g
  store i32 0, ptr %i.ac, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !63
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #35, !inline_history !1
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !65
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #35, !inline_history !1
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel: ; preds = %bb.l, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !79
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 16
  br i1 %i.aw, label %.peel.next, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge: ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel
  %.lcssa62 = phi i64 [ %i.av, %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ], [ %i.co, %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.ax = icmp eq i64 %.lcssa62, 16
  %brmerge.not = and i1 %i.ax, %i.d
  %.str.195.mux = select i1 %i.d, ptr @.str.215, ptr @.str.195
  br i1 %brmerge.not, label %bb.z, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %spec.select = select i1 %i.d, ptr @.str.215, ptr @.str.195
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29

.peel.next:                                       ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.051 = phi i64 [ %i.cj, %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 1, %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ] ; 4 uses
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.91, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29, %bb.z, %bb.a
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %.peel.next
  %.pre76 = load ptr, ptr %i.f, align 8, !tbaa !79 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.az = ptrtoint ptr %.pre to i64
  %i.ba = ptrtoint ptr %.pre76 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %.not.i.i = icmp ult i64 %.051, %i.bc
  br i1 %.not.i.i, label %bb.m, label %.loopexit

.loopexit:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.163, i64 noundef %.051, i64 noundef %i.bc) #37
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %.loopexit
  unreachable

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.pre76, i64 %.051 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !57 ; 2 uses
  %i.bg = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !58
  store <2 x ptr> %i.bg, ptr %3, align 16, !tbaa !58
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !60
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !60
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit

bb.p:                                             ; preds = %bb.n
  %i.bl = atomicrmw volatile add ptr %i.bh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit: ; preds = %bb.m, %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZN5jinja20value_to_string_reprB5cxx11ERKSt10shared_ptrINS_7value_tEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.q unwind label %.loopexit.split-lp67.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit
  %i.bm = load ptr, ptr %4, align 8, !tbaa !56
  %i.bn = load i64, ptr %i.k, align 8, !tbaa !55
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bm, i64 noundef %i.bn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.q
  %i.bp = load ptr, ptr %4, align 8, !tbaa !56    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.l
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.br = load i64, ptr %i.l, align 8, !tbaa !59
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !57  ; 8 uses
  %.not.i.i23 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i23, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bu, align 8, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !63
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !65
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #35, !inline_history !1
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !65
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #35, !inline_history !1
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i24 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i24, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.bx, %bb.u ], [ %i.ch, %bb.v ]
  %i.ci = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ci, label %bb.w, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !76

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #35
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.cj = add nuw i64 %.051, 1                    ; 2 uses
  %i.ck = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !79
end_hunk_0
begin_hunk_1_@_ZNK5jinja13value_array_t10equivalentERKNS_7value_tE:bb.a

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.m = load i8, ptr %i.j, align 1, !tbaa !59
  %i.n = icmp eq i8 %i.m, 42
  %.idx.i.i = zext i1 %i.n to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.o) #35
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEESB_NS3_17value_equivalenceEEbT_SD_T0_SE_T1_.exit

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br i1 %i.t, label %bb.c, label %_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEESB_NS3_17value_equivalenceEEbT_SD_T0_SE_T1_.exit

bb.c:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.u = load ptr, ptr %1, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 176
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(184) %1)
  br i1 %i.x, label %bb.d, label %_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEESB_NS3_17value_equivalenceEEbT_SD_T0_SE_T1_.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = ptrtoint ptr %i.z to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = ptrtoint ptr %i.ad to i64
  %i.al = sub i64 %i.aj, %i.ak
  %.not.i.i = icmp eq i64 %i.ai, %i.al
  br i1 %.not.i.i, label %bb.e, label %_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEESB_NS3_17value_equivalenceEEbT_SD_T0_SE_T1_.exit

bb.e:                                             ; preds = %bb.d
  %.not6.i.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not6.i.i.i, label %_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEESB_NS3_17value_equivalenceEEbT_SD_T0_SE_T1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %i.ad, %bb.e ] ; 2 uses
  %.sroa.03.07.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.z, %bb.e ] ; 2 uses
  %i.am = load ptr, ptr %.sroa.03.07.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.08.i.i.i, align 8, !tbaa !50
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 200
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(184) %i.am, ptr noundef nonnull align 8 dereferenceable(184) %i.an), !inline_history !615 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 16
  %.not.i.i.i = icmp ne ptr %i.as, %i.ab
  %or.cond.not = select i1 %i.ar, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i, label %_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEESB_NS3_17value_equivalenceEEbT_SD_T0_SE_T1_.exit, !llvm.loop !616

_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEESB_NS3_17value_equivalenceEEbT_SD_T0_SE_T1_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.e, %bb.d, %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit
  %i.au = phi i1 [ false, %bb.c ], [ false, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ false, %_ZNKSt9type_infoeqERKS_.exit ], [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.e ], [ %i.ar, %.lr.ph.i.i.i ]
  ret i1 %i.au
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5jinja14value_object_tD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5jinja14value_object_tE, i64 16), ptr %0, align 8, !tbaa !65
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.noexc.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !186 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt10shared_ptrIN5jinja7value_tEES6_ELb0EEEEE18_M_deallocate_nodeEPS9_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull %.06.i.i.i.i)
          to label %.noexc.i.i.i unwind label %bb.b

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #39
  unreachable

_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.noexc.i.i.i, %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !187
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !188
  %i.j = shl i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.j, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !187  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt13unordered_mapISt10shared_ptrIN5jinja7value_tEES3_NS1_12value_hasherENS1_17value_equivalenceESaISt4pairIKS3_S3_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.n = load i64, ptr %i.h, align 8, !tbaa !188
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #38
  br label %_ZNSt13unordered_mapISt10shared_ptrIN5jinja7value_tEES3_NS1_12value_hasherENS1_17value_equivalenceESaISt4pairIKS3_S3_EEED2Ev.exit

_ZNSt13unordered_mapISt10shared_ptrIN5jinja7value_tEES3_NS1_12value_hasherENS1_17value_equivalenceESaISt4pairIKS3_S3_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  tail call void @_ZN5jinja7value_tD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #35
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5jinja14value_object_tD0Ev(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5jinja14value_object_tE, i64 16), ptr %0, align 8, !tbaa !65
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.noexc.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.d, %.noexc.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !186 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt10shared_ptrIN5jinja7value_tEES6_ELb0EEEEE18_M_deallocate_nodeEPS9_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull %.06.i.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.b, !inline_history !617

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !18

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #39, !inline_history !617
  unreachable

_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.noexc.i.i.i.i, %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !187
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !188
  %i.j = shl i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.j, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !187  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN5jinja14value_object_tD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.n = load i64, ptr %i.h, align 8, !tbaa !188
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #38, !inline_history !617
  br label %_ZN5jinja14value_object_tD2Ev.exit

_ZN5jinja14value_object_tD2Ev.exit:               ; preds = %_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.c
  tail call void @_ZN5jinja7value_tD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(241) %0) #35, !inline_history !617
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 248) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5jinja14value_object_t4typeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(241) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.216, i64 6, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.c, align 2, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5jinja14value_object_t9as_stringEv(ptr dead_on_unwind noalias writable sret(%"struct.jinja::string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(241) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.196, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !174  ; 3 uses
  %.not64 = icmp eq ptr %i.d, %i.e
  br i1 %.not64, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  invoke void @_ZN5jinja20value_to_string_reprB5cxx11ERKSt10shared_ptrINS_7value_tEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.c unwind label %.loopexit.split-lp81.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %3, align 8, !tbaa !56
  %i.l = load i64, ptr %i.f, align 8, !tbaa !55
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.k, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp85.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.92, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30.peel unwind label %.loopexit.split-lp85.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZN5jinja20value_to_string_reprB5cxx11ERKSt10shared_ptrINS_7value_tEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.d unwind label %.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30.peel
  %i.o = load ptr, ptr %4, align 8, !tbaa !56
  %i.p = load i64, ptr %i.g, align 8, !tbaa !55
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.o, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit32.peel unwind label %.loopexit.split-lp95.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit32.peel: ; preds = %bb.d
  %i.r = load ptr, ptr %4, align 8, !tbaa !56     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.h
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit32.peel
  %i.t = load i64, ptr %i.h, align 8, !tbaa !59
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit32.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.v = load ptr, ptr %3, align 8, !tbaa !56     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.i
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.x = load i64, ptr %i.i, align 8, !tbaa !59
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !174
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ugt i64 %i.ad, 32
  br i1 %i.ae, label %.peel.next, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.197, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %.063 = phi i64 [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.peel ] ; 4 uses
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.91, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %.peel.next
  %.pre100 = load ptr, ptr %i.b, align 8, !tbaa !174 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.ah = ptrtoint ptr %.pre to i64
  %i.ai = ptrtoint ptr %.pre100 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 5                 ; 2 uses
  %.not.i.i = icmp ult i64 %.063, %i.ak
  br i1 %.not.i.i, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.163, i64 noundef %.063, i64 noundef %i.ak) #37
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit
  unreachable

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.pre100, i64 %.063 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  invoke void @_ZN5jinja20value_to_string_reprB5cxx11ERKSt10shared_ptrINS_7value_tEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %bb.f unwind label %.loopexit.split-lp81.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %3, align 8, !tbaa !56
  %i.ao = load i64, ptr %i.f, align 8, !tbaa !55
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.an, i64 noundef %i.ao)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp85.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.f
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.92, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %.loopexit.split-lp85.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZN5jinja20value_to_string_reprB5cxx11ERKSt10shared_ptrINS_7value_tEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %bb.g unwind label %.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.ar = load ptr, ptr %4, align 8, !tbaa !56
  %i.as = load i64, ptr %i.g, align 8, !tbaa !55
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef %i.ar, i64 noundef %i.as)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit32 unwind label %.loopexit.split-lp95.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit32: ; preds = %bb.g
  %i.au = load ptr, ptr %4, align 8, !tbaa !56    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.h
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit32
  %i.aw = load i64, ptr %i.h, align 8, !tbaa !59
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.ay = load ptr, ptr %3, align 8, !tbaa !56    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.i
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.i, align 8, !tbaa !59
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.bc = add nuw i64 %.063, 1                    ; 2 uses
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !174
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 5
  %i.bj = icmp ult i64 %i.bc, %i.bi
  br i1 %i.bj, label %.peel.next, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, !llvm.loop !618

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %.loopexit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, %bb.a
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp81.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

.loopexit.split-lp85.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.f, %bb.c, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30.peel
  %lpad.loopexit.split-lp166 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

.loopexit.split-lp95.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.d
  %lpad.loopexit.split-lp169 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !56    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.h
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %.loopexit.split-lp95.loopexit.split-lp.loopexit.split-lp
  %i.bm = load i64, ptr %i.h, align 8, !tbaa !59
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %.loopexit.split-lp95.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  %.pn19 = phi { ptr, i32 } [ %lpad.loopexit.split-lp169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %lpad.loopexit.split-lp166, %.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp169, %.loopexit.split-lp95.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp85.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp85.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !56    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.i
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.h
  %i.bq = load i64, ptr %i.i, align 8, !tbaa !59
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.h, %.loopexit.split-lp81.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp81.loopexit.split-lp.loopexit.split-lp ], [ %.pn19.pn, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.bs, ptr %5, align 8, !tbaa !75, !alias.scope !625
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bt, align 8, !tbaa !55, !alias.scope !625
  store i8 0, ptr %i.bs, align 8, !tbaa !59, !alias.scope !625
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !161, !noalias !625 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bv, null
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !625 ; 2 uses
  %i.by = icmp ugt ptr %i.bv, %i.bx
  %.08.i.i.i = select i1 %i.by, ptr %i.bv, ptr %i.bx ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i42 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i42, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !162, !noalias !625 ; 2 uses
  %i.cb = ptrtoint ptr %.08.i.i.i to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ca, i64 noundef %i.cd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %5, align 8, !tbaa !56, !alias.scope !625 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bs
  br i1 %i.ch, label %.body, label %.body.sink.split

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ci)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  invoke void @_ZN5jinja6stringC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cj = load ptr, ptr %5, align 8, !tbaa !56    ; 2 uses
end_hunk_1
