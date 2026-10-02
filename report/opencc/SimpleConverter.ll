Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/SimpleConverter?download=true
inline.NumInlined: 133
inline.NumDeleted: 72
begin_hunk_0_@_ZNK6opencc15SimpleConverter7ConvertB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.q, %bb.f ]
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.c
  %.merged = phi { ptr, i32 } [ %i.f, %bb.c ], [ %.pn, %bb.h ]
  resume { ptr, i32 } %.merged

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #23
  unreachable

bb.k:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #7

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZNK6opencc15SimpleConverter7ConvertB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19
  tail call void @_ZNK6opencc15SimpleConverter7ConvertB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.a, ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6opencc15SimpleConverter7ConvertB5cxx11EPKcm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %3, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.b, %bb.b ], [ %3, %bb.a ]
  tail call void @_ZNK6opencc15SimpleConverter7ConvertB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %.sink, ptr %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6opencc15SimpleConverter7ConvertEPKcPc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 %i.c, ptr nonnull %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !21     ; 3 uses
  %i.h = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.g) #19 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.g, %i.k
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  %i.m = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.m)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.k, align 8, !tbaa !22
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i64 %i.j

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6opencc9ExceptionE      ; 3 uses
  %i.q = extractvalue { ptr, i32 } %i.p, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.r = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6opencc9ExceptionE) #19
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.t = extractvalue { ptr, i32 } %i.p, 0
  %i.u = call ptr @__cxa_begin_catch(ptr %i.t) #19 ; 2 uses
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #19
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef %i.z)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #22
          to label %bb.k unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.aa, %bb.f ]
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.c
  %.merged = phi { ptr, i32 } [ %i.p, %bb.c ], [ %.pn, %bb.h ]
  resume { ptr, i32 } %.merged

bb.j:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #23
  unreachable

bb.k:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6opencc15SimpleConverter7ConvertEPKcmPc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = icmp eq i64 %2, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @_ZNK6opencc15SimpleConverter7ConvertEPKcPc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %3)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !42, !alias.scope !54
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !38, !alias.scope !54
  store i8 0, ptr %i.c, align 8, !tbaa !22, !alias.scope !54
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %2, i8 noundef signext 0)
          to label %_ZN6opencc8UTF8Util10FromSubstrB5cxx11EPKcm.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !21, !alias.scope !54 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.c, align 8, !tbaa !22, !alias.scope !54
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #20
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %common.resume.op = phi { ptr, i32 } [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.e, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN6opencc8UTF8Util10FromSubstrB5cxx11EPKcm.exit: ; preds = %bb.c
  %i.j = load ptr, ptr %4, align 8, !tbaa !21, !alias.scope !54
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %1, i64 %2, i1 false)
  %i.k = load ptr, ptr %4, align 8, !tbaa !21
  %i.l = invoke noundef i64 @_ZNK6opencc15SimpleConverter7ConvertEPKcPc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.k, ptr noundef %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6opencc8UTF8Util10FromSubstrB5cxx11EPKcm.exit
  %i.m = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.c
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.c, align 8, !tbaa !22
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.g

bb.f:                                             ; preds = %_ZN6opencc8UTF8Util10FromSubstrB5cxx11EPKcm.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.c
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.f
  %i.t = load i64, ptr %i.c, align 8, !tbaa !22
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6opencc15SimpleConverter7InspectESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"struct.opencc::ConversionInspectionResult") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 %2, ptr %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !37
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind writable sret(%"struct.opencc::ConversionInspectionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 %2, ptr %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6opencc9ExceptionE      ; 3 uses
  %i.g = extractvalue { ptr, i32 } %i.f, 1
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6opencc9ExceptionE) #19
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, i32 } %i.f, 0
  %i.k = tail call ptr @__cxa_begin_catch(ptr %i.j) #19 ; 2 uses
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #19
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef %i.p)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #22
          to label %bb.k unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.q, %bb.f ]
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.c
  %.merged = phi { ptr, i32 } [ %i.f, %bb.c ], [ %.pn, %bb.h ]
  resume { ptr, i32 } %.merged

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #23
  unreachable

bb.k:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_Z20opencc_open_internalPKc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %bb.b unwind label %bb.g       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  %spec.store.select = select i1 %i.c, ptr @.str.4, ptr %0 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !42
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.e, ptr %i.a, align 8, !tbaa !43
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %1, align 8, !tbaa !21
  %i.h = load i64, ptr %i.a, align 8, !tbaa !43
  store i64 %i.h, ptr %i.d, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %spec.store.select, align 1, !tbaa !22
  store i8 %i.j, ptr %i.i, align 1, !tbaa !22
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %spec.store.select, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !38
  %i.m = load ptr, ptr %1, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  invoke void @_ZN6opencc15SimpleConverterC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.d, align 8, !tbaa !22
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error
  br label %bb.j

bb.h:                                             ; preds = %.noexc.i
  %i.t = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.i:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error        ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.d
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.i
  %i.x = load i64, ptr %i.d, align 8, !tbaa !22
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.h
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %i.s, %bb.g ] ; 3 uses
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 1
  %i.z = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #19
  %i.aa = icmp eq i32 %.1, %i.z
  br i1 %i.aa, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %.110 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.ab = call ptr @__cxa_begin_catch(ptr %.110) #19 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #19
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) @_ZL6cErrorB5cxx11, ptr noundef %i.af)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @__cxa_end_catch()
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.n:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.012 = phi ptr [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ inttoptr (i64 -1 to ptr), %bb.l ]
  ret ptr %.012

bb.o:                                             ; preds = %bb.m, %bb.j
  %.merged = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.ah, %bb.m ]
  resume { ptr, i32 } %.merged

bb.p:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #23
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @opencc_open(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef ptr @_Z20opencc_open_internalPKc(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @opencc_close(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6opencc15SimpleConverterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @opencc_convert_utf8_to_buffer(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef i64 @_ZNK6opencc15SimpleConverter7ConvertEPKcmPc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3)
          to label %bb.f unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error        ; 3 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 1
  %i.d = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #19
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { ptr, i32 } %i.b, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #19 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #19
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) @_ZL6cErrorB5cxx11, ptr noundef %i.k)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_end_catch()
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.a, %bb.d
  %.011 = phi i64 [ -1, %bb.d ], [ %i.a, %bb.a ]
  ret i64 %.011

bb.g:                                             ; preds = %bb.e, %bb.b
  %.merged = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.m, %bb.e ]
  resume { ptr, i32 } %.merged

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @opencc_convert_utf8(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = icmp eq i64 %2, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19, !noalias !57
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink.i = phi i64 [ %i.b, %bb.b ], [ %2, %bb.a ]
  invoke void @_ZNK6opencc15SimpleConverter7ConvertB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull readonly align 8 dereferenceable(8) %0, i64 %.sink.i, ptr %1)
          to label %_ZNK6opencc15SimpleConverter7ConvertB5cxx11EPKcm.exit unwind label %bb.e

_ZNK6opencc15SimpleConverter7ConvertB5cxx11EPKcm.exit: ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38   ; 5 uses
  %i.e = add i64 %i.d, 1
  %i.f = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #21
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %_ZNK6opencc15SimpleConverter7ConvertB5cxx11EPKcm.exit
  %i.g = load ptr, ptr %3, align 8, !tbaa !21     ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %i.g, i64 %i.d, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.h, align 1, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.d
  %i.k = icmp ult i64 %i.d, 16
  call void @llvm.assume(i1 %i.k)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.i, align 8, !tbaa !22
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.m) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.f:                                             ; preds = %_ZNK6opencc15SimpleConverter7ConvertB5cxx11EPKcm.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error        ; 2 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17: ; preds = %bb.f
  %i.s = icmp ult i64 %i.d, 16
  call void @llvm.assume(i1 %i.s)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.f
  %i.t = load i64, ptr %i.q, align 8, !tbaa !22
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.u) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17, %bb.e
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ] ; 3 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.v = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #19
  %i.w = icmp eq i32 %.0, %i.v
  br i1 %i.w, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.012 = extractvalue { ptr, i32 } %.pn, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %.012) #19 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #19
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) @_ZL6cErrorB5cxx11, ptr noundef %i.ab)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @__cxa_end_catch()
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.014 = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %bb.h ]
  ret ptr %.014

bb.k:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.merged = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.ad, %bb.i ]
  resume { ptr, i32 } %.merged

bb.l:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #23
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define void @opencc_convert_utf8_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %0) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define ptr @opencc_error() local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr @_ZL6cErrorB5cxx11, align 8, !tbaa !21
  ret ptr %i.a
}

declare void @_ZN6opencc6ConfigC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

declare void @_ZN6opencc6Config11NewFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EEPKcRKNS_17ConfigLoadOptionsE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.3") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN6opencc6ConfigD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !29   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !58
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN6opencc6Config11NewFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_16ResourceProviderEERKNS_17ConfigLoadOptionsE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.3") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), ptr nofreeobj noundef align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SimpleConverter.cpp() #17 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, i64 16), ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 24, ptr %i.b, align 8, !tbaa !43
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, align 8, !tbaa !21
  %i.d = load i64, ptr %i.b, align 8, !tbaa !43   ; 3 uses
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, i64 16), align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str, i64 24, i1 false)
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, i64 8), align 8, !tbaa !38
  %i.e = load ptr, ptr @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.g = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL22PACKAGE_DATA_DIRECTORYB5cxx11, ptr nonnull @__dso_handle) #19 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, i64 16), ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 30, ptr %i.a, align 8, !tbaa !43
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, align 8, !tbaa !21
  %i.i = load i64, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, i64 16), align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.h, ptr noundef nonnull align 1 dereferenceable(30) @.str.2, i64 30, i1 false)
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, i64 8), align 8, !tbaa !38
  %i.j = load ptr, ptr @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.l = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11, ptr nonnull @__dso_handle) #19 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL6cErrorB5cxx11, i64 16), ptr @_ZL6cErrorB5cxx11, align 8, !tbaa !42
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL6cErrorB5cxx11, i64 8), align 8, !tbaa !38
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL6cErrorB5cxx11, i64 16), align 8, !tbaa !22
  %i.m = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL6cErrorB5cxx11, ptr nonnull @__dso_handle) #19 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(none) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #22 = { noreturn }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !23}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"_ZTSN6opencc17ConfigLoadOptionsE", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !13, i64 0}
!16 = !{!14, !13, i64 8}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !19, i64 8, !5, i64 16}
!21 = !{!20, !17, i64 0}
!22 = !{!5, !5, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!14, !13, i64 16}
!25 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!26 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!12, !12, i64 0}
!29 = !{!6, !6, i64 0}
!30 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!31 = !{!30, !6, i64 8}
!32 = !{!30, !6, i64 12}
!33 = !{!"vtable pointer", !4, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!36 = !{!"_ZTSN6opencc15SimpleConverterE", !12, i64 0}
!37 = !{!36, !12, i64 0}
!38 = !{!20, !19, i64 8}
!39 = !{!"p1 _ZTSN6opencc9ConverterE", !12, i64 0}
!40 = !{!"_ZTSSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0, !26, i64 8}
!41 = !{!40, !39, i64 0}
!42 = !{!18, !17, i64 0}
!43 = !{!19, !19, i64 0}
!44 = distinct !{null, null, null, null}
!45 = distinct !{null}
!46 = distinct !{ptr @_ZNSt12__shared_ptrIN6opencc16ResourceProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!47 = distinct !{null, null, null, null}
!48 = distinct !{null, ptr @_ZNSt12__shared_ptrIN6opencc16ResourceProviderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!49 = distinct !{null}
!50 = distinct !{null, null}
!51 = distinct !{null, null, null, null}
!52 = distinct !{!52, i1 false, !"_ZN6opencc8UTF8Util10FromSubstrB5cxx11EPKcm"}
!53 = distinct !{!53, !52, !"_ZN6opencc8UTF8Util10FromSubstrB5cxx11EPKcm: argument 0"}
!54 = !{!53}
!55 = distinct !{!55, i1 false, !"_ZNK6opencc15SimpleConverter7ConvertB5cxx11EPKcm"}
!56 = distinct !{!56, !55, !"_ZNK6opencc15SimpleConverter7ConvertB5cxx11EPKcm: argument 0"}
!57 = !{!56}
!58 = distinct !{null}
end_hunk_0
