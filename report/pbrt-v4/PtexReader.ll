Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexReader?download=true
inline.NumInlined: 1657
inline.NumDeleted: 742
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4Ptex4v2_410PtexReader8setErrorEPKc:bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !96
  store i8 %i.i, ptr %i.h, align 1, !tbaa !96
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !90
  %i.l = load ptr, ptr %2, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.n = load i64, ptr %i.k, align 8, !tbaa !90
  %i.o = add i64 %i.n, -4611686018427387893
  %i.p = icmp ult i64 %i.o, 11
  br i1 %i.p, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, i64 noundef 11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load i64, ptr %i.r, align 8, !tbaa !90   ; 2 uses
  %i.t = load i64, ptr %i.k, align 8, !tbaa !90
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.x, i64 noundef %i.s)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.z = load i64, ptr %i.k, align 8, !tbaa !90
  %i.aa = icmp eq i64 %i.z, 4611686018427387903
  br i1 %i.aa, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit14 unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !104 ; 3 uses
  %.not = icmp eq ptr %i.ad, null
  %i.ae = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit14
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.ae)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

bb.g:                                             ; preds = %.invoke, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.al = load i64, ptr %i.b, align 8, !tbaa !96
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit14
  %i.an = load i64, ptr %i.k, align 8, !tbaa !90
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ae, i64 noundef %i.an)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.h, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.ap, align 1, !tbaa !97
  %i.aq = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.b
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.as = load i64, ptr %i.b, align 8, !tbaa !96
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 4 dereferenceable(20) ptr @_ZN4Ptex4v2_410PtexReader11getFaceInfoEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, i32 noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !169
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 20
  %i.k = icmp ugt i64 %i.j, %i.b
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %i.b
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.m = load atomic i8, ptr @_ZGVZN4Ptex4v2_410PtexReader11getFaceInfoEiE5dummy acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.g, !prof !330

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Ptex4v2_410PtexReader11getFaceInfoEiE5dummy) #25
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr @_ZZN4Ptex4v2_410PtexReader11getFaceInfoEiE5dummy, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN4Ptex4v2_410PtexReader11getFaceInfoEiE5dummy, i64 4), i8 -1, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Ptex4v2_410PtexReader11getFaceInfoEiE5dummy) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  %.0 = phi ptr [ %i.l, %bb.c ], [ @_ZZN4Ptex4v2_410PtexReader11getFaceInfoEiE5dummy, %bb.f ], [ @_ZZN4Ptex4v2_410PtexReader11getFaceInfoEiE5dummy, %bb.e ], [ @_ZZN4Ptex4v2_410PtexReader11getFaceInfoEiE5dummy, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4Ptex4v2_410PtexReader12readZipBlockEPvii(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = or i32 %3, %2
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !331
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @inflateInit_(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.10, i32 noundef 112) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = alloca [16384 x i8], align 16            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %1, ptr %i.g, align 8, !tbaa !332
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i32 %3, ptr %i.h, align 8, !tbaa !333
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 576
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.022 = phi i32 [ %2, %bb.d ], [ %i.n, %bb.h ]  ; 2 uses
  %i.m = call i32 @llvm.smin.i32(i32 %.022, i32 16384) ; 4 uses
  %i.n = sub nsw i32 %.022, %i.m                  ; 2 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !92   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN4Ptex4v2_410PtexReader9readBlockEPvib.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !91   ; 2 uses
  %i.r = zext nneg i32 %i.m to i64                ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.f, i64 noundef %i.r, ptr noundef nonnull %i.o), !inline_history !98
  %i.w = trunc i64 %i.v to i32
  %i.x = icmp eq i32 %i.m, %i.w
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN4Ptex4v2_410PtexReader8setErrorEPKc(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull @.str.9)
  br label %_ZN4Ptex4v2_410PtexReader9readBlockEPvib.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.y = load i64, ptr %i.k, align 8, !tbaa !99
  %i.z = add nsw i64 %i.y, %i.r
  store i64 %i.z, ptr %i.k, align 8, !tbaa !99
  store ptr %i.f, ptr %i.b, align 8, !tbaa !334
  store i32 %i.m, ptr %i.l, align 8, !tbaa !335
  %.not26 = icmp eq i32 %i.n, 0
  %i.aa = select i1 %.not26, i32 4, i32 0
  %i.ab = call i32 @inflate(ptr noundef nonnull %i.b, i32 noundef %i.aa)
  switch i32 %i.ab, label %.thread30 [
    i32 1, label %_ZN4Ptex4v2_410PtexReader9readBlockEPvib.exit.thread
    i32 0, label %bb.e
  ]

.thread30:                                        ; preds = %bb.h
  call void @_ZN4Ptex4v2_410PtexReader8setErrorEPKc(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull @.str.11)
  %i.ac = call i32 @inflateReset(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.i

_ZN4Ptex4v2_410PtexReader9readBlockEPvib.exit.thread: ; preds = %bb.e, %bb.h, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !336
  %i.af = trunc i64 %i.ae to i32
  %i.ag = call i32 @inflateReset(ptr noundef nonnull %i.b) ; 0 uses
  %i.ah = icmp eq i32 %3, %i.af
  br label %bb.i

bb.i:                                             ; preds = %.thread30, %_ZN4Ptex4v2_410PtexReader9readBlockEPvib.exit.thread, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ false, %.thread30 ], [ %i.ah, %_ZN4Ptex4v2_410PtexReader9readBlockEPvib.exit.thread ]
  ret i1 %.4
}

declare void @_ZN4Ptex4v2_49PtexUtils11genRfaceidsEPKNS0_8FaceInfoEiPjS5_(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

declare void @_ZN4Ptex4v2_49PtexUtils9multalphaEPviNS0_8DataTypeEii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4Ptex4v2_410PtexReader11getMetaDataEv(ptr noundef nonnull align 8 dereferenceable(712) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Ptex4v2_410PtexReader12readMetaDataEv(ptr noundef nonnull align 8 dereferenceable(712) %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !150
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_410PtexReader12readMetaDataEv(ptr noundef nonnull align 8 dereferenceable(712) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #25 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !150
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #23
          to label %bb.c unwind label %bb.e       ; 13 uses

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4Ptex4v2_410PtexReader8MetaDataE, i64 16), ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %0, ptr %i.g, align 8, !tbaa !196
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !338
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.i, align 8, !tbaa !197
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.h, ptr %i.j, align 8, !tbaa !198
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.h, ptr %i.k, align 8, !tbaa !339
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 88, ptr %i.a, align 8, !tbaa !94
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.n = load i32, ptr %i.m, align 4, !tbaa !340  ; 2 uses
  %.not18 = icmp eq i32 %i.n, 0
  br i1 %.not18, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.p = load i64, ptr %i.o, align 8, !tbaa !111
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load i32, ptr %i.q, align 8, !tbaa !112
  invoke void @_ZN4Ptex4v2_410PtexReader17readMetaDataBlockEPNS1_8MetaDataEliiRm(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull %i.f, i64 noundef %i.p, i32 noundef %i.r, i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.u = load i32, ptr %i.t, align 4, !tbaa !341  ; 2 uses
  %.not19 = icmp eq i32 %i.u, 0
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.w = load i64, ptr %i.v, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.y = load i32, ptr %i.x, align 8, !tbaa !114
  invoke void @_ZN4Ptex4v2_410PtexReader24readLargeMetaDataHeadersEPNS1_8MetaDataEliiRm(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull %i.f, i64 noundef %i.w, i32 noundef %i.y, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !199 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !137 ; 2 uses
  %.not24 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 4
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.h
  fence seq_cst
  store volatile ptr %i.f, ptr %i.d, align 8, !tbaa !342
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !200
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !201
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = add i64 %i.al, 88
  %i.ao = sub i64 %i.an, %i.am
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !94
  %i.aq = add i64 %i.ao, %i.ap                    ; 2 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %_ZN4Ptex4v2_410PtexReader15increaseMemUsedEm.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.as = atomicrmw add ptr %i.ar, i64 %i.aq seq_cst, align 8 ; 0 uses
  br label %_ZN4Ptex4v2_410PtexReader15increaseMemUsedEm.exit

_ZN4Ptex4v2_410PtexReader15increaseMemUsedEm.exit: ; preds = %._crit_edge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.023 = phi i64 [ %i.ba, %bb.j ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !137
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.023 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !203
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !343
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !344
  invoke void @_ZN4Ptex4v2_410PtexReader17readMetaDataBlockEPNS1_8MetaDataEliiRm(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull %i.f, i64 noundef %i.av, i32 noundef %i.ax, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.lr.ph
  %i.ba = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %i.ag
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !337

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.d, %bb.g
  %lpad.loopexit.split-lp29 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.l

bb.k:                                             ; preds = %bb.a, %_ZN4Ptex4v2_410PtexReader15increaseMemUsedEm.exit
end_hunk_0
