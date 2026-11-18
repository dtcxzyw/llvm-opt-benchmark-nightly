Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Args?download=true
inline.NumInlined: 818
inline.NumDeleted: 380
begin_hunk_0_@_ZN5folly12_GLOBAL__N_121cli_throwing_receiverD0Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !24
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #26, !inline_history !86
  br label %_ZN5folly12_GLOBAL__N_121cli_throwing_receiverD2Ev.exit

_ZN5folly12_GLOBAL__N_121cli_throwing_receiverD2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN5folly12_GLOBAL__N_121cli_throwing_receiver7on_termENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_29cli_apply_args_files_receiver8locationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef align 8 %1, ptr nofree noundef readnone byval(%"struct.folly::cli_apply_args_files_receiver::location") align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4926, !nonnull !47, !align !79 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !23
  %i.h = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.d, align 8, !tbaa !20
  %i.o = load i64, ptr %i.i, align 8, !tbaa !24
  store i64 %i.o, ptr %i.g, align 8, !tbaa !24
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !25
  store ptr %i.i, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %i.p, align 8, !tbaa !25
  store i8 0, ptr %i.i, align 8, !tbaa !24
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.c, align 8, !tbaa !85
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i, %bb.d
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly12_GLOBAL__N_121cli_throwing_receiver13on_term_errorENS_29cli_apply_args_files_receiver10term_errorENS2_8locationES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1, ptr nofree noundef readonly byval(%"struct.folly::cli_apply_args_files_receiver::location") align 8 captures(none) %2, ptr nofree noundef readnone byval(%"struct.folly::cli_apply_args_files_receiver::location") align 8 captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v9::format_arg_store", align 16 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = icmp ult i32 %1, 4
  br i1 %i.f, label %switch.lookup, label %.noexc9

switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5folly12_GLOBAL__N_121cli_throwing_receiver13on_term_errorENS_29cli_apply_args_files_receiver10term_errorENS2_8locationES4_, i64 %i.g
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %.noexc9

.noexc9:                                          ; preds = %bb.c, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.15, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !4931
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4932)
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !20, !noalias !4932
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !25, !noalias !4932
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = load i64, ptr %i.d, align 8, !tbaa !37, !noalias !4932
  %.sroa.012.0.insert.ext.i = zext i64 %i.l to i128
  %i.m = load i64, ptr %i.e, align 8, !tbaa !37, !noalias !4932
  %.sroa.015.0.insert.ext.i = zext i64 %i.m to i128
  %i.n = ptrtoint ptr %.0.i to i64
  %.sroa.06.sroa.4.0.insert.ext.i = zext i64 %i.j to i128
  %.sroa.06.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.06.sroa.4.0.insert.ext.i, 64
  %.sroa.06.sroa.0.0.insert.ext.i = zext i64 %i.k to i128
  %.sroa.06.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.06.sroa.4.0.insert.shift.i, %.sroa.06.sroa.0.0.insert.ext.i
  store i128 %.sroa.06.sroa.0.0.insert.insert.i, ptr %4, align 16, !tbaa !24, !alias.scope !4932
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i128 %.sroa.012.0.insert.ext.i, ptr %i.o, align 16, !tbaa !24, !alias.scope !4932
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i128 %.sroa.015.0.insert.ext.i, ptr %i.p, align 16, !tbaa !24, !alias.scope !4932
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.0.sroa.0.0.insert.ext.i = zext i64 %i.n to i128
  store i128 %.sroa.0.sroa.0.0.insert.ext.i, ptr %i.q, align 16, !tbaa !24, !alias.scope !4932
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.11, i64 54, i64 50253, ptr nonnull %4)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !4931
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly26cli_apply_args_files_errorE, i64 16), ptr %i.b, align 8, !tbaa !50
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN5folly26cli_apply_args_files_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc9
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8, !tbaa !24
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #27
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn16 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn17, %bb.g ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn16

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZN5folly12_GLOBAL__N_121cli_throwing_receiver13on_file_foundENS_18basic_cstring_viewIcSt11char_traitsIcEEENS_29cli_apply_args_files_receiver8locationE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readnone byval(%"struct.folly::cli_apply_args_files_receiver::location") align 8 captures(none) %3) unnamed_addr #11 align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress noreturn uwtable
define internal noundef i32 @_ZN5folly12_GLOBAL__N_121cli_throwing_receiver13on_file_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_29cli_apply_args_files_receiver8locationESt10error_code(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readnone byval(%"struct.folly::cli_apply_args_files_receiver::location") align 8 captures(none) %2, i32 %3, ptr %4) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v9::format_arg_store.40", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.b = load ptr, ptr %4, align 8, !tbaa !50, !noalias !4940
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !noalias !4940
  invoke void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %3)
          to label %.noexc8 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread, !inline_history !4935

.noexc8:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !4941
  call void @llvm.experimental.noalias.scope.decl(metadata !4942)
  %i.e = load ptr, ptr %1, align 8, !tbaa !20, !noalias !4942
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25, !noalias !4942
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = load ptr, ptr %7, align 8, !tbaa !20, !noalias !4942
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25, !noalias !4942
  %i.l = ptrtoint ptr %i.i to i64
  %.sroa.04.sroa.4.0.insert.ext.i = zext i64 %i.g to i128
  %.sroa.04.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i, 64
  %.sroa.04.sroa.0.0.insert.ext.i = zext i64 %i.h to i128
  %.sroa.04.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i, %.sroa.04.sroa.0.0.insert.ext.i
  store i128 %.sroa.04.sroa.0.0.insert.insert.i, ptr %5, align 16, !tbaa !24, !alias.scope !4942
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.0.sroa.4.0.insert.ext.i = zext i64 %i.k to i128
  %.sroa.0.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i, 64
  %.sroa.0.sroa.0.0.insert.ext.i = zext i64 %i.l to i128
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i128 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.m, align 16, !tbaa !24, !alias.scope !4942
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.16, i64 33, i64 221, ptr nonnull %5)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !4941
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly26cli_apply_args_files_errorE, i64 16), ptr %i.a, align 8, !tbaa !50
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly26cli_apply_args_files_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.g unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread: ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ]  ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.p = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.q, align 8, !tbaa !24
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !20     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc8
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %7, align 8, !tbaa !20     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !24
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #26
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %8 = load i64, ptr %i.j, align 8, !tbaa !25
  %9 = icmp ult i64 %8, 16
  call void @llvm.assume(i1 %9)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.v, align 8, !tbaa !24
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.ae) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %.0, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %.0, label %bb.e, label %bb.f

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread
  %.pn.pn21.ph = phi { ptr, i32 } [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread28 ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pn.pn21 = phi { ptr, i32 } [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn.pn21.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.a) #27
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.e
  %.pn.pn20 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn.pn21, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ]
  resume { ptr, i32 } %.pn.pn20

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly12_GLOBAL__N_121cli_throwing_receiver13on_file_enterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_29cli_apply_args_files_receiver8locationE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef align 8 %1, ptr nofree noundef readnone byval(%"struct.folly::cli_apply_args_files_receiver::location") align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87
  %.not.i = icmp eq ptr %i.c, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !23
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.m, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.c, align 8, !tbaa !20
  %i.n = load i64, ptr %i.f, align 8, !tbaa !24
  store i64 %i.n, ptr %i.g, align 8, !tbaa !24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !25
  store ptr %i.f, ptr %i.a, align 8, !tbaa !20
  store i64 0, ptr %i.o, align 8, !tbaa !25
  store i8 0, ptr %i.f, align 8, !tbaa !24
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.s, ptr %i.b, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !20  ; 6 uses
  %i.v = icmp eq ptr %.pre, %i.f
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.w = phi ptr [ %i.t, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread ], [ %i.f, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ]
  %i.x = phi ptr [ %i.f, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread ], [ %.pre, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ]
  %i.y = load ptr, ptr %1, align 8, !tbaa !20     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.ab = load ptr, ptr %1, align 8, !tbaa !20    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ae = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.af = phi ptr [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !25 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %.not21.i = icmp eq ptr %1, %i.a
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  switch i64 %i.ah, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.aj = load i8, ptr %i.af, align 1, !tbaa !24
  store i8 %i.aj, ptr %i.ae, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !25
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !24
  %.pre.i2 = load ptr, ptr %1, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.a, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !25
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !25
  %i.ar = load i64, ptr %i.z, align 8, !tbaa !24
  store i64 %i.ar, ptr %i.w, align 8, !tbaa !24
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.as = load i64, ptr %i.f, align 8, !tbaa !24
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.au, ptr %i.av, align 8, !tbaa !25
  %i.aw = load i64, ptr %i.ac, align 8, !tbaa !24
  store i64 %i.aw, ptr %i.f, align 8, !tbaa !24
  %.not.i1 = icmp eq ptr %.pre, null
  br i1 %.not.i1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %.pre, ptr %1, align 8, !tbaa !20
  store i64 %i.as, ptr %i.ac, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  %i.ax = phi ptr [ %i.z, %.thread.i ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i ] ; 2 uses
  store ptr %i.ax, ptr %1, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.ay = phi ptr [ %.pre.i2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %.pre, %bb.h ], [ %i.ax, %bb.i ], [ %i.af, %bb.d ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !25
  store i8 0, ptr %i.ay, align 1, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly12_GLOBAL__N_121cli_throwing_receiver13on_file_leaveEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 7 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !20   ; 6 uses
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 6 uses
  %i.m = icmp eq ptr %i.k, %i.l                   ; 2 uses
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.m, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.m, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 -24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25   ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  tail call void @llvm.assume(i1 %i.p)
  %.not21.i = icmp eq ptr %i.f, %i.g
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  switch i64 %i.o, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
end_hunk_0
