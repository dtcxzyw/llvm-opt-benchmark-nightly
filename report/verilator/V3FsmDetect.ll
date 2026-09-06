Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3FsmDetect?download=true
inline.NumInlined: 5729
inline.NumDeleted: 2094
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_115FsmResetArcDescES2_SaIS1_EET0_T_S5_S4_RT1_:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt8_DestroyIPN12_GLOBAL__N_115FsmResetArcDescEEvT_S3_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN12_GLOBAL__N_115FsmResetArcDescEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN12_GLOBAL__N_115FsmResetArcDescEEvPT_.exit.i
  %.05.i = phi ptr [ %i.z, %_ZSt8_DestroyIN12_GLOBAL__N_115FsmResetArcDescEEvPT_.exit.i ], [ %0, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 68
  %i.c = load i8, ptr %i.b, align 4, !tbaa !222   ; 2 uses
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN8V3NumberD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !42
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZN8V3NumberD2Ev.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !223
  %i.l = icmp sgt i32 %i.k, 128
  %i.m = icmp eq i8 %i.c, 1
  %i.n = and i1 %i.m, %i.l
  br i1 %i.n, label %bb.d, label %_ZN8V3NumberD2Ev.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !226  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8V3NumberD2Ev.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !227
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #27
  br label %_ZN8V3NumberD2Ev.exit.i.i.i.i

_ZN8V3NumberD2Ev.exit.i.i.i.i:                    ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.u = load ptr, ptr %.05.i, align 8, !tbaa !40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyIN12_GLOBAL__N_115FsmResetArcDescEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !42
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZSt8_DestroyIN12_GLOBAL__N_115FsmResetArcDescEEvPT_.exit.i

_ZSt8_DestroyIN12_GLOBAL__N_115FsmResetArcDescEEvPT_.exit.i: ; preds = %_ZN8V3NumberD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i, i64 104 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN12_GLOBAL__N_115FsmResetArcDescEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !4

_ZNSt12_Destroy_auxILb0EE9__destroyIPN12_GLOBAL__N_115FsmResetArcDescEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_115FsmResetArcDescEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115FsmResetArcDescD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(104) dereferenceable(104) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = load i8, ptr %i.b, align 4, !tbaa !222   ; 2 uses
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN8V3NumberD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !42
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZN8V3NumberD2Ev.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !223
  %i.l = icmp sgt i32 %i.k, 128
  %i.m = icmp eq i8 %i.c, 1
  %i.n = and i1 %i.m, %i.l
  br i1 %i.n, label %bb.d, label %_ZN8V3NumberD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !226  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN8V3NumberD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !227
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #27
  br label %_ZN8V3NumberD2Ev.exit.i

_ZN8V3NumberD2Ev.exit.i:                          ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !42
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit

_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit:        ; preds = %_ZN8V3NumberD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120FsmRegisterCandidateC2ERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !183 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.val9.i = load ptr, ptr %i.d, align 8, !tbaa !184 ; 2 uses
  %i.e = ptrtoint ptr %.val9.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %.val9.i, %.val.i
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN12_GLOBAL__N_110FsmSenDescEE8allocateEmPKv.exit.i.i.i.i, !prof !34

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt15__new_allocatorIN12_GLOBAL__N_110FsmSenDescEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #31
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN12_GLOBAL__N_110FsmSenDescEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN12_GLOBAL__N_110FsmSenDescEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !183
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !184
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !185
  %.val10.i = load ptr, ptr %i.c, align 8, !tbaa !306 ; 2 uses
  %.val11.i = load ptr, ptr %i.d, align 8, !tbaa !306 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %.val10.i, %.val11.i
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %.val10.i, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.06.08.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !208
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %.val11.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !666

_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.o, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.k, align 8, !tbaa !184
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !308
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.val.i8 = load ptr, ptr %i.s, align 8, !tbaa !228 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.val9.i9 = load ptr, ptr %i.t, align 8, !tbaa !212 ; 2 uses
  %i.u = ptrtoint ptr %.val9.i9 to i64
  %i.v = ptrtoint ptr %.val.i8 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not.i.i.i.i10 = icmp eq ptr %.val9.i9, %.val.i8
  br i1 %.not.i.i.i.i10, label %.noexc17, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EEC2ERKS3_.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775800
  br i1 %i.x, label %.noexc.i.i16, label %_ZNSt15__new_allocatorIN12_GLOBAL__N_115FsmResetArcDescEE8allocateEmPKv.exit.i.i.i.i, !prof !34

.noexc.i.i16:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i16
  unreachable

_ZNSt15__new_allocatorIN12_GLOBAL__N_115FsmResetArcDescEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #31
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIN12_GLOBAL__N_115FsmResetArcDescEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EEC2ERKS3_.exit
  %i.z = phi ptr [ null, %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EEC2ERKS3_.exit ], [ %i.y, %_ZNSt15__new_allocatorIN12_GLOBAL__N_115FsmResetArcDescEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.z, ptr %i.r, align 8, !tbaa !228
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !212
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !213
  %.val10.i11 = load ptr, ptr %i.s, align 8, !tbaa !309 ; 2 uses
  %.val11.i12 = load ptr, ptr %i.t, align 8, !tbaa !309 ; 2 uses
  %.not17.i.i.i.i.i = icmp eq ptr %.val10.i11, %.val11.i12
  br i1 %.not17.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i13

.lr.ph.i.i.i.i.i13:                               ; preds = %.noexc17, %bb.h
  %.019.i.i.i.i.i = phi ptr [ %i.bc, %bb.h ], [ %i.z, %.noexc17 ] ; 12 uses
  %.sroa.010.018.i.i.i.i.i = phi ptr [ %i.bb, %bb.h ], [ %.val10.i11, %.noexc17 ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 16 ; 5 uses
  store ptr %i.ad, ptr %.019.i.i.i.i.i, align 8, !tbaa !109
  %i.ae = load ptr, ptr %.sroa.010.018.i.i.i.i.i, align 8, !tbaa !40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !108
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i13
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(104) %.019.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i.i unwind label %bb.i ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  store ptr %i.ai, ptr %.019.i.i.i.i.i, align 8, !tbaa !40
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !108
  store i64 %i.aj, ptr %i.ad, align 8, !tbaa !42
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc.i.i.i.i.i, %.lr.ph.i.i.i.i.i13
  %i.ak = phi ptr [ %i.ai, %.noexc.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i13 ] ; 2 uses
  switch i64 %i.ag, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !42
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !41
  %i.ao = load ptr, ptr %.019.i.i.i.i.i, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.aq = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i, i64 32
  invoke void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(56) %i.ar)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.at = load ptr, ptr %.019.i.i.i.i.i, align 8, !tbaa !40 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ad
  br i1 %i.au, label %.body.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.av = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #27
  br label %.body.i.i.i.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 88
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i, i64 104 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.bb, %.val11.i12
  br i1 %.not.i.i.i.i.i14, label %.loopexit, label %.lr.ph.i.i.i.i.i13, !llvm.loop !667

bb.i:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.g, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.bd, %bb.i ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.as, %bb.g ]
  %i.be = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i, 0
  %i.bf = call ptr @__cxa_begin_catch(ptr %i.be) #26 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN12_GLOBAL__N_115FsmResetArcDescEEvT_S3_(ptr noundef %i.z, ptr noundef nonnull %.019.i.i.i.i.i)
  invoke void @__cxa_rethrow() #30
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %.body.i.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #28
  unreachable

bb.l:                                             ; preds = %.body.i.i.i.i.i
  unreachable

.body.i:                                          ; preds = %bb.j
  %.val12.i = load ptr, ptr %i.r, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val12.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.m

bb.m:                                             ; preds = %.body.i
  %.val13.i = load ptr, ptr %i.ac, align 8, !tbaa !213
  %i.bj = ptrtoint ptr %.val13.i to i64
  %i.bk = ptrtoint ptr %.val12.i to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %.val12.i, i64 noundef %i.bl) #27
  br label %.body

.loopexit:                                        ; preds = %bb.h, %.noexc17
  %.0.lcssa.i.i.i.i.i15 = phi ptr [ %i.z, %.noexc17 ], [ %i.bc, %bb.h ]
  store ptr %.0.lcssa.i.i.i.i.i15, ptr %i.aa, align 8, !tbaa !212
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false)
  ret void

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIN12_GLOBAL__N_115FsmResetArcDescEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i16
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.bo, %bb.n ], [ %i.bg, %bb.m ], [ %i.bg, %.body.i ]
  %.val = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %.val, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.body
  %.val7 = load ptr, ptr %i.m, align 8
  %i.bp = ptrtoint ptr %.val7 to i64
  %i.bq = ptrtoint ptr %.val to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.br) #27
  br label %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit: ; preds = %.body, %bb.o
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9AstAlways8sentreepEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188
  ret ptr %i.b
}

declare noundef zeroext i1 @_ZNK10AstSenTree7hasEdgeEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !187
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 369
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_116FsmDetectVisitor11processCaseEP7AstCaseP11AstVarScopeRKNS_20FsmRegisterCandidateE:bb.a
bb.z:                                             ; preds = %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit.i.i.i
  %i.ei = load ptr, ptr %i.ah, align 8, !tbaa !40 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ar
  br i1 %i.ej, label %_ZN8V3NumberD2Ev.exit.i61.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i66.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i66.i.i.i: ; preds = %bb.z
  %i.ek = load i64, ptr %i.ar, align 8, !tbaa !42
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #27
  br label %_ZN8V3NumberD2Ev.exit.i61.i.i.i

bb.aa:                                            ; preds = %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit.i.i.i
  %i.em = load i32, ptr %i.aq, align 8, !tbaa !223
  %i.en = icmp sgt i32 %i.em, 128
  %i.eo = icmp eq i8 %i.eg, 1
  %i.ep = and i1 %i.eo, %i.en
  br i1 %i.ep, label %bb.ab, label %_ZN8V3NumberD2Ev.exit.i61.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load ptr, ptr %i.ah, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i.i.i.i.i.i65.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i.i.i.i.i65.i.i.i, label %_ZN8V3NumberD2Ev.exit.i61.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = load ptr, ptr %i.ar, align 8, !tbaa !227
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.eu) #27
  br label %_ZN8V3NumberD2Ev.exit.i61.i.i.i

_ZN8V3NumberD2Ev.exit.i61.i.i.i:                  ; preds = %bb.z, %bb.ac, %bb.ab, %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i66.i.i.i
  %i.ev = load ptr, ptr %21, align 8, !tbaa !40   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.ae
  br i1 %i.ew, label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit68.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i61.i.i.i
  %i.ex = load i64, ptr %i.ae, align 8, !tbaa !42
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #27
  br label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit68.i.i.i

_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit68.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i61.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %_ZN12_GLOBAL__N_116FsmDetectVisitor17directStateAssignEP7AstNodeP11AstVarScope.exit.thread.i.i.i

.critedge42.i.i.i:                                ; preds = %bb.u, %_ZZN12_GLOBAL__N_116FsmDetectVisitor27collectStateSpaceFromValuesIZNS0_17collectStateSpaceEP7AstCaseP11AstVarScopeS5_RKSt6vectorINS_15FsmResetArcDescESaIS7_EERNS_13FsmStateSpaceEEUlRKT_E_EEbP7AstNodeS5_SB_SD_SG_ENKUlP11AstNodeExprE_clESL_.exit57.i.i.i, %_ZZN12_GLOBAL__N_116FsmDetectVisitor27collectStateSpaceFromValuesIZNS0_17collectStateSpaceEP7AstCaseP11AstVarScopeS5_RKSt6vectorINS_15FsmResetArcDescESaIS7_EERNS_13FsmStateSpaceEEUlRKT_E_EEbP7AstNodeS5_SB_SD_SG_ENKUlP11AstNodeExprE_clESL_.exit.i.i.i
  %i.ez = load i8, ptr %i.am, align 4, !tbaa !222 ; 2 uses
  %i.fa = icmp eq i8 %i.ez, 3
  br i1 %i.fa, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.critedge42.i.i.i
  %i.fb = load ptr, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ao
  br i1 %i.fc, label %_ZN8V3NumberD2Ev.exit.i69.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74.i.i.i: ; preds = %bb.ad
  %i.fd = load i64, ptr %i.ao, align 8, !tbaa !42
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #27
  br label %_ZN8V3NumberD2Ev.exit.i69.i.i.i

bb.ae:                                            ; preds = %.critedge42.i.i.i
  %i.ff = load i32, ptr %i.an, align 8, !tbaa !223
  %i.fg = icmp sgt i32 %i.ff, 128
  %i.fh = icmp eq i8 %i.ez, 1
  %i.fi = and i1 %i.fh, %i.fg
  br i1 %i.fi, label %bb.af, label %_ZN8V3NumberD2Ev.exit.i69.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.fj = load ptr, ptr %i.al, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i.i.i.i.i.i73.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i.i.i73.i.i.i, label %_ZN8V3NumberD2Ev.exit.i69.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fk = load ptr, ptr %i.ao, align 8, !tbaa !227
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fj to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fn) #27
  br label %_ZN8V3NumberD2Ev.exit.i69.i.i.i

_ZN8V3NumberD2Ev.exit.i69.i.i.i:                  ; preds = %bb.ad, %bb.ag, %bb.af, %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74.i.i.i
  %i.fo = load ptr, ptr %22, align 8, !tbaa !40   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ai
  br i1 %i.fp, label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit76.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i69.i.i.i
  %i.fq = load i64, ptr %i.ai, align 8, !tbaa !42
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #27
  br label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit76.i.i.i

_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit76.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i69.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.fs = load i8, ptr %i.ap, align 4, !tbaa !222 ; 2 uses
  %i.ft = icmp eq i8 %i.fs, 3
  br i1 %i.ft, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit76.i.i.i
  %i.fu = load ptr, ptr %i.ah, align 8, !tbaa !40 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.ar
  br i1 %i.fv, label %_ZN8V3NumberD2Ev.exit.i77.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i82.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i82.i.i.i: ; preds = %bb.ah
  %i.fw = load i64, ptr %i.ar, align 8, !tbaa !42
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #27
  br label %_ZN8V3NumberD2Ev.exit.i77.i.i.i

bb.ai:                                            ; preds = %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit76.i.i.i
  %i.fy = load i32, ptr %i.aq, align 8, !tbaa !223
  %i.fz = icmp sgt i32 %i.fy, 128
  %i.ga = icmp eq i8 %i.fs, 1
  %i.gb = and i1 %i.ga, %i.fz
  br i1 %i.gb, label %bb.aj, label %_ZN8V3NumberD2Ev.exit.i77.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.gc = load ptr, ptr %i.ah, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i.i.i.i.i.i81.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i.i.i.i81.i.i.i, label %_ZN8V3NumberD2Ev.exit.i77.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gd = load ptr, ptr %i.ar, align 8, !tbaa !227
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gg) #27
  br label %_ZN8V3NumberD2Ev.exit.i77.i.i.i

_ZN8V3NumberD2Ev.exit.i77.i.i.i:                  ; preds = %bb.ah, %bb.ak, %bb.aj, %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i82.i.i.i
  %i.gh = load ptr, ptr %21, align 8, !tbaa !40   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.ae
  br i1 %i.gi, label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit84.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i77.i.i.i
  %i.gj = load i64, ptr %i.ae, align 8, !tbaa !42
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #27
  br label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit84.i.i.i

_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit84.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i77.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %.thread

.body.i.i.i:                                      ; preds = %bb.l, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dh, %bb.s ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46.i.i.i ], [ %i.ca, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call fastcc void @_ZN12_GLOBAL__N_113FsmStateValueD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %.body

_ZN12_GLOBAL__N_116FsmDetectVisitor17directStateAssignEP7AstNodeP11AstVarScope.exit.thread.i.i.i: ; preds = %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit68.i.i.i, %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit.i.i.i.i, %bb.j, %bb.i, %_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.i.i.i.i, %.thread.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.03045.i.i.i, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !204 ; 5 uses
  %.not.i85.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i85.i.i.i, label %.loopexit294, label %bb.al

bb.al:                                            ; preds = %_ZN12_GLOBAL__N_116FsmDetectVisitor17directStateAssignEP7AstNodeP11AstVarScope.exit.thread.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 64
  %.sroa.0.0.copyload.i.i.i86.i.i.i = load i16, ptr %i.gn, align 8, !tbaa !187
  %.not6.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i86.i.i.i, 8
  br i1 %.not6.i.i.i.i, label %_ZN7AstNode2asI11AstCaseItemS_EEPT_PT0_.exit.i.i.i, label %bb.am, !prof !203, !llvm.loop !668

bb.am:                                            ; preds = %bb.al
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 64
  %i.gp = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.5, i32 noundef 1063)
          to label %.noexc109 unwind label %.loopexit.split-lp290 ; 0 uses

.noexc109:                                        ; preds = %bb.am
  %i.gq = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc110 unwind label %.loopexit.split-lp290 ; 2 uses

.noexc110:                                        ; preds = %.noexc109
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef nonnull @.str.6, i64 noundef 55)
          to label %.noexc111 unwind label %.loopexit.split-lp290 ; 0 uses

.noexc111:                                        ; preds = %.noexc110
  %.sroa.0.0.copyload.i.i5.i87.i.i.i = load i16, ptr %i.go, align 8, !tbaa !187
  %i.gs = zext i16 %.sroa.0.0.copyload.i.i5.i87.i.i.i to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !207
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef %i.gu)
          to label %.noexc112 unwind label %.loopexit.split-lp290 ; 2 uses

.noexc112:                                        ; preds = %.noexc111
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %.noexc107.invoke unwind label %.loopexit.split-lp290 ; 0 uses

.thread:                                          ; preds = %.noexc102, %.noexc, %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit84.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br label %.loopexit288

.loopexit294:                                     ; preds = %_ZN12_GLOBAL__N_116FsmDetectVisitor17directStateAssignEP7AstNodeP11AstVarScope.exit.thread.i.i.i, %.noexc101
  %.val.i.i = load ptr, ptr %23, align 8, !tbaa !370
  %i.gx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %.val9.i.i = load ptr, ptr %i.gx, align 8, !tbaa !371
  %i.gy = ptrtoint ptr %.val9.i.i to i64
  %i.gz = ptrtoint ptr %.val.i.i to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = icmp ugt i64 %i.ha, 120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br i1 %i.hb, label %bb.an, label %.loopexit288

.loopexit289:                                     ; preds = %.preheader.i.i.i
  %lpad.loopexit291 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp290:                            ; preds = %.noexc107.invoke, %bb.c, %bb.e, %bb.h, %.noexc103, %.noexc105, %bb.am, %.noexc109, %.noexc111, %.noexc112, %.noexc110, %.noexc106, %.noexc104
  %lpad.loopexit.split-lp292 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %.thread257, %.loopexit294
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !372, !nonnull !98, !align !116
  %i.he = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN12_GLOBAL__N_18FsmState6fsmForEP11AstVarScope(ptr noundef nonnull align 8 dereferenceable(72) %i.hd, ptr noundef %.val67)
          to label %bb.ao unwind label %bb.az     ; 11 uses

bb.ao:                                            ; preds = %bb.an
  %.val73 = load ptr, ptr %i.he, align 8, !tbaa !107
  %.not261 = icmp eq ptr %.val73, null
  br i1 %.not261, label %bb.ap, label %bb.bv

bb.ap:                                            ; preds = %bb.ao
  %i.hf = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #31
          to label %bb.aq unwind label %bb.az     ; 4 uses

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN12_GLOBAL__N_18FsmGraphC2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.hf)
          to label %bb.ar unwind label %bb.ba

bb.ar:                                            ; preds = %bb.aq
  %i.hg = load ptr, ptr %i.he, align 8, !tbaa !107 ; 2 uses
  store ptr %i.hf, ptr %i.he, align 8, !tbaa !107
  %.not.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_18FsmGraphESt14default_deleteIS1_EE5resetEPS1_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_18FsmGraphEEclEPS1_(ptr noundef nonnull %i.hg)
  %.val87.pre = load ptr, ptr %i.he, align 8, !tbaa !107
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_18FsmGraphESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_18FsmGraphESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.ar, %bb.as
  %.val87 = phi ptr [ %i.hf, %bb.ar ], [ %.val87.pre, %bb.as ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.val87, i64 24
  %i.hi = load <2 x ptr>, ptr %3, align 8, !tbaa !373
  store <2 x ptr> %i.hi, ptr %i.hh, align 8, !tbaa !373
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26, !noalias !675
  %i.hj = load ptr, ptr %.val67, align 8, !tbaa !44, !noalias !675
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 64
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !675
  invoke void %i.hl(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(152) %.val67)
          to label %.noexc115 unwind label %bb.bb, !inline_history !13

.noexc115:                                        ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_18FsmGraphESt14default_deleteIS1_EE5resetEPS1_.exit
  invoke void @_ZN7AstNode10prettyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.noexc115
  %i.hm = load ptr, ptr %20, align 8, !tbaa !40, !noalias !675 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.at
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !42, !noalias !675
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.au:                                            ; preds = %.noexc115
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %i.hs = load ptr, ptr %20, align 8, !tbaa !40, !noalias !675 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.au
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !42, !noalias !675
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26, !noalias !675
  br label %.body116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26, !noalias !675
  %i.hx = getelementptr inbounds nuw i8, ptr %.val87, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hx, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %_ZN12_GLOBAL__N_18FsmGraph12stateVarNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.bc

_ZN12_GLOBAL__N_18FsmGraph12stateVarNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.hy = load ptr, ptr %24, align 8, !tbaa !40   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12_GLOBAL__N_18FsmGraph12stateVarNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !42
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_18FsmGraph12stateVarNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %.val84 = load ptr, ptr %i.he, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %i.id = load ptr, ptr %i.x, align 8, !tbaa !236 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 152
  %i.if = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  store ptr %i.if, ptr %25, align 8, !tbaa !109, !alias.scope !676
  %i.ig = load ptr, ptr %i.ie, align 8, !tbaa !40, !noalias !676 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 160
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !41, !noalias !676 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26, !noalias !676
  store i64 %i.ii, ptr %i.j, align 8, !tbaa !108, !noalias !676
  %i.ij = icmp ugt i64 %i.ii, 15
  br i1 %i.ij, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ik = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc119 unwind label %bb.bd ; 2 uses

.noexc119:                                        ; preds = %.noexc.i.i
  store ptr %i.ik, ptr %25, align 8, !tbaa !40, !alias.scope !676
  %i.il = load i64, ptr %i.j, align 8, !tbaa !108, !noalias !676
  store i64 %i.il, ptr %i.if, align 8, !tbaa !42, !alias.scope !676
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.im = phi ptr [ %i.ik, %.noexc119 ], [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.ii, label %bb.aw [
    i64 1, label %bb.av
    i64 0, label %bb.ax
  ]

bb.av:                                            ; preds = %._crit_edge.i.i.i
  %i.in = load i8, ptr %i.ig, align 1, !tbaa !42
  store i8 %i.in, ptr %i.im, align 1, !tbaa !42
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.im, ptr align 1 %i.ig, i64 %i.ii, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %._crit_edge.i.i.i
  %i.io = load i64, ptr %i.j, align 8, !tbaa !108, !noalias !676 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !41, !alias.scope !676
  %i.iq = load ptr, ptr %25, align 8, !tbaa !40, !alias.scope !676
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.io
  store i8 0, ptr %i.ir, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26, !noalias !676
  %i.is = getelementptr inbounds nuw i8, ptr %.val84, i64 72
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.is, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %_ZN12_GLOBAL__N_18FsmGraph20stateVarInternalNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.be

_ZN12_GLOBAL__N_18FsmGraph20stateVarInternalNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.ax
  %i.it = load ptr, ptr %25, align 8, !tbaa !40   ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.if
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZN12_GLOBAL__N_18FsmGraph20stateVarInternalNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.iv = load i64, ptr %i.if, align 8, !tbaa !42
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %_ZN12_GLOBAL__N_18FsmGraph20stateVarInternalNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %.val83 = load ptr, ptr %i.he, align 8, !tbaa !107 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.val83, i64 104
  store ptr %.val67, ptr %i.ix, align 8, !tbaa !383
  %.val90 = load ptr, ptr %i.o, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val91 = load ptr, ptr %i.iy, align 8, !tbaa !233 ; 2 uses
  %.not.i = icmp eq ptr %.val91, null
  %i.iz = select i1 %.not.i, ptr %.val90, ptr %.val91
  %i.ja = getelementptr inbounds nuw i8, ptr %.val83, i64 112
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !384
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.jc = getelementptr inbounds nuw i8, ptr %.val83, i64 120
  %i.jd = invoke fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %i.jb)
          to label %bb.ay unwind label %bb.az     ; 0 uses

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.val80 = load ptr, ptr %i.he, align 8, !tbaa !107
  %i.jf = getelementptr inbounds nuw i8, ptr %.val80, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.jf, ptr noundef nonnull align 8 dereferenceable(9) %i.je, i64 9, i1 false), !tbaa.struct !308
  %.val79 = load ptr, ptr %i.he, align 8, !tbaa !107 ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 104
  %.val = load i8, ptr %i.jg, align 8, !tbaa !211, !range !97, !noundef !98
  %i.jh = getelementptr inbounds nuw i8, ptr %.val79, i64 160
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_116FsmDetectVisitor14collectIfChainEP5AstIfRKSt13unordered_mapIPK11AstVarScopeNS_18FsmStateComparisonESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEERNS_19FsmIfChainCandidateE:bb.a
.body.i58:                                        ; preds = %bb.cf
  %i.qb = extractvalue { ptr, i32 } %i.os, 0
  %i.qc = call ptr @__cxa_begin_catch(ptr %i.qb) #26 ; 0 uses
  call fastcc void @_ZN12_GLOBAL__N_111FsmIfBranchD2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(120) %i.lt) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lr) #27
  invoke void @__cxa_rethrow() #30
          to label %bb.cp unwind label %bb.cn

bb.cn:                                            ; preds = %.body.i58
  %i.qd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body63 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qe = landingpad { ptr, i32 }
          catch ptr null
  %i.qf = extractvalue { ptr, i32 } %i.qe, 0
  call void @__clang_call_terminate(ptr %i.qf) #28
  unreachable

bb.cp:                                            ; preds = %.body.i58
  unreachable

_ZNSt6vectorIN12_GLOBAL__N_111FsmIfBranchESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_111FsmIfBranchEEvT_S3_.exit.i.i.i, %bb.cm
  store ptr %i.ls, ptr %i.aj, align 8, !tbaa !255
  store ptr %i.px, ptr %i.al, align 8, !tbaa !256
  %i.qg = getelementptr inbounds nuw [120 x i8], ptr %i.ls, i64 %i.lq
  store ptr %i.qg, ptr %i.am, align 8, !tbaa !257
  %.pre420 = load i8, ptr %i.ao, align 4, !tbaa !222 ; 2 uses
  %i.qh = icmp eq i8 %.pre420, 3
  br i1 %i.qh, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_111FsmIfBranchESaIS1_EE9push_backEOS1_.exit
  %i.qi = load ptr, ptr %i.ah, align 8, !tbaa !40 ; 2 uses
  %i.qj = icmp eq ptr %i.qi, %i.aq
  br i1 %i.qj, label %_ZN8V3NumberD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cq
  %i.qk = load i64, ptr %i.aq, align 8, !tbaa !42
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.ql) #27
  br label %_ZN8V3NumberD2Ev.exit.i.i

bb.cr:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_111FsmIfBranchESaIS1_EE9push_backEOS1_.exit
  %i.qm = load i32, ptr %i.an, align 8, !tbaa !223
  %i.qn = icmp sgt i32 %i.qm, 128
  %i.qo = icmp eq i8 %.pre420, 1
  %i.qp = and i1 %i.qo, %i.qn
  br i1 %i.qp, label %bb.cs, label %_ZN8V3NumberD2Ev.exit.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.qq = load ptr, ptr %i.ah, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8V3NumberD2Ev.exit.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qr = load ptr, ptr %i.aq, align 8, !tbaa !227
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = ptrtoint ptr %i.qq to i64
  %i.qu = sub i64 %i.qs, %i.qt
  call void @_ZdlPvm(ptr noundef nonnull %i.qq, i64 noundef %i.qu) #27
  br label %_ZN8V3NumberD2Ev.exit.i.i

_ZN8V3NumberD2Ev.exit.i.i:                        ; preds = %bb.cq, %.thread, %bb.ct, %bb.cs, %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.qv = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %i.qw = icmp eq ptr %i.qv, %i.af
  br i1 %i.qw, label %_ZN12_GLOBAL__N_111FsmIfBranchD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65: ; preds = %_ZN8V3NumberD2Ev.exit.i.i
  %i.qx = load i64, ptr %i.af, align 8, !tbaa !42
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qy) #27
  br label %_ZN12_GLOBAL__N_111FsmIfBranchD2Ev.exit

_ZN12_GLOBAL__N_111FsmIfBranchD2Ev.exit:          ; preds = %_ZN8V3NumberD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.qz = getelementptr inbounds nuw i8, ptr %.024, i64 40
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !201 ; 2 uses
  %.not4.i = icmp eq ptr %i.ra, null
  br i1 %.not4.i, label %_ZN12_GLOBAL__N_116FsmDetectVisitor24skipLeadingIgnorableStmtEP7AstNode.exit.thread, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %_ZN12_GLOBAL__N_111FsmIfBranchD2Ev.exit, %bb.cu
  %.05.i = phi ptr [ %i.rd, %bb.cu ], [ %i.ra, %_ZN12_GLOBAL__N_111FsmIfBranchD2Ev.exit ] ; 4 uses
  %i.rb = getelementptr i8, ptr %.05.i, i64 64
  %.0.val.i = load i16, ptr %i.rb, align 8, !tbaa !187
  switch i16 %.0.val.i, label %bb.cw [
    i16 416, label %bb.cu
    i16 481, label %_ZN12_GLOBAL__N_116FsmDetectVisitor24skipLeadingIgnorableStmtEP7AstNode.exit.thread
  ]

bb.cu:                                            ; preds = %.lr.ph.i67
  %i.rc = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !204 ; 2 uses
  %.not.i = icmp eq ptr %i.rd, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_116FsmDetectVisitor24skipLeadingIgnorableStmtEP7AstNode.exit.thread, label %.lr.ph.i67, !llvm.loop !7

bb.cv:                                            ; preds = %.noexc.i.i
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.loopexit102:                                     ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_111FsmIfBranchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit104 = landingpad { ptr, i32 }
          cleanup
  br label %.body63

.loopexit.split-lp103:                            ; preds = %bb.br
  %lpad.loopexit.split-lp105 = landingpad { ptr, i32 }
          cleanup
  br label %.body63

.body63:                                          ; preds = %.loopexit102, %.loopexit.split-lp103, %bb.cn
  %eh.lpad-body64 = phi { ptr, i32 } [ %i.qd, %bb.cn ], [ %lpad.loopexit104, %.loopexit102 ], [ %lpad.loopexit.split-lp105, %.loopexit.split-lp103 ]
  call fastcc void @_ZN12_GLOBAL__N_111FsmIfBranchD2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(120) %7) #26
  br label %.body54

.body54:                                          ; preds = %bb.bg, %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %.body63
  %.pn = phi { ptr, i32 } [ %eh.lpad-body64, %.body63 ], [ %i.re, %bb.cv ], [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.is, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.body50

bb.cw:                                            ; preds = %.lr.ph.i67
  store ptr %.05.i, ptr %i.as, align 8, !tbaa !712
  br label %_ZN12_GLOBAL__N_116FsmDetectVisitor24skipLeadingIgnorableStmtEP7AstNode.exit.thread

_ZN12_GLOBAL__N_116FsmDetectVisitor24skipLeadingIgnorableStmtEP7AstNode.exit.thread: ; preds = %bb.cu, %.lr.ph.i67, %_ZN12_GLOBAL__N_111FsmIfBranchD2Ev.exit, %bb.cw, %bb.bb, %bb.az, %_ZN12_GLOBAL__N_116FsmDetectVisitor18resolveIfPredicateEP11AstNodeExprRKSt13unordered_mapIPK11AstVarScopeNS_18FsmStateComparisonESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEERS7_Rb.exit
  %.233 = phi i32 [ 1, %_ZN12_GLOBAL__N_116FsmDetectVisitor18resolveIfPredicateEP11AstNodeExprRKSt13unordered_mapIPK11AstVarScopeNS_18FsmStateComparisonESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEERS7_Rb.exit ], [ 1, %bb.az ], [ 1, %bb.bb ], [ 3, %bb.cw ], [ 3, %_ZN12_GLOBAL__N_111FsmIfBranchD2Ev.exit ], [ 3, %bb.cu ], [ 2, %.lr.ph.i67 ]
  %.3 = phi ptr [ %.024, %_ZN12_GLOBAL__N_116FsmDetectVisitor18resolveIfPredicateEP11AstNodeExprRKSt13unordered_mapIPK11AstVarScopeNS_18FsmStateComparisonESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEERS7_Rb.exit ], [ %.024, %bb.az ], [ %.024, %bb.bb ], [ %.024, %bb.cw ], [ %.024, %_ZN12_GLOBAL__N_111FsmIfBranchD2Ev.exit ], [ %.024, %bb.cu ], [ %.05.i, %.lr.ph.i67 ]
  %i.rf = load i8, ptr %i.at, align 4, !tbaa !222 ; 2 uses
  %i.rg = icmp eq i8 %i.rf, 3
  br i1 %i.rg, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZN12_GLOBAL__N_116FsmDetectVisitor24skipLeadingIgnorableStmtEP7AstNode.exit.thread
  %i.rh = load ptr, ptr %i.l, align 8, !tbaa !40  ; 2 uses
  %i.ri = icmp eq ptr %i.rh, %i.av
  br i1 %i.ri, label %_ZN8V3NumberD2Ev.exit.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i73: ; preds = %bb.cx
  %i.rj = load i64, ptr %i.av, align 8, !tbaa !42
  %i.rk = add i64 %i.rj, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rk) #27
  br label %_ZN8V3NumberD2Ev.exit.i.i69

bb.cy:                                            ; preds = %_ZN12_GLOBAL__N_116FsmDetectVisitor24skipLeadingIgnorableStmtEP7AstNode.exit.thread
  %i.rl = load i32, ptr %i.au, align 8, !tbaa !223
  %i.rm = icmp sgt i32 %i.rl, 128
  %i.rn = icmp eq i8 %i.rf, 1
  %i.ro = and i1 %i.rn, %i.rm
  br i1 %i.ro, label %bb.cz, label %_ZN8V3NumberD2Ev.exit.i.i69

bb.cz:                                            ; preds = %bb.cy
  %i.rp = load ptr, ptr %i.l, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i72 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i72, label %_ZN8V3NumberD2Ev.exit.i.i69, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.rq = load ptr, ptr %i.av, align 8, !tbaa !227
  %i.rr = ptrtoint ptr %i.rq to i64
  %i.rs = ptrtoint ptr %i.rp to i64
  %i.rt = sub i64 %i.rr, %i.rs
  call void @_ZdlPvm(ptr noundef nonnull %i.rp, i64 noundef %i.rt) #27
  br label %_ZN8V3NumberD2Ev.exit.i.i69

_ZN8V3NumberD2Ev.exit.i.i69:                      ; preds = %bb.cx, %bb.da, %bb.cz, %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i73
  %i.ru = load ptr, ptr %i.h, align 8, !tbaa !40  ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %i.i
  br i1 %i.rv, label %_ZN12_GLOBAL__N_118FsmStateComparisonD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70: ; preds = %_ZN8V3NumberD2Ev.exit.i.i69
  %i.rw = load i64, ptr %i.i, align 8, !tbaa !42
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.rx) #27
  br label %_ZN12_GLOBAL__N_118FsmStateComparisonD2Ev.exit

_ZN12_GLOBAL__N_118FsmStateComparisonD2Ev.exit:   ; preds = %_ZN8V3NumberD2Ev.exit.i.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  switch i32 %.233, label %.loopexit107 [
    i32 3, label %bb.db
    i32 2, label %bb.b
  ]

.body50:                                          ; preds = %bb.ay, %bb.ax, %_ZNSt6vectorIP11AstNodeExprSaIS1_EED2Ev.exit74.i, %.body54, %bb.bc
  %.pn44.pn = phi { ptr, i32 } [ %.pn32.pn.i, %_ZNSt6vectorIP11AstNodeExprSaIS1_EED2Ev.exit74.i ], [ %.pn, %.body54 ], [ %i.id, %bb.bc ], [ %.pn32.pn.i, %bb.ax ], [ %i.hy, %bb.ay ]
  call fastcc void @_ZN12_GLOBAL__N_118FsmStateComparisonD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %6) #26
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.body50
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %.body50 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aw, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn44.pn.pn

bb.db:                                            ; preds = %_ZN12_GLOBAL__N_118FsmStateComparisonD2Ev.exit
  %.val = load ptr, ptr %i.aj, align 8, !tbaa !255
  %.val49 = load ptr, ptr %i.al, align 8, !tbaa !256
  %i.ry = ptrtoint ptr %.val49 to i64
  %i.rz = ptrtoint ptr %.val to i64
  %i.sa = sub i64 %i.ry, %i.rz
  %i.sb = icmp ugt i64 %i.sa, 120
  br label %.loopexit107

.loopexit107:                                     ; preds = %_ZN12_GLOBAL__N_118FsmStateComparisonD2Ev.exit, %bb.db
  %.2 = phi i1 [ %i.sb, %bb.db ], [ false, %_ZN12_GLOBAL__N_118FsmStateComparisonD2Ev.exit ]
  %i.sc = load ptr, ptr %i.e, align 8, !tbaa !425 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.sc, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit107, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.sd, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.sc, %.loopexit107 ] ; 4 uses
  %i.sd = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !175 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !40 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.sh = icmp eq ptr %i.sf, %i.sg
  br i1 %i.sh, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.si = load i64, ptr %i.sg, align 8, !tbaa !42
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.sj) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #27
  %.not.i.i.i.i75 = icmp eq ptr %i.sd, null
  br i1 %.not.i.i.i.i75, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %.loopexit107
  %i.sk = load ptr, ptr %5, align 8, !tbaa !414
  %i.sl = load i64, ptr %i.d, align 8, !tbaa !415
  %i.sm = shl i64 %i.sl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.sk, i8 0, i64 %i.sm, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.sn = load ptr, ptr %5, align 8, !tbaa !414   ; 2 uses
  %i.so = icmp eq ptr %i.sn, %i.c
  br i1 %i.so, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.sp = load i64, ptr %i.d, align 8, !tbaa !415
  %i.sq = shl i64 %i.sp, 3
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.sq) #27
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_116FsmDetectVisitor30ifChainSupportedTransitionNodeERKNS_19FsmIfChainCandidateEP11AstVarScope(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::FsmStateValue", align 8 ; 17 uses
  %3 = alloca %"class.(anonymous namespace)::FsmStateValue", align 8 ; 15 uses
  %4 = alloca %"class.(anonymous namespace)::FsmStateValue", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val49 = load ptr, ptr %i.a, align 8, !tbaa !255 ; 3 uses
  %.val1450 = load ptr, ptr %i.b, align 8, !tbaa !256
  %.not = icmp eq ptr %.val1450, %.val49
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ag
  %.val52 = phi ptr [ %.val49, %.lr.ph ], [ %.val, %bb.ag ]
  %.01151 = phi i64 [ 0, %.lr.ph ], [ %i.er, %bb.ag ] ; 2 uses
  %i.x = getelementptr inbounds nuw [120 x i8], ptr %.val52, i64 %.01151
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !421  ; 4 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %.thread, label %_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.i.i

_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.i.i: ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.aa, align 8, !tbaa !187
  %i.ab = add i16 %.sroa.0.0.copyload.i.i.i.i.i, -472
  %spec.select.i.i.i.i = icmp ult i16 %i.ab, -6
  br i1 %spec.select.i.i.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !202 ; 3 uses
  %.not.i16.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i16.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %.sroa.0.0.copyload.i.i.i17.i.i = load i16, ptr %i.ae, align 8, !tbaa !187
  %i.af = icmp eq i16 %.sroa.0.0.copyload.i.i.i17.i.i, 369
  br i1 %i.af, label %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit.i.i, label %.thread

_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit.i.i: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !245
  %.not15.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not15.i.i, label %_ZN12_GLOBAL__N_116FsmDetectVisitor17directStateAssignEP7AstNodeP11AstVarScope.exit.i, label %.thread

_ZN12_GLOBAL__N_116FsmDetectVisitor17directStateAssignEP7AstNodeP11AstVarScope.exit.i: ; preds = %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.c, ptr %2, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @.str.505, i64 6, i1 false)
  store i64 6, ptr %i.d, align 8, !tbaa !41
  store i8 0, ptr %i.e, align 2, !tbaa !42
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef null, i32 noundef 1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN12_GLOBAL__N_113FsmStateValueC2Ev.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_116FsmDetectVisitor17directStateAssignEP7AstNodeP11AstVarScope.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.c
  br i1 %i.ak, label %common.resume.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.al = load i64, ptr %i.c, align 8, !tbaa !42
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #27
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.e, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.ab ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ai, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

_ZN12_GLOBAL__N_113FsmStateValueC2Ev.exit.i:      ; preds = %_ZN12_GLOBAL__N_116FsmDetectVisitor17directStateAssignEP7AstNodeP11AstVarScope.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !188
  %i.ap = invoke fastcc noundef zeroext i8 @_ZN12_GLOBAL__N_116FsmDetectVisitor16constValueStatusEP11AstNodeExprRNS_13FsmStateValueE(ptr noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_113FsmStateValueC2Ev.exit.i
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %.critedge.i, label %bb.h

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_113FsmStateValueC2Ev.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.g, ptr %3, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.g, ptr noundef nonnull align 1 dereferenceable(6) @.str.505, i64 6, i1 false)
  store i64 6, ptr %i.h, align 8, !tbaa !41
  store i8 0, ptr %i.i, align 2, !tbaa !42
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef null, i32 noundef 1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN12_GLOBAL__N_113FsmStateValueC2Ev.exit28.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.g
  br i1 %i.au, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25.i: ; preds = %bb.i
  %i.av = load i64, ptr %i.g, align 8, !tbaa !42
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #27
  br label %.body.i

_ZN12_GLOBAL__N_113FsmStateValueC2Ev.exit28.i:    ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.k, ptr %4, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.k, ptr noundef nonnull align 1 dereferenceable(6) @.str.505, i64 6, i1 false)
  store i64 6, ptr %i.l, align 8, !tbaa !41
  store i8 0, ptr %i.m, align 2, !tbaa !42
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef null, i32 noundef 1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_113FsmStateValueC2Ev.exit28.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.k
  br i1 %i.az, label %.body32.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29.i: ; preds = %bb.j
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_116FsmDetectVisitor14processIfChainERKNS_19FsmIfChainCandidateEP11AstVarScopeRKNS_20FsmRegisterCandidateE:bb.a
  %i.dq = icmp sgt i32 %i.dp, 128
  %i.dr = icmp eq i8 %i.dj, 1
  %i.ds = and i1 %i.dr, %i.dq
  br i1 %i.ds, label %bb.ac, label %_ZN8V3NumberD2Ev.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dt = load ptr, ptr %i.am, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8V3NumberD2Ev.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = load ptr, ptr %i.ap, align 8, !tbaa !227
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dx) #27
  br label %_ZN8V3NumberD2Ev.exit.i.i.i.i

_ZN8V3NumberD2Ev.exit.i.i.i.i:                    ; preds = %bb.aa, %bb.ad, %bb.ac, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.dy = load ptr, ptr %19, align 8, !tbaa !40   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.aj
  br i1 %i.dz, label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i.i.i.i
  %i.ea = load i64, ptr %i.aj, align 8, !tbaa !42
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #27
  br label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit.i.i.i

_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit.i.i.i:  ; preds = %_ZN8V3NumberD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.ec = load i8, ptr %i.aq, align 4, !tbaa !222 ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 3
  br i1 %i.ed, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit.i.i.i
  %i.ee = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.as
  br i1 %i.ef, label %_ZN8V3NumberD2Ev.exit.i53.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i58.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i58.i.i.i: ; preds = %bb.ae
  %i.eg = load i64, ptr %i.as, align 8, !tbaa !42
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #27
  br label %_ZN8V3NumberD2Ev.exit.i53.i.i.i

bb.af:                                            ; preds = %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit.i.i.i
  %i.ei = load i32, ptr %i.ar, align 8, !tbaa !223
  %i.ej = icmp sgt i32 %i.ei, 128
  %i.ek = icmp eq i8 %i.ec, 1
  %i.el = and i1 %i.ek, %i.ej
  br i1 %i.el, label %bb.ag, label %_ZN8V3NumberD2Ev.exit.i53.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.em = load ptr, ptr %i.ai, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i.i.i.i.i.i57.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i.i.i.i57.i.i.i, label %_ZN8V3NumberD2Ev.exit.i53.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.en = load ptr, ptr %i.as, align 8, !tbaa !227
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #27
  br label %_ZN8V3NumberD2Ev.exit.i53.i.i.i

_ZN8V3NumberD2Ev.exit.i53.i.i.i:                  ; preds = %bb.ae, %bb.ah, %bb.ag, %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i58.i.i.i
  %i.er = load ptr, ptr %18, align 8, !tbaa !40   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.af
  br i1 %i.es, label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit60.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i53.i.i.i
  %i.et = load i64, ptr %i.af, align 8, !tbaa !42
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #27
  br label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit60.i.i.i

_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit60.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i53.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.04.062.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ev, %.val32.i.i.i
  br i1 %.not.i.i.i, label %.loopexit175, label %bb.f

bb.ai:                                            ; preds = %bb.z, %_ZZN12_GLOBAL__N_116FsmDetectVisitor27collectStateSpaceFromValuesIZNS0_17collectStateSpaceERKNS_19FsmIfChainCandidateEP11AstVarScopeS6_RKSt6vectorINS_15FsmResetArcDescESaIS8_EERNS_13FsmStateSpaceEEUlRKT_E_EEbP7AstNodeS6_SC_SE_SH_ENKUlP11AstNodeExprE_clESM_.exit49.i.i.i, %_ZZN12_GLOBAL__N_116FsmDetectVisitor27collectStateSpaceFromValuesIZNS0_17collectStateSpaceERKNS_19FsmIfChainCandidateEP11AstVarScopeS6_RKSt6vectorINS_15FsmResetArcDescESaIS8_EERNS_13FsmStateSpaceEEUlRKT_E_EEbP7AstNodeS6_SC_SE_SH_ENKUlP11AstNodeExprE_clESM_.exit.i.i.i
  %i.ew = load i8, ptr %i.an, align 4, !tbaa !222 ; 2 uses
  %i.ex = icmp eq i8 %i.ew, 3
  br i1 %i.ex, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ey = load ptr, ptr %i.am, align 8, !tbaa !40 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ap
  br i1 %i.ez, label %_ZN8V3NumberD2Ev.exit.i61.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i66.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i66.i.i.i: ; preds = %bb.aj
  %i.fa = load i64, ptr %i.ap, align 8, !tbaa !42
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #27
  br label %_ZN8V3NumberD2Ev.exit.i61.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.fc = load i32, ptr %i.ao, align 8, !tbaa !223
  %i.fd = icmp sgt i32 %i.fc, 128
  %i.fe = icmp eq i8 %i.ew, 1
  %i.ff = and i1 %i.fe, %i.fd
  br i1 %i.ff, label %bb.al, label %_ZN8V3NumberD2Ev.exit.i61.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.fg = load ptr, ptr %i.am, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i.i.i.i.i.i65.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i.i.i.i65.i.i.i, label %_ZN8V3NumberD2Ev.exit.i61.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fh = load ptr, ptr %i.ap, align 8, !tbaa !227
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fk) #27
  br label %_ZN8V3NumberD2Ev.exit.i61.i.i.i

_ZN8V3NumberD2Ev.exit.i61.i.i.i:                  ; preds = %bb.aj, %bb.am, %bb.al, %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i66.i.i.i
  %i.fl = load ptr, ptr %19, align 8, !tbaa !40   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.aj
  br i1 %i.fm, label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit68.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i61.i.i.i
  %i.fn = load i64, ptr %i.aj, align 8, !tbaa !42
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #27
  br label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit68.i.i.i

_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit68.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i61.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.fp = load i8, ptr %i.aq, align 4, !tbaa !222 ; 2 uses
  %i.fq = icmp eq i8 %i.fp, 3
  br i1 %i.fq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit68.i.i.i
  %i.fr = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.as
  br i1 %i.fs, label %_ZN8V3NumberD2Ev.exit.i69.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74.i.i.i: ; preds = %bb.an
  %i.ft = load i64, ptr %i.as, align 8, !tbaa !42
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #27
  br label %_ZN8V3NumberD2Ev.exit.i69.i.i.i

bb.ao:                                            ; preds = %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit68.i.i.i
  %i.fv = load i32, ptr %i.ar, align 8, !tbaa !223
  %i.fw = icmp sgt i32 %i.fv, 128
  %i.fx = icmp eq i8 %i.fp, 1
  %i.fy = and i1 %i.fx, %i.fw
  br i1 %i.fy, label %bb.ap, label %_ZN8V3NumberD2Ev.exit.i69.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.fz = load ptr, ptr %i.ai, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i.i.i.i.i.i73.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i.i.i.i73.i.i.i, label %_ZN8V3NumberD2Ev.exit.i69.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ga = load ptr, ptr %i.as, align 8, !tbaa !227
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = sub i64 %i.gb, %i.gc
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gd) #27
  br label %_ZN8V3NumberD2Ev.exit.i69.i.i.i

_ZN8V3NumberD2Ev.exit.i69.i.i.i:                  ; preds = %bb.an, %bb.aq, %bb.ap, %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i74.i.i.i
  %i.ge = load ptr, ptr %18, align 8, !tbaa !40   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.af
  br i1 %i.gf, label %_ZZN12_GLOBAL__N_116FsmDetectVisitor17collectStateSpaceERKNS_19FsmIfChainCandidateEP11AstVarScopeS5_RKSt6vectorINS_15FsmResetArcDescESaIS7_EERNS_13FsmStateSpaceEENKUlRKT_E_clIZNS0_27collectStateSpaceFromValuesISH_EEbP7AstNodeS5_SB_SD_SG_EUlP11AstNodeExprE_EEDaSG_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i69.i.i.i
  %i.gg = load i64, ptr %i.af, align 8, !tbaa !42
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #27
  br label %_ZZN12_GLOBAL__N_116FsmDetectVisitor17collectStateSpaceERKNS_19FsmIfChainCandidateEP11AstVarScopeS5_RKSt6vectorINS_15FsmResetArcDescESaIS7_EERNS_13FsmStateSpaceEENKUlRKT_E_clIZNS0_27collectStateSpaceFromValuesISH_EEbP7AstNodeS5_SB_SD_SG_EUlP11AstNodeExprE_EEDaSG_.exit.i.i

.body.i.i.i:                                      ; preds = %bb.m, %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.v ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38.i.i.i ], [ %i.bv, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call fastcc void @_ZN12_GLOBAL__N_113FsmStateValueD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %.body

_ZZN12_GLOBAL__N_116FsmDetectVisitor17collectStateSpaceERKNS_19FsmIfChainCandidateEP11AstVarScopeS5_RKSt6vectorINS_15FsmResetArcDescESaIS7_EERNS_13FsmStateSpaceEENKUlRKT_E_clIZNS0_27collectStateSpaceFromValuesISH_EEbP7AstNodeS5_SB_SD_SG_EUlP11AstNodeExprE_EEDaSG_.exit.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i69.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %.thread

.thread:                                          ; preds = %.noexc, %_ZZN12_GLOBAL__N_116FsmDetectVisitor17collectStateSpaceERKNS_19FsmIfChainCandidateEP11AstVarScopeS5_RKSt6vectorINS_15FsmResetArcDescESaIS7_EERNS_13FsmStateSpaceEENKUlRKT_E_clIZNS0_27collectStateSpaceFromValuesISH_EEbP7AstNodeS5_SB_SD_SG_EUlP11AstNodeExprE_EEDaSG_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br label %bb.gr

.loopexit175:                                     ; preds = %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit60.i.i.i, %.noexc94
  %.val.i.i = load ptr, ptr %20, align 8, !tbaa !370
  %i.gi = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.val9.i.i = load ptr, ptr %i.gi, align 8, !tbaa !371
  %i.gj = ptrtoint ptr %.val9.i.i to i64
  %i.gk = ptrtoint ptr %.val.i.i to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = icmp ugt i64 %i.gl, 120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br i1 %i.gm, label %bb.ar, label %bb.gr

.loopexit170:                                     ; preds = %bb.f
  %lpad.loopexit172 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp171:                            ; preds = %.noexc98.invoke, %bb.c, %bb.e, %bb.g, %.noexc96, %bb.k, %.noexc100, %.noexc101, %.noexc97
  %lpad.loopexit.split-lp173 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %.thread166, %.loopexit175
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !372, !nonnull !98, !align !116
  %i.gp = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN12_GLOBAL__N_18FsmState6fsmForEP11AstVarScope(ptr noundef nonnull align 8 dereferenceable(72) %i.go, ptr noundef %.val62)
          to label %bb.as unwind label %.loopexit.split-lp ; 11 uses

bb.as:                                            ; preds = %bb.ar
  %.val66 = load ptr, ptr %i.gp, align 8, !tbaa !107
  %.not168 = icmp eq ptr %.val66, null
  br i1 %.not168, label %bb.ax, label %bb.at, !prof !203

bb.at:                                            ; preds = %bb.as
  %i.gq = load ptr, ptr %1, align 8, !tbaa !412
  %i.gr = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 1818)
          to label %bb.au unwind label %.loopexit.split-lp ; 0 uses

bb.au:                                            ; preds = %bb.at
  %i.gs = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.av unwind label %.loopexit.split-lp ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull @.str.563, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.av
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.gq, ptr noundef nonnull align 8 dereferenceable(112) %i.gs) #30
          to label %bb.aw unwind label %.loopexit.split-lp

bb.aw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  unreachable

.loopexit:                                        ; preds = %.noexc.i.i.i152
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ar, %bb.at, %bb.au, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %._crit_edge, %bb.av
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %bb.as
  %i.gu = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #31
          to label %bb.ay unwind label %.loopexit.split-lp ; 4 uses

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN12_GLOBAL__N_18FsmGraphC2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.gu)
          to label %bb.az unwind label %bb.bh

bb.az:                                            ; preds = %bb.ay
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !107 ; 2 uses
  store ptr %i.gu, ptr %i.gp, align 8, !tbaa !107
  %.not.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_18FsmGraphESt14default_deleteIS1_EE5resetEPS1_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_18FsmGraphEEclEPS1_(ptr noundef nonnull %i.gv)
  %.val79.pre = load ptr, ptr %i.gp, align 8, !tbaa !107
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_18FsmGraphESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_18FsmGraphESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.az, %bb.ba
  %.val79 = phi ptr [ %i.gu, %bb.az ], [ %.val79.pre, %bb.ba ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.val79, i64 24
  %i.gx = load <2 x ptr>, ptr %3, align 8, !tbaa !373
  store <2 x ptr> %i.gx, ptr %i.gw, align 8, !tbaa !373
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !723
  %i.gy = load ptr, ptr %.val62, align 8, !tbaa !44, !noalias !723
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.ha = load ptr, ptr %i.gz, align 8, !noalias !723
  invoke void %i.ha(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(152) %.val62)
          to label %.noexc105 unwind label %bb.bi, !inline_history !13

.noexc105:                                        ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_18FsmGraphESt14default_deleteIS1_EE5resetEPS1_.exit
  invoke void @_ZN7AstNode10prettyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %.noexc105
  %i.hb = load ptr, ptr %17, align 8, !tbaa !40, !noalias !723 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bb
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !42, !noalias !723
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.bc:                                            ; preds = %.noexc105
  %i.hg = landingpad { ptr, i32 }
          cleanup
  %i.hh = load ptr, ptr %17, align 8, !tbaa !40, !noalias !723 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.bc
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !42, !noalias !723
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !723
  br label %.body106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !723
  %i.hm = getelementptr inbounds nuw i8, ptr %.val79, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hm, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %_ZN12_GLOBAL__N_18FsmGraph12stateVarNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.bj

_ZN12_GLOBAL__N_18FsmGraph12stateVarNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.hn = load ptr, ptr %21, align 8, !tbaa !40   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12_GLOBAL__N_18FsmGraph12stateVarNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !42
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_18FsmGraph12stateVarNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %.val76 = load ptr, ptr %i.gp, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.hs = load ptr, ptr %i.y, align 8, !tbaa !236 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 152
  %i.hu = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.hu, ptr %22, align 8, !tbaa !109, !alias.scope !724
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !40, !noalias !724 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 160
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !41, !noalias !724 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26, !noalias !724
  store i64 %i.hx, ptr %i.j, align 8, !tbaa !108, !noalias !724
  %i.hy = icmp ugt i64 %i.hx, 15
  br i1 %i.hy, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc109 unwind label %bb.bk ; 2 uses

.noexc109:                                        ; preds = %.noexc.i.i
  store ptr %i.hz, ptr %22, align 8, !tbaa !40, !alias.scope !724
  %i.ia = load i64, ptr %i.j, align 8, !tbaa !108, !noalias !724
  store i64 %i.ia, ptr %i.hu, align 8, !tbaa !42, !alias.scope !724
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ib = phi ptr [ %i.hz, %.noexc109 ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.hx, label %bb.be [
    i64 1, label %bb.bd
    i64 0, label %bb.bf
  ]

bb.bd:                                            ; preds = %._crit_edge.i.i.i
  %i.ic = load i8, ptr %i.hv, align 1, !tbaa !42
  store i8 %i.ic, ptr %i.ib, align 1, !tbaa !42
  br label %bb.bf

bb.be:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ib, ptr align 1 %i.hv, i64 %i.hx, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %._crit_edge.i.i.i
  %i.id = load i64, ptr %i.j, align 8, !tbaa !108, !noalias !724 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.id, ptr %i.ie, align 8, !tbaa !41, !alias.scope !724
  %i.if = load ptr, ptr %22, align 8, !tbaa !40, !alias.scope !724
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.id
  store i8 0, ptr %i.ig, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26, !noalias !724
  %i.ih = getelementptr inbounds nuw i8, ptr %.val76, i64 72
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ih, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %_ZN12_GLOBAL__N_18FsmGraph20stateVarInternalNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.bl

_ZN12_GLOBAL__N_18FsmGraph20stateVarInternalNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.bf
  %i.ii = load ptr, ptr %22, align 8, !tbaa !40   ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.hu
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZN12_GLOBAL__N_18FsmGraph20stateVarInternalNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ik = load i64, ptr %i.hu, align 8, !tbaa !42
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_116FsmDetectVisitor12addResetArcsERNS_8FsmGraphERKSt6vectorINS_15FsmResetArcDescESaIS4_EERKNS_13FsmStateSpaceE:bb.a

bb.z:                                             ; preds = %bb.y
  %i.eg = load ptr, ptr %i.o, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i.i.i.i.i.i52 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i.i.i.i52, label %_ZN8V3NumberD2Ev.exit.i48, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eh = load ptr, ptr %i.aa, align 8, !tbaa !227
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #27
  br label %_ZN8V3NumberD2Ev.exit.i48

_ZN8V3NumberD2Ev.exit.i48:                        ; preds = %bb.x, %bb.aa, %bb.z, %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i53
  %i.el = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.l
  br i1 %i.em, label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49: ; preds = %_ZN8V3NumberD2Ev.exit.i48
  %i.en = load i64, ptr %i.l, align 8, !tbaa !42
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #27
  br label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit55

_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit55:      ; preds = %_ZN8V3NumberD2Ev.exit.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49, %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.02.047, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.ep, %.8.val
  br i1 %.not, label %._crit_edge, label %bb.b

bb.ab:                                            ; preds = %.noexc.i.i.i33
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %.noexc36, %bb.q
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.body38:                                          ; preds = %bb.r, %bb.ac
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.er, %bb.ac ], [ %i.cy, %bb.r ]
  call fastcc void @_ZN12_GLOBAL__N_113FsmStateValueD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %5) #26
  br label %.body

.body:                                            ; preds = %bb.p, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30, %.body38
  %.pn14 = phi { ptr, i32 } [ %eh.lpad-body39, %.body38 ], [ %i.eq, %bb.ab ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30 ], [ %i.cn, %bb.p ]
  call fastcc void @_ZN12_GLOBAL__N_113FsmStateValueD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstCase6itemspEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI11AstCaseItemS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !187
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 8
  br i1 %.not6, label %.critedge, label %bb.c, !prof !203

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.5, i32 noundef 1063) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.6)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !187
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !207
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.7)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #30
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113FsmStateSpaceD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(97) dereferenceable(104) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !405 ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not1.i.i.i.i, label %_ZNSt10_HashtableIN12_GLOBAL__N_113FsmStateValueESt4pairIKS1_NS0_15StateConstLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_17FsmStateValueHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.02.i.i.i.i = phi ptr [ %.0.val.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.val.i.i.i, %bb.a ] ; 2 uses
  %.0.val.i.i.i.i = load ptr, ptr %.02.i.i.i.i, align 8, !tbaa !175 ; 2 uses
  tail call fastcc void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12_GLOBAL__N_113FsmStateValueENS3_15StateConstLabelEELb1EEEEE18_M_deallocate_nodeEPS8_(ptr noundef %.02.i.i.i.i)
  %.not.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN12_GLOBAL__N_113FsmStateValueESt4pairIKS1_NS0_15StateConstLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_17FsmStateValueHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !19

_ZNSt10_HashtableIN12_GLOBAL__N_113FsmStateValueESt4pairIKS1_NS0_15StateConstLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_17FsmStateValueHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !365
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !366
  %i.f = shl i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.c, i8 0, i64 %i.f, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !365  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt13unordered_mapIN12_GLOBAL__N_113FsmStateValueENS0_15StateConstLabelENS0_17FsmStateValueHashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN12_GLOBAL__N_113FsmStateValueESt4pairIKS1_NS0_15StateConstLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_17FsmStateValueHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.j = load i64, ptr %i.d, align 8, !tbaa !366
  %i.k = shl i64 %i.j, 3
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt13unordered_mapIN12_GLOBAL__N_113FsmStateValueENS0_15StateConstLabelENS0_17FsmStateValueHashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit

_ZNSt13unordered_mapIN12_GLOBAL__N_113FsmStateValueENS0_15StateConstLabelENS0_17FsmStateValueHashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN12_GLOBAL__N_113FsmStateValueESt4pairIKS1_NS0_15StateConstLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_17FsmStateValueHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  tail call fastcc void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_113FsmStateValueEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116FsmDetectVisitor25collectDeclaredStateSpaceEP7AstNodeP11AstVarScopeRNS_13FsmStateSpaceERb(ptr nonnull %.72.val, ptr %.168.val, ptr noundef nonnull align 8 dereferenceable(104) initializes((88, 96)) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.(anonymous namespace)::FsmStateValue", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"struct.(anonymous namespace)::StateConstLabel", align 8 ; 15 uses
  %i.d = tail call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %.72.val, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.e, align 8, !tbaa !187
  %i.f = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 83
  br i1 %i.f, label %select.unfold2, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.168.val, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367
  %i.i = tail call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.h, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) ; 3 uses
  %.not.i42 = icmp eq ptr %i.i, null
  br i1 %.not.i42, label %bb.bd, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.0.0.copyload.i.i.i43 = load i16, ptr %i.j, align 8, !tbaa !187
  %i.k = icmp eq i16 %.sroa.0.0.copyload.i.i.i43, 83
  br i1 %i.k, label %select.unfold2, label %bb.bd

select.unfold2:                                   ; preds = %bb.d, %bb.b
  %.031 = phi ptr [ %i.d, %bb.b ], [ %i.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.168.val, ptr %i.l, align 8, !tbaa !436
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.m, align 8, !tbaa !437
  %i.n = getelementptr inbounds nuw i8, ptr %.031, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !202  ; 2 uses
  %.not3490 = icmp eq ptr %i.o, null
  br i1 %.not3490, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %_ZN7AstNode2asI11AstEnumItemS_EEPT_PT0_.exit

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit, %select.unfold2
  %.val = load ptr, ptr %0, align 8, !tbaa !370
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val39 = load ptr, ptr %i.aj, align 8, !tbaa !371
  %i.ak = ptrtoint ptr %.val39 to i64
  %i.al = ptrtoint ptr %.val to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ugt i64 %i.am, 120
  br label %bb.be

_ZN7AstNode2asI11AstEnumItemS_EEPT_PT0_.exit:     ; preds = %bb.ax, %.lr.ph
  %.03091 = phi ptr [ %i.o, %.lr.ph ], [ %i.if, %bb.ax ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.03091, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !202 ; 5 uses
  %.not.i46 = icmp eq ptr %i.ap, null
  br i1 %.not.i46, label %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7AstNode2asI11AstEnumItemS_EEPT_PT0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %.sroa.0.0.copyload.i.i.i47 = load i16, ptr %i.aq, align 8, !tbaa !187
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i47, 121
  br i1 %.not6.i, label %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit, label %bb.f, !prof !203

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.5, i32 noundef 1063) ; 0 uses
  %i.at = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.6)
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.ar, align 8, !tbaa !187
  %i.av = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !207
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef %i.ax)
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.7)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.ap, ptr noundef nonnull align 8 dereferenceable(112) %i.az) #30
  unreachable

_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit: ; preds = %_ZN7AstNode2asI11AstEnumItemS_EEPT_PT0_.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
  call fastcc void @_ZN12_GLOBAL__N_113FsmStateValueC2ERK8V3Number(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.ba)
  %.val40 = load ptr, ptr %0, align 8, !tbaa !370
  %.val41 = load ptr, ptr %i.p, align 8, !tbaa !371
  %i.bb = ptrtoint ptr %.val41 to i64
  %i.bc = ptrtoint ptr %.val40 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = sdiv exact i64 %i.bd, 120
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.bf = getelementptr inbounds nuw i8, ptr %.03091, i64 152 ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !109, !alias.scope !765
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40, !noalias !765 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03091, i64 160 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !41, !noalias !765 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !765
  store i64 %i.bi, ptr %i.c, align 8, !tbaa !108, !noalias !765
  %i.bj = icmp ugt i64 %i.bi, 15
  br i1 %i.bj, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit
  %i.bk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.az    ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.bk, ptr %3, align 8, !tbaa !40, !alias.scope !765
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !108, !noalias !765
  store i64 %i.bl, ptr %i.q, align 8, !tbaa !42, !alias.scope !765
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit
  %i.bm = phi ptr [ %i.bk, %.noexc ], [ %i.q, %_ZN7AstNode2asI8AstConst11AstNodeExprEEPT_PT0_.exit ] ; 2 uses
  switch i64 %i.bi, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.bn = load i8, ptr %i.bg, align 1, !tbaa !42
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !42
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bg, i64 %i.bi, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !108, !noalias !765 ; 2 uses
  store i64 %i.bo, ptr %i.r, align 8, !tbaa !41, !alias.scope !765
  %i.bp = load ptr, ptr %3, align 8, !tbaa !40, !alias.scope !765
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 0, ptr %i.bq, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !765
  %i.br = load ptr, ptr %i.p, align 8, !tbaa !371 ; 6 uses
  %i.bs = load ptr, ptr %i.s, align 8, !tbaa !390
  %.not.i48 = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i48, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_113FsmStateValueEEC2IS5_RKS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(120) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %.noexc49 unwind label %.loopexit

.noexc49:                                         ; preds = %bb.j
  %i.bt = load ptr, ptr %i.p, align 8, !tbaa !371
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 120
  store ptr %i.bu, ptr %i.p, align 8, !tbaa !371
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_113FsmStateValueEESaIS9_EE12emplace_backIJS6_RKS8_EEERS9_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !370 ; 6 uses
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.l, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_113FsmStateValueEESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.504) #30
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_113FsmStateValueEESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bz = sdiv exact i64 %i.bx, 120               ; 3 uses
  %i.ca = icmp eq ptr %i.br, %.val.i.i            ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.ca, i64 1, i64 %i.bz
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i, %i.bz ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.bz
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 76861433640456465)
  %i.ce = select i1 %i.cc, i64 76861433640456465, i64 %i.cd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cf = mul nuw nsw i64 %i.ce, 120              ; 2 uses
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #31
          to label %.noexc51 unwind label %.loopexit ; 7 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_113FsmStateValueEESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bx ; 2 uses
  invoke fastcc void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_113FsmStateValueEEC2IS5_RKS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(120) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_113FsmStateValueEEEE9constructIS9_JS6_RKS8_EEEvRSA_PT_DpOT0_.exit.i.i unwind label %bb.t

_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_113FsmStateValueEEEE9constructIS9_JS6_RKS8_EEEvRSA_PT_DpOT0_.exit.i.i: ; preds = %.noexc51
  %i.ci = invoke fastcc noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_113FsmStateValueEESA_SaIS9_EET0_T_SD_SC_RT1_(ptr noundef %.val.i.i, ptr noundef %i.br, ptr noundef nonnull %i.cg)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_113FsmStateValueEEEE9constructIS9_JS6_RKS8_EEEvRSA_PT_DpOT0_.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 120
  br i1 %i.ca, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_113FsmStateValueEEEvT_SB_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_113FsmStateValueEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dp, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12_GLOBAL__N_113FsmStateValueEEEvPT_.exit.i.i.i.i ], [ %.val.i.i, %bb.m ] ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 100
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !222 ; 2 uses
  %i.co = icmp eq i8 %i.cn, 3
  br i1 %i.co, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !40 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 80 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !42
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #27
  br label %_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !223
  %i.cw = icmp sgt i32 %i.cv, 128
  %i.cx = icmp eq i8 %i.cn, 1
  %i.cy = and i1 %i.cx, %i.cw
  br i1 %i.cy, label %bb.p, label %_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.cz = load ptr, ptr %i.cl, align 8, !tbaa !226 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 80
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !227
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #27
  br label %_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i

_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i:              ; preds = %bb.n, %bb.q, %bb.p, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.df = load ptr, ptr %i.ck, align 8, !tbaa !40 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !42
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #27
  br label %_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit.i.i.i.i.i.i

_ZN12_GLOBAL__N_113FsmStateValueD2Ev.exit.i.i.i.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.dk = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !40 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
end_hunk_4
