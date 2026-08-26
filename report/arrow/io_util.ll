Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/io_util?download=true
inline.NumInlined: 2462
inline.NumDeleted: 989
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5arrow8internal16PlatformFilenameC2EPKc:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !15
  invoke void @_ZN5arrow8internal16PlatformFilenameC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.o = load i64, ptr %i.a, align 8, !tbaa !15
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.i
  %i.t = load i64, ptr %i.a, align 8, !tbaa !15
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5arrow8internal16PlatformFilenameeqERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !12
  %bcmp.i = tail call i32 @bcmp(ptr %i.j, ptr %i.i, i64 %i.d)
  %i.k = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.c ], [ true, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5arrow8internal16PlatformFilenameneERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !12
  %bcmp.i = tail call i32 @bcmp(ptr %i.j, ptr %i.i, i64 %i.d)
  %i.k = icmp ne i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.l = phi i1 [ true, %bb.a ], [ %i.k, %bb.c ], [ false, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow8internal16PlatformFilename8ToNativeB5cxx11Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8internal16PlatformFilename8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !7, !noalias !70
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !12, !noalias !70 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16, !noalias !70 ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #37, !noalias !70
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !11

.noexc6.i.i:                                      ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #37, !noalias !70
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #38, !noalias !70 ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !12, !noalias !70
  store i64 %i.e, ptr %i.b, align 8, !tbaa !15, !noalias !70
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !15, !noalias !70
  store i8 %i.l, ptr %i.k, align 1, !tbaa !15, !noalias !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false), !noalias !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.e, ptr %i.m, align 8, !tbaa !16, !noalias !70
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !15, !noalias !70
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.o = load ptr, ptr %2, align 8, !tbaa !12, !noalias !76 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.r = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !76 ; 3 uses
  %i.s = add nuw nsw i64 %i.r, 1
  %i.t = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.s, i1 false)
  br label %_ZNK5arrow8internal16PlatformFilename4Impl7genericB5cxx11Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.u = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !76
  %.pre.i.i = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !76
  store i64 %i.u, ptr %i.q, align 8, !tbaa !15, !alias.scope !77
  br label %_ZNK5arrow8internal16PlatformFilename4Impl7genericB5cxx11Ev.exit

_ZNK5arrow8internal16PlatformFilename4Impl7genericB5cxx11Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %.sink.i = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.v = phi i64 [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !7, !alias.scope !80
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !16, !alias.scope !77
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8internal16PlatformFilename6ParentEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::internal::PlatformFilename") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16, !noalias !82 ; 22 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %._crit_edge.i.i.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !12, !noalias !82 ; 12 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.c, %bb.b
  %.1.i.i.in.i = phi i64 [ %i.c, %bb.b ], [ %.1.i.i.i, %bb.c ] ; 2 uses
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.i.i.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15, !noalias !82
  %memchr.char0cmp.not.i = icmp eq i8 %i.f, 47
  br i1 %memchr.char0cmp.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.not17.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not17.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.thread.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.g = add i64 %i.c, -1
  %i.h = icmp eq i64 %.1.i.i.in.i, %i.c
  br i1 %i.h, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i23.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.thread.thread59.i

._crit_edge.i.i.thread.i:                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !7, !alias.scope !82
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i23.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i, %bb.d
  %.1.i.i24.i = phi i64 [ %i.l, %bb.d ], [ %.1.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.i.i24.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15, !noalias !82
  %memchr.char0cmp.not62.i = icmp eq i8 %i.k, 47
  br i1 %memchr.char0cmp.not62.i, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit.i

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i23.i
  %i.l = add i64 %.1.i.i24.i, -1
  %.not15.i.i.i = icmp eq i64 %.1.i.i24.i, 0
  br i1 %.not15.i.i.i, label %bb.e, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i23.i, !llvm.loop !87

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !7, !alias.scope !82
  %i.n = icmp ugt i64 %i.c, 15
  br i1 %i.n, label %bb.f, label %._crit_edge.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.o = icmp slt i64 %i.c, 0
  br i1 %i.o, label %.noexc.i.i, label %bb.g

.noexc.i.i:                                       ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #37
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.p = add nuw i64 %i.c, 1                      ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc6.i.i, label %._crit_edge.i.i.i.thread, !prof !11

.noexc6.i.i:                                      ; preds = %bb.g
  call void @_ZSt17__throw_bad_allocv() #37
  unreachable

._crit_edge.i.i.i.thread:                         ; preds = %bb.g
  %i.r = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #38 ; 2 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !12, !alias.scope !82
  store i64 %i.c, ptr %i.m, align 8, !tbaa !15, !alias.scope !82
  br label %bb.i

._crit_edge.i.i.i:                                ; preds = %bb.e
  %cond88.i = icmp eq i64 %i.c, 1
  br i1 %cond88.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.d, align 1, !tbaa !15
  store i8 %i.s, ptr %i.m, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.t = phi ptr [ %i.r, %._crit_edge.i.i.i.thread ], [ %i.m, %._crit_edge.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.d, i64 %i.c, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i23.i
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.1.i.i.i, i64 %.1.i.i24.i)
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i27.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i27.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit.i
  %.1.i.i28.i = phi i64 [ %spec.select.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit.i ], [ %i.w, %bb.j ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.i.i28.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !15, !noalias !82
  %memchr.char0cmp.not63.i = icmp eq i8 %i.v, 47
  br i1 %memchr.char0cmp.not63.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.thread.thread59.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i27.i
  %i.w = add i64 %.1.i.i28.i, -1
  %.not17.i.i30.i = icmp eq i64 %.1.i.i28.i, 0
  br i1 %.not17.i.i30.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.thread.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i27.i, !llvm.loop !85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.thread.i
  %i.x = phi ptr [ %i.i, %._crit_edge.i.i.thread.i ], [ %i.t, %bb.i ], [ %i.m, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.c, ptr %i.y, align 8, !tbaa !16, !alias.scope !82
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.c
  store i8 0, ptr %i.z, align 1, !tbaa !15
  br label %_ZN5arrow8internal12_GLOBAL__N_112NativeParentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.thread.thread.i: ; preds = %bb.c, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !7, !alias.scope !82
  %i.ab = icmp ugt i64 %i.c, 15
  br i1 %i.ab, label %bb.k, label %._crit_edge.i.i32.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.thread.thread.i
  %i.ac = icmp slt i64 %i.c, 0
  br i1 %i.ac, label %.noexc.i35.i, label %bb.l

.noexc.i35.i:                                     ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #37
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ad = add nuw i64 %i.c, 1                     ; 2 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %.noexc6.i34.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i33.i, !prof !11

.noexc6.i34.i:                                    ; preds = %bb.l
  call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i33.i: ; preds = %bb.l
  %i.af = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #38 ; 2 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !12, !alias.scope !82
  store i64 %i.c, ptr %i.aa, align 8, !tbaa !15, !alias.scope !82
  br label %._crit_edge.i.i32.i

._crit_edge.i.i32.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i33.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.thread.thread.i
  %i.ag = phi ptr [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i33.i ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.thread.thread.i ] ; 3 uses
  %cond = icmp eq i64 %i.c, 1
  br i1 %cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i32.i
  %i.ah = load i8, ptr %i.d, align 1, !tbaa !15
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit36.i

bb.n:                                             ; preds = %._crit_edge.i.i32.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.d, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit36.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit36.i: ; preds = %bb.n, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.c, ptr %i.ai, align 8, !tbaa !16, !alias.scope !82
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.c
  store i8 0, ptr %i.aj, align 1, !tbaa !15
  br label %_ZN5arrow8internal12_GLOBAL__N_112NativeParentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.thread.thread59.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i
  %.161.i = phi i64 [ %.1.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i ], [ %.1.i.i28.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i27.i ] ; 2 uses
  %spec.select.i.i38.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %.161.i)
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i39.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i39.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.thread.thread59.i
  %.1.i.i40.i = phi i64 [ %i.am, %bb.o ], [ %spec.select.i.i38.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.thread.thread59.i ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.i.i40.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !15, !noalias !82
  %memchr.char0cmp.not64.i = icmp eq i8 %i.al, 47
  br i1 %memchr.char0cmp.not64.i, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit44.i

bb.o:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i39.i
  %i.am = add i64 %.1.i.i40.i, -1
  %.not15.i.i42.i = icmp eq i64 %.1.i.i40.i, 0
  br i1 %.not15.i.i42.i, label %.loopexit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i39.i, !llvm.loop !87

.loopexit.i:                                      ; preds = %bb.o
  %i.an = add nuw i64 %.161.i, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.ao, ptr %2, align 8, !tbaa !7, !alias.scope !88
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.c) ; 8 uses
  %i.ap = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.ap, label %bb.p, label %._crit_edge.i.i.i.i

bb.p:                                             ; preds = %.loopexit.i
  %i.aq = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.aq, label %.noexc10.i.i.i, label %bb.q

.noexc10.i.i.i:                                   ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #37
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ar = add nuw i64 %spec.select.i.i.i.i, 1     ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %.noexc11.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !11

.noexc11.i.i.i:                                   ; preds = %bb.q
  call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.q
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #38 ; 2 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !12, !alias.scope !88
  store i64 %spec.select.i.i.i.i, ptr %i.ao, align 8, !tbaa !15, !alias.scope !88
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.loopexit.i
  %i.au = phi ptr [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.ao, %.loopexit.i ] ; 3 uses
  %cond37 = icmp eq i64 %spec.select.i.i.i.i, 1
  br i1 %cond37, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = load i8, ptr %i.d, align 1, !tbaa !15
  store i8 %i.av, ptr %i.au, align 1, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.d, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.s, %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %spec.select.i.i.i.i, ptr %i.aw, align 8, !tbaa !16, !alias.scope !88
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %spec.select.i.i.i.i
  store i8 0, ptr %i.ax, align 1, !tbaa !15
  br label %_ZN5arrow8internal12_GLOBAL__N_112NativeParentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit44.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i39.i
  %i.ay = add nuw i64 %.1.i.i40.i, 1
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.az, ptr %2, align 8, !tbaa !7, !alias.scope !91
  %spec.select.i.i.i45.i = call noundef i64 @llvm.umin.i64(i64 %i.ay, i64 %i.c) ; 8 uses
  %i.ba = icmp ugt i64 %spec.select.i.i.i45.i, 15
  br i1 %i.ba, label %bb.t, label %._crit_edge.i.i.i46.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit44.i
  %i.bb = icmp slt i64 %spec.select.i.i.i45.i, 0
  br i1 %i.bb, label %.noexc10.i.i49.i, label %bb.u

.noexc10.i.i49.i:                                 ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #37
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.bc = add nuw i64 %spec.select.i.i.i45.i, 1   ; 2 uses
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %.noexc11.i.i48.i, label %._crit_edge.i.i.i46.i.thread, !prof !11

.noexc11.i.i48.i:                                 ; preds = %bb.u
  call void @_ZSt17__throw_bad_allocv() #37
  unreachable

._crit_edge.i.i.i46.i.thread:                     ; preds = %bb.u
  %i.be = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #38 ; 2 uses
  store ptr %i.be, ptr %2, align 8, !tbaa !12, !alias.scope !91
  store i64 %spec.select.i.i.i45.i, ptr %i.az, align 8, !tbaa !15, !alias.scope !91
  br label %bb.w

._crit_edge.i.i.i46.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit44.i
  %cond.i = icmp eq i64 %spec.select.i.i.i45.i, 1
  br i1 %cond.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i46.i
  %i.bf = load i8, ptr %i.d, align 1, !tbaa !15
  store i8 %i.bf, ptr %i.az, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit50.i

bb.w:                                             ; preds = %._crit_edge.i.i.i46.i.thread, %._crit_edge.i.i.i46.i
  %i.bg = phi ptr [ %i.be, %._crit_edge.i.i.i46.i.thread ], [ %i.az, %._crit_edge.i.i.i46.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull align 1 %i.d, i64 %spec.select.i.i.i45.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit50.i: ; preds = %bb.w, %bb.v
  %i.bh = phi ptr [ %i.bg, %bb.w ], [ %i.az, %bb.v ]
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %spec.select.i.i.i45.i, ptr %i.bi, align 8, !tbaa !16, !alias.scope !91
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %spec.select.i.i.i45.i
  store i8 0, ptr %i.bj, align 1, !tbaa !15
  br label %_ZN5arrow8internal12_GLOBAL__N_112NativeParentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5arrow8internal12_GLOBAL__N_112NativeParentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit31.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit36.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit50.i
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %2)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_112NativeParentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bk = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !15
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.y:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_112NativeParentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.y
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !15
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  resume { ptr, i32 } %i.bp
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8internal16PlatformFilename4RealEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array", align 1       ; 7 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.arrow::Result.10", align 8  ; 22 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.arrow::internal::PlatformFilename", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.a = load ptr, ptr %1, align 8, !tbaa !47
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !94
  %i.b = call ptr @realpath(ptr noundef readonly %.val, ptr noundef nonnull %2) #36, !noalias !94
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !94
  %i.d = tail call ptr @__errno_location() #40
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !94
  call void @_ZN5arrow8internal15StatusFromErrnoIJRA28_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i32 noundef %i.e, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(28) @.str.46), !noalias !94
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #36
  %i.f = load ptr, ptr %3, align 8, !tbaa !97, !noalias !94 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.l, label %bb.c, !prof !100

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !101, !range !106, !noundef !107
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #36
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36, !noalias !94
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !7, !noalias !94
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #36, !noalias !94 ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.f, label %._crit_edge.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %.noexc.i.i, label %bb.g

.noexc.i.i:                                       ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #37, !noalias !94
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i64 %i.k, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !11

.noexc11.i.i:                                     ; preds = %bb.g
  call void @_ZSt17__throw_bad_allocv() #37, !noalias !94
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.g
  %i.p = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #38, !noalias !94 ; 2 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !12, !noalias !94
  store i64 %i.k, ptr %i.j, align 8, !tbaa !15, !noalias !94
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.e
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.j, %bb.e ] ; 3 uses
  switch i64 %i.k, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %2, align 1, !tbaa !15, !noalias !94
  store i8 %i.r, ptr %i.q, align 1, !tbaa !15, !noalias !94
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %2, i64 %i.k, i1 false), !noalias !94
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.k, ptr %i.s, align 8, !tbaa !16, !noalias !94
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.t, align 1, !tbaa !15, !noalias !94
  store ptr null, ptr %5, align 8, !tbaa !97, !alias.scope !94
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !7, !alias.scope !94
  %i.w = load ptr, ptr %4, align 8, !tbaa !12, !noalias !94 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.j
  br i1 %i.x, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.y = load i64, ptr %i.s, align 8, !tbaa !16, !noalias !94 ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.aa, i1 false)
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  store ptr %i.w, ptr %i.u, align 8, !tbaa !12, !alias.scope !94
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !15, !noalias !94
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !15, !alias.scope !94
  %.pre.i = load i64, ptr %i.s, align 8, !tbaa !16, !noalias !94
  br label %.thread

.thread:                                          ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ac = phi i64 [ %i.y, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !16, !alias.scope !94
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !94
  br label %bb.n

bb.l:                                             ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !94
  %.pre = load ptr, ptr %5, align 8, !tbaa !97
  %i.ae = icmp eq ptr %.pre, null
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !94
  br i1 %i.ae, label %bb.n, label %bb.m, !prof !108

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #36
  br label %bb.s

bb.n:                                             ; preds = %.thread, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  store ptr %i.ag, ptr %6, align 8, !tbaa !7, !alias.scope !115
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !12, !noalias !115 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread, label %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit

_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread: ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16, !noalias !115 ; 4 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.ap, align 8, !tbaa !16, !alias.scope !115
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !12, !noalias !115
  store i64 0, ptr %i.ao, align 8, !tbaa !16, !noalias !115
  store i8 0, ptr %i.ai, align 8, !tbaa !15, !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
end_hunk_0
