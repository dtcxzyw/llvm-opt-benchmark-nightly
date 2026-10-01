Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/data_gen?download=true
inline.NumInlined: 93223
inline.NumDeleted: 25399
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZNSt23enable_shared_from_thisIN7coro_io6detail24ib_socket_shared_state_tEED2Ev:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !7316
  br label %_ZNSt10__weak_ptrIN7coro_io6detail24ib_socket_shared_state_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN7coro_io6detail24ib_socket_shared_state_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7coro_io11ib_buffer_tESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1420   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1419 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.05.i.i) #36
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !127

_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1420
  br label %_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7coro_io11ib_buffer_tESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2252
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #50
  br label %_ZNSt12_Vector_baseIN7coro_io11ib_buffer_tESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN7coro_io11ib_buffer_tESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1419 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1420   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2252
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN7coro_io11ib_buffer_tEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN7coro_io11ib_buffer_tEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 56                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !1419
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.319) #52
  unreachable

_ZNKSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 164703072086692425) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 56
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #51 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7322)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !376, !alias.scope !7322, !noalias !7321
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !376, !alias.scope !7321, !noalias !7322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i, i8 0, i64 16, i1 false), !alias.scope !7322, !noalias !7321
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1423, !alias.scope !7322, !noalias !7321
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !1423, !alias.scope !7321, !noalias !7322
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1424, !alias.scope !7322, !noalias !7321
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !1424, !alias.scope !7321, !noalias !7322
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !376, !alias.scope !7322, !noalias !7321
  store ptr null, ptr %i.ag, align 8, !tbaa !308, !alias.scope !7322, !noalias !7321
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !376, !alias.scope !7321, !noalias !7322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 24, i1 false), !alias.scope !7322, !noalias !7321
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1426, !alias.scope !7322, !noalias !7321
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !1426, !alias.scope !7321, !noalias !7322
  store ptr null, ptr %i.aj, align 8, !tbaa !1426, !alias.scope !7322, !noalias !7321
  tail call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.0911.i.i.i) #36, !noalias !7321
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !7320

_ZNSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN7coro_io11ib_buffer_tESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !2252
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #50
  br label %_ZNSt12_Vector_baseIN7coro_io11ib_buffer_tESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseIN7coro_io11ib_buffer_tESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !1420
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %1
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !1419
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !2252
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7coro_io11ib_buffer_tEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7coro_io11ib_buffer_tESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairISt10error_codemESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2253 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2249   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2250
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55 ; 5 uses
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i, %.prol.preheader
  %.013.i.i.i.prol = phi ptr [ %i.t, %.prol.preheader ], [ %i.b, %.lr.ph.i.i.i ] ; 4 uses
  %.01012.i.i.i.prol = phi i64 [ %i.s, %.prol.preheader ], [ %1, %.lr.ph.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i ]
  store i32 0, ptr %.013.i.i.i.prol, align 8, !tbaa !796
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !797
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 16
  store i64 0, ptr %i.r, align 8, !tbaa !1410
  %i.s = add i64 %.01012.i.i.i.prol, -1           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !7323

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i ], [ %i.t, %.prol.preheader ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %i.t, %.prol.preheader ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i ], [ %i.s, %.prol.preheader ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i.i.i.new
  %.013.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.new ], [ %.013.i.i.i.unr, %.prol.loopexit ] ; 13 uses
  %.01012.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.new ], [ %.01012.i.i.i.unr, %.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i, align 8, !tbaa !796
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  store ptr %i.p, ptr %i.v, align 8, !tbaa !797
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  store i64 0, ptr %i.w, align 8, !tbaa !1410
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  store i32 0, ptr %i.x, align 8, !tbaa !796
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  store ptr %i.p, ptr %i.y, align 8, !tbaa !797
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !1410
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  store i32 0, ptr %i.aa, align 8, !tbaa !796
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  store ptr %i.p, ptr %i.ab, align 8, !tbaa !797
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 64
  store i64 0, ptr %i.ac, align 8, !tbaa !1410
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  store i32 0, ptr %i.ad, align 8, !tbaa !796
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  store ptr %i.p, ptr %i.ae, align 8, !tbaa !797
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 88
  store i64 0, ptr %i.af, align 8, !tbaa !1410
  %i.ag = add i64 %.01012.i.i.i, -4               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.new, !llvm.loop !7324

_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.new, %.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.new ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !2253
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp ult i64 %i.n, %1
  br i1 %i.ai, label %bb.d, label %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.319) #52
  unreachable

_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.aj = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 384307168202282325) ; 2 uses
  %i.al = mul nuw nsw i64 %i.ak, 24
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #51 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f ; 3 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55 ; 5 uses
  %xtraiter46 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod47.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod47.not, label %.prol.loopexit45, label %.prol.preheader44

.prol.preheader44:                                ; preds = %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit, %.prol.preheader44
  %.013.i.i.i31.prol = phi ptr [ %i.as, %.prol.preheader44 ], [ %i.an, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ar, %.prol.preheader44 ], [ %1, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter48 = phi i64 [ %prol.iter48.next, %.prol.preheader44 ], [ 0, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit ]
  store i32 0, ptr %.013.i.i.i31.prol, align 8, !tbaa !796
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !797
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 16
  store i64 0, ptr %i.aq, align 8, !tbaa !1410
  %i.ar = add i64 %.01012.i.i.i32.prol, -1        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24 ; 2 uses
  %prol.iter48.next = add i64 %prol.iter48, 1     ; 2 uses
  %prol.iter48.cmp.not = icmp eq i64 %prol.iter48.next, %xtraiter46
  br i1 %prol.iter48.cmp.not, label %.prol.loopexit45, label %.prol.preheader44, !llvm.loop !7325

.prol.loopexit45:                                 ; preds = %.prol.preheader44, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.an, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.prol.preheader44 ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.prol.preheader44 ]
  %i.at = icmp ult i64 %1, 4
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit35, label %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit.new

_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit.new: ; preds = %.prol.loopexit45, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit.new
  %.013.i.i.i31 = phi ptr [ %i.bg, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit.new ], [ %.013.i.i.i31.unr, %.prol.loopexit45 ] ; 13 uses
  %.01012.i.i.i32 = phi i64 [ %i.bf, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit.new ], [ %.01012.i.i.i32.unr, %.prol.loopexit45 ]
  store i32 0, ptr %.013.i.i.i31, align 8, !tbaa !796
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !797
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 16
  store i64 0, ptr %i.av, align 8, !tbaa !1410
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  store i32 0, ptr %i.aw, align 8, !tbaa !796
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 32
  store ptr %i.ao, ptr %i.ax, align 8, !tbaa !797
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 40
  store i64 0, ptr %i.ay, align 8, !tbaa !1410
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  store i32 0, ptr %i.az, align 8, !tbaa !796
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  store ptr %i.ao, ptr %i.ba, align 8, !tbaa !797
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 64
  store i64 0, ptr %i.bb, align 8, !tbaa !1410
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  store i32 0, ptr %i.bc, align 8, !tbaa !796
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  store ptr %i.ao, ptr %i.bd, align 8, !tbaa !797
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 88
  store i64 0, ptr %i.be, align 8, !tbaa !1410
  %i.bf = add i64 %.01012.i.i.i32, -4             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 96
  %.not.i.i.i33.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit35, label %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit.new, !llvm.loop !7324

_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit.new, %.prol.loopexit45
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairISt10error_codemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i37 ], [ %i.am, %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i64 24, i1 false), !alias.scope !7330
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i38 = icmp eq ptr %i.bh, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt4pairISt10error_codemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !7329

_ZNSt6vectorISt4pairISt10error_codemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt4pairISt10error_codemESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairISt10error_codemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bj = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #50
  br label %_ZNSt12_Vector_baseISt4pairISt10error_codemESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseISt4pairISt10error_codemESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorISt4pairISt10error_codemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.am, ptr %0, align 8, !tbaa !2249
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %1
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !2253
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !2250
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt4pairISt10error_codemESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1442   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1441 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i, i8 noundef zeroext 0)
          to label %_ZSt8_DestroyIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEEvPT_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #49
  unreachable

_ZSt8_DestroyIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !126

_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1442
  br label %_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2251
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #50
  br label %_ZNSt12_Vector_baseIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1441 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1442   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2251
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !261
  %i.q = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !7331

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !261
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store ptr null, ptr %i.u, align 8, !tbaa !261
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store ptr null, ptr %i.v, align 8, !tbaa !261
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  store ptr null, ptr %i.w, align 8, !tbaa !261
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  store ptr null, ptr %i.x, align 8, !tbaa !261
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  store ptr null, ptr %i.y, align 8, !tbaa !261
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208
  store ptr null, ptr %i.z, align 8, !tbaa !261
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 240
  store ptr null, ptr %i.aa, align 8, !tbaa !261
  %i.ab = add i64 %.057.i.i.i, -8                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !7332

_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !1441
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp ult i64 %i.n, %1
  br i1 %i.ad, label %bb.d, label %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.319) #52
  unreachable

_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ae = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 288230376151711743) ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #51 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.al, %.lr.ph.i.i.i30.prol ], [ %i.ai, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16
  store ptr null, ptr %i.aj, align 8, !tbaa !261
  %i.ak = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 32 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
end_hunk_0
