Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/params?download=true
inline.NumInlined: 863
inline.NumDeleted: 302
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZSt22__move_median_to_firstIP6symbolN9__gnu_cxx5__ops15_Iter_comp_iterIN12param_descrs3imp5symltEEEEvT_S9_S9_S9_T0_:bb.a
  store i64 %i.c, ptr %0, align 8, !tbaa !68
  store ptr %.sroa.0.0.copyload.i.i, ptr %2, align 8, !tbaa !68
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @_Z2ltRK6symbolS1_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.sroa.0.0.copyload.i.i22 = load ptr, ptr %0, align 8, !tbaa !68 ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = load i64, ptr %3, align 8, !tbaa !68
  store i64 %i.e, ptr %0, align 8, !tbaa !68
  store ptr %.sroa.0.0.copyload.i.i22, ptr %3, align 8, !tbaa !68
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.f = load i64, ptr %1, align 8, !tbaa !68
  store i64 %i.f, ptr %0, align 8, !tbaa !68
  store ptr %.sroa.0.0.copyload.i.i22, ptr %1, align 8, !tbaa !68
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_Z2ltRK6symbolS1_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i24 = load ptr, ptr %0, align 8, !tbaa !68
  %i.h = load i64, ptr %1, align 8, !tbaa !68
  store i64 %i.h, ptr %0, align 8, !tbaa !68
  store ptr %.sroa.0.0.copyload.i.i24, ptr %1, align 8, !tbaa !68
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.i = tail call noundef zeroext i1 @_Z2ltRK6symbolS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.sroa.0.0.copyload.i.i25 = load ptr, ptr %0, align 8, !tbaa !68 ; 2 uses
  br i1 %i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.j = load i64, ptr %3, align 8, !tbaa !68
  store i64 %i.j, ptr %0, align 8, !tbaa !68
  store ptr %.sroa.0.0.copyload.i.i25, ptr %3, align 8, !tbaa !68
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.k = load i64, ptr %2, align 8, !tbaa !68
  store i64 %i.k, ptr %0, align 8, !tbaa !68
  store ptr %.sroa.0.0.copyload.i.i25, ptr %2, align 8, !tbaa !68
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

declare void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

declare void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

declare void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorISt4pairI6symbolN6params5valueEELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 56) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !89
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !73   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = mul i32 %i.j, 24
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = mul i32 %i.g, 24
  %i.n = add i32 %i.m, 8
  %.not31 = icmp ugt i32 %i.l, %i.n
  br i1 %.not31, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !39
  %i.r = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !43
  %i.y = load i64, ptr %i.s, align 8, !tbaa !35
  store i64 %i.y, ptr %i.q, align 8, !tbaa !35
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !44
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !44
  store ptr %i.s, ptr %1, align 8, !tbaa !43
  store i64 0, ptr %i.aa, align 8, !tbaa !44
  store i8 0, ptr %i.s, align 8, !tbaa !35
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !43    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !35
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @__cxa_free_exception(ptr %i.o) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn36 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn36

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ai) ; 5 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !89    ; 5 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZSt20uninitialized_move_nIPSt4pairI6symbolN6params5valueEEjS5_ES0_IT_T1_ES6_T0_S7_.exit, label %_ZNK6vectorISt4pairI6symbolN6params5valueEELb0EjE4sizeEv.exit

_ZNK6vectorISt4pairI6symbolN6params5valueEELb0EjE4sizeEv.exit: ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !73 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !73
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.aq = zext i32 %i.an to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.aq, 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i
  %i.as = icmp eq i32 %i.an, 0
  br i1 %i.as, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6vectorISt4pairI6symbolN6params5valueEELb0EjE4sizeEv.exit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %i.ap, %_ZNK6vectorISt4pairI6symbolN6params5valueEELb0EjE4sizeEv.exit ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %i.ak, %_ZNK6vectorISt4pairI6symbolN6params5valueEELb0EjE4sizeEv.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i.i, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  %i.av = icmp eq ptr %i.at, %i.ar
  br i1 %i.av, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !145

_ZSt20uninitialized_move_nIPSt4pairI6symbolN6params5valueEEjS5_ES0_IT_T1_ES6_T0_S7_.exit: ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %_ZN6vectorISt4pairI6symbolN6params5valueEELb0EjE7destroyEv.exit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNK6vectorISt4pairI6symbolN6params5valueEELb0EjE4sizeEv.exit
  %i.ay = getelementptr inbounds i8, ptr %i.ak, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ay)
  br label %_ZN6vectorISt4pairI6symbolN6params5valueEELb0EjE7destroyEv.exit

_ZN6vectorISt4pairI6symbolN6params5valueEELb0EjE7destroyEv.exit: ; preds = %_ZSt20uninitialized_move_nIPSt4pairI6symbolN6params5valueEEjS5_ES0_IT_T1_ES6_T0_S7_.exit, %.loopexit
  %i.az = phi ptr [ %i.ax, %_ZSt20uninitialized_move_nIPSt4pairI6symbolN6params5valueEEjS5_ES0_IT_T1_ES6_T0_S7_.exit ], [ %i.ap, %.loopexit ]
  store ptr %i.az, ptr %0, align 8, !tbaa !89
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !73
  br label %bb.l

bb.l:                                             ; preds = %_ZN6vectorISt4pairI6symbolN6params5valueEELb0EjE7destroyEv.exit, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_params.cpp() #17 section ".text.startup" {
bb.a:
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN10params_refD2Ev, ptr nonnull @_ZN10params_ref18g_empty_params_refE, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

attributes #0 = { nofree nounwind }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!27, !28}
!llvm.ident = !{!29}
!llvm.errno.tbaa = !{!34}

!0 = distinct !{!0, !45}
!1 = distinct !{!1, !45}
!2 = distinct !{!2, !45}
!3 = distinct !{!3, !45}
!4 = distinct !{!4, !45}
!5 = distinct !{!5, !45}
!6 = distinct !{!6, !45}
!7 = distinct !{!7, !45}
!8 = distinct !{!8, !45}
!9 = distinct !{!9, !45}
!10 = distinct !{!10, !45}
!11 = distinct !{!11, !45}
!12 = distinct !{!12, !45}
!13 = distinct !{!13, !45}
!14 = distinct !{!14, !45}
!15 = distinct !{!15, !45}
!16 = distinct !{!16, !45}
!17 = distinct !{!17, !45}
!18 = distinct !{!18, !45}
!19 = distinct !{!19, !45}
!20 = distinct !{!20, !45}
!21 = distinct !{!21, !45}
!22 = distinct !{!22, !45}
!23 = distinct !{!23, !45}
!24 = distinct !{!24, !45}
!25 = distinct !{!25, !45}
!26 = distinct !{!26, !45}
!27 = !{i32 8, !"PIC Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 2}
!29 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!30 = !{!"Simple C++ TBAA"}
!31 = !{!"omnipotent char", !30, i64 0}
!32 = !{!"int", !31, i64 0}
!33 = !{!"__libc_errno", !32, i64 0}
!34 = !{!33, !32, i64 0}
!35 = !{!31, !31, i64 0}
!36 = !{!"any pointer", !31, i64 0}
!37 = !{!"p1 omnipotent char", !36, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!39 = !{!38, !37, i64 0}
!40 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!41 = !{!"long", !31, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !38, i64 0, !41, i64 8, !31, i64 16}
!43 = !{!42, !37, i64 0}
!44 = !{!42, !41, i64 8}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"_ZTS6symbol", !37, i64 0}
!47 = !{!46, !37, i64 0}
!48 = !{!"p1 _ZTS17default_map_entryI6symbolN12param_descrs3imp4infoEE", !36, i64 0}
!49 = !{!"_ZTS14core_hashtableI17default_map_entryI6symbolN12param_descrs3imp4infoEEN9table2mapIS5_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS9_13entry_eq_procEE", !48, i64 0, !32, i64 8, !32, i64 12, !32, i64 16}
!50 = !{!49, !32, i64 8}
!51 = !{!49, !32, i64 16}
!52 = !{!"_ZTS12cmd_arg_kind", !31, i64 0}
!53 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !41, i64 0, !37, i64 8}
!54 = !{!"_ZTSN12param_descrs3imp4infoE", !52, i64 0, !53, i64 8, !53, i64 24, !53, i64 40}
!55 = !{!54, !52, i64 0}
!56 = !{!49, !48, i64 0}
!57 = !{!"p1 _ZTS6symbol", !36, i64 0}
!58 = !{!"_ZTS6vectorI6symbolLb0EjE", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!"p1 _ZTSN12param_descrs3impE", !36, i64 0}
!61 = !{!"_ZTS12param_descrs", !60, i64 0}
!62 = !{!61, !60, i64 0}
!63 = !{!"_ZTS16hash_entry_state", !31, i64 0}
!64 = !{!"_ZTS9_key_dataI6symbolN12param_descrs3imp4infoEE", !46, i64 0, !54, i64 8}
!65 = !{!"_ZTS18default_hash_entryI9_key_dataI6symbolN12param_descrs3imp4infoEEE", !32, i64 0, !63, i64 4, !64, i64 8}
!66 = !{!65, !63, i64 4}
!67 = !{!41, !41, i64 0}
!68 = !{!37, !37, i64 0}
!69 = !{!53, !41, i64 0}
!70 = !{!53, !37, i64 8}
!71 = !{!65, !32, i64 0}
!72 = !{!52, !52, i64 0}
!73 = !{!32, !32, i64 0}
!74 = !{!"vtable pointer", !30, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"_ZTSSt13_Ios_Fmtflags", !31, i64 0}
!77 = !{!"_ZTSSt12_Ios_Iostate", !31, i64 0}
!78 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !36, i64 0}
!79 = !{!"_ZTSNSt8ios_base6_WordsE", !36, i64 0, !41, i64 8}
!80 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !36, i64 0}
!81 = !{!"p1 _ZTSNSt6locale5_ImplE", !36, i64 0}
!82 = !{!"_ZTSSt6locale", !81, i64 0}
!83 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !76, i64 24, !77, i64 28, !77, i64 32, !78, i64 40, !79, i64 48, !31, i64 64, !32, i64 192, !80, i64 200, !82, i64 208}
!84 = !{!"p1 _ZTS6params", !36, i64 0}
!85 = !{!"_ZTS10params_ref", !84, i64 0}
!86 = !{!85, !84, i64 0}
!87 = !{!"p1 _ZTSSt4pairI6symbolN6params5valueEE", !36, i64 0}
!88 = !{!"_ZTS6vectorISt4pairI6symbolN6params5valueEELb0EjE", !87, i64 0}
!89 = !{!88, !87, i64 0}
!90 = !{!"_ZTSN6params5valueE", !52, i64 0, !31, i64 8}
!91 = !{!"_ZTSSt4pairI6symbolN6params5valueEE", !46, i64 0, !90, i64 8}
!92 = !{!91, !52, i64 8}
!93 = !{i8 0, i8 2}
!94 = !{}
!95 = !{!"p1 _ZTS11mpq_managerILb1EE", !36, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!83, !77, i64 32}
!98 = !{!"p1 _ZTS8mpz_cell", !36, i64 0}
!99 = !{!"_ZTS3mpz", !32, i64 0, !32, i64 4, !32, i64 4, !98, i64 8}
!100 = !{!99, !32, i64 0}
!101 = !{!99, !98, i64 8}
!102 = !{!90, !52, i64 0}
!103 = !{!49, !32, i64 12}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = distinct !{!105, !45}
!106 = !{!64, !52, i64 8}
!107 = distinct !{!107, !45}
!108 = distinct !{!108, !45}
!109 = !{!83, !41, i64 16}
!110 = distinct !{!110, !45}
!111 = distinct !{!111, !45}
!112 = distinct !{!112, !45}
!113 = distinct !{!113, !45}
!114 = distinct !{!114, !45}
!115 = distinct !{!115, !45}
!116 = distinct !{!116, !45}
!117 = distinct !{!117, !45}
!118 = distinct !{!118, !45}
!119 = distinct !{!119, !45}
!120 = distinct !{!120, !45}
!121 = distinct !{!121, !45}
!122 = distinct !{!122, !45}
!123 = distinct !{!123, !45}
!124 = distinct !{!124, !45}
!125 = distinct !{!125, !45}
!126 = distinct !{!126, !45}
!127 = distinct !{!127, !45}
!128 = distinct !{!128, !45}
!129 = distinct !{!129, !45}
!130 = !{i64 0, i64 8, !68, i64 8, i64 4, !72, i64 16, i64 8, !67, i64 24, i64 8, !68, i64 32, i64 8, !67, i64 40, i64 8, !68, i64 48, i64 8, !67, i64 56, i64 8, !68}
!131 = distinct !{!131, !104}
!132 = distinct !{!132, !45}
!133 = distinct !{!133, !45}
!134 = distinct !{!134, !104}
!135 = distinct !{!135, !45}
!136 = distinct !{!136, !45}
!137 = distinct !{!137, !45}
!138 = distinct !{!138, !45}
!139 = distinct !{!139, !45}
!140 = distinct !{!140, !45}
!141 = distinct !{!141, !45}
!142 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!143 = distinct !{!143, !45}
!144 = distinct !{!144, !45}
!145 = distinct !{!145, !45}
end_hunk_0
