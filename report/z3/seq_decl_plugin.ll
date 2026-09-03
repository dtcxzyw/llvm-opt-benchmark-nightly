Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/seq_decl_plugin?download=true
inline.NumInlined: 2960
inline.NumDeleted: 901
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !93   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.177) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !106

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.q = load i64, ptr %i.d, align 8, !tbaa !94
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #30
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8, !tbaa !92
  store i64 %.0, ptr %i.d, align 8, !tbaa !94
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !93
  store i8 0, ptr %i.c, align 1, !tbaa !94
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.t = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.v = load i8, ptr %i.u, align 1, !tbaa !94
  store i8 %i.v, ptr %i.t, align 1, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.w, align 8, !tbaa !93
  %i.x = load ptr, ptr %0, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.b
  store i8 0, ptr %i.y, align 1, !tbaa !94
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIN8seq_util3rex4infoELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !207    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !207
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !61   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = mul i32 %i.j, 20
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = mul i32 %i.g, 20
  %i.n = add i32 %i.m, 8
  %.not31 = icmp ugt i32 %i.l, %i.n
  br i1 %.not31, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.178, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !97
  %i.r = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !93   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !92
  %i.y = load i64, ptr %i.s, align 8, !tbaa !94
  store i64 %i.y, ptr %i.q, align 8, !tbaa !94
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !93
  store ptr %i.s, ptr %1, align 8, !tbaa !92
  store i64 0, ptr %i.aa, align 8, !tbaa !93
  store i8 0, ptr %i.s, align 8, !tbaa !94
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !92    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !94
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @__cxa_free_exception(ptr %i.o) #27
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn36 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn36

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ai) ; 5 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !207   ; 5 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZSt20uninitialized_move_nIPN8seq_util3rex4infoEjS3_ESt4pairIT_T1_ES5_T0_S6_.exit, label %_ZNK6vectorIN8seq_util3rex4infoELb1EjE4sizeEv.exit

_ZNK6vectorIN8seq_util3rex4infoELb1EjE4sizeEv.exit: ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !61 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.aq = zext i32 %i.an to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.aq, 20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i
  %i.as = icmp eq i32 %i.an, 0
  br i1 %i.as, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6vectorIN8seq_util3rex4infoELb1EjE4sizeEv.exit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %i.ap, %_ZNK6vectorIN8seq_util3rex4infoELb1EjE4sizeEv.exit ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %i.ak, %_ZNK6vectorIN8seq_util3rex4infoELb1EjE4sizeEv.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.08.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.04.07.i.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !268
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 20 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 20
  %i.av = icmp eq ptr %i.at, %i.ar
  br i1 %i.av, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !667

_ZSt20uninitialized_move_nIPN8seq_util3rex4infoEjS3_ESt4pairIT_T1_ES5_T0_S6_.exit: ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %_ZN6vectorIN8seq_util3rex4infoELb1EjE7destroyEv.exit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNK6vectorIN8seq_util3rex4infoELb1EjE4sizeEv.exit
  %i.ay = getelementptr inbounds i8, ptr %i.ak, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ay)
  br label %_ZN6vectorIN8seq_util3rex4infoELb1EjE7destroyEv.exit

_ZN6vectorIN8seq_util3rex4infoELb1EjE7destroyEv.exit: ; preds = %_ZSt20uninitialized_move_nIPN8seq_util3rex4infoEjS3_ESt4pairIT_T1_ES5_T0_S6_.exit, %.loopexit
  %i.az = phi ptr [ %i.ax, %_ZSt20uninitialized_move_nIPN8seq_util3rex4infoEjS3_ESt4pairIT_T1_ES5_T0_S6_.exit ], [ %i.ap, %.loopexit ]
  store ptr %i.az, ptr %0, align 8, !tbaa !207
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !61
  br label %bb.l

bb.l:                                             ; preds = %_ZN6vectorIN8seq_util3rex4infoELb1EjE7destroyEv.exit, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { cold noreturn }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { cold }

!llvm.module.flags = !{!30, !31}
!llvm.ident = !{!32}
!llvm.errno.tbaa = !{!37}

!0 = distinct !{!0, !70}
!1 = distinct !{!1, !70}
!2 = distinct !{!2, !70}
!3 = distinct !{!3, !70}
!4 = distinct !{null, null}
!5 = distinct !{!5, !70}
!6 = distinct !{!6, !70}
!7 = distinct !{!7, !70}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{!10, !70}
!11 = distinct !{!11, !70}
!12 = distinct !{!12, !70}
!13 = distinct !{null}
!14 = distinct !{!14, !70}
!15 = distinct !{!15, !70}
!16 = distinct !{!16, !70}
!17 = distinct !{!17, !70}
!18 = distinct !{!18, !70}
!19 = distinct !{!19, !70}
!20 = distinct !{!20, !70}
!21 = distinct !{!21, !70}
!22 = distinct !{!22, !70}
!23 = distinct !{!23, !70}
!24 = distinct !{null}
!25 = distinct !{!25, !70}
!26 = distinct !{!26, !70}
!27 = distinct !{!27, !70}
!28 = distinct !{!28, !70}
!29 = distinct !{!29, !70}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 2}
!32 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!33 = !{!"Simple C++ TBAA"}
!34 = !{!"omnipotent char", !33, i64 0}
!35 = !{!"int", !34, i64 0}
!36 = !{!"__libc_errno", !35, i64 0}
!37 = !{!36, !35, i64 0}
!38 = !{!"any pointer", !34, i64 0}
!39 = !{!"p1 _ZTS11ast_manager", !38, i64 0}
!40 = !{!"_ZTS11decl_plugin", !39, i64 8, !35, i64 16}
!41 = !{!40, !39, i64 8}
!42 = !{!40, !35, i64 16}
!43 = !{!"vtable pointer", !33, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"any p2 pointer", !38, i64 0}
!46 = !{!"p2 _ZTSN15seq_decl_plugin4psigE", !45, i64 0}
!47 = !{!"_ZTS6vectorIPN15seq_decl_plugin4psigELb0EjE", !46, i64 0}
!48 = !{!"_ZTS10ptr_vectorIN15seq_decl_plugin4psigEE", !47, i64 0}
!49 = !{!"p2 _ZTS4sort", !45, i64 0}
!50 = !{!"_ZTS6vectorIP4sortLb0EjE", !49, i64 0}
!51 = !{!"_ZTS10ptr_vectorI4sortE", !50, i64 0}
!52 = !{!"bool", !34, i64 0}
!53 = !{!"p1 omnipotent char", !38, i64 0}
!54 = !{!"_ZTS6symbol", !53, i64 0}
!55 = !{!"p1 _ZTS4sort", !38, i64 0}
!56 = !{!"p1 _ZTS16char_decl_plugin", !38, i64 0}
!57 = !{!"_ZTS15seq_decl_plugin", !40, i64 0, !48, i64 24, !51, i64 32, !52, i64 40, !54, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !52, i64 80, !52, i64 81, !56, i64 88}
!58 = !{!57, !56, i64 88}
!59 = !{!50, !49, i64 0}
!60 = !{!47, !46, i64 0}
!61 = !{!35, !35, i64 0}
!62 = !{!57, !55, i64 56}
!63 = !{!"_ZTS3ast", !35, i64 0, !35, i64 4, !35, i64 6, !35, i64 6, !35, i64 6, !35, i64 8, !35, i64 12}
!64 = !{!63, !35, i64 8}
!65 = !{!57, !55, i64 64}
!66 = !{!57, !55, i64 72}
!67 = !{!"p1 _ZTSN15seq_decl_plugin4psigE", !38, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!54, !53, i64 0}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!55, !55, i64 0}
!72 = !{!"p1 _ZTS9decl_info", !38, i64 0}
!73 = !{!"_ZTS4decl", !63, i64 0, !54, i64 16, !72, i64 24}
!74 = !{!73, !72, i64 24}
!75 = !{!"p1 _ZTS9parameter", !38, i64 0}
!76 = !{!"_ZTS6vectorI9parameterLb1EjE", !75, i64 0}
!77 = !{!"_ZTS9decl_info", !35, i64 0, !35, i64 4, !76, i64 8, !52, i64 16}
!78 = !{!77, !35, i64 0}
!79 = !{!77, !35, i64 4}
!80 = !{!76, !75, i64 0}
!81 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJiP3ast6symbolP7zstring8rationaldjEEE", !34, i64 0, !34, i64 32}
!82 = !{!81, !34, i64 32}
!83 = !{!"p1 _ZTS3ast", !38, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!86 = !{!"_ZTSSt9exception"}
!87 = !{!"_ZTSSt18bad_variant_access", !86, i64 0, !53, i64 8}
!88 = !{!87, !53, i64 8}
!89 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !53, i64 0}
!90 = !{!"long", !34, i64 0}
!91 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !89, i64 0, !90, i64 8, !34, i64 16}
!92 = !{!91, !53, i64 0}
!93 = !{!91, !90, i64 8}
!94 = !{!34, !34, i64 0}
!95 = !{!"_ZTS7obj_refI4sort11ast_managerE", !55, i64 0, !39, i64 8}
!96 = !{!95, !55, i64 0}
!97 = !{!89, !53, i64 0}
!98 = !{!95, !39, i64 8}
!99 = !{}
!100 = !{i64 8}
!101 = !{!"p1 _ZTSNSt6locale5_ImplE", !38, i64 0}
!102 = !{!"_ZTSSt6locale", !101, i64 0}
!103 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !102, i64 56}
!104 = !{!103, !53, i64 40}
end_hunk_0
begin_hunk_1_@llvm.umin.i32
!467 = distinct !{!467, !466, !"_ZNK8seq_util3rex15get_cached_infoEP4expr: argument 0"}
!468 = distinct !{!468, !70}
!469 = distinct !{!469, !70}
!470 = !{!467}
!471 = distinct !{!471, !"_ZNK8seq_util3rex4info4starEv"}
!472 = distinct !{!472, !471, !"_ZNK8seq_util3rex4info4starEv: argument 0"}
!473 = distinct !{!473, !"_ZNK8seq_util3rex4info3optEv"}
!474 = distinct !{!474, !473, !"_ZNK8seq_util3rex4info3optEv: argument 0"}
!475 = distinct !{!475, !"_ZNK8seq_util3rex4info6concatERKS1_b"}
!476 = distinct !{!476, !475, !"_ZNK8seq_util3rex4info6concatERKS1_b: argument 0"}
!477 = distinct !{!477, !"_ZNK8seq_util3rex4info4disjERKS1_"}
!478 = distinct !{!478, !477, !"_ZNK8seq_util3rex4info4disjERKS1_: argument 0"}
!479 = distinct !{!479, !"_ZNK8seq_util3rex4info4conjERKS1_"}
!480 = distinct !{!480, !479, !"_ZNK8seq_util3rex4info4conjERKS1_: argument 0"}
!481 = distinct !{!481, !"_ZNK8seq_util3rex4info4plusEv"}
!482 = distinct !{!482, !481, !"_ZNK8seq_util3rex4info4plusEv: argument 0"}
!483 = distinct !{!483, !"_ZNK8seq_util3rex4info10complementEv"}
!484 = distinct !{!484, !483, !"_ZNK8seq_util3rex4info10complementEv: argument 0"}
!485 = distinct !{!485, !"_ZNK8seq_util3rex4info4loopEjj"}
!486 = distinct !{!486, !485, !"_ZNK8seq_util3rex4info4loopEjj: argument 0"}
!487 = distinct !{!487, !"_ZNK8seq_util3rex4info4diffERKS1_"}
!488 = distinct !{!488, !487, !"_ZNK8seq_util3rex4info4diffERKS1_: argument 0"}
!489 = distinct !{!489, !"_ZNK8seq_util3rex4info4xor_ERKS1_"}
!490 = distinct !{!490, !489, !"_ZNK8seq_util3rex4info4xor_ERKS1_: argument 0"}
!491 = distinct !{!491, !"_ZNK8seq_util3rex4info6orelseERKS1_"}
!492 = distinct !{!492, !491, !"_ZNK8seq_util3rex4info6orelseERKS1_: argument 0"}
!493 = !{!472}
!494 = !{!474}
!495 = !{!476}
!496 = !{!478}
!497 = !{!480}
!498 = !{!482}
!499 = !{!484}
!500 = !{!486}
!501 = !{!488}
!502 = !{!490}
!503 = !{!492}
!504 = distinct !{!504, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!505 = distinct !{!505, !504, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!506 = distinct !{!506, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!507 = distinct !{!507, !506, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!508 = !{!505}
!509 = !{!507}
!510 = !{!507, !505}
!511 = !{ptr @_ZN15seq_decl_pluginD2Ev}
!512 = !{ptr @_ZN15seq_decl_pluginC2Ev}
!513 = distinct !{!513, !70, !188, !189}
!514 = distinct !{!514, !190}
!515 = distinct !{!515, !70, !188}
!516 = distinct !{!516, !70}
!517 = !{!285, !90, i64 32}
!518 = !{!290, !290, i64 0}
!519 = distinct !{null, null, null, null, null}
!520 = distinct !{!520, !70}
!521 = distinct !{!521, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
!522 = distinct !{!522, !521, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm: argument 0"}
!523 = distinct !{!523, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm"}
!524 = distinct !{!524, !523, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm: argument 0"}
!525 = !{!524, !522}
!526 = distinct !{null}
!527 = !{!"_ZTSNSt8__format10_Arg_valueISt20basic_format_contextINS_10_Sink_iterIcEEcEE11_HandleBaseE", !38, i64 0, !38, i64 8}
!528 = !{!527, !38, i64 8}
!529 = !{!527, !38, i64 0}
!530 = !{!"__int128", !34, i64 0}
!531 = !{!530, !530, i64 0}
!532 = !{!307, !307, i64 0}
!533 = !{!"branch_weights", i32 2129004, i32 2145354644}
!534 = distinct !{null}
!535 = distinct !{!535, !70}
!536 = distinct !{!536, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
!537 = distinct !{!537, !536, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm: argument 0"}
!538 = distinct !{!538, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm"}
!539 = distinct !{!539, !538, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm: argument 0"}
!540 = !{!539, !537}
!541 = distinct !{!541, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
!542 = distinct !{!542, !541, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm: argument 0"}
!543 = distinct !{!543, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm"}
!544 = distinct !{!544, !543, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm: argument 0"}
!545 = distinct !{!545, !"_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv"}
!546 = distinct !{!546, !545, !"_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv: argument 0"}
!547 = distinct !{!547, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!548 = distinct !{!548, !547, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!549 = distinct !{!549, !70, !188, !189}
!550 = distinct !{!550, !70, !188}
!551 = distinct !{!551, !70, !188, !189}
!552 = distinct !{!552, !70, !188}
!553 = !{!544, !542}
!554 = !{!546}
!555 = !{!548}
!556 = !{!"_ZTSNSt8__format15__formatter_intIcEE", !308, i64 0}
!557 = !{!556, !34, i64 6}
!558 = distinct !{null, null, null}
!559 = distinct !{!559, !70}
!560 = distinct !{!560, !70}
!561 = distinct !{!561, !70}
!562 = distinct !{!562, !70}
!563 = distinct !{!563, !70}
!564 = distinct !{!564, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
!565 = distinct !{!565, !564, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm: argument 0"}
!566 = distinct !{!566, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm"}
!567 = distinct !{!567, !566, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm: argument 0"}
!568 = distinct !{!568, !70}
!569 = distinct !{!569, !70}
!570 = distinct !{!570, !"_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv"}
!571 = distinct !{!571, !570, !"_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv: argument 0"}
!572 = distinct !{!572, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
!573 = distinct !{!573, !572, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm: argument 0"}
!574 = distinct !{!574, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm"}
!575 = distinct !{!575, !574, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm: argument 0"}
!576 = !{!567, !565}
!577 = !{!337, !337, i64 0}
!578 = !{!571}
!579 = !{!575, !573}
!580 = !{!"_ZTSZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_EUlPcSB_E_", !335, i64 0, !337, i64 8, !38, i64 16, !116, i64 24}
!581 = !{!580, !335, i64 0}
!582 = !{!580, !337, i64 8}
!583 = !{!580, !38, i64 16}
!584 = !{!580, !116, i64 24}
!585 = distinct !{null}
!586 = distinct !{!586, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!587 = distinct !{!587, !586, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!588 = !{!587}
!589 = !{!346, !346, i64 0}
!590 = !{!347, !347, i64 0}
!591 = !{!348, !348, i64 0}
!592 = distinct !{!592, !70, !188, !189}
!593 = distinct !{!593, !70, !188, !189}
!594 = distinct !{!594, !190}
!595 = distinct !{!595, !70, !188}
!596 = distinct !{!596, !70, !188, !189}
!597 = distinct !{!597, !70, !188}
!598 = distinct !{!598, !70, !188, !189}
!599 = distinct !{!599, !70, !188}
!600 = !{!"_ZTSZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6localeEUlPcmE_", !346, i64 0, !347, i64 8, !348, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !53, i64 48}
!601 = !{!600, !346, i64 0}
!602 = !{!600, !347, i64 8}
!603 = !{!600, !348, i64 16}
!604 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !90, i64 0, !53, i64 8}
!605 = !{!604, !53, i64 8}
!606 = !{!600, !116, i64 24}
!607 = !{!600, !116, i64 32}
!608 = !{!600, !116, i64 40}
!609 = !{!600, !53, i64 48}
!610 = !{!604, !90, i64 0}
!611 = distinct !{!611, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
!612 = distinct !{!612, !611, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm: argument 0"}
!613 = distinct !{!613, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm"}
!614 = distinct !{!614, !613, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm: argument 0"}
!615 = distinct !{!615, !70}
!616 = distinct !{!616, !70}
!617 = distinct !{!617, !"_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv"}
!618 = distinct !{!618, !617, !"_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv: argument 0"}
!619 = distinct !{!619, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
!620 = distinct !{!620, !619, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm: argument 0"}
!621 = distinct !{!621, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm"}
!622 = distinct !{!622, !621, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm: argument 0"}
!623 = !{!614, !612}
!624 = !{!349, !349, i64 0}
!625 = !{!618}
!626 = !{!622, !620}
!627 = !{!"_ZTSZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_EUlPcSB_E_", !335, i64 0, !349, i64 8, !38, i64 16, !116, i64 24}
!628 = !{!627, !335, i64 0}
!629 = !{!627, !349, i64 8}
!630 = !{!627, !38, i64 16}
!631 = !{!627, !116, i64 24}
!632 = distinct !{!632, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
!633 = distinct !{!633, !632, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm: argument 0"}
!634 = distinct !{!634, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm"}
!635 = distinct !{!635, !634, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm: argument 0"}
!636 = distinct !{!636, !70}
!637 = distinct !{!637, !70}
!638 = distinct !{!638, !"_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv"}
!639 = distinct !{!639, !638, !"_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv: argument 0"}
!640 = distinct !{!640, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
!641 = distinct !{!641, !640, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm: argument 0"}
!642 = distinct !{!642, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm"}
!643 = distinct !{!643, !642, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm: argument 0"}
!644 = !{!635, !633}
!645 = !{!350, !350, i64 0}
!646 = !{!639}
!647 = !{!643, !641}
!648 = !{!"_ZTSZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_EUlPcSB_E_", !335, i64 0, !350, i64 8, !38, i64 16, !116, i64 24}
!649 = !{!648, !335, i64 0}
!650 = !{!648, !350, i64 8}
!651 = !{i64 16}
!652 = !{!648, !38, i64 16}
!653 = !{!648, !116, i64 24}
!654 = distinct !{!654, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
!655 = distinct !{!655, !654, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm: argument 0"}
!656 = distinct !{!656, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm"}
!657 = distinct !{!657, !656, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm: argument 0"}
!658 = !{!657, !655}
!659 = distinct !{!659, !70}
!660 = distinct !{!660, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
!661 = distinct !{!661, !660, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm: argument 0"}
!662 = distinct !{!662, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm"}
!663 = distinct !{!663, !662, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm: argument 0"}
!664 = !{!663, !661}
!665 = distinct !{!665, !70}
!666 = distinct !{!666, !70}
!667 = distinct !{!667, !70}
end_hunk_1
