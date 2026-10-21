Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/os?download=true
inline.NumInlined: 2700
inline.NumDeleted: 669
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN3fmt3v1212system_errorIJRiEEESt12system_erroriNS0_7fstringIJDpT_EE1tEDpOS5_:bb.a
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN3fmt3v1213vsystem_errorEiNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !61, !noalias !232
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #35
  br label %_ZN3fmt3v1213vsystem_errorEiNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %5, align 8, !tbaa !64, !noalias !232 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !61, !noalias !232
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !232
  resume { ptr, i32 } %i.h

_ZN3fmt3v1213vsystem_errorEiNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3fmt3v124file4dup2Ei(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !50
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !66
  %i.c = tail call i32 @dup2(i32 noundef %i.b, i32 noundef %1) #31
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %.critedge5

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #30    ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.b, label %bb.d, !llvm.loop !233

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__cxa_allocate_exception(i64 32) #31 ; 3 uses
  %i.i = load i32, ptr %i.e, align 4, !tbaa !50
  invoke void @_ZN3fmt3v1212system_errorIJRiS2_EEESt12system_erroriNS0_7fstringIJDpT_EE1tEDpOS5_(ptr dead_on_unwind writable sret(%"class.std::system_error") align 8 %i.h, i32 noundef %i.i, ptr nonnull @.str.54, i64 41, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @__cxa_throw(ptr %i.h, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.h) #31
  resume { ptr, i32 } %i.j

.critedge5:                                       ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1212system_errorIJRiS2_EEESt12system_erroriNS0_7fstringIJDpT_EE1tEDpOS5_(ptr dead_on_unwind noalias writable sret(%"class.std::system_error") align 8 %0, i32 noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.121", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.a = load i32, ptr %4, align 4, !tbaa !50
  store i32 %i.a, ptr %7, align 16, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.c = load i32, ptr %5, align 4, !tbaa !50
  store i32 %i.c, ptr %i.b, align 16, !tbaa !61
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !236
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr %2, i64 %3, i64 17, ptr nonnull %7), !noalias !236
  invoke void @_ZNSt12system_errorC2ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %6, align 8, !tbaa !64, !noalias !236 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN3fmt3v1213vsystem_errorEiNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !61, !noalias !236
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #35
  br label %_ZN3fmt3v1213vsystem_errorEiNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %6, align 8, !tbaa !64, !noalias !236 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !61, !noalias !236
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !236
  resume { ptr, i32 } %i.j

_ZN3fmt3v1213vsystem_errorEiNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3fmt3v124file4dup2EiRSt10error_code(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !66
  %i.b = tail call i32 @dup2(i32 noundef %i.a, i32 noundef %1) #31
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %.critedge4

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__errno_location() #30
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50   ; 2 uses
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.b, label %.critedge, !llvm.loop !237

.critedge:                                        ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #30
  store i32 %i.e, ptr %2, align 8, !tbaa !50
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !68
  br label %.critedge4

.critedge4:                                       ; preds = %bb.b, %.critedge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3fmt3v124file6fdopenEPKc(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.fmt::v12::buffered_file") align 8 captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !66
  %i.b = tail call noalias ptr @fdopen(i32 noundef %i.a, ptr noundef %2) #31 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 32) #31 ; 3 uses
  %i.d = tail call ptr @__errno_location() #30
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50
  invoke void @_ZN3fmt3v1212system_errorIJEEESt12system_erroriNS0_7fstringIJDpT_EE1tEDpOS4_(ptr dead_on_unwind writable sret(%"class.std::system_error") align 8 %i.c, i32 noundef %i.e, ptr nonnull @.str.55, i64 44)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr %i.c, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %i.c) #31
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !49
  store i32 -1, ptr %1, align 4, !tbaa !66
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr noundef readonly captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3fmt3v124pipeC2Ev(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 7 uses
  %1 = alloca %"class.fmt::v12::file", align 4    ; 7 uses
  %2 = alloca %"class.fmt::v12::file", align 4    ; 7 uses
  store i32 -1, ptr %0, align 4, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  store i32 -1, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 0, ptr %i.a, align 8
  %i.c = call i32 @pipe(ptr noundef nonnull %i.a) #31
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 32) #31 ; 3 uses
  %i.e = tail call ptr @__errno_location() #30
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  invoke void @_ZN3fmt3v1212system_errorIJEEESt12system_erroriNS0_7fstringIJDpT_EE1tEDpOS4_(ptr dead_on_unwind writable sret(%"class.std::system_error") align 8 %i.d, i32 noundef %i.f, ptr nonnull @.str.56, i64 18)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr %i.d, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #34
          to label %bb.t unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.d) #31
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.i = load i32, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  store i32 %i.i, ptr %1, align 4, !tbaa !66
  %i.j = load i32, ptr %0, align 4, !tbaa !66     ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = invoke i32 @close(i32 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  store i32 -1, ptr %0, align 4, !tbaa !66
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.m = call ptr @__cxa_allocate_exception(i64 32) #31 ; 3 uses
  %i.n = tail call ptr @__errno_location() #30
  %i.o = load i32, ptr %i.n, align 4, !tbaa !50
  invoke void @_ZN3fmt3v1212system_errorIJEEESt12system_erroriNS0_7fstringIJDpT_EE1tEDpOS4_(ptr dead_on_unwind writable sret(%"class.std::system_error") align 8 %i.m, i32 noundef %i.o, ptr nonnull @.str, i64 17)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr %i.m, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #34
          to label %.noexc7 unwind label %bb.q

.noexc7:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.m) #31
  br label %.body

bb.k:                                             ; preds = %.noexc, %bb.f
  store i32 %i.i, ptr %0, align 4, !tbaa !66
  store i32 -1, ptr %1, align 4, !tbaa !66
  call void @_ZN3fmt3v124fileD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !50   ; 2 uses
  store i32 %i.r, ptr %2, align 4, !tbaa !66
  %i.s = load i32, ptr %i.b, align 4, !tbaa !66   ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = invoke i32 @close(i32 noundef %i.s)
          to label %.noexc9 unwind label %bb.r

.noexc9:                                          ; preds = %bb.l
  store i32 -1, ptr %i.b, align 4, !tbaa !66
  %.not.i.i8 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i8, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.noexc9
  %i.v = call ptr @__cxa_allocate_exception(i64 32) #31 ; 3 uses
  %i.w = tail call ptr @__errno_location() #30
  %i.x = load i32, ptr %i.w, align 4, !tbaa !50
  invoke void @_ZN3fmt3v1212system_errorIJEEESt12system_erroriNS0_7fstringIJDpT_EE1tEDpOS4_(ptr dead_on_unwind writable sret(%"class.std::system_error") align 8 %i.v, i32 noundef %i.x, ptr nonnull @.str, i64 17)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr %i.v, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #34
          to label %.noexc10 unwind label %bb.r

.noexc10:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.v) #31
  br label %.body11

bb.p:                                             ; preds = %.noexc9, %bb.k
  store i32 %i.r, ptr %i.b, align 4, !tbaa !66
  store i32 -1, ptr %2, align 4, !tbaa !66
  call void @_ZN3fmt3v124fileD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void

bb.q:                                             ; preds = %bb.i, %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.p, %bb.j ]
  call void @_ZN3fmt3v124fileD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.s

bb.r:                                             ; preds = %bb.n, %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body11

.body11:                                          ; preds = %bb.o, %bb.r
  %eh.lpad-body12 = phi { ptr, i32 } [ %i.aa, %bb.r ], [ %i.y, %bb.o ]
  call void @_ZN3fmt3v124fileD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.e, %.body11, %.body
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %eh.lpad-body12, %.body11 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @_ZN3fmt3v124fileD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %i.b) #31
  call void @_ZN3fmt3v124fileD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %0) #31
  resume { ptr, i32 } %.pn

bb.t:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_ZN3fmt3v1211getpagesizeEv() local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 30) #31 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 32) #31 ; 3 uses
  %i.d = tail call ptr @__errno_location() #30
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50
  invoke void @_ZN3fmt3v1212system_errorIJEEESt12system_erroriNS0_7fstringIJDpT_EE1tEDpOS4_(ptr dead_on_unwind writable sret(%"class.std::system_error") align 8 %i.c, i32 noundef %i.e, ptr nonnull @.str.57, i64 27)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr %i.c, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %i.c) #31
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3fmt3v127ostream4growERNS0_6detail6bufferIcEEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 %1) #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  %i.e = icmp ne i64 %i.b, %i.d
  %i.f = icmp eq i64 %i.b, 0
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %_ZN3fmt3v127ostream5flushEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %0, align 8, !tbaa !55
  %i.i = tail call noundef i64 @_ZN3fmt3v124file5writeEPKvm(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef %i.h, i64 noundef %i.b) ; 0 uses
  store i64 0, ptr %i.a, align 8, !tbaa !57
  br label %_ZN3fmt3v127ostream5flushEv.exit

_ZN3fmt3v127ostream5flushEv.exit:                 ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3fmt3v127ostreamC2ENS0_18basic_cstring_viewIcEERKNS0_6detail14ostream_paramsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) initializes((0, 36)) %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v127ostream4growERNS0_6detail6bufferIcEEm, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !239
  tail call void @_ZN3fmt3v124fileC2ENS0_18basic_cstring_viewIcEEi(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr %1, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !240
  %i.f = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #36
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.d, align 8, !tbaa !240
  store ptr %i.f, ptr %0, align 8, !tbaa !55
  store i64 %i.h, ptr %i.g, align 8, !tbaa !56
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN3fmt3v124fileD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %i.b) #31
  resume { ptr, i32 } %i.i
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN3fmt3v127ostreamC2EOS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(36) initializes((0, 36)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x i64>, ptr %i.b, align 8, !tbaa !69
  store <2 x i64> %i.d, ptr %i.c, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN3fmt3v127ostream4growERNS0_6detail6bufferIcEEm, ptr %i.e, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !66
  store i32 %i.h, ptr %i.f, align 8, !tbaa !66
  store i32 -1, ptr %i.g, align 8, !tbaa !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3fmt3v127ostreamD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(36) dereferenceable(36) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN3fmt3v127ostream5flushEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %0, align 8, !tbaa !55
  %i.f = invoke noundef i64 @_ZN3fmt3v124file5writeEPKvm(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef %i.e, i64 noundef %i.b)
          to label %.noexc unwind label %bb.e     ; 0 uses

.noexc:                                           ; preds = %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !57
  br label %_ZN3fmt3v127ostream5flushEv.exit

_ZN3fmt3v127ostream5flushEv.exit:                 ; preds = %.noexc, %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !55     ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v127ostream5flushEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v127ostream5flushEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN3fmt3v124fileD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %i.i) #31
  ret void

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #33
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #15 section ".text.startup" comdat($_ZN3fmt3v1212format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_23fallback_digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mmOSD_:bb.a
  store i64 %.pre-phi.i.i.i.i, ptr %i.bl, align 8, !tbaa !57
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 48, ptr %i.bv, align 1, !tbaa !61
  %i.bw = add nuw nsw i32 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bw, %i.bj
  br i1 %exitcond.not.i.i, label %_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit, label %bb.h, !llvm.loop !19

_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %bb.g
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit
  %i.bx = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.bg, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit
  %.sroa.09.1 = phi ptr [ %i.bx, %bb.j ], [ %i.bg, %_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcmNS1_23fallback_digit_groupingIcEEEET_S7_T1_iiT0_RKT2_(ptr %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %.not.i.i = icmp eq i8 %4, 0
  br i1 %.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 99
  br i1 %i.b, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i ], [ %2, %bb.b ]
  %.01819.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i ], [ %1, %bb.b ] ; 3 uses
  %i.c = add i32 %.020.i.i.i, -2                  ; 3 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = urem i64 %.01819.i.i.i, 100
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2
  store i16 %i.i, ptr %i.e, align 1
  %i.j = udiv i64 %.01819.i.i.i, 100              ; 2 uses
  %i.k = icmp ugt i64 %.01819.i.i.i, 9999
  br i1 %i.k, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !5

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.b
  %.018.lcssa.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %2, %bb.b ], [ %i.c, %.lr.ph.i.i.i ] ; 2 uses
  %i.l = icmp samesign ugt i64 %.018.lcssa.i.i.i, 9
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.m = add i32 %.0.lcssa.i.i.i, -2
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  %i.p = shl nuw nsw i64 %.018.lcssa.i.i.i, 1
  %i.q = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  store i16 %i.r, ptr %i.o, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.s = trunc nuw nsw i64 %.018.lcssa.i.i.i to i8
  %i.t = or disjoint i8 %i.s, 48
  %i.u = add i32 %.0.lcssa.i.i.i, -1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  store i8 %i.t, ptr %i.w, align 1, !tbaa !61
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i: ; preds = %bb.d, %bb.c
  %i.x = sext i32 %2 to i64
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.z = sext i32 %2 to i64
  %i.aa = getelementptr i8, ptr %i.a, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 4 uses
  %i.ac = sub nsw i32 %2, %3                      ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.ae = lshr i32 %i.ac, 1                       ; 3 uses
  %i.af = and i32 %i.ac, 2
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %i.ag = getelementptr i8, ptr %i.aa, i64 -1     ; 3 uses
  %i.ah = urem i64 %1, 100
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2
  store i16 %i.ak, ptr %i.ag, align 1
  %i.al = udiv i64 %1, 100                        ; 2 uses
  %i.am = add nsw i32 %i.ae, -1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.046.i.i.unr = phi i32 [ %i.ae, %.lr.ph.preheader.i.i ], [ %i.am, %.lr.ph.i.i.prol ]
  %.02845.i.i.unr = phi ptr [ %i.ab, %.lr.ph.preheader.i.i ], [ %i.ag, %.lr.ph.i.i.prol ]
  %.02944.i.i.unr = phi i64 [ %1, %.lr.ph.preheader.i.i ], [ %i.al, %.lr.ph.i.i.prol ]
  %.lcssa78.unr = phi ptr [ poison, %.lr.ph.preheader.i.i ], [ %i.ag, %.lr.ph.i.i.prol ]
  %.lcssa77.unr = phi i64 [ poison, %.lr.ph.preheader.i.i ], [ %i.al, %.lr.ph.i.i.prol ]
  %i.an = icmp eq i32 %i.ae, 1
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  %.029.lcssa.i.i = phi i64 [ %1, %bb.e ], [ %.lcssa77.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ba, %.lr.ph.i.i ] ; 3 uses
  %.028.lcssa.i.i = phi ptr [ %i.ab, %bb.e ], [ %.lcssa78.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.av, %.lr.ph.i.i ] ; 2 uses
  %i.ao = and i32 %i.ac, 1
  %.not32.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not32.i.i, label %bb.g, label %bb.f

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.046.i.i = phi i32 [ %i.bb, %.lr.ph.i.i ], [ %.046.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.02845.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %.02845.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.02944.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.02944.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.02845.i.i, i64 -2
  %i.aq = urem i64 %.02944.i.i, 100
  %i.ar = shl nuw nsw i64 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2
  store i16 %i.at, ptr %i.ap, align 1
  %i.au = udiv i64 %.02944.i.i, 100
  %i.av = getelementptr inbounds i8, ptr %.02845.i.i, i64 -4 ; 3 uses
  %i.aw = urem i64 %i.au, 100
  %i.ax = shl nuw nsw i64 %i.aw, 1
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2
  store i16 %i.az, ptr %i.av, align 1
  %i.ba = udiv i64 %.02944.i.i, 10000             ; 2 uses
  %i.bb = add nsw i32 %.046.i.i, -2
  %i.bc = icmp sgt i32 %.046.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !21

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bd = urem i64 %.029.lcssa.i.i, 10
  %i.be = trunc nuw nsw i64 %i.bd to i8
  %i.bf = or disjoint i8 %i.be, 48
  %i.bg = getelementptr inbounds i8, ptr %.028.lcssa.i.i, i64 -1 ; 2 uses
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !61
  %i.bh = udiv i64 %.029.lcssa.i.i, 10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %.130.i.i = phi i64 [ %i.bh, %bb.f ], [ %.029.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.bg, %bb.f ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %i.bi = getelementptr inbounds i8, ptr %.1.i.i, i64 -1 ; 2 uses
  store i8 %4, ptr %i.bi, align 1, !tbaa !61
  %i.bj = sext i32 %3 to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 %i.bk ; 3 uses
  %i.bm = icmp ugt i64 %.130.i.i, 99
  br i1 %i.bm, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i

.lr.ph.i37.i.i:                                   ; preds = %bb.g, %.lr.ph.i37.i.i
  %.020.i38.i.i = phi i32 [ %i.bn, %.lr.ph.i37.i.i ], [ %3, %bb.g ]
  %.01819.i39.i.i = phi i64 [ %i.bu, %.lr.ph.i37.i.i ], [ %.130.i.i, %bb.g ] ; 3 uses
  %i.bn = add i32 %.020.i38.i.i, -2               ; 3 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.bq = urem i64 %.01819.i39.i.i, 100
  %i.br = shl nuw nsw i64 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2
  store i16 %i.bt, ptr %i.bp, align 1
  %i.bu = udiv i64 %.01819.i39.i.i, 100           ; 2 uses
  %i.bv = icmp ugt i64 %.01819.i39.i.i, 9999
  br i1 %i.bv, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !5

._crit_edge.i33.i.i:                              ; preds = %.lr.ph.i37.i.i, %bb.g
  %.018.lcssa.i34.i.i = phi i64 [ %.130.i.i, %bb.g ], [ %i.bu, %.lr.ph.i37.i.i ] ; 3 uses
  %.0.lcssa.i35.i.i = phi i32 [ %3, %bb.g ], [ %i.bn, %.lr.ph.i37.i.i ] ; 2 uses
  %i.bw = icmp samesign ugt i64 %.018.lcssa.i34.i.i, 9
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i33.i.i
  %i.bx = add i32 %.0.lcssa.i35.i.i, -2
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.by
  %i.ca = shl nuw nsw i64 %.018.lcssa.i34.i.i, 1
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2
  store i16 %i.cc, ptr %i.bz, align 1
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i33.i.i
  %i.cd = trunc nuw nsw i64 %.018.lcssa.i34.i.i to i8
  %i.ce = or disjoint i8 %i.cd, 48
  %i.cf = add i32 %.0.lcssa.i35.i.i, -1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cg
  store i8 %i.ce, ptr %i.ch, align 1, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i
  %.027.i.i = phi ptr [ %i.y, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i ], [ %i.ab, %bb.h ], [ %i.ab, %bb.i ]
  %i.ci = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret ptr %i.ci
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !391, !nonnull !124, !align !125
  %i.b = load i32, ptr %i.a, align 4, !tbaa !148  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !56
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !8
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !57 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !55
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !57   ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !56
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.s), !inline_history !8
  %.pre.i.i6 = load i64, ptr %i.q, align 8, !tbaa !57 ; 2 uses
  %.pre2.i.i7 = add i64 %.pre.i.i6, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

_ZN3fmt3v1214basic_appenderIcEaSEc.exit8:         ; preds = %bb.d, %bb.e
  %.pre-phi.i.i5 = phi i64 [ %i.s, %bb.d ], [ %.pre2.i.i7, %bb.e ]
  %i.y = phi i64 [ %i.r, %bb.d ], [ %.pre.i.i6, %bb.e ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !55
  store i64 %.pre-phi.i.i5, ptr %i.q, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !392, !nonnull !124
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !155, !range !133, !noundef !124
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !393, !nonnull !124
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !61
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !57  ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !56
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !54
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aj), !inline_history !8
  %.pre.i.i11 = load i64, ptr %i.q, align 8, !tbaa !57 ; 2 uses
  %.pre2.i.i12 = add i64 %.pre.i.i11, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

_ZN3fmt3v1214basic_appenderIcEaSEc.exit13:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i10 = phi i64 [ %i.aj, %bb.f ], [ %.pre2.i.i12, %bb.g ]
  %i.ao = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i11, %bb.g ]
  %i.ap = load ptr, ptr %1, align 8, !tbaa !55
  store i64 %.pre-phi.i.i10, ptr %i.q, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ah, ptr %i.aq, align 1, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !394, !nonnull !124, !align !125
  %i.at = load i32, ptr %i.as, align 4, !tbaa !50 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.be, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !57  ; 2 uses
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !56
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !54
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax), !inline_history !20
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !57 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.bb = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !55
  store i64 %.pre-phi.i.i.i, ptr %i.q, align 8, !tbaa !57
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 48, ptr %i.bd, align 1, !tbaa !61
  %i.be = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.be, %i.at
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.h, !llvm.loop !19

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !395, !nonnull !124, !align !132
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !163
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !396, !nonnull !124, !align !125
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !50
  %i.bl = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %1, i64 noundef %i.bh, i32 noundef %i.bk)
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %.sroa.03.0 = phi ptr [ %i.bl, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %1, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8 ]
  ret ptr %.sroa.03.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %0, x86_fp80 noundef %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.81, align 8             ; 5 uses
  %6 = alloca %"struct.fmt::v12::format_specs", align 16 ; 6 uses
  %7 = alloca %class.anon.73, align 8             ; 5 uses
  %8 = alloca %"struct.fmt::v12::format_specs", align 16 ; 14 uses
  %9 = alloca %"class.fmt::v12::loc_value", align 16 ; 3 uses
  %10 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 14 uses
  %11 = alloca %"struct.fmt::v12::detail::big_decimal_fp", align 8 ; 7 uses
  store i64 %2, ptr %8, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %3, ptr %i.a, align 8
  %i.b = trunc i64 %2 to i32                      ; 2 uses
  %i.c = and i32 %i.b, 16384
  %.not56 = icmp eq i32 %i.c, 0
  br i1 %.not56, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store x86_fp80 %1, ptr %9, align 16, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 11, ptr %i.d, align 16, !tbaa !120
  %i.e = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %0, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %9, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr %4)
  br i1 %i.e, label %bb.ae, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %8, align 16
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.f = phi i32 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = bitcast x86_fp80 %1 to i80
  %i.h = icmp slt i80 %i.g, 0
  %i.i = lshr i32 %i.f, 10
  %i.j = and i32 %i.i, 3
  %i.k = select i1 %i.h, i32 1, i32 %i.j          ; 5 uses
  %i.l = call x86_fp80 @llvm.fabs.f80(x86_fp80 %1)
  %i.m = fcmp ueq x86_fp80 %i.l, +inf
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = fcmp uno x86_fp80 %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.o = load <2 x i64>, ptr %8, align 16
  %.sroa.013.0.copyload = load i64, ptr %8, align 16 ; 2 uses
  store <2 x i64> %i.o, ptr %6, align 16
  %i.p = trunc i64 %.sroa.013.0.copyload to i32   ; 2 uses
  %i.q = and i64 %.sroa.013.0.copyload, 1095216889856
  %or.cond.i = icmp eq i64 %i.q, 206158462976
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit

end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !535 ; 3 uses
  %i.x = icmp slt i64 %i.t, 0
  %.v.i.i.i = select i1 %i.x, i64 -32, i64 -16
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %.v.i.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !191, !noalias !535 ; 2 uses
  %.not14.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not14.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !192, !noalias !535
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ac = add nuw i64 %.01215.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ac, %i.aa
  br i1 %exitcond.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.k, !llvm.loop !33

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.01215.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.01215.i.i.i ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !194, !noalias !535 ; 2 uses
  %i.af = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #31, !noalias !535 ; 2 uses
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 %.sroa.2.0.copyload)
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ae, ptr %.sroa.0.0.copyload, i64 %i.ag), !noalias !535
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.ah = icmp eq i64 %i.af, %.sroa.2.0.copyload
  %i.ai = select i1 %.not.i.i.i.i.i, i1 %i.ah, i1 false
  br i1 %i.ai, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, label %bb.j

_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i: ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !195, !noalias !535 ; 6 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.l, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.l:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i
  %i.am = icmp sgt i64 %i.t, -1
  br i1 %i.am, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = trunc i64 %i.t to i32
  %i.ao = icmp ult i32 %i.ak, %i.an
  br i1 %i.ao, label %bb.n, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.ap
  br label %_ZNK3fmt3v127context3argEi.exit

bb.o:                                             ; preds = %bb.l
  %i.ar = icmp samesign ugt i32 %i.ak, 14
  br i1 %i.ar, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = shl nuw nsw i32 %i.ak, 2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 %i.t, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 15                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split

_ZNK3fmt3v127context3argEi.exit:                  ; preds = %bb.n, %bb.d
  %storemerge.in = phi ptr [ %i.aq, %bb.n ], [ %i.j, %bb.d ] ; 2 uses
  %storemerge = load i128, ptr %storemerge.in, align 16, !tbaa !61 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc73 = trunc i128 %storemerge to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 = lshr i128 %storemerge, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc89 = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 to i32
  %.sroa.010.sroa.11.0.extract.shift61 = lshr i128 %storemerge, 64
  %.sroa.010.sroa.11.0.extract.trunc62 = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift61 to i64
  %.sroa.23.0.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.sroa.23.0 = load i32, ptr %.sroa.23.0.in, align 16, !tbaa !87 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0, 0
  br i1 %.not, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread:           ; preds = %bb.j, %bb.h, %bb.i, %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, %bb.p, %bb.o, %bb.m, %bb.f, %bb.e, %bb.c, %_ZNK3fmt3v127context3argEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.27) #34
  unreachable

_ZNK3fmt3v127context3argEi.exit.thread37.sink.split: ; preds = %bb.p, %bb.g
  %.sink = phi i32 [ %i.a, %bb.g ], [ %i.ak, %bb.p ]
  %.sink107 = phi ptr [ %i.r, %bb.g ], [ %i.w, %bb.p ]
  %.sroa.23.039.ph = phi i32 [ %i.p, %bb.g ], [ %i.aw, %bb.p ]
  %i.ax = zext nneg i32 %.sink to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.sink107, i64 %i.ax
  %.sroa.010.0.copyload25 = load i128, ptr %i.ay, align 16, !tbaa !61 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.010.0.copyload25 to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift102 = lshr i128 %.sroa.010.0.copyload25, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift102 to i32
  %.sroa.010.sroa.11.0.extract.shift = lshr i128 %.sroa.010.0.copyload25, 64
  %.sroa.010.sroa.11.0.extract.trunc = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift to i64
  br label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread37:         ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split, %_ZNK3fmt3v127context3argEi.exit
  %.sroa.010.sroa.0.sroa.11.0 = phi i32 [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc89, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 4 uses
  %.sroa.010.sroa.0.sroa.0.0 = phi i32 [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc73, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 7 uses
  %.sroa.010.sroa.11.0 = phi i64 [ %.sroa.010.sroa.11.0.extract.trunc62, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  %.sroa.23.039 = phi i32 [ %.sroa.23.0, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.23.039.ph, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  switch i32 %.sroa.23.039, label %bb.af [
    i32 15, label %bb.ae
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.az = icmp slt i32 %.sroa.010.sroa.0.sroa.0.0, 0
  %i.ba = zext nneg i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br i1 %i.az, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

bb.r:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.bb = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext74 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift75 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext74, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext63.a = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert65.a = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift75, %.sroa.010.sroa.0.sroa.0.0.insert.ext63.a
  %i.bc = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.010.sroa.0.sroa.0.0.insert.insert65.a, i64 -1)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift, %.sroa.010.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext82 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift83 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext82, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext69 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert71 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift83, %.sroa.010.sroa.0.sroa.0.0.insert.ext69
  %.not103 = icmp sgt i64 %.sroa.010.sroa.11.0, -1
  br i1 %.not103, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext78 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift79 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext78, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext66 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert68 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift79, %.sroa.010.sroa.0.sroa.0.0.insert.ext66
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #34
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #34
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #34
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #34
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #34
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #34
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #34
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #34
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #34
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.40) #34
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.39) #34
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !50
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 0, ptr %i.a, align 4, !tbaa !197
  %i.b = load i8, ptr %0, align 1, !tbaa !61      ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.h = sub i64 %i.d, %i.e
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %i.i = zext nneg i8 %i.b to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.k, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = mul i32 %i.r, 10
  %i.m = zext nneg i8 %i.s to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.p, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !32

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i37 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ]
  %.027.i36 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !61    ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !32

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !32

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i36, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.lcssa = phi i32 [ %i.r, %..critedge.i_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i37, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.q, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.u = ptrtoint ptr %.lcssa.i to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i64 %i.w, 10
  br i1 %i.x, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = icmp eq i64 %i.w, 10
  br i1 %i.y, label %bb.e, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %.027.i.lcssa to i64
  %i.aa = mul nuw nsw i64 %i.z, 10
  %i.ab = load i8, ptr %.0.lcssa.i, align 1, !tbaa !61
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967294
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  %i.ag = icmp samesign ugt i64 %i.af, 2147483647
  %i.ah = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.25) #34
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !50
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp eq i8 %i.b, 123
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !61
  switch i8 %i.ak, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !76 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.32) #34
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !76
  store i32 %i.am, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !197
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %4, ptr %5, align 8, !tbaa !536
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !537
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !81
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l, %bb.h
  %.0 = phi ptr [ %i.aj, %bb.h ], [ %i.ar, %bb.l ], [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !61
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !197
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.29) #34
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !61      ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
end_hunk_2
