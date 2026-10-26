Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCPackLog?download=true
inline.NumInlined: 186
inline.NumDeleted: 103
begin_hunk_0_@_ZN10cmCPackLog16SetLogOutputFileEPKc:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #14, !inline_history !0
  br label %_ZNSt10unique_ptrISoSt14default_deleteISoEE5resetEPSo.exit

_ZNSt10unique_ptrISoSt14default_deleteISoEE5resetEPSo.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISoEclEPSo.exit.i.i
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrISoSt14default_deleteISoEE5resetEPSo.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZSt11make_uniqueI21cmGeneratedFileStreamJRPKcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.g = load ptr, ptr %2, align 8, !tbaa !38
  store ptr null, ptr %2, align 8, !tbaa !38
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !31   ; 3 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !31
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit, label %_ZNSt10unique_ptrISoSt14default_deleteISoEEaSI21cmGeneratedFileStreamS0_IS4_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPSoESt6__not_ISt8is_arrayIS9_EEEESt13is_assignableIRS1_OSA_EEE5valueERS2_E4typeEOSB_.exit

_ZNSt10unique_ptrISoSt14default_deleteISoEEaSI21cmGeneratedFileStreamS0_IS4_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPSoESt6__not_ISt8is_arrayIS9_EEEESt13is_assignableIRS1_OSA_EEE5valueERS2_E4typeEOSB_.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #14, !inline_history !49
  %.pr4 = load ptr, ptr %2, align 8, !tbaa !38    ; 3 uses
  %.not.i = icmp eq ptr %.pr4, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i

_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i: ; preds = %_ZNSt10unique_ptrISoSt14default_deleteISoEEaSI21cmGeneratedFileStreamS0_IS4_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPSoESt6__not_ISt8is_arrayIS9_EEEESt13is_assignableIRS1_OSA_EEE5valueERS2_E4typeEOSB_.exit
  %i.l = load ptr, ptr %.pr4, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(348) %.pr4) #14, !inline_history !50
  br label %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b, %_ZNSt10unique_ptrISoSt14default_deleteISoEEaSI21cmGeneratedFileStreamS0_IS4_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPSoESt6__not_ISt8is_arrayIS9_EEEESt13is_assignableIRS1_OSA_EEE5valueERS2_E4typeEOSB_.exit, %_ZNKSt14default_deleteI21cmGeneratedFileStreamEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrI21cmGeneratedFileStreamSt14default_deleteIS0_EED2Ev.exit, %_ZNSt10unique_ptrISoSt14default_deleteISoEE5resetEPSo.exit
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !31   ; 5 uses
  %.not6 = icmp eq ptr %i.o, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !47
  %i.v = and i32 %i.u, 5
  %.not7 = icmp eq i32 %i.v, 0
  br i1 %.not7, label %bb.e, label %_ZNSt10unique_ptrISoSt14default_deleteISoEE5resetEPSo.exit3

_ZNSt10unique_ptrISoSt14default_deleteISoEE5resetEPSo.exit3: ; preds = %bb.d
  store ptr null, ptr %i.b, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #14, !inline_history !0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrISoSt14default_deleteISoEE5resetEPSo.exit3, %bb.d, %bb.c
  %i.y = phi ptr [ %.pre, %_ZNSt10unique_ptrISoSt14default_deleteISoEE5resetEPSo.exit3 ], [ %i.o, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.y, ptr %i.z, align 8, !tbaa !35
  %i.aa = icmp ne ptr %i.y, null
  ret i1 %i.aa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11make_uniqueI21cmGeneratedFileStreamJRPKcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(616) ptr @_Znwm(i64 noundef 616) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !26
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.9) #17
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.f, ptr %i.a, align 8, !tbaa !51
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc5 unwind label %bb.h    ; 2 uses

.noexc5:                                          ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8, !tbaa !34
  %i.i = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.i, ptr %i.d, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc5, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc5 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.c, align 1, !tbaa !28
  store i8 %i.k, ptr %i.j, align 1, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.c, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !27
  %i.n = load ptr, ptr %2, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  invoke void @_ZN21cmGeneratedFileStreamC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb16codecvt_Encoding(ptr noundef nonnull align 8 dereferenceable(348) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.b, ptr %0, align 8, !tbaa !38
  %i.p = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.r = load i64, ptr %i.d, align 8, !tbaa !28
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.i:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.d
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.i
  %i.x = load i64, ptr %i.d, align 8, !tbaa !28
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.h
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 616) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10cmCPackLog3LogEiPKciS1_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(232) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !52, !range !53, !noundef !54 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  store i64 0, ptr %i.d, align 8, !tbaa !27
  store i8 0, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88.thread, label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88.thread: ; preds = %bb.a
  %.not56156 = trunc i32 %1 to i8                 ; 2 uses
  %i.g = and i32 %1, 8
  %.not57.not165 = icmp eq i32 %i.g, 0
  %i.h = and i32 %1, 16
  %.not58.not177 = icmp eq i32 %i.h, 0
  %i.i = and i32 %1, 24
  %i.j = icmp eq i32 %i.i, 0
  %.1.mux179 = select i1 %i.j, i8 %.not56156, i8 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit96

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !25
  %.not55 = icmp ne i32 %i.l, %1                  ; 3 uses
  %.not56 = trunc i32 %1 to i1
  %.048.not = xor i1 %.not55, true                ; 3 uses
  %brmerge.not = and i1 %.not55, %.not56
  %7 = trunc i32 %1 to i8
  br i1 %brmerge.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i77, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit80

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149.invoke, %.invoke205, %.invoke204, %.invoke203, %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147, %bb.ah, %bb.ag, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139, %bb.ae, %bb.ad, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120, %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116, %bb.m, %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i77, %bb.aj, %bb.ai, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %6, align 8, !tbaa !34     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !28
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  resume { ptr, i32 } %i.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i77: ; preds = %bb.b
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.1, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit80 unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i77, %bb.b
  %.0 = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i77 ], [ %7, %bb.b ] ; 3 uses
  %i.s = and i32 %1, 8
  %.not57.not = icmp eq i32 %i.s, 0               ; 4 uses
  %brmerge63 = or i1 %.not57.not, %.048.not
  %.0.mux = select i1 %.not57.not, i8 %.0, i8 1
  br i1 %brmerge63, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit80
  %i.t = load i64, ptr %i.d, align 8, !tbaa !27
  switch i64 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i81 [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i85
    i64 4611686018427387903, label %.invoke204
  ]

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i81: ; preds = %bb.d
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit84 unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i81
  %.pre = load i64, ptr %i.d, align 8, !tbaa !27
  %i.v = add i64 %.pre, -4611686018427387897
  %i.w = icmp ult i64 %i.v, 7
  br i1 %i.w, label %.invoke204, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i85: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit84
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88 unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit80
  %.1 = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i85 ], [ %.0.mux, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit80 ]
  %i.y = and i32 %1, 16
  %.not58.not = icmp eq i32 %i.y, 0               ; 3 uses
  %brmerge65 = or i1 %.not58.not, %.048.not
  %.1.mux = select i1 %.not58.not, i8 %.1, i8 1
  br i1 %brmerge65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit96, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88
  %i.z = load i64, ptr %i.d, align 8, !tbaa !27
  switch i64 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i89 [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93
    i64 4611686018427387903, label %.invoke204
  ]

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i89: ; preds = %bb.e
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit92 unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i89
  %.pre185 = load i64, ptr %i.d, align 8, !tbaa !27
  %i.ab = add i64 %.pre185, -4611686018427387899
  %i.ac = icmp ult i64 %i.ab, 5
  br i1 %i.ac, label %.invoke204, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit92
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.3, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit96 unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88
  %.not58.not184 = phi i1 [ %.not58.not177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88.thread ], [ %.not58.not, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93 ] ; 2 uses
  %.048.not161168183 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88.thread ], [ %.048.not, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93 ] ; 2 uses
  %.048160169182 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88.thread ], [ %.not55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93 ]
  %.0170181 = phi i8 [ %.not56156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88.thread ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88 ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93 ]
  %.not57.not171180 = phi i1 [ %.not57.not165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88.thread ], [ %.not57.not, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88 ], [ %.not57.not, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93 ]
  %.2 = phi i8 [ %.1.mux179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88.thread ], [ %.1.mux, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit88 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i93 ] ; 2 uses
  %i.ae = and i32 %1, 4
  %.not59 = icmp eq i32 %i.ae, 0
  br i1 %.not59, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit104, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit96
  %i.af = load i8, ptr %i.a, align 1, !tbaa !52, !range !53, !noundef !54 ; 2 uses
  %i.ag = trunc nuw i8 %i.af to i1                ; 3 uses
  %.not71 = xor i1 %i.ag, true
  %brmerge73 = or i1 %.048.not161168183, %.not71
  %.mux75 = or i8 %i.af, %i.b
  %.2.mux = select i1 %i.ag, i8 1, i8 %.2
  br i1 %brmerge73, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit104, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !27
  switch i64 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i97 [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i101
    i64 4611686018427387903, label %.invoke204
  ]

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i97: ; preds = %bb.g
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit100 unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i97
  %.pre186 = load i64, ptr %i.d, align 8, !tbaa !27
  %i.aj = add i64 %.pre186, -4611686018427387899
  %i.ak = icmp ult i64 %i.aj, 5
  br i1 %i.ak, label %.invoke204, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i101: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit100
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.4, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit104 unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i101, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit96
  %.052 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit96 ], [ %i.ag, %bb.f ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i101 ]
  %.047 = phi i8 [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit96 ], [ %.mux75, %bb.f ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i101 ]
  %.3 = phi i8 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit96 ], [ %.2.mux, %bb.f ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i101 ] ; 2 uses
  %i.am = and i32 %1, 2
  %.not60 = icmp eq i32 %i.am, 0
  br i1 %.not60, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit112, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit104
  %i.an = load i8, ptr %0, align 8, !tbaa !55, !range !53, !noundef !54
  %i.ao = trunc nuw i8 %i.an to i1                ; 3 uses
  %.not66 = xor i1 %i.ao, true
  %brmerge68 = or i1 %.048.not161168183, %.not66
  %.3.mux = select i1 %i.ao, i8 1, i8 %.3
  br i1 %brmerge68, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit112, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !27
  switch i64 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i105 [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i109
    i64 4611686018427387903, label %.invoke204
  ]

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i105: ; preds = %bb.i
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit108 unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i105
  %.pre187 = load i64, ptr %i.d, align 8, !tbaa !27
  %i.ar = add i64 %.pre187, -4611686018427387897
  %i.as = icmp ult i64 %i.ar, 7
  br i1 %i.as, label %.invoke204, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i109

.invoke204:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit108, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit100, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit92, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit84, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke204
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i109: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit108
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.1, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit112 unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i109, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit104
  %.049 = phi i1 [ %i.ao, %bb.h ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit104 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i109 ]
  %.4 = phi i8 [ %.3.mux, %bb.h ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit104 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i109 ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.av = load i8, ptr %i.au, align 2, !tbaa !56, !range !53, !noundef !54
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !35  ; 8 uses
  %.not61 = icmp eq ptr %i.ax, null
  br i1 %.not61, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit112
  br i1 %.048160169182, label %bb.k, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123

bb.k:                                             ; preds = %bb.j
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !47
  %i.bf = or i32 %i.be, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bc, i32 noundef %i.bf)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116 unwind label %bb.c

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #14
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull %2, i64 noundef %i.bg)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116: ; preds = %bb.l, %bb.m
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 noundef %3)
          to label %bb.n unwind label %bb.c       ; 2 uses

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120: ; preds = %bb.n
  %i.bl = load ptr, ptr %6, align 8, !tbaa !34
  %i.bm = load i64, ptr %i.d, align 8, !tbaa !27
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bl, i64 noundef %i.bm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.c

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123_crit_edge unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123_crit_edge: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.pre188 = load ptr, ptr %i.e, align 8, !tbaa !35
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123_crit_edge, %bb.j
  %i.bp = phi ptr [ %.pre188, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123_crit_edge ], [ %i.ax, %bb.j ]
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef %4, i64 noundef %5)
          to label %bb.o unwind label %bb.c       ; 0 uses

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit112
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.br, align 4, !tbaa !25
  %8 = trunc i8 %.4 to i1
  %not. = xor i1 %i.aw, true
  %i.bs = select i1 %not., i1 %8, i1 false
  br i1 %i.bs, label %bb.p, label %bb.ao

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !57, !range !53, !noundef !54
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.q, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143

bb.q:                                             ; preds = %bb.p
  br i1 %.not58.not184, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !27 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.s, label %.invoke203

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not57.not171180, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !27 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.u, label %.invoke203

bb.u:                                             ; preds = %bb.t, %bb.s
  %9 = trunc i8 %.0170181 to i1
  br i1 %9, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !27 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.w, label %.invoke203

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %.049, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !27 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.y, label %.invoke203

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %.052, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !27 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.aa, label %.invoke203

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !27 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit125, label %.invoke203

.invoke203:                                       ; preds = %bb.aa, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r
  %.sink208 = phi i64 [ 104, %bb.z ], [ 168, %bb.r ], [ 136, %bb.t ], [ 40, %bb.v ], [ 72, %bb.x ], [ 8, %bb.aa ]
  %.sink207 = phi i64 [ 200, %bb.z ], [ 208, %bb.r ], [ 208, %bb.t ], [ 200, %bb.v ], [ 200, %bb.x ], [ 200, %bb.aa ]
  %i.co = phi i64 [ %i.cj, %bb.z ], [ %i.bx, %bb.r ], [ %i.ca, %bb.t ], [ %i.cd, %bb.v ], [ %i.cg, %bb.x ], [ %i.cm, %bb.aa ]
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %.sink208
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink207
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !34
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef %i.cs, i64 noundef %i.co)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit125 unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit125: ; preds = %.invoke203, %bb.aa
  %i.cu = trunc nuw i8 %.047 to i1
  br i1 %i.cu, label %bb.ab, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143

bb.ab:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit125
  %i.cv = and i32 %1, 24
  %or.cond.not = icmp eq i32 %i.cv, 0
  %.not.i144 = icmp eq ptr %2, null               ; 2 uses
  br i1 %or.cond.not, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !30 ; 5 uses
  br i1 %.not.i144, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !33
  %i.cz = getelementptr i8, ptr %i.cy, i64 -24
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !47
  %i.de = or i32 %i.dd, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.db, i32 noundef %i.de)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139 unwind label %bb.c

bb.ae:                                            ; preds = %bb.ac
  %i.df = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #14
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull %2, i64 noundef %i.df)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139: ; preds = %bb.ad, %bb.ae
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149.invoke unwind label %bb.c ; 0 uses

bb.af:                                            ; preds = %bb.ab
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !29 ; 5 uses
  br i1 %.not.i144, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !33
  %i.dl = getelementptr i8, ptr %i.dk, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !47
  %i.dq = or i32 %i.dp, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dn, i32 noundef %i.dq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147 unwind label %bb.c

bb.ah:                                            ; preds = %bb.af
  %i.dr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #14
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull %2, i64 noundef %i.dr)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147: ; preds = %bb.ag, %bb.ah
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149.invoke unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149.invoke: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139
  %i.du = phi ptr [ %i.cx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139 ], [ %i.dj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147 ]
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.du, i32 noundef %3)
          to label %.invoke unwind label %bb.c

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149.invoke
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143: ; preds = %.invoke, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit125, %bb.p
  %i.dx = and i32 %1, 24
  %or.cond3.not = icmp eq i32 %i.dx, 0
  br i1 %or.cond3.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !30
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef %4, i64 noundef %5)
          to label %.invoke205 unwind label %bb.c ; 0 uses

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !29
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef %4, i64 noundef %5)
          to label %.invoke205 unwind label %bb.c ; 0 uses

.invoke205:                                       ; preds = %bb.aj, %bb.ai
  %.in = phi ptr [ %i.dy, %bb.ai ], [ %i.eb, %bb.aj ]
  %i.ee = load ptr, ptr %.in, align 8, !tbaa !31
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
          to label %bb.ak unwind label %bb.c      ; 0 uses

bb.ak:                                            ; preds = %.invoke205
  %i.eg = getelementptr i8, ptr %4, i64 %5
  %i.eh = getelementptr i8, ptr %i.eg, i64 -1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !28
  %i.ej = icmp eq i8 %i.ei, 10
  %i.ek = icmp ugt i64 %5, 2
  %or.cond5 = or i1 %i.ek, %i.ej
  br i1 %or.cond5, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.bt, align 1, !tbaa !57
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  br i1 %.not58.not184, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr @_ZN13cmSystemTools15s_ErrorOccurredE, align 1, !tbaa !11
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.o
  %i.el = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.c
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.ao
  %i.en = load i64, ptr %i.c, align 8, !tbaa !28
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN21cmGeneratedFileStreamC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb16codecvt_Encoding(ptr noundef nonnull align 8 dereferenceable(348), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i32 noundef) unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

end_hunk_0
