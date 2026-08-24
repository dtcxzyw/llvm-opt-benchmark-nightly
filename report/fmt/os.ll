Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/os?download=true
inline.NumInlined: 2700
inline.NumDeleted: 669
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN3fmt3v124pipeC2Ev:bb.a
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
  %i.i = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  store i32 %i.i, ptr %1, align 4, !tbaa !36
  %i.j = load i32, ptr %0, align 4, !tbaa !36     ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = invoke i32 @close(i32 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  store i32 -1, ptr %0, align 4, !tbaa !36
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.m = call ptr @__cxa_allocate_exception(i64 32) #31 ; 3 uses
  %i.n = tail call ptr @__errno_location() #30
  %i.o = load i32, ptr %i.n, align 4, !tbaa !14
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
  store i32 %i.i, ptr %0, align 4, !tbaa !36
  store i32 -1, ptr %1, align 4, !tbaa !36
  call void @_ZN3fmt3v124fileD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14   ; 2 uses
  store i32 %i.r, ptr %2, align 4, !tbaa !36
  %i.s = load i32, ptr %i.b, align 4, !tbaa !36   ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = invoke i32 @close(i32 noundef %i.s)
          to label %.noexc9 unwind label %bb.r

.noexc9:                                          ; preds = %bb.l
  store i32 -1, ptr %i.b, align 4, !tbaa !36
  %.not.i.i8 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i8, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.noexc9
  %i.v = call ptr @__cxa_allocate_exception(i64 32) #31 ; 3 uses
  %i.w = tail call ptr @__errno_location() #30
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
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
  store i32 %i.r, ptr %i.b, align 4, !tbaa !36
  store i32 -1, ptr %2, align 4, !tbaa !36
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
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = icmp ne i64 %i.b, %i.d
  %i.f = icmp eq i64 %i.b, 0
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %_ZN3fmt3v127ostream5flushEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %0, align 8, !tbaa !19
  %i.i = tail call noundef i64 @_ZN3fmt3v124file5writeEPKvm(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef %i.h, i64 noundef %i.b) ; 0 uses
  store i64 0, ptr %i.a, align 8, !tbaa !21
  br label %_ZN3fmt3v127ostream5flushEv.exit

_ZN3fmt3v127ostream5flushEv.exit:                 ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3fmt3v127ostreamC2ENS0_18basic_cstring_viewIcEERKNS0_6detail14ostream_paramsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) initializes((0, 36)) %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v127ostream4growERNS0_6detail6bufferIcEEm, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !54
  tail call void @_ZN3fmt3v124fileC2ENS0_18basic_cstring_viewIcEEi(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr %1, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !56
  %i.f = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #36
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load i64, ptr %i.d, align 8, !tbaa !56
  store ptr %i.f, ptr %0, align 8, !tbaa !19
  store i64 %3, ptr %i.g, align 8, !tbaa !20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN3fmt3v124fileD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %i.b) #31
  resume { ptr, i32 } %i.h
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN3fmt3v127ostreamC2EOS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(36) initializes((0, 36)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x i64>, ptr %i.b, align 8, !tbaa !57
  store <2 x i64> %i.d, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN3fmt3v127ostream4growERNS0_6detail6bufferIcEEm, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !36
  store i32 %i.h, ptr %i.f, align 8, !tbaa !36
  store i32 -1, ptr %i.g, align 8, !tbaa !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3fmt3v127ostreamD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(36) dereferenceable(36) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN3fmt3v127ostream5flushEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %0, align 8, !tbaa !19
  %i.f = invoke noundef i64 @_ZN3fmt3v124file5writeEPKvm(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef %i.e, i64 noundef %i.b)
          to label %.noexc unwind label %bb.e     ; 0 uses

.noexc:                                           ; preds = %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !21
  br label %_ZN3fmt3v127ostream5flushEv.exit

_ZN3fmt3v127ostream5flushEv.exit:                 ; preds = %.noexc, %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
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
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219format_system_errorERNS0_6detail6bufferIcEEiPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::system_error", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %1, ptr nonnull %i.a, ptr noundef %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #31 ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #31
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr nonnull %0)
          to label %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEEET0_S5_PKT_.exit unwind label %bb.f ; 0 uses

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.2) #34
          to label %.noexc8 unwind label %bb.f

.noexc8:                                          ; preds = %bb.d
  unreachable

_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEEET0_S5_PKT_.exit: ; preds = %bb.c
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.f, %bb.e ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.h = call ptr @__cxa_begin_catch(ptr %.0) #31 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  call void @_ZN3fmt3v126detail17format_error_codeERNS1_6bufferIcEEiNS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr nonnull %2, i64 %i.i) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEEET0_S5_PKT_.exit
  ret void

bb.j:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #33
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %spec.select) #37 ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %_ZN3fmt3v126detail9allocatorIcE8allocateEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #31 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN3fmt3v126detail9allocatorIcE8allocateEm.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = icmp ule i64 %i.i, %spec.select
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %i.e, i64 %i.i, i1 false)
  store ptr %i.f, ptr %0, align 8, !tbaa !19
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.e, %i.k
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail9allocatorIcE8allocateEm.exit
  tail call void @free(ptr noundef %i.e) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail9allocatorIcE8allocateEm.exit
  ret void
end_hunk_0
