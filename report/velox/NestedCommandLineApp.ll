inline.NumInlined: 1556
inline.NumDeleted: 720
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !15

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #33 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #35
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !16
  store i64 %.0, ptr %i.d, align 8, !tbaa !19
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !20
  store i8 0, ptr %i.c, align 1, !tbaa !19
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19
  store i8 %i.s, ptr %i.q, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !20
  %i.u = load ptr, ptr %0, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not22 = icmp eq ptr %0, %1
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.024 = phi ptr [ %i.o, %bb.g ], [ %2, %bb.a ]  ; 6 uses
  %.01223 = phi ptr [ %i.n, %bb.g ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.01223, align 8, !tbaa !171 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.024, i64 16 ; 3 uses
  store ptr %i.b, ptr %.024, align 8, !tbaa !11
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %.lr.ph
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #32 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #31
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %.noexc.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !15

.noexc11.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #33
          to label %.noexc15 unwind label %.loopexit ; 2 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.i, ptr %.024, align 8, !tbaa !16
  store i64 %i.d, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc15, %bb.b
  %i.j = phi ptr [ %i.i, %.noexc15 ], [ %i.b, %bb.b ] ; 3 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.a, align 1, !tbaa !19
  store i8 %i.k, ptr %i.j, align 1, !tbaa !19
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.a, i64 %i.d, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.024, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %.01223, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.024, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !233

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp:                               ; preds = %.noexc.i, %.noexc.i.i, %.noexc11.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.p = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.024)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #31
          to label %bb.m unwind label %bb.j

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.o, %bb.g ]
  ret ptr %.0.lcssa

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.r

bb.l:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #34
  unreachable

bb.m:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly20NestedCommandLineApp5doRunERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::filesystem::path", align 8 ; 9 uses
  %3 = alloca %"class.boost::filesystem::path", align 8 ; 9 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.92", align 16 ; 9 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.120", align 16 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %8 = alloca %"class.std::vector.35", align 8    ; 13 uses
  %9 = alloca %"class.std::vector.35", align 8    ; 14 uses
  %10 = alloca %"struct.folly::NestedCommandLineParseResult", align 8 ; 21 uses
  %11 = alloca %"class.boost::program_options::variables_map", align 8 ; 18 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.std::vector.35", align 8   ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.boost::program_options::basic_command_line_parser", align 8 ; 9 uses
  %17 = alloca %"class.boost::program_options::basic_command_line_parser", align 8 ; 10 uses
  %18 = alloca %"class.boost::program_options::basic_parsed_options", align 8 ; 13 uses
  %19 = alloca %"class.std::vector.35", align 8   ; 15 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !234
  invoke void @_ZN5folly2fs15executable_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::filesystem::path") align 8 %3)
          to label %bb.c unwind label %bb.i, !noalias !234

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost10filesystem6detail15path_algorithms11filename_v3ERKNS0_4pathE(ptr dead_on_unwind nonnull writable sret(%"class.boost::filesystem::path") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK5boost10filesystem4path8filenameEv.exit.i unwind label %bb.j

_ZNK5boost10filesystem4path8filenameEv.exit.i:    ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !11, !alias.scope !234
  %i.e = load ptr, ptr %2, align 8, !tbaa !16, !noalias !234 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20, !noalias !234 ; 9 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZNK5boost10filesystem4path8filenameEv.exit.i
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i.i, label %bb.e

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #31
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %.noexc.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !15

.noexc6.i.i:                                      ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc8.i unwind label %bb.k

.noexc8.i:                                        ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #33
          to label %.noexc9.i unwind label %bb.k  ; 2 uses

.noexc9.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.l, ptr %7, align 8, !tbaa !16, !alias.scope !234
  store i64 %i.g, ptr %i.d, align 8, !tbaa !19, !alias.scope !234
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc9.i, %_ZNK5boost10filesystem4path8filenameEv.exit.i
  %i.m = phi ptr [ %i.l, %.noexc9.i ], [ %i.d, %_ZNK5boost10filesystem4path8filenameEv.exit.i ] ; 3 uses
  switch i64 %i.g, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !19
  store i8 %i.n, ptr %i.m, align 1, !tbaa !19
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.g, ptr %i.o, align 8, !tbaa !20, !alias.scope !234
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.e, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.h
  %i.s = icmp samesign ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.s)
  br label %_ZN5boost10filesystem4pathD2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.t = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !234
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.u) #35
  br label %_ZN5boost10filesystem4pathD2Ev.exit.i

_ZN5boost10filesystem4pathD2Ev.exit.i:            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.v = load ptr, ptr %3, align 8, !tbaa !16, !noalias !234 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN5boost10filesystem4pathD2Ev.exit12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i: ; preds = %_ZN5boost10filesystem4pathD2Ev.exit.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !19, !noalias !234
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #35
  br label %_ZN5boost10filesystem4pathD2Ev.exit12.i

_ZN5boost10filesystem4pathD2Ev.exit12.i:          ; preds = %_ZN5boost10filesystem4pathD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !234
  br label %_ZN5folly12_GLOBAL__N_116guessProgramNameB5cxx11Ev.exit

bb.i:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN5boost10filesystem4pathD2Ev.exit18.i

bb.j:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN5boost10filesystem4pathD2Ev.exit15.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !16, !noalias !234 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN5boost10filesystem4pathD2Ev.exit15.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i: ; preds = %bb.k
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !19, !noalias !234
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #35
  br label %_ZN5boost10filesystem4pathD2Ev.exit15.i

_ZN5boost10filesystem4pathD2Ev.exit15.i:          ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.ab, %bb.j ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i ], [ %i.ac, %bb.k ] ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !16, !noalias !234 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZN5boost10filesystem4pathD2Ev.exit18.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i: ; preds = %_ZN5boost10filesystem4pathD2Ev.exit15.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !19, !noalias !234
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #35
  br label %_ZN5boost10filesystem4pathD2Ev.exit18.i

_ZN5boost10filesystem4pathD2Ev.exit18.i:          ; preds = %_ZN5boost10filesystem4pathD2Ev.exit15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i, %bb.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i ], [ %.pn.i, %_ZN5boost10filesystem4pathD2Ev.exit15.i ] ; 3 uses
  %.14.i = extractvalue { ptr, i32 } %.pn.pn.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !234
  %i.an = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #32
  %i.ao = icmp eq i32 %.14.i, %i.an
  br i1 %i.ao, label %bb.l, label %common.resume

bb.l:                                             ; preds = %_ZN5boost10filesystem4pathD2Ev.exit18.i
  %.1.i = extractvalue { ptr, i32 } %.pn.pn.i, 0
  %i.ap = call ptr @__cxa_begin_catch(ptr %.1.i) #32 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !234
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !234
  call void @__cxa_end_catch()
  br label %_ZN5folly12_GLOBAL__N_116guessProgramNameB5cxx11Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !234
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.o

common.resume:                                    ; preds = %_ZN5boost10filesystem4pathD2Ev.exit18.i, %bb.n, %bb.cz
  %common.resume.op = phi { ptr, i32 } [ %.merged, %bb.cz ], [ %.pn.pn.i, %_ZN5boost10filesystem4pathD2Ev.exit18.i ], [ %i.aq, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #34
  unreachable

_ZN5folly12_GLOBAL__N_116guessProgramNameB5cxx11Ev.exit: ; preds = %_ZN5boost10filesystem4pathD2Ev.exit12.i, %bb.m
  %i.at = load ptr, ptr %0, align 8, !tbaa !16    ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  %i.aw = load ptr, ptr %7, align 8, !tbaa !16    ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax                ; 2 uses
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN5folly12_GLOBAL__N_116guessProgramNameB5cxx11Ev.exit
  br i1 %i.ay, label %bb.p, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN5folly12_GLOBAL__N_116guessProgramNameB5cxx11Ev.exit
  br i1 %i.ay, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !20 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %.not21.i = icmp eq ptr %7, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %22, !prof !15

22:                                               ; preds = %bb.p
  switch i64 %i.ba, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %22
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !19
  store i8 %i.bc, ptr %i.at, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.r:                                             ; preds = %22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.aw, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.r, %bb.q, %22
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !20 ; 2 uses
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !20
  %i.be = load ptr, ptr %0, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 0, ptr %i.bf, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.aw, ptr %0, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bh = load <2 x i64>, ptr %i.bg, align 8, !tbaa !19
  store <2 x i64> %i.bh, ptr %i.a, align 8, !tbaa !19
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bi = load i64, ptr %i.au, align 8, !tbaa !19
  store ptr %i.aw, ptr %0, align 8, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bk = load <2 x i64>, ptr %i.bj, align 8, !tbaa !19
  store <2 x i64> %i.bk, ptr %i.a, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.at, ptr %7, align 8, !tbaa !16
  store i64 %i.bi, ptr %i.ax, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ax, ptr %7, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.s, %bb.t
  %23 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.at, %bb.s ], [ %i.ax, %bb.t ], [ %i.aw, %bb.p ]
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bl, align 8, !tbaa !20
  store i8 0, ptr %23, align 1, !tbaa !19
  %i.bm = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !19
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.br = load ptr, ptr %1, align 8, !tbaa !138   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !138 ; 2 uses
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.v

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !29
  invoke void @_ZN5folly22parseNestedCommandLineERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKN5boost15program_options19options_descriptionENSC_18command_line_style7style_tE(ptr dead_on_unwind nonnull writable sret(%"struct.folly::NestedCommandLineParseResult") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(128) %i.bz, i32 noundef %i.cb)
          to label %bb.ak unwind label %bb.ap

bb.v:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.031291 = phi i1 [ false, %.lr.ph ], [ %.132, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ]
  %.sroa.0252.0290 = phi ptr [ %i.br, %.lr.ph ], [ %i.ea, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 9 uses
  br i1 %.031291, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !96 ; 6 uses
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !99
  %.not.i83 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i83, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !11
  %i.cf = load ptr, ptr %.sroa.0252.0290, align 8, !tbaa !16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0252.0290, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !20 ; 8 uses
  %i.ci = icmp ugt i64 %i.ch, 15
  br i1 %i.ci, label %bb.y, label %._crit_edge.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.cj = icmp slt i64 %i.ch, 0
  br i1 %i.cj, label %.noexc.i.i.i.invoke, label %bb.z

.noexc.i.i.i.invoke:                              ; preds = %bb.y, %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #31
          to label %.noexc.i.i.i.cont unwind label %.loopexit.split-lp283

.noexc.i.i.i.cont:                                ; preds = %.noexc.i.i.i.invoke
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ck = add nuw i64 %i.ch, 1                    ; 2 uses
  %i.cl = icmp slt i64 %i.ck, 0
  br i1 %i.cl, label %.noexc6.i.i.i.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !15

.noexc6.i.i.i.invoke:                             ; preds = %bb.z, %bb.ag
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc6.i.i.i.cont unwind label %.loopexit.split-lp283

.noexc6.i.i.i.cont:                               ; preds = %.noexc6.i.i.i.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.z
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #33
          to label %.noexc86 unwind label %.loopexit282 ; 2 uses

.noexc86:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.cm, ptr %i.cc, align 8, !tbaa !16
  store i64 %i.ch, ptr %i.ce, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc86, %bb.x
  %i.cn = phi ptr [ %i.cm, %.noexc86 ], [ %i.ce, %bb.x ] ; 3 uses
  switch i64 %i.ch, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %i.co = load i8, ptr %i.cf, align 1, !tbaa !19
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !19
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr align 1 %i.cf, i64 %i.ch, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.ch, ptr %i.cp, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ch
  store i8 0, ptr %i.cq, align 1, !tbaa !19
  %i.cr = load ptr, ptr %i.bx, align 8, !tbaa !96
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store ptr %i.cs, ptr %i.bx, align 8, !tbaa !96
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.ac:                                            ; preds = %bb.w
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0252.0290)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit282

.loopexit282:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i91, %bb.aj
  %lpad.loopexit284 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit.split-lp283:                            ; preds = %.noexc6.i.i.i.invoke, %.noexc.i.i.i.invoke
  %lpad.loopexit.split-lp285 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.ad:                                            ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0252.0290, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !20 ; 9 uses
  %i.cv = icmp eq i64 %i.cu, 2
  br i1 %i.cv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread258

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ad
  %i.cw = load ptr, ptr %.sroa.0252.0290, align 8, !tbaa !16
  %i.cx = load i16, ptr %i.cw, align 1
  %i.cy = icmp ne i16 %i.cx, 11565
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread258.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread258: ; preds = %bb.ad
  %i.db = load ptr, ptr %i.bv, align 8, !tbaa !96 ; 8 uses
  %i.dc = load ptr, ptr %i.bw, align 8, !tbaa !99
  %.not.i88 = icmp eq ptr %i.db, %i.dc
  br i1 %.not.i88, label %bb.aj, label %bb.ae

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread258.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dd = load ptr, ptr %i.bv, align 8, !tbaa !96 ; 5 uses
  %i.de = load ptr, ptr %i.bw, align 8, !tbaa !99
  %.not.i88409 = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i88409, label %bb.aj, label %._crit_edge.i.i.i.i89.thread

._crit_edge.i.i.i.i89.thread:                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread258.thread
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !11
  %i.dg = load ptr, ptr %.sroa.0252.0290, align 8, !tbaa !16
  br label %bb.ai

bb.ae:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread258
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  store ptr %i.dh, ptr %i.db, align 8, !tbaa !11
  %i.di = load ptr, ptr %.sroa.0252.0290, align 8, !tbaa !16 ; 2 uses
  %i.dj = icmp ugt i64 %i.cu, 15
  br i1 %i.dj, label %bb.af, label %._crit_edge.i.i.i.i89

bb.af:                                            ; preds = %bb.ae
  %i.dk = icmp slt i64 %i.cu, 0
  br i1 %i.dk, label %.noexc.i.i.i.invoke, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dl = add nuw i64 %i.cu, 1                    ; 2 uses
  %i.dm = icmp slt i64 %i.dl, 0
  br i1 %i.dm, label %.noexc6.i.i.i.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i91, !prof !15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i91: ; preds = %bb.ag
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #33
          to label %.noexc96 unwind label %.loopexit282 ; 2 uses

.noexc96:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i91
  store ptr %i.dn, ptr %i.db, align 8, !tbaa !16
  store i64 %i.cu, ptr %i.dh, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i89

._crit_edge.i.i.i.i89:                            ; preds = %.noexc96, %bb.ae
  %i.do = phi ptr [ %i.dn, %.noexc96 ], [ %i.dh, %bb.ae ] ; 4 uses
  switch i64 %i.cu, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i90
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i89
  %i.dp = load i8, ptr %i.di, align 1, !tbaa !19
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !19
end_hunk_0
