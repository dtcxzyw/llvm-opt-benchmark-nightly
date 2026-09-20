Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/main?download=true
inline.NumInlined: 2325
inline.NumDeleted: 1332
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE17_M_default_appendEm:bb.a
  unreachable

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.af = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.z, %.lr.ph.i.i.i ], [ %i.z, %.lr.ph.i.i.i ] ; 2 uses
  store i8 %i.af, ptr %i.x, align 8, !tbaa !88, !alias.scope !335, !noalias !336
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.af, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.h, !prof !160

.sink.split.i.i.i.i:                              ; preds = %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.thread.i.i.i.i, %bb.e
  store i8 %i.z, ptr %i.x, align 8, !tbaa !88, !alias.scope !335, !noalias !336
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i.i.i.i, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !337
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(160) %.0912.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !337
  br label %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.h, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 160 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 160
  %.not.i.i.i = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !12

_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %_ZNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !91
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ak) #30
  br label %_ZNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw [160 x i8], ptr %i.v, i64 %1
  store ptr %i.al, ptr %i.a, align 8, !tbaa !86
  %i.am = getelementptr inbounds nuw [160 x i8], ptr %i.u, i64 %i.s
  store ptr %i.am, ptr %i.h, align 8, !tbaa !91
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEmS5_ET_S7_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !136
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !61   ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !60
  %i.k = load i64, ptr %i.e, align 8, !tbaa !65
  store i64 %i.k, ptr %i.c, align 8, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !61
  store ptr %i.e, ptr %i.b, align 8, !tbaa !60
  store i64 0, ptr %i.l, align 8, !tbaa !61
  store i8 0, ptr %i.e, align 8, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !131
  store i32 %i.q, ptr %i.o, align 8, !tbaa !131
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !154
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !154
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !133
  store ptr %i.w, ptr %i.u, align 8, !tbaa !133
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !135
  store i64 %i.z, ptr %i.x, align 8, !tbaa !135
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !136
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !61 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !60
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !65
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.am, ptr %i.an, align 8, !tbaa !61
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !60
  store i64 0, ptr %i.al, align 8, !tbaa !61
  store i8 0, ptr %i.ae, align 8, !tbaa !65
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !136
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !60 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.av = load i64, ptr %i.au, align 8, !tbaa !61 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !60
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !65
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !61
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !60
  store i64 0, ptr %i.az, align 8, !tbaa !61
  store i8 0, ptr %i.as, align 8, !tbaa !65
  tail call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull %1)
  tail call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17register_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull %0)
  store i32 -1, ptr %i.p, align 8, !tbaa !131
  store i64 0, ptr %i.az, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !60
  store i8 0, ptr %i.bc, align 1, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17register_instanceEPNS1_16SharedMemoryBaseE(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #29
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit:       ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !127 ; 4 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 16), align 8, !tbaa !78
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  store ptr %0, ptr %i.b, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !127
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE9push_backERKS4_.exit

bb.d:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.e = load ptr, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !77 ; 4 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.e, label %_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.j = ashr exact i64 %i.h, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %1 = add nsw i64 %.sroa.speculated.i.i.i, %i.j  ; 2 uses
  %i.k = icmp ult i64 %1, %i.j
  %i.l = tail call i64 @llvm.umin.i64(i64 %1, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %i.h ; 2 uses
  store ptr %0, ptr %i.p, align 8, !tbaa !126
  %i.q = icmp sgt i64 %i.h, 0
  br i1 %i.q, label %bb.f, label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.not.i17.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 16), align 8, !tbaa !78
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.u) #30
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.o, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !77
  store ptr %i.r, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !127
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.m
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 16), align 8, !tbaa !78
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.w = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %class.anon.134, align 1            ; 3 uses
  %4 = alloca %class.anon.134, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !85     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 160                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %5, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %5, i64 57646075230342348)
  %i.k = select i1 %i.i, i64 57646075230342348, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 160
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 152 ; 2 uses
  store i8 -1, ptr %i.q, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !88    ; 3 uses
  switch i8 %i.s, label %bb.f [
    i8 0, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit
    i8 1, label %bb.c
    i8 2, label %bb.e
    i8 -1, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit
  ]

bb.c:                                             ; preds = %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 144 ; 2 uses
  store i8 0, ptr %i.u, align 8, !tbaa !120
  %i.v = load i8, ptr %i.t, align 8, !tbaa !120, !range !121, !noundef !122
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(160) %i.p, ptr noundef nonnull align 8 dereferenceable(160) %2) #25
  store i8 1, ptr %i.u, align 8, !tbaa !120
  %.pre.i.i.i.i.i.i = load i8, ptr %i.r, align 8, !tbaa !88
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit

bb.e:                                             ; preds = %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = load i64, ptr %2, align 8, !tbaa !114
  store i64 %i.x, ptr %i.p, align 8, !tbaa !114
  store ptr null, ptr %2, align 8, !tbaa !114
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit

bb.f:                                             ; preds = %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit
  unreachable

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit: ; preds = %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit, %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c, %bb.d, %bb.e
  %i.y = phi i8 [ %i.s, %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.s, %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit ], [ 1, %bb.c ], [ %.pre.i.i.i.i.i.i, %bb.d ], [ 2, %bb.e ]
  store i8 %i.y, ptr %i.q, align 8, !tbaa !88
  %.not11.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not11.i.i.i, label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.015.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit ] ; 5 uses
  %.0912.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.z = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 152 ; 3 uses
  store i8 -1, ptr %i.z, align 8, !tbaa !88, !alias.scope !344, !noalias !345
  %i.aa = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 152 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !88, !alias.scope !345, !noalias !344 ; 4 uses
  switch i8 %i.ab, label %bb.i [
    i8 0, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i
    i8 1, label %bb.g
    i8 2, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.thread.i.i.i.i
    i8 -1, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 144 ; 2 uses
  store i8 0, ptr %i.ad, align 8, !tbaa !120, !alias.scope !344, !noalias !345
  %i.ae = load i8, ptr %i.ac, align 8, !tbaa !120, !range !121, !alias.scope !345, !noalias !344, !noundef !122
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %.sink.split.i.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(160) %.015.i.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.0912.i.i.i) #25
  store i8 1, ptr %i.ad, align 8, !tbaa !120, !alias.scope !344, !noalias !345
  %.pre.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.aa, align 8, !tbaa !88, !alias.scope !345, !noalias !344
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ag = load i64, ptr %.0912.i.i.i, align 8, !tbaa !114, !alias.scope !345, !noalias !344
  store i64 %i.ag, ptr %.015.i.i.i, align 8, !tbaa !114, !alias.scope !344, !noalias !345
  store ptr null, ptr %.0912.i.i.i, align 8, !tbaa !114, !alias.scope !345, !noalias !344
  br label %.sink.split.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  unreachable

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.ah = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ %i.ab, %.lr.ph.i.i.i ], [ %i.ab, %.lr.ph.i.i.i ] ; 2 uses
  store i8 %i.ah, ptr %i.z, align 8, !tbaa !88, !alias.scope !344, !noalias !345
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ah, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.j, !prof !160

.sink.split.i.i.i.i:                              ; preds = %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.thread.i.i.i.i, %bb.g
  store i8 %i.ab, ptr %i.z, align 8, !tbaa !88, !alias.scope !344, !noalias !345
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i.i.i.i, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !346
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(160) %.0912.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !346
  br label %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.j, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 160 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !12

_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit ], [ %i.aj, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 160 ; 2 uses
  %.not11.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i16, label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22
  %.015.i.i.i18 = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ak, %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0912.i.i.i19 = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i.i.i18, i64 152 ; 3 uses
  store i8 -1, ptr %i.al, align 8, !tbaa !88, !alias.scope !347, !noalias !348
  %i.am = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 152 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !88, !alias.scope !348, !noalias !347 ; 4 uses
  switch i8 %i.an, label %bb.m [
    i8 0, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i20
    i8 1, label %bb.k
    i8 2, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.thread.i.i.i.i25
    i8 -1, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i20
  ]

bb.k:                                             ; preds = %.lr.ph.i.i.i17
  %i.ao = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 144
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i.i.i18, i64 144 ; 2 uses
  store i8 0, ptr %i.ap, align 8, !tbaa !120, !alias.scope !347, !noalias !348
  %i.aq = load i8, ptr %i.ao, align 8, !tbaa !120, !range !121, !alias.scope !348, !noalias !347, !noundef !122
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.l, label %.sink.split.i.i.i.i26

bb.l:                                             ; preds = %bb.k
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(160) %.015.i.i.i18, ptr noundef nonnull align 8 dereferenceable(160) %.0912.i.i.i19) #25
  store i8 1, ptr %i.ap, align 8, !tbaa !120, !alias.scope !347, !noalias !348
  %.pre.i.i.i.i.i.i.i.i.i.i27 = load i8, ptr %i.am, align 8, !tbaa !88, !alias.scope !348, !noalias !347
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i20

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.thread.i.i.i.i25: ; preds = %.lr.ph.i.i.i17
  %i.as = load i64, ptr %.0912.i.i.i19, align 8, !tbaa !114, !alias.scope !348, !noalias !347
  store i64 %i.as, ptr %.015.i.i.i18, align 8, !tbaa !114, !alias.scope !347, !noalias !348
  store ptr null, ptr %.0912.i.i.i19, align 8, !tbaa !114, !alias.scope !348, !noalias !347
  br label %.sink.split.i.i.i.i26

bb.m:                                             ; preds = %.lr.ph.i.i.i17
  unreachable

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i20: ; preds = %bb.l, %.lr.ph.i.i.i17, %.lr.ph.i.i.i17
  %i.at = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i.i27, %bb.l ], [ %i.an, %.lr.ph.i.i.i17 ], [ %i.an, %.lr.ph.i.i.i17 ] ; 2 uses
  store i8 %i.at, ptr %i.al, align 8, !tbaa !88, !alias.scope !347, !noalias !348
  %.not.i.i.i.i.i.i.i21 = icmp eq i8 %i.at, -1
  br i1 %.not.i.i.i.i.i.i.i21, label %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22, label %bb.n, !prof !160

.sink.split.i.i.i.i26:                            ; preds = %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.thread.i.i.i.i25, %bb.k
  store i8 %i.an, ptr %i.al, align 8, !tbaa !88, !alias.scope !347, !noalias !348
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i.i.i.i26, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !349
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(160) %.0912.i.i.i19)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !349
  br label %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %bb.n, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i20
  %i.au = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 160 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.015.i.i.i18, i64 160 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28, label %.lr.ph.i.i.i17, !llvm.loop !12

_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28: ; preds = %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ak, %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.av, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #30
  br label %_ZNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28, %bb.o
  store ptr %i.o, ptr %0, align 8, !tbaa !85
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !86
  %i.ba = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %i.k
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEb(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<unsigned long, unsigned long, std::_Identity<unsigned long>, std::less<unsigned long>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %4 = alloca %"class.std::set", align 8          ; 12 uses
  %5 = alloca %class.anon.225, align 8            ; 6 uses
  %6 = alloca %"class.std::optional.226", align 16 ; 18 uses
  %7 = alloca %"class.Stockfish::NumaConfig", align 16 ; 16 uses
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %.045, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 32
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !44
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !44
  %i.aq = load i32, ptr %.045, align 8, !tbaa !394
  store i32 %i.aq, ptr %.sink.i.i32, align 8, !tbaa !394
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.02744, i64 16
  store ptr %.sink.i.i32, ptr %i.as, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 8
  store ptr %.02744, ptr %i.at, align 8, !tbaa !170
  %i.au = getelementptr inbounds nuw i8, ptr %.045, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !79 ; 2 uses
  %.not29 = icmp eq ptr %i.av, null
  br i1 %.not29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40
  %i.aw = tail call noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.av, ptr noundef nonnull %.sink.i.i32, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !79
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40
  %.0.in = getelementptr inbounds nuw i8, ptr %.045, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !80  ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !393

._crit_edge:                                      ; preds = %bb.q, %bb.i
  ret ptr %.sink.i.i
}

declare void @_ZN9Stockfish19read_file_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::optional.242") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.39") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.253", align 8   ; 7 uses
  %3 = alloca %"class.std::vector.253", align 8   ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.g = load ptr, ptr %1, align 8, !tbaa !60
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.253") align 8 %2, i64 %i.e, ptr %i.g, i64 1, ptr nonnull @.str.18)
  %i.h = load ptr, ptr %2, align 8, !tbaa !396    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !396  ; 2 uses
  %.not5054 = icmp eq ptr %i.h, %i.j
  br i1 %.not5054, label %._crit_edge, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.ah
  %.pre = load ptr, ptr %2, align 8, !tbaa !189
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.u = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.h, %bb.b ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !190
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.ai

bb.d:                                             ; preds = %.lr.ph56, %bb.ah
  %i.aa = phi ptr [ null, %.lr.ph56 ], [ %i.ef, %bb.ah ] ; 8 uses
  %i.ab = phi ptr [ null, %.lr.ph56 ], [ %i.eg, %bb.ah ] ; 4 uses
  %i.ac = phi ptr [ null, %.lr.ph56 ], [ %i.eh, %bb.ah ] ; 7 uses
  %i.ad = phi ptr [ null, %.lr.ph56 ], [ %.promoted61, %bb.ah ] ; 9 uses
  %.sroa.045.055 = phi ptr [ %i.h, %.lr.ph56 ], [ %i.ei, %bb.ah ] ; 4 uses
  %i.ae = load i64, ptr %.sroa.045.055, align 8, !tbaa !398
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.ah, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.0.0.copyload = load i64, ptr %.sroa.045.055, align 8, !tbaa !44
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !137
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.253") align 8 %3, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, i64 1, ptr nonnull @.str.19)
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !191
  %i.ah = load ptr, ptr %3, align 8, !tbaa !189   ; 6 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 4
  switch i64 %i.al, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit [
    i64 1, label %bb.f
    i64 2, label %bb.q
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.sroa.0.0.copyload.i = load i64, ptr %i.ah, align 8, !tbaa !44 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !137 ; 3 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !136
  %i.am = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.an = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.an, %i.am
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %.sroa.0.0.copyload.i, ptr %i.c, align 8, !tbaa !44
  %i.ao = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.ao, label %bb.i, label %._crit_edge.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #25 ; 2 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !60
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !44
  store i64 %i.aq, ptr %i.r, align 8, !tbaa !65
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.h
  %i.ar = phi ptr [ %i.ap, %bb.i ], [ %i.r, %bb.h ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !65
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.j, %bb.k
  %i.at = load i64, ptr %i.c, align 8, !tbaa !44  ; 2 uses
  store i64 %i.at, ptr %i.s, align 8, !tbaa !61
  %i.au = load ptr, ptr %4, align 8, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.aw = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #25 ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !60    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.r
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.az = load i64, ptr %i.r, align 8, !tbaa !65
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.not.i = icmp eq ptr %i.ac, %i.aa
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i64 %i.aw, ptr %i.ac, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.p, align 8, !tbaa !399
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = ptrtoint ptr %i.aa to i64
  %i.bd = ptrtoint ptr %i.ad to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %7 = add nsw i64 %.sroa.speculated.i.i.i, %i.bg ; 2 uses
  %i.bh = icmp ult i64 %7, %i.bg
  %i.bi = call i64 @llvm.umin.i64(i64 %7, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i10 = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i10)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #28 ; 5 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.be ; 2 uses
  store i64 %i.aw, ptr %i.bm, align 8, !tbaa !44
  %i.bn = icmp sgt i64 %i.be, 0
  br i1 %i.bn, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %i.ad, i64 %i.be, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.be) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.bl, ptr %0, align 8, !tbaa !111
  store ptr %i.bo, ptr %i.p, align 8, !tbaa !399
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj ; 3 uses
  store ptr %i.bp, ptr %i.q, align 8, !tbaa !112
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %.sroa.0.0.copyload.i11 = load i64, ptr %i.ah, align 8, !tbaa !44 ; 5 uses
  %.sroa.2.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i13 = load ptr, ptr %.sroa.2.0..sroa_idx.i12, align 8, !tbaa !137 ; 3 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !136
  %i.bq = icmp eq ptr %.sroa.2.0.copyload.i13, null
  %i.br = icmp ne i64 %.sroa.0.0.copyload.i11, 0
  %or.cond.i.i.i14 = and i1 %i.br, %i.bq
  br i1 %or.cond.i.i.i14, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #29
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %.sroa.0.0.copyload.i11, ptr %i.b, align 8, !tbaa !44
  %i.bs = icmp ugt i64 %.sroa.0.0.copyload.i11, 15
  br i1 %i.bs, label %bb.t, label %._crit_edge.i.i.i.i15

bb.t:                                             ; preds = %bb.s
  %i.bt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #25 ; 2 uses
  store ptr %i.bt, ptr %5, align 8, !tbaa !60
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !44
  store i64 %i.bu, ptr %i.l, align 8, !tbaa !65
  br label %._crit_edge.i.i.i.i15

._crit_edge.i.i.i.i15:                            ; preds = %bb.t, %bb.s
  %i.bv = phi ptr [ %i.bt, %bb.t ], [ %i.l, %bb.s ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i11, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i15
  %i.bw = load i8, ptr %.sroa.2.0.copyload.i13, align 1, !tbaa !65
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16

bb.v:                                             ; preds = %._crit_edge.i.i.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %.sroa.2.0.copyload.i13, i64 %.sroa.0.0.copyload.i11, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16: ; preds = %._crit_edge.i.i.i.i15, %bb.u, %bb.v
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  store i64 %i.bx, ptr %i.m, align 8, !tbaa !61
  %i.by = load ptr, ptr %5, align 8, !tbaa !60
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  store i8 0, ptr %i.bz, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ca = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5) #25 ; 2 uses
  %i.cb = load ptr, ptr %5, align 8, !tbaa !60    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.l
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16
  %i.cd = load i64, ptr %i.l, align 8, !tbaa !65
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.cf = load ptr, ptr %3, align 8, !tbaa !189   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.0.0.copyload.i20 = load i64, ptr %i.cg, align 8, !tbaa !44 ; 5 uses
  %.sroa.2.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.2.0.copyload.i22 = load ptr, ptr %.sroa.2.0..sroa_idx.i21, align 8, !tbaa !137 ; 3 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !136
  %i.ch = icmp eq ptr %.sroa.2.0.copyload.i22, null
  %i.ci = icmp ne i64 %.sroa.0.0.copyload.i20, 0
  %or.cond.i.i.i23 = and i1 %i.ci, %i.ch
  br i1 %or.cond.i.i.i23, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #29
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %.sroa.0.0.copyload.i20, ptr %i.a, align 8, !tbaa !44
  %i.cj = icmp ugt i64 %.sroa.0.0.copyload.i20, 15
  br i1 %i.cj, label %bb.y, label %._crit_edge.i.i.i.i24

bb.y:                                             ; preds = %bb.x
  %i.ck = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #25 ; 2 uses
  store ptr %i.ck, ptr %6, align 8, !tbaa !60
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.cl, ptr %i.n, align 8, !tbaa !65
  br label %._crit_edge.i.i.i.i24

._crit_edge.i.i.i.i24:                            ; preds = %bb.y, %bb.x
  %i.cm = phi ptr [ %i.ck, %bb.y ], [ %i.n, %bb.x ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i20, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i24
  %i.cn = load i8, ptr %.sroa.2.0.copyload.i22, align 1, !tbaa !65
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %.sroa.2.0.copyload.i22, i64 %.sroa.0.0.copyload.i20, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25: ; preds = %._crit_edge.i.i.i.i24, %bb.z, %bb.aa
  %i.co = load i64, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  store i64 %i.co, ptr %i.o, align 8, !tbaa !61
  %i.cp = load ptr, ptr %6, align 8, !tbaa !60
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 0, ptr %i.cq, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cr = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6) #25 ; 2 uses
  %i.cs = load ptr, ptr %6, align 8, !tbaa !60    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.n
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25
  %i.cu = load i64, ptr %i.n, align 8, !tbaa !65
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.not52 = icmp ugt i64 %i.ca, %i.cr
  br i1 %.not52, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit
  %i.cw = phi ptr [ %i.dp, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  %i.cx = phi ptr [ %i.dq, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %i.cy = phi ptr [ %i.dr, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %storemerge53 = phi i64 [ %i.dt, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %i.cz = phi ptr [ %i.ds, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 6 uses
  %.not.i29 = icmp eq ptr %i.cy, %i.cx
  br i1 %.not.i29, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  store i64 %storemerge53, ptr %i.cy, align 8, !tbaa !44
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  store ptr %i.da, ptr %i.p, align 8, !tbaa !399
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

bb.ac:                                            ; preds = %.lr.ph
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 6 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %bb.ad, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.cz, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30: ; preds = %bb.ac
  %i.df = ashr exact i64 %i.dd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i31 = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %8 = add nsw i64 %.sroa.speculated.i.i.i31, %i.df ; 2 uses
  %i.dg = icmp ult i64 %8, %i.df
  %i.dh = call i64 @llvm.umin.i64(i64 %8, i64 1152921504606846975)
  %i.di = select i1 %i.dg, i64 1152921504606846975, i64 %i.dh ; 3 uses
  %.not.i.i.i32 = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %.not.i.i.i32)
  %i.dj = shl nuw nsw i64 %i.di, 3
  %i.dk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #28 ; 4 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dd ; 2 uses
  store i64 %storemerge53, ptr %i.dl, align 8, !tbaa !44
  %i.dm = icmp sgt i64 %i.dd, 0
  br i1 %i.dm, label %bb.ae, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33

bb.ae:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %i.cz, i64 %i.dd, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33: ; preds = %bb.ae, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %.not.i17.i.i34 = icmp eq ptr %i.cz, null
  br i1 %.not.i17.i.i34, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33
  store ptr %i.dn, ptr %i.p, align 8, !tbaa !399
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.di ; 3 uses
  store ptr %i.do, ptr %i.q, align 8, !tbaa !112
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit: ; preds = %bb.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.dp = phi ptr [ %i.cw, %bb.ab ], [ %i.do, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dq = phi ptr [ %i.cx, %bb.ab ], [ %i.do, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dr = phi ptr [ %i.da, %bb.ab ], [ %i.dn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ds = phi ptr [ %i.cz, %bb.ab ], [ %i.dk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dt = add i64 %storemerge53, 1                ; 2 uses
  %.not = icmp ugt i64 %i.dt, %i.cr
  br i1 %.not, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit, label %.lr.ph, !llvm.loop !395

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.du = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.dp, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.dv = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.dq, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.dw = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.dr, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %.lcssa = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.ds, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 2 uses
  store ptr %.lcssa, ptr %0, align 8
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split: ; preds = %bb.l, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit
  %.ph = phi ptr [ %i.aa, %bb.l ], [ %i.bp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.du, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.ph87 = phi ptr [ %i.aa, %bb.l ], [ %i.bp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dv, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.ph88 = phi ptr [ %i.bb, %bb.l ], [ %i.bo, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dw, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.promoted62.ph = phi ptr [ %i.ad, %bb.l ], [ %i.bl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.lcssa, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.pr = load ptr, ptr %3, align 8, !tbaa !189
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split, %bb.e
  %i.dx = phi ptr [ %.pr, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ah, %bb.e ] ; 3 uses
  %i.dy = phi ptr [ %.ph, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.aa, %bb.e ]
  %i.dz = phi ptr [ %.ph87, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ab, %bb.e ]
  %i.ea = phi ptr [ %.ph88, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ac, %bb.e ]
  %.promoted62 = phi ptr [ %.promoted62.ph, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ad, %bb.e ]
  %.not.i.i.i35 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit
  %i.eb = load ptr, ptr %i.t, align 8, !tbaa !190
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dx to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ee) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ah

bb.ah:                                            ; preds = %bb.d, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36
  %i.ef = phi ptr [ %i.aa, %bb.d ], [ %i.dy, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.eg = phi ptr [ %i.ab, %bb.d ], [ %i.dz, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.eh = phi ptr [ %i.ac, %bb.d ], [ %i.ea, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %.promoted61 = phi ptr [ %i.ad, %bb.d ], [ %.promoted62, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 16 ; 2 uses
  %.not50 = icmp eq ptr %i.ei, %i.j
  br i1 %.not50, label %._crit_edge.loopexit, label %bb.d

bb.ai:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::tuple.276", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.279", align 1    ; 3 uses
  %5 = alloca %"class.std::map.267", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store i32 0, ptr %i.a, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !54
  %i.f = load ptr, ptr %1, align 8, !tbaa !184    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184  ; 2 uses
  %.not85100 = icmp eq ptr %i.f, %i.h
  br i1 %.not85100, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %0, i8 0, i64 24, i1 false), !alias.scope !410
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i32 0, ptr %i.j, align 8, !tbaa !50, !alias.scope !410
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !51, !alias.scope !410
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %i.l, align 8, !tbaa !52, !alias.scope !410
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.j, ptr %i.m, align 8, !tbaa !53, !alias.scope !410
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.n, i8 0, i64 17, i1 false), !alias.scope !410
  %.not86120 = icmp eq ptr %i.i, %i.a
  br i1 %.not86120, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.h

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.sroa.080.0101 = phi ptr [ %i.ba, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ %i.f, %bb.a ] ; 10 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.t = load i64, ptr %.sroa.080.0101, align 8, !tbaa !44 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44
  %i.w = icmp ult i64 %i.v, %i.t                  ; 3 uses
  %.19.i.i.i.i = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, label %bb.b, !llvm.loop !402

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i: ; preds = %bb.b
  %i.x = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.x, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.y = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !44
  %i.z = icmp ult i64 %i.t, %i.y
  br i1 %i.z, label %.critedge.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, %.lr.ph
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i ], [ %i.a, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %.sroa.080.0101, ptr %3, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aa = call ptr @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.aa, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !182 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !183
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit
  %i.af = load i64, ptr %.sroa.080.0101, align 8, !tbaa !179
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !179
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !50
end_hunk_1
begin_hunk_2_@_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm:bb.a
  br i1 %.not.i45, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, label %bb.k, !llvm.loop !404

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i
  %.pre139.a = load ptr, ptr %i.bc, align 8, !tbaa !184
  %.pre140.a = load ptr, ptr %i.bd, align 8, !tbaa !184
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, %bb.j
  %i.db = phi ptr [ %.pre140.a, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bo, %bb.j ] ; 4 uses
  %i.dc = phi ptr [ %.pre139.a, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bn, %bb.j ]
  %i.dd = getelementptr inbounds [56 x i8], ptr %i.dc, i64 %.0103 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 112 ; 3 uses
  %.not.i.i = icmp eq ptr %i.de, %i.db
  br i1 %.not.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 0
  br i1 %i.di, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.p
  %i.dj = udiv exact i64 %i.dh, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ed, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dj, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.pn = phi ptr [ %.0811.i.i.i.i.i.i.i, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dd, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ec, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.de, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0811.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 56 ; 2 uses
  %i.dk = load i64, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !179
  store i64 %i.dk, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !179
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 80 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !51
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 72 ; 4 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 88 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !52
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 96
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !53
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 104 ; 2 uses
  store i64 0, ptr %i.dr, align 8, !tbaa !54
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !50
  store i32 %i.dv, ptr %i.do, align 8, !tbaa !50
  store ptr %i.dt, ptr %i.dm, align 8, !tbaa !51
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.dy = load <2 x ptr>, ptr %i.dw, align 8, !tbaa !55
  store <2 x ptr> %i.dy, ptr %i.dp, align 8, !tbaa !55
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.do, ptr %i.dz, align 8, !tbaa !170
  %i.ea = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !54
  store i64 %i.eb, ptr %i.dr, align 8, !tbaa !54
  store ptr null, ptr %i.ds, align 8, !tbaa !51
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !52
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !53
  store i64 0, ptr %i.ea, align 8, !tbaa !54
  br label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i

_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 56
  %i.ed = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i, !llvm.loop !405

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i: ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.bd, align 8, !tbaa !182
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, %bb.p, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i
  %i.ef = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i ], [ %i.db, %bb.p ], [ %i.db, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit ] ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -56
  store ptr %i.eg, ptr %i.bd, align 8, !tbaa !182
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -48
  %i.ei = getelementptr inbounds i8, ptr %i.ef, i64 -32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !51
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noundef %i.ej)
  %.pre141.a = load ptr, ptr %i.bd, align 8, !tbaa !182
  %.pre142.a = load ptr, ptr %i.bc, align 8, !tbaa !185
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph105, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.ek = phi ptr [ %.pre142.a, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bn, %.lr.ph105 ] ; 4 uses
  %i.el = phi ptr [ %.pre141.a, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bo, %.lr.ph105 ] ; 4 uses
  %.1 = phi i1 [ true, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.034102, %.lr.ph105 ] ; 2 uses
  %i.em = add nuw i64 %i.bp, 1                    ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 56
  %i.er = icmp ult i64 %i.em, %i.eq
  br i1 %i.er, label %.lr.ph105, label %._crit_edge106, !llvm.loop !406

._crit_edge118:                                   ; preds = %._crit_edge113, %.preheader
  %.136.lcssa = phi i64 [ %.035122, %.preheader ], [ %i.et, %._crit_edge113 ]
  %i.es = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.076.0121) #27 ; 2 uses
  %.not86.a = icmp eq ptr %i.es, %i.a
  br i1 %.not86.a, label %._crit_edge125, label %bb.h

.lr.ph117:                                        ; preds = %.preheader, %._crit_edge113
  %.136116 = phi i64 [ %i.et, %._crit_edge113 ], [ %.035122, %.preheader ] ; 5 uses
  %.sroa.068.0115 = phi ptr [ %i.ex, %._crit_edge113 ], [ %i.bm, %.preheader ] ; 3 uses
  %i.et = add i64 %.136116, 1                     ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !52 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 16 ; 2 uses
  %.not88109 = icmp eq ptr %i.ev, %i.ew
  br i1 %.not88109, label %._crit_edge113, label %.lr.ph112

._crit_edge113:                                   ; preds = %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit, %.lr.ph117
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 56 ; 2 uses
  %.not87.a = icmp eq ptr %i.ex, %i.bl
  br i1 %.not87.a, label %._crit_edge118, label %.lr.ph117

.lr.ph112:                                        ; preds = %.lr.ph117, %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit
  %.sroa.064.0110 = phi ptr [ %i.jj, %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit ], [ %i.ev, %.lr.ph117 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.064.0110, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !44 ; 11 uses
  %i.fa = load ptr, ptr %i.k, align 8, !tbaa !51  ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not10.i.i.i.i.i, label %.preheader.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph112, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fa, %.lr.ph112 ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph112 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !44
  %i.fd = icmp ult i64 %i.fc, %i.ez               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.fd, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.fd, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fe = icmp eq ptr %.19.i.i.i.i.i, %i.j
  br i1 %i.fe, label %.preheader.i, label %.split.i

.split.i:                                         ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !44
  %.not8.i = icmp ult i64 %i.ez, %i.fg
  br i1 %.not8.i, label %.preheader.i, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

.preheader.i:                                     ; preds = %.split.i, %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %.lr.ph112
  %i.fh = load ptr, ptr %i.o, align 8, !tbaa !107 ; 2 uses
  %i.fi = load ptr, ptr %0, align 8, !tbaa !106   ; 3 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 48
  %.not11.i = icmp ugt i64 %i.fm, %.136116
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i
  %i.fn = phi ptr [ %i.hi, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.fi, %.preheader.i ] ; 5 uses
  %i.fo = phi ptr [ %i.hj, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.fh, %.preheader.i ] ; 9 uses
  %i.fp = load ptr, ptr %i.p, align 8, !tbaa !108
  %.not.i.i38 = icmp eq ptr %i.fo, %i.fp
  br i1 %.not.i.i38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i8 0, i64 24, i1 false)
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !52
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store ptr %i.fq, ptr %i.fs, align 8, !tbaa !53
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  store i64 0, ptr %i.ft, align 8, !tbaa !54
  %i.fu = load ptr, ptr %i.o, align 8, !tbaa !107
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48 ; 2 uses
  store ptr %i.fv, ptr %i.o, align 8, !tbaa !107
  %.pre143 = load ptr, ptr %0, align 8, !tbaa !106
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.fw = ptrtoint ptr %i.fo to i64
  %i.fx = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fy = sub i64 %i.fw, %i.fx                    ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775776
  br i1 %i.fz, label %bb.u, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.ga = sdiv exact i64 %i.fy, 48                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %6 = add nsw i64 %.sroa.speculated.i.i, %i.ga   ; 2 uses
  %i.gb = icmp ult i64 %6, %i.ga
  %i.gc = call i64 @llvm.umin.i64(i64 %6, i64 192153584101141162)
  %i.gd = select i1 %i.gb, i64 192153584101141162, i64 %i.gc ; 3 uses
  %.not.i.i59 = icmp ne i64 %i.gd, 0
  call void @llvm.assume(i1 %.not.i.i59)
  %i.ge = mul nuw nsw i64 %i.gd, 48
  %i.gf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #28 ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.fy ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i8 0, i64 24, i1 false)
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !52
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  store ptr %i.gh, ptr %i.gj, align 8, !tbaa !53
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  store i64 0, ptr %i.gk, align 8, !tbaa !54
  %.not10.i.i.i.i60 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not10.i.i.i.i60, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i61

.lr.ph.i.i.i.i61:                                 ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i62 = phi ptr [ %i.hc, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.gf, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.hb, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.fn, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.gl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 8 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !51, !alias.scope !412, !noalias !411 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i61
  %i.go = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 3 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !50, !alias.scope !412, !noalias !411
  %i.gq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !52, !alias.scope !412, !noalias !411
  %i.gs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !53, !alias.scope !412, !noalias !411
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.gl, ptr %i.gu, align 8, !tbaa !170, !noalias !413
  %i.gv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !54, !alias.scope !412, !noalias !411
  store ptr null, ptr %i.gm, align 8, !tbaa !51, !alias.scope !412, !noalias !411
  store ptr %i.go, ptr %i.gq, align 8, !tbaa !52, !alias.scope !412, !noalias !411
  store ptr %i.go, ptr %i.gs, align 8, !tbaa !53, !alias.scope !412, !noalias !411
  store i64 0, ptr %i.gv, align 8, !tbaa !54, !alias.scope !412, !noalias !411
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i61
  %.sink6.i.i.i.i.i = phi ptr [ %i.gr, %bb.v ], [ %i.gl, %.lr.ph.i.i.i.i61 ]
  %.sink5.i.i.i.i.i = phi ptr [ %i.gt, %bb.v ], [ %i.gl, %.lr.ph.i.i.i.i61 ]
  %.sink.i.i.i.i.i = phi i64 [ %i.gw, %bb.v ], [ 0, %.lr.ph.i.i.i.i61 ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gp, %bb.v ], [ 0, %.lr.ph.i.i.i.i61 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 16
  store ptr %i.gn, ptr %i.gx, align 8, !tbaa !51, !alias.scope !411, !noalias !412
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 24
  store ptr %.sink6.i.i.i.i.i, ptr %i.gy, align 8, !tbaa !52, !alias.scope !411, !noalias !412
  %i.gz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 32
  store ptr %.sink5.i.i.i.i.i, ptr %i.gz, align 8, !tbaa !53, !alias.scope !411, !noalias !412
  %i.ha = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 40
  store i64 %.sink.i.i.i.i.i, ptr %i.ha, align 8, !tbaa !54, !alias.scope !411, !noalias !412
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.gl, align 8, !tbaa !50, !alias.scope !411, !noalias !412
  %i.hb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 48 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.hb, %i.fo
  br i1 %.not.i.i.i.i63, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i61, !llvm.loop !16

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gf, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.hc, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.fn, null
  br i1 %.not.i28.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i
  %i.he = load ptr, ptr %i.p, align 8, !tbaa !108
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = sub i64 %i.hf, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.hg) #30
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, %bb.w
  store ptr %i.gf, ptr %0, align 8, !tbaa !106
  store ptr %i.hd, ptr %i.o, align 8, !tbaa !107
  %i.hh = getelementptr inbounds nuw [48 x i8], ptr %i.gf, i64 %i.gd
  store ptr %i.hh, ptr %i.p, align 8, !tbaa !108
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.s
  %i.hi = phi ptr [ %.pre143, %bb.s ], [ %i.gf, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 3 uses
  %i.hj = phi ptr [ %i.fv, %bb.s ], [ %i.hd, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 2 uses
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = sdiv exact i64 %i.hm, 48
  %.not.i39 = icmp ugt i64 %i.hn, %.136116
  br i1 %.not.i39, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i, %.preheader.i
  %.lcssa10.i = phi ptr [ %i.fi, %.preheader.i ], [ %i.hi, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ]
  %i.ho = getelementptr inbounds nuw [48 x i8], ptr %.lcssa10.i, i64 %.136116 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 3 uses
  %.02022.i.i.i.i = load ptr, ptr %i.hp, align 8, !tbaa !55 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i40
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i40 ], [ %.02022.i.i.i.i, %._crit_edge.i ] ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !44 ; 2 uses
  %i.ht = icmp ult i64 %i.ez, %i.hs               ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.ht, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i41, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i40, !llvm.loop !0

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i40
  br i1 %i.ht, label %._crit_edge.thread.i.i.i.i, label %bb.y

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.hq, %._crit_edge.i ] ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !52
  %i.hw = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.hv
  br i1 %i.hw, label %select.unfold.i.i.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.hx = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #27
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !44
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i
  %i.hy = phi i64 [ %.pre.i.i.i, %bb.x ], [ %i.hs, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.x ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.hz = icmp ult i64 %i.hy, %i.ez
  br i1 %i.hz, label %select.unfold.i.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

select.unfold.i.i.i:                              ; preds = %bb.y, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.y ] ; 3 uses
  %i.ia = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.hq
  br i1 %i.ia, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %select.unfold.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !44
  %i.id = icmp ult i64 %i.ez, %i.ic
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.z, %select.unfold.i.i.i
  %i.ie = phi i1 [ %i.id, %bb.z ], [ true, %select.unfold.i.i.i ]
  %i.if = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  store i64 %i.ez, ptr %i.ig, align 8, !tbaa !44
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ie, ptr noundef nonnull %i.if, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.hq) #25
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ho, i64 40 ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !54
  %i.ij = add i64 %i.ii, 1
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !54
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i:    ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, %bb.y
  %i.ik = load ptr, ptr %i.k, align 8, !tbaa !51  ; 2 uses
  %.not10.i.i.i.i48 = icmp eq ptr %i.ik, null
  br i1 %.not10.i.i.i.i48, label %.critedge.i57, label %.lr.ph.i.i.i.i49

.lr.ph.i.i.i.i49:                                 ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i, %.lr.ph.i.i.i.i49
  %.012.i.i.i.i50 = phi ptr [ %.1.i.i.i.i55, %.lr.ph.i.i.i.i49 ], [ %i.ik, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ] ; 3 uses
  %.0811.i.i.i.i51 = phi ptr [ %.19.i.i.i.i52, %.lr.ph.i.i.i.i49 ], [ %i.j, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.il = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i50, i64 32
  %i.im = load i64, ptr %i.il, align 8, !tbaa !44
  %i.in = icmp ult i64 %i.im, %i.ez               ; 2 uses
  %.19.i.i.i.i52 = select i1 %i.in, ptr %.0811.i.i.i.i51, ptr %.012.i.i.i.i50 ; 6 uses
  %.1.in.v.i.i.i.i53 = select i1 %i.in, i64 24, i64 16
  %.1.in.i.i.i.i54 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i50, i64 %.1.in.v.i.i.i.i53
  %.1.i.i.i.i55 = load ptr, ptr %.1.in.i.i.i.i54, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %.1.i.i.i.i55, null
  br i1 %.not.i.i.i.i56, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i49, !llvm.loop !14

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i49
  %i.io = icmp eq ptr %.19.i.i.i.i52, %i.j
  br i1 %i.io, label %.critedge.i57, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i52, i64 32
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !44
  %i.ir = icmp ult i64 %i.ez, %i.iq
  br i1 %i.ir, label %.critedge.i57, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

.critedge.i57:                                    ; preds = %bb.aa, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i52, %bb.aa ], [ %.19.i.i.i.i52, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i ], [ %i.j, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.is = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28 ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32 ; 3 uses
  store i64 %i.ez, ptr %i.it, align 8, !tbaa !193
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  store i64 0, ptr %i.iu, align 8, !tbaa !194
  %i.iv = call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.it) ; 2 uses
  %i.iw = extractvalue { ptr, ptr } %i.iv, 0      ; 2 uses
  %i.ix = extractvalue { ptr, ptr } %i.iv, 1      ; 4 uses
  %.not.i.i58 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i58, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i57
  %.not.i.i.i4.i = icmp ne ptr %i.iw, null
  %i.iy = icmp eq ptr %i.ix, %i.j
  %or.cond.i.i.i.i = or i1 %.not.i.i.i4.i, %i.iy
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.ja = load i64, ptr %i.it, align 8, !tbaa !44
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !44
  %i.jc = icmp ult i64 %i.ja, %i.jb
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ac, %bb.ab
  %i.jd = phi i1 [ %i.jc, %bb.ac ], [ true, %bb.ab ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.jd, ptr noundef nonnull %i.is, ptr noundef nonnull %i.ix, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #25
  %i.je = load i64, ptr %i.n, align 8, !tbaa !54
  %i.jf = add i64 %i.je, 1
  store i64 %i.jf, ptr %i.n, align 8, !tbaa !54
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

bb.ad:                                            ; preds = %.critedge.i57
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef 48) #30
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit: ; preds = %bb.aa, %.thread.i.i, %bb.ad
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i52, %bb.aa ], [ %i.is, %.thread.i.i ], [ %i.iw, %bb.ad ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  store i64 %.136116, ptr %i.jg, align 8, !tbaa !44
  %i.jh = load i64, ptr %i.r, align 8, !tbaa !159
  %i.ji = icmp ugt i64 %i.ez, %i.jh
  br i1 %i.ji, label %bb.ae, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

bb.ae:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit
  store i64 %i.ez, ptr %i.r, align 8, !tbaa !159
  br label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit: ; preds = %.split.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit, %bb.ae
  %i.jj = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.064.0110) #27 ; 2 uses
  %.not88 = icmp eq ptr %i.jj, %i.ew
  br i1 %.not88, label %._crit_edge113, label %.lr.ph112
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.253") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %invariant.op = sub i64 1, %3
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.o
  %i.h = phi ptr [ %i.ar, %bb.o ], [ null, %.preheader ] ; 9 uses
  %i.i = phi ptr [ %i.as, %bb.o ], [ null, %.preheader ] ; 8 uses
  %i.j = phi ptr [ %i.at, %bb.o ], [ null, %.preheader ] ; 14 uses
  %.09 = phi i64 [ %i.au, %bb.o ], [ 0, %.preheader ] ; 14 uses
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not27.i.i = icmp ugt i64 %.09, %1
  br i1 %.not27.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp ult i64 %.09, %1
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = sub nuw i64 %1, %.09                     ; 2 uses
  %.not2531.i.i = icmp ult i64 %i.k, %3
  br i1 %.not2531.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.09
  %i.m = load i8, ptr %4, align 1, !tbaa !65
  %i.n = sext i8 %i.m to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.v, %bb.h ]
  %.02032.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.t, %bb.h ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.o = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.f
  %i.p = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.n, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #25 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.p, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %4, i64 %3)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.r, %i.e
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.d, %i.u                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.v, %3
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.f, !llvm.loop !414

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %bb.c, %bb.g
  %.1.i.i = phi i64 [ %.09, %bb.c ], [ %i.s, %bb.g ] ; 3 uses
  %i.w = icmp eq i64 %.1.i.i, -1
  br i1 %i.w, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.x = icmp ugt i64 %.09, %1
  br i1 %i.x, label %bb.j, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.j:                                             ; preds = %bb.i
  store ptr %i.j, ptr %0, align 8
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i64 noundef %.09, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.i
  %i.y = sub i64 %.1.i.i, %.09
  %i.z = sub nuw i64 %1, %.09
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.09 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  store i64 %.sroa.speculated.i, ptr %i.i, align 8, !tbaa !44
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx, align 8, !tbaa !137
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !191
  br label %bb.o

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.ac = ptrtoint ptr %i.h to i64
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.m, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.j, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ah = icmp ult i64 %5, %i.ag
  %i.ai = tail call i64 @llvm.umin.i64(i64 %5, i64 576460752303423487)
  %i.aj = select i1 %i.ah, i64 576460752303423487, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 4
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #28 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ae ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.am, align 8, !tbaa !44
  %.sroa.534.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx35, align 8, !tbaa !137
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.al, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !422, !alias.scope !423
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !418

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.al, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ae) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !191
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.aj ; 2 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !190
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.k
  %i.ar = phi ptr [ %i.aq, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.h, %bb.k ]
  %i.as = phi ptr [ %i.ap, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ab, %bb.k ]
  %i.at = phi ptr [ %i.al, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.j, %bb.k ]
  %i.au = add i64 %.1.i.i, %3
  br label %bb.b

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread: ; preds = %bb.c, %bb.e, %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %bb.f, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.h
  store ptr %i.j, ptr %0, align 8
  %i.av = icmp ugt i64 %.09, %1
  br i1 %i.av, label %bb.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i64 noundef %.09, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread
  %i.aw = sub nuw i64 %1, %.09                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %.09 ; 2 uses
  %.not.i14 = icmp eq ptr %i.i, %i.h
  br i1 %.not.i14, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13
  store i64 %i.aw, ptr %i.i, align 8, !tbaa !44
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ax, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !137
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.ay, ptr %i.f, align 8, !tbaa !191
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27

bb.r:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13
  %i.az = ptrtoint ptr %i.h to i64
  %i.ba = ptrtoint ptr %i.j to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775792
  br i1 %i.bc, label %bb.s, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15: ; preds = %bb.r
  %i.bd = ashr exact i64 %i.bb, 4                 ; 3 uses
  %.sroa.speculated.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %6 = add nsw i64 %.sroa.speculated.i.i.i16, %i.bd ; 2 uses
  %i.be = icmp ult i64 %6, %i.bd
  %i.bf = tail call i64 @llvm.umin.i64(i64 %6, i64 576460752303423487)
  %i.bg = select i1 %i.be, i64 576460752303423487, i64 %i.bf ; 3 uses
  %.not.i.i.i17 = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i17)
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #28 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bb ; 2 uses
  store i64 %i.aw, ptr %i.bj, align 8, !tbaa !44
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.ax, ptr %.sroa.5.0..sroa_idx30, align 8, !tbaa !137
  %.not10.i.i.i.i.i18 = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i18, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15, %.lr.ph.i.i.i.i.i19
  %.012.i.i.i.i.i20 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i19 ], [ %i.bi, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  %.0911.i.i.i.i.i21 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i19 ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i21, i64 16, i1 false), !tbaa.struct !422, !alias.scope !424
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i21, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bk, %i.h
  br i1 %.not.i.i.i.i.i22, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19, !llvm.loop !418

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23: ; preds = %.lr.ph.i.i.i.i.i19, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.bi, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ], [ %i.bl, %.lr.ph.i.i.i.i.i19 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i24, i64 16
  %.not.i23.i.i25 = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i25, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.bb) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26: ; preds = %bb.t, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  store ptr %i.bi, ptr %0, align 8, !tbaa !189
  store ptr %i.bm, ptr %i.f, align 8, !tbaa !191
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bn, ptr %i.g, align 8, !tbaa !190
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, %bb.q, %bb.a
  ret void
}

declare noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !185    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 164703072086692425)
  %i.k = select i1 %i.i, i64 164703072086692425, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 56
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 7 uses
  %i.q = load i64, ptr %2, align 8, !tbaa !179
  store i64 %i.q, ptr %i.p, align 8, !tbaa !179
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.t, ptr %i.w, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.r, ptr %i.ab, align 8, !tbaa !170
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !54
  store ptr null, ptr %i.s, align 8, !tbaa !51
  store ptr %i.u, ptr %i.x, align 8, !tbaa !52
  store ptr %i.u, ptr %i.z, align 8, !tbaa !53
  store i64 0, ptr %i.ac, align 8, !tbaa !54
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr null, ptr %i.ae, align 8, !tbaa !51
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit

_ZN9Stockfish8L3DomainC2EOS0_.exit:               ; preds = %bb.c, %bb.d
  %.sink36 = phi ptr [ %i.r, %bb.d ], [ %i.y, %bb.c ]
  %.sink35 = phi ptr [ %i.r, %bb.d ], [ %i.aa, %bb.c ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.ad, %bb.c ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.v, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %.sink36, ptr %i.af, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %.sink35, ptr %i.ag, align 8, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 %.sink, ptr %i.ah, align 8, !tbaa !54
  store i32 %.sink.i.i.i.i.i, ptr %i.r, align 8, !tbaa !50
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9Stockfish8L3DomainC2EOS0_.exit, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ba, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZN9Stockfish8L3DomainC2EOS0_.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.az, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN9Stockfish8L3DomainC2EOS0_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !tbaa !179, !alias.scope !433, !noalias !432
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !179, !alias.scope !432, !noalias !433
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51, !alias.scope !433, !noalias !432 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !50, !alias.scope !433, !noalias !432
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52, !alias.scope !433, !noalias !432
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !53, !alias.scope !433, !noalias !432
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.aj, ptr %i.as, align 8, !tbaa !170, !noalias !434
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !54, !alias.scope !433, !noalias !432
  store ptr null, ptr %i.ak, align 8, !tbaa !51, !alias.scope !433, !noalias !432
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !52, !alias.scope !433, !noalias !432
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !53, !alias.scope !433, !noalias !432
  store i64 0, ptr %i.at, align 8, !tbaa !54, !alias.scope !433, !noalias !432
  br label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %.sink6.i.i.i.i = phi ptr [ %i.ap, %bb.e ], [ %i.aj, %.lr.ph.i.i.i ]
  %.sink5.i.i.i.i = phi ptr [ %i.ar, %bb.e ], [ %i.aj, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.au, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.an, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store ptr %i.al, ptr %i.av, align 8, !tbaa !51, !alias.scope !432, !noalias !433
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store ptr %.sink6.i.i.i.i, ptr %i.aw, align 8, !tbaa !52, !alias.scope !432, !noalias !433
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store ptr %.sink5.i.i.i.i, ptr %i.ax, align 8, !tbaa !53, !alias.scope !432, !noalias !433
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  store i64 %.sink.i.i.i.i, ptr %i.ay, align 8, !tbaa !54, !alias.scope !432, !noalias !433
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !50, !alias.scope !432, !noalias !433
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !428

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN9Stockfish8L3DomainC2EOS0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZN9Stockfish8L3DomainC2EOS0_.exit ], [ %i.ba, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i18 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.bb, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  %.0911.i.i.i19 = phi ptr [ %i.bt, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.bc = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !179, !alias.scope !436, !noalias !435
  store i64 %i.bc, ptr %.012.i.i.i18, align 8, !tbaa !179, !alias.scope !435, !noalias !436
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !51, !alias.scope !436, !noalias !435 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i20, label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !50, !alias.scope !436, !noalias !435
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52, !alias.scope !436, !noalias !435
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53, !alias.scope !436, !noalias !435
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bd, ptr %i.bm, align 8, !tbaa !170, !noalias !437
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !54, !alias.scope !436, !noalias !435
  store ptr null, ptr %i.be, align 8, !tbaa !51, !alias.scope !436, !noalias !435
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !52, !alias.scope !436, !noalias !435
  store ptr %i.bg, ptr %i.bk, align 8, !tbaa !53, !alias.scope !436, !noalias !435
  store i64 0, ptr %i.bn, align 8, !tbaa !54, !alias.scope !436, !noalias !435
  br label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21

_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %bb.f, %.lr.ph.i.i.i17
  %.sink6.i.i.i.i22 = phi ptr [ %i.bj, %bb.f ], [ %i.bd, %.lr.ph.i.i.i17 ]
  %.sink5.i.i.i.i23 = phi ptr [ %i.bl, %bb.f ], [ %i.bd, %.lr.ph.i.i.i17 ]
  %.sink.i.i.i.i24 = phi i64 [ %i.bo, %bb.f ], [ 0, %.lr.ph.i.i.i17 ]
  %.sink.i.i.i.i.i.i.i.i.i25 = phi i32 [ %i.bh, %bb.f ], [ 0, %.lr.ph.i.i.i17 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  store ptr %i.bf, ptr %i.bp, align 8, !tbaa !51, !alias.scope !435, !noalias !436
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  store ptr %.sink6.i.i.i.i22, ptr %i.bq, align 8, !tbaa !52, !alias.scope !435, !noalias !436
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  store ptr %.sink5.i.i.i.i23, ptr %i.br, align 8, !tbaa !53, !alias.scope !435, !noalias !436
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  store i64 %.sink.i.i.i.i24, ptr %i.bs, align 8, !tbaa !54, !alias.scope !435, !noalias !436
  store i32 %.sink.i.i.i.i.i.i.i.i.i25, ptr %i.bd, align 8, !tbaa !50, !alias.scope !435, !noalias !436
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bt, %i.b
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, label %.lr.ph.i.i.i17, !llvm.loop !428

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28: ; preds = %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i27 = phi ptr [ %i.bb, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bu, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN9Stockfish8L3DomainESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !183
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.by) #30
  br label %_ZNSt12_Vector_baseIN9Stockfish8L3DomainESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN9Stockfish8L3DomainESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !185
  store ptr %.0.lcssa.i.i.i27, ptr %i.a, align 8, !tbaa !182
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.preheader, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = icmp ult i64 %i.f, %2                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.g, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_:bb.a
._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #27 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8, !tbaa !44
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i64 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i64 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !55 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #27 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !44
  %i.az = icmp ult i64 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !79
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !55 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !44 ; 2 uses
  %i.bg = icmp ult i64 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !55 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !443

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !52
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #27 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !44
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i64 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i64 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !44     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = icmp ult i64 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, label %bb.b, !llvm.loop !14

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !44
  store i64 %i.n, ptr %i.m, align 8, !tbaa !193
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !194
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i64, ptr %i.m, align 8, !tbaa !44
  %i.v = load i64, ptr %i.t, align 8, !tbaa !44
  %i.w = icmp ult i64 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !54
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !54
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #30
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !106    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %2, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %2, i64 192153584101141162)
  %i.k = select i1 %i.i, i64 192153584101141162, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 48
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.q, ptr %i.s, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 0, ptr %i.t, align 8, !tbaa !54
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51, !alias.scope !451, !noalias !450 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !50, !alias.scope !451, !noalias !450
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52, !alias.scope !451, !noalias !450
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !53, !alias.scope !451, !noalias !450
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.u, ptr %i.ad, align 8, !tbaa !170, !noalias !452
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !54, !alias.scope !451, !noalias !450
  store ptr null, ptr %i.v, align 8, !tbaa !51, !alias.scope !451, !noalias !450
  store ptr %i.x, ptr %i.z, align 8, !tbaa !52, !alias.scope !451, !noalias !450
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !53, !alias.scope !451, !noalias !450
  store i64 0, ptr %i.ae, align 8, !tbaa !54, !alias.scope !451, !noalias !450
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.sink6.i.i.i.i = phi ptr [ %i.aa, %bb.c ], [ %i.u, %.lr.ph.i.i.i ]
  %.sink5.i.i.i.i = phi ptr [ %i.ac, %bb.c ], [ %i.u, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ 0, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.c ], [ 0, %.lr.ph.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store ptr %i.w, ptr %i.ag, align 8, !tbaa !51, !alias.scope !450, !noalias !451
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store ptr %.sink6.i.i.i.i, ptr %i.ah, align 8, !tbaa !52, !alias.scope !450, !noalias !451
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store ptr %.sink5.i.i.i.i, ptr %i.ai, align 8, !tbaa !53, !alias.scope !450, !noalias !451
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %.sink.i.i.i.i, ptr %i.aj, align 8, !tbaa !54, !alias.scope !450, !noalias !451
  store i32 %.sink.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !50, !alias.scope !450, !noalias !451
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !16

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.al, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20
  %.012.i.i.i17 = phi ptr [ %i.be, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20 ], [ %i.am, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  %.0911.i.i.i18 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20 ], [ %1, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !51, !alias.scope !454, !noalias !453 ; 3 uses
  %.not.i.i.i.i.i.i.i.i19 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i19, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !50, !alias.scope !454, !noalias !453
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52, !alias.scope !454, !noalias !453
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !53, !alias.scope !454, !noalias !453
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.an, ptr %i.aw, align 8, !tbaa !170, !noalias !455
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !54, !alias.scope !454, !noalias !453
  store ptr null, ptr %i.ao, align 8, !tbaa !51, !alias.scope !454, !noalias !453
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !52, !alias.scope !454, !noalias !453
  store ptr %i.aq, ptr %i.au, align 8, !tbaa !53, !alias.scope !454, !noalias !453
  store i64 0, ptr %i.ax, align 8, !tbaa !54, !alias.scope !454, !noalias !453
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20: ; preds = %bb.d, %.lr.ph.i.i.i16
  %.sink6.i.i.i.i21 = phi ptr [ %i.at, %bb.d ], [ %i.an, %.lr.ph.i.i.i16 ]
  %.sink5.i.i.i.i22 = phi ptr [ %i.av, %bb.d ], [ %i.an, %.lr.ph.i.i.i16 ]
  %.sink.i.i.i.i23 = phi i64 [ %i.ay, %bb.d ], [ 0, %.lr.ph.i.i.i16 ]
  %.sink.i.i.i.i.i.i.i.i24 = phi i32 [ %i.ar, %bb.d ], [ 0, %.lr.ph.i.i.i16 ]
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16
  store ptr %i.ap, ptr %i.az, align 8, !tbaa !51, !alias.scope !453, !noalias !454
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 24
  store ptr %.sink6.i.i.i.i21, ptr %i.ba, align 8, !tbaa !52, !alias.scope !453, !noalias !454
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32
  store ptr %.sink5.i.i.i.i22, ptr %i.bb, align 8, !tbaa !53, !alias.scope !453, !noalias !454
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 40
  store i64 %.sink.i.i.i.i23, ptr %i.bc, align 8, !tbaa !54, !alias.scope !453, !noalias !454
  store i32 %.sink.i.i.i.i.i.i.i.i24, ptr %i.an, align 8, !tbaa !50, !alias.scope !453, !noalias !454
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 48 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 48 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i25, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27, label %.lr.ph.i.i.i16, !llvm.loop !16

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i26 = phi ptr [ %i.am, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.be, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !108
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #30
  br label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !106
  store ptr %.0.lcssa.i.i.i26, ptr %i.a, align 8, !tbaa !107
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44
  %i.i = load i64, ptr %2, align 8, !tbaa !44
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !55 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %2, align 8, !tbaa !44     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !55 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !456

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #27 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8, !tbaa !44
  %.pre82 = load i64, ptr %2, align 8, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i64 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i64 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i.i.i.i

_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i.i.i.i, %.lr.ph
  %i.m = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i.i.i.i ], [ %i.f, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #30
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !457

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !458

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN9Stockfish10NumaConfig16from_system_numaIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EES0_bOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"class.Stockfish::NumaConfig", align 8 ; 15 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !462, !nonnull !122
  store i8 1, ptr %i.a, align 1, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %1, i8 0, i64 24, i1 false), !alias.scope !463
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !50, !alias.scope !463
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !51, !alias.scope !463
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !52, !alias.scope !463
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !53, !alias.scope !463
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false), !alias.scope !463
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !464, !nonnull !122, !align !158 ; 11 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i.i.i, ptr noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.u) #30
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 4 uses
  store ptr null, ptr %i.w, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !54
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !55  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZN9Stockfish10NumaConfigaSEOS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !50
  store i32 %i.ad, ptr %i.y, align 8, !tbaa !50
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !51
  %i.ae = load <2 x ptr>, ptr %i.d, align 8, !tbaa !55
  store <2 x ptr> %i.ae, ptr %i.z, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.y, ptr %i.af, align 8, !tbaa !170
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !54
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !54
  store ptr null, ptr %i.c, align 8, !tbaa !51
  store ptr %i.b, ptr %i.d, align 8, !tbaa !52
  store ptr %i.b, ptr %i.e, align 8, !tbaa !53
  store i64 0, ptr %i.f, align 8, !tbaa !54
  br label %_ZN9Stockfish10NumaConfigaSEOS0_.exit

_ZN9Stockfish10NumaConfigaSEOS0_.exit:            ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ah, ptr noundef nonnull align 8 dereferenceable(9) %i.ai, i64 9, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef null)
  %i.ak = load ptr, ptr %1, align 8, !tbaa !106   ; 3 uses
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !107 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9Stockfish10NumaConfigaSEOS0_.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ak, %_ZN9Stockfish10NumaConfigaSEOS0_.exit ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i, ptr noundef %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.ao, %i.al
  br i1 %.not.i.i.i.i1, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %1, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, %_ZN9Stockfish10NumaConfigaSEOS0_.exit
  %i.ap = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i ], [ %i.ak, %_ZN9Stockfish10NumaConfigaSEOS0_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i, label %_ZN9Stockfish10NumaConfigD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #30
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit

_ZN9Stockfish10NumaConfigD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void
}

declare void @_ZN9Stockfish17remove_whitespaceERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !106    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 192153584101141162)
  %i.k = select i1 %i.i, i64 192153584101141162, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE11_M_allocateEm.exit, label %4

4:                                                ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit
  %5 = mul nuw nsw i64 %i.k, 48
  %6 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %5) #28
  br label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit, %4
  %7 = phi ptr [ %6, %4 ], [ null, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %i.m ; 6 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %11 = load ptr, ptr %10, align 8, !tbaa !51     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %11, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE11_M_allocateEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %11, ptr %i.p, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.u, align 8, !tbaa !170
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !54
  store ptr null, ptr %10, align 8, !tbaa !51
  store ptr %i.n, ptr %i.q, align 8, !tbaa !52
  store ptr %i.n, ptr %i.s, align 8, !tbaa !53
  store i64 0, ptr %i.v, align 8, !tbaa !54
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE11_M_allocateEm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %i.x, align 8, !tbaa !51
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit

_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit:          ; preds = %bb.c, %bb.d
  %.sink37 = phi ptr [ %9, %bb.d ], [ %i.r, %bb.c ]
  %.sink36 = phi ptr [ %9, %bb.d ], [ %i.t, %bb.c ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.w, %bb.c ]
  %.sink.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.o, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %.sink37, ptr %i.y, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %.sink36, ptr %i.z, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %.sink, ptr %i.aa, align 8, !tbaa !54
  store i32 %.sink.i.i.i.i, ptr %9, align 8, !tbaa !50
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %7, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !51, !alias.scope !472, !noalias !471 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !50, !alias.scope !472, !noalias !471
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52, !alias.scope !472, !noalias !471
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !53, !alias.scope !472, !noalias !471
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ab, ptr %i.ak, align 8, !tbaa !170, !noalias !473
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !54, !alias.scope !472, !noalias !471
  store ptr null, ptr %i.ac, align 8, !tbaa !51, !alias.scope !472, !noalias !471
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !52, !alias.scope !472, !noalias !471
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !53, !alias.scope !472, !noalias !471
  store i64 0, ptr %i.al, align 8, !tbaa !54, !alias.scope !472, !noalias !471
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %.sink6.i.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ab, %.lr.ph.i.i.i ]
  %.sink5.i.i.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.ab, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i16 = phi i64 [ %i.am, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ %i.af, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store ptr %i.ad, ptr %i.an, align 8, !tbaa !51, !alias.scope !471, !noalias !472
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store ptr %.sink6.i.i.i.i, ptr %i.ao, align 8, !tbaa !52, !alias.scope !471, !noalias !472
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store ptr %.sink5.i.i.i.i, ptr %i.ap, align 8, !tbaa !53, !alias.scope !471, !noalias !472
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %.sink.i.i.i.i16, ptr %i.aq, align 8, !tbaa !54, !alias.scope !471, !noalias !472
  store i32 %.sink.i.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !50, !alias.scope !471, !noalias !472
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !16

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %7, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit ], [ %i.as, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i19 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.at, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  %.0911.i.i.i20 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !51, !alias.scope !475, !noalias !474 ; 3 uses
  %.not.i.i.i.i.i.i.i.i21 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i.i21, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i18
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !50, !alias.scope !475, !noalias !474
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !52, !alias.scope !475, !noalias !474
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 32 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !53, !alias.scope !475, !noalias !474
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.au, ptr %i.bd, align 8, !tbaa !170, !noalias !476
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 40 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !54, !alias.scope !475, !noalias !474
  store ptr null, ptr %i.av, align 8, !tbaa !51, !alias.scope !475, !noalias !474
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !52, !alias.scope !475, !noalias !474
  store ptr %i.ax, ptr %i.bb, align 8, !tbaa !53, !alias.scope !475, !noalias !474
  store i64 0, ptr %i.be, align 8, !tbaa !54, !alias.scope !475, !noalias !474
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %bb.f, %.lr.ph.i.i.i18
  %.sink6.i.i.i.i23 = phi ptr [ %i.ba, %bb.f ], [ %i.au, %.lr.ph.i.i.i18 ]
  %.sink5.i.i.i.i24 = phi ptr [ %i.bc, %bb.f ], [ %i.au, %.lr.ph.i.i.i18 ]
  %.sink.i.i.i.i25 = phi i64 [ %i.bf, %bb.f ], [ 0, %.lr.ph.i.i.i18 ]
  %.sink.i.i.i.i.i.i.i.i26 = phi i32 [ %i.ay, %bb.f ], [ 0, %.lr.ph.i.i.i18 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16
  store ptr %i.aw, ptr %i.bg, align 8, !tbaa !51, !alias.scope !474, !noalias !475
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24
  store ptr %.sink6.i.i.i.i23, ptr %i.bh, align 8, !tbaa !52, !alias.scope !474, !noalias !475
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 32
  store ptr %.sink5.i.i.i.i24, ptr %i.bi, align 8, !tbaa !53, !alias.scope !474, !noalias !475
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 40
  store i64 %.sink.i.i.i.i25, ptr %i.bj, align 8, !tbaa !54, !alias.scope !474, !noalias !475
  store i32 %.sink.i.i.i.i.i.i.i.i26, ptr %i.au, align 8, !tbaa !50, !alias.scope !474, !noalias !475
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 48 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 48 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i27, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29, label %.lr.ph.i.i.i18, !llvm.loop !16

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i28 = phi ptr [ %i.at, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bl, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !108
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #30
  br label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29, %bb.g
  store ptr %7, ptr %0, align 8, !tbaa !106
  store ptr %.0.lcssa.i.i.i28, ptr %i.a, align 8, !tbaa !107
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %7, i64 %i.k
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !108
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #16

declare noundef i64 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE16get_content_hashEv(ptr noundef nonnull align 64 dereferenceable(131331893)) local_unnamed_addr #7

declare noundef i64 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE16get_content_hashEv(ptr noundef nonnull align 64 dereferenceable(6517429)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm13create_sharedINS_4Eval4NNUE8NetworksEEESt8optionalINS0_12SharedMemoryIT_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 64 dereferenceable(137849344) %2) local_unnamed_addr #4 comdat {
bb.a:
  %3 = alloca %"class.Stockfish::shm::SharedMemory", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(32) %1) #25
  %i.a = call noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE4openERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 64 dereferenceable(137849344) %2) #25
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(144) %3) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %.sink, ptr %i.b, align 8, !tbaa !120
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %3, align 8, !tbaa !63
  call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull align 8 dereferenceable(144) %3), !inline_history !123
  %i.c = load ptr, ptr %3, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(144) %3, i1 noundef zeroext false) #25, !inline_history !123
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !65
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30, !inline_history !123
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !65
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30, !inline_history !123
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !65
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #30, !inline_history !123
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %0, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !136
  %i.f = load ptr, ptr %1, align 8, !tbaa !60     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !61   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.h, ptr %i.c, align 8, !tbaa !44
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #25 ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !60
  %i.k = load i64, ptr %i.c, align 8, !tbaa !44
  store i64 %i.k, ptr %i.e, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !65
  store i8 %i.m, ptr %i.l, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !61
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %i.r, align 8, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store i64 137849400, ptr %i.t, align 8, !tbaa !135
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !480
  %i.v = load ptr, ptr %1, align 8, !tbaa !60, !noalias !480 ; 9 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !61, !noalias !480 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %xtraiter = and i64 %i.w, 7                     ; 3 uses
  %i.x = icmp ult i64 %i.w, 8
  br i1 %i.x, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.w, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i.i ] ; 9 uses
  %.078.i.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !65, !noalias !480
  %i.aa = sext i8 %i.z to i64
  %i.ab = xor i64 %.078.i.i.i, %i.aa
  %i.ac = mul i64 %i.ab, 1099511628211
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !65, !noalias !480
  %i.ag = sext i8 %i.af to i64
  %i.ah = xor i64 %i.ac, %i.ag
  %i.ai = mul i64 %i.ah, 1099511628211
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !65, !noalias !480
  %i.am = sext i8 %i.al to i64
  %i.an = xor i64 %i.ai, %i.am
  %i.ao = mul i64 %i.an, 1099511628211
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !65, !noalias !480
  %i.as = sext i8 %i.ar to i64
  %i.at = xor i64 %i.ao, %i.as
  %i.au = mul i64 %i.at, 1099511628211
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !65, !noalias !480
  %i.ay = sext i8 %i.ax to i64
  %i.az = xor i64 %i.au, %i.ay
  %i.ba = mul i64 %i.az, 1099511628211
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !65, !noalias !480
  %i.be = sext i8 %i.bd to i64
  %i.bf = xor i64 %i.ba, %i.be
  %i.bg = mul i64 %i.bf, 1099511628211
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !65, !noalias !480
  %i.bk = sext i8 %i.bj to i64
  %i.bl = xor i64 %i.bg, %i.bk
  %i.bm = mul i64 %i.bl, 1099511628211
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
end_hunk_4
