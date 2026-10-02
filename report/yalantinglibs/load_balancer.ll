Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/load_balancer?download=true
inline.NumInlined: 39400
inline.NumDeleted: 15156
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZNSt23enable_shared_from_thisIN7coro_io6detail24ib_socket_shared_state_tEED2Ev:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !4424
  br label %_ZNSt10__weak_ptrIN7coro_io6detail24ib_socket_shared_state_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN7coro_io6detail24ib_socket_shared_state_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7coro_io11ib_buffer_tESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1005   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1004 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.05.i.i) #40
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !90

_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1005
  br label %_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7coro_io11ib_buffer_tESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1462
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #51
  br label %_ZNSt12_Vector_baseIN7coro_io11ib_buffer_tESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN7coro_io11ib_buffer_tESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7coro_io11ib_buffer_tES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1004 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1005   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1462
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
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !1004
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.245) #53
  unreachable

_ZNKSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 164703072086692425) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 56
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #52 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4430)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !253, !alias.scope !4430, !noalias !4429
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !253, !alias.scope !4429, !noalias !4430
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i, i8 0, i64 16, i1 false), !alias.scope !4430, !noalias !4429
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !779, !alias.scope !4430, !noalias !4429
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !779, !alias.scope !4429, !noalias !4430
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1008, !alias.scope !4430, !noalias !4429
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !1008, !alias.scope !4429, !noalias !4430
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !253, !alias.scope !4430, !noalias !4429
  store ptr null, ptr %i.ag, align 8, !tbaa !249, !alias.scope !4430, !noalias !4429
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !253, !alias.scope !4429, !noalias !4430
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 24, i1 false), !alias.scope !4430, !noalias !4429
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1010, !alias.scope !4430, !noalias !4429
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !1010, !alias.scope !4429, !noalias !4430
  store ptr null, ptr %i.aj, align 8, !tbaa !1010, !alias.scope !4430, !noalias !4429
  tail call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.0911.i.i.i) #40, !noalias !4429
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !4428

_ZNSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN7coro_io11ib_buffer_tESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !1462
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #51
  br label %_ZNSt12_Vector_baseIN7coro_io11ib_buffer_tESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseIN7coro_io11ib_buffer_tESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorIN7coro_io11ib_buffer_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !1005
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %1
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !1004
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !1462
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7coro_io11ib_buffer_tEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7coro_io11ib_buffer_tESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairISt10error_codemESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1463 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1458   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1459
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
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58 ; 5 uses
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i, %.prol.preheader
  %.013.i.i.i.prol = phi ptr [ %i.t, %.prol.preheader ], [ %i.b, %.lr.ph.i.i.i ] ; 4 uses
  %.01012.i.i.i.prol = phi i64 [ %i.s, %.prol.preheader ], [ %1, %.lr.ph.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i ]
  store i32 0, ptr %.013.i.i.i.prol, align 8, !tbaa !667
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !668
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 16
  store i64 0, ptr %i.r, align 8, !tbaa !993
  %i.s = add i64 %.01012.i.i.i.prol, -1           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !4431

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i ], [ %i.t, %.prol.preheader ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %i.t, %.prol.preheader ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i ], [ %i.s, %.prol.preheader ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i.i.i.new
  %.013.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.new ], [ %.013.i.i.i.unr, %.prol.loopexit ] ; 13 uses
  %.01012.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.new ], [ %.01012.i.i.i.unr, %.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i, align 8, !tbaa !667
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  store ptr %i.p, ptr %i.v, align 8, !tbaa !668
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  store i64 0, ptr %i.w, align 8, !tbaa !993
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  store i32 0, ptr %i.x, align 8, !tbaa !667
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  store ptr %i.p, ptr %i.y, align 8, !tbaa !668
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !993
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  store i32 0, ptr %i.aa, align 8, !tbaa !667
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  store ptr %i.p, ptr %i.ab, align 8, !tbaa !668
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 64
  store i64 0, ptr %i.ac, align 8, !tbaa !993
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  store i32 0, ptr %i.ad, align 8, !tbaa !667
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  store ptr %i.p, ptr %i.ae, align 8, !tbaa !668
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 88
  store i64 0, ptr %i.af, align 8, !tbaa !993
  %i.ag = add i64 %.01012.i.i.i, -4               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.new, !llvm.loop !4432

_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.new, %.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.new ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !1463
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp ult i64 %i.n, %1
  br i1 %i.ai, label %bb.d, label %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.245) #53
  unreachable

_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.aj = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 384307168202282325) ; 2 uses
  %i.al = mul nuw nsw i64 %i.ak, 24
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #52 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f ; 3 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58 ; 5 uses
  %xtraiter46 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod47.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod47.not, label %.prol.loopexit45, label %.prol.preheader44

.prol.preheader44:                                ; preds = %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit, %.prol.preheader44
  %.013.i.i.i31.prol = phi ptr [ %i.as, %.prol.preheader44 ], [ %i.an, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ar, %.prol.preheader44 ], [ %1, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter48 = phi i64 [ %prol.iter48.next, %.prol.preheader44 ], [ 0, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit ]
  store i32 0, ptr %.013.i.i.i31.prol, align 8, !tbaa !667
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !668
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 16
  store i64 0, ptr %i.aq, align 8, !tbaa !993
  %i.ar = add i64 %.01012.i.i.i32.prol, -1        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24 ; 2 uses
  %prol.iter48.next = add i64 %prol.iter48, 1     ; 2 uses
  %prol.iter48.cmp.not = icmp eq i64 %prol.iter48.next, %xtraiter46
  br i1 %prol.iter48.cmp.not, label %.prol.loopexit45, label %.prol.preheader44, !llvm.loop !4433

.prol.loopexit45:                                 ; preds = %.prol.preheader44, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.an, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.prol.preheader44 ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.prol.preheader44 ]
  %i.at = icmp ult i64 %1, 4
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit35, label %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit.new

_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit.new: ; preds = %.prol.loopexit45, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit.new
  %.013.i.i.i31 = phi ptr [ %i.bg, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit.new ], [ %.013.i.i.i31.unr, %.prol.loopexit45 ] ; 13 uses
  %.01012.i.i.i32 = phi i64 [ %i.bf, %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit.new ], [ %.01012.i.i.i32.unr, %.prol.loopexit45 ]
  store i32 0, ptr %.013.i.i.i31, align 8, !tbaa !667
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !668
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 16
  store i64 0, ptr %i.av, align 8, !tbaa !993
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  store i32 0, ptr %i.aw, align 8, !tbaa !667
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 32
  store ptr %i.ao, ptr %i.ax, align 8, !tbaa !668
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 40
  store i64 0, ptr %i.ay, align 8, !tbaa !993
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  store i32 0, ptr %i.az, align 8, !tbaa !667
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  store ptr %i.ao, ptr %i.ba, align 8, !tbaa !668
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 64
  store i64 0, ptr %i.bb, align 8, !tbaa !993
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  store i32 0, ptr %i.bc, align 8, !tbaa !667
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  store ptr %i.ao, ptr %i.bd, align 8, !tbaa !668
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 88
  store i64 0, ptr %i.be, align 8, !tbaa !993
  %i.bf = add i64 %.01012.i.i.i32, -4             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 96
  %.not.i.i.i33.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit35, label %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit.new, !llvm.loop !4432

_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %_ZNKSt6vectorISt4pairISt10error_codemESaIS2_EE12_M_check_lenEmPKc.exit.new, %.prol.loopexit45
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairISt10error_codemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i37 ], [ %i.am, %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i64 24, i1 false), !alias.scope !4438
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i38 = icmp eq ptr %i.bh, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt4pairISt10error_codemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !4437

_ZNSt6vectorISt4pairISt10error_codemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt4pairISt10error_codemESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairISt10error_codemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bj = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #51
  br label %_ZNSt12_Vector_baseISt4pairISt10error_codemESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseISt4pairISt10error_codemESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorISt4pairISt10error_codemESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.am, ptr %0, align 8, !tbaa !1458
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %1
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !1463
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !1459
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt4pairISt10error_codemEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt4pairISt10error_codemESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1026   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1025 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !202  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i, i8 noundef zeroext 0)
          to label %_ZSt8_DestroyIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEEvPT_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #50
  unreachable

_ZSt8_DestroyIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !89

_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1026
  br label %_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1461
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #51
  br label %_ZNSt12_Vector_baseIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEES7_EvT_S9_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1025 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1026   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1461
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
  store ptr null, ptr %i.p, align 8, !tbaa !202
  %i.q = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !4439

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
  store ptr null, ptr %i.t, align 8, !tbaa !202
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store ptr null, ptr %i.u, align 8, !tbaa !202
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store ptr null, ptr %i.v, align 8, !tbaa !202
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  store ptr null, ptr %i.w, align 8, !tbaa !202
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  store ptr null, ptr %i.x, align 8, !tbaa !202
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  store ptr null, ptr %i.y, align 8, !tbaa !202
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208
  store ptr null, ptr %i.z, align 8, !tbaa !202
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 240
  store ptr null, ptr %i.aa, align 8, !tbaa !202
  %i.ab = add i64 %.057.i.i.i, -8                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !4440

_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !1025
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp ult i64 %i.n, %1
  br i1 %i.ad, label %bb.d, label %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.245) #53
  unreachable

_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ae = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 288230376151711743) ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #52 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.al, %.lr.ph.i.i.i30.prol ], [ %i.ai, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16
  store ptr null, ptr %i.aj, align 8, !tbaa !202
  %i.ak = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 32 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
end_hunk_0
begin_hunk_1_@_Z9call_echoSt10shared_ptrIN7coro_io13load_balancerIN8coro_rpc15coro_rpc_clientENS0_15io_context_poolEEEE.resume:resume.entry
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !227
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i64 0, ptr %i.bz, align 8, !tbaa !231
  store i8 0, ptr %i.by, align 8, !tbaa !220
  %i.ca = invoke noalias noundef nonnull dereferenceable(65) ptr @_Znwm(i64 noundef 65) #52
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2 ; 5 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2: ; preds = %.noexc3
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = icmp ne ptr %i.bu, %i.bt
  tail call void @llvm.assume(i1 %i.cc)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 24) #51
  br label %.body34.from.

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %.noexc3
  %i.cd = load i8, ptr %i.by, align 8, !tbaa !220
  store i8 %i.cd, ptr %i.ca, align 1, !tbaa !220
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !230
  store i64 64, ptr %i.by, align 8, !tbaa !220
  %i.ce = icmp eq ptr %i.ca, %i.by
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.ca, ptr noundef nonnull align 1 dereferenceable(33) @.str.11, i64 33, i1 false)
  br label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.cf = invoke noalias noundef nonnull dereferenceable(34) ptr @_Znwm(i64 noundef 34) #52
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i unwind label %.body46.from.248 ; 3 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.cf, ptr noundef nonnull align 1 dereferenceable(33) @.str.11, i64 33, i1 false)
  store ptr %i.cf, ptr %i.bx, align 8, !tbaa !230
  store i64 33, ptr %i.by, align 8, !tbaa !220
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.cg = phi ptr [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  store i64 33, ptr %i.bz, align 8, !tbaa !231
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 33
  store i8 0, ptr %i.ch, align 1, !tbaa !220
  %i.ci = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.s, label %_ZN7easylog6loggerILm0EE8instanceEv.exit48, !prof !222

bb.s:                                             ; preds = %bb.r
  %i.ck = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #40
  %.not.i45 = icmp eq i32 %i.ck, 0
  br i1 %.not.i45, label %_ZN7easylog6loggerILm0EE8instanceEv.exit48, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.u unwind label %.body46.from.

bb.u:                                             ; preds = %bb.t
  %i.cl = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #40
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit48

.body46.from.:                                    ; preds = %bb.t
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #40
  br label %.from..body46

_ZN7easylog6loggerILm0EE8instanceEv.exit48:       ; preds = %bb.u, %bb.s, %bb.r
  %i.cn = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !380, !noundef !381
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, label %bb.v, !prof !232

bb.v:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit48
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit unwind label %.body46.from.248

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit:   ; preds = %bb.v, %_ZN7easylog6loggerILm0EE8instanceEv.exit48
  %i.cp = load ptr, ptr %i.bx, align 8, !tbaa !230 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.by
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit
  %i.cr = load i64, ptr %i.by, align 8, !tbaa !220
  %i.cs = add i64 %i.cr, 1
  tail call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ct = load ptr, ptr %i.bs, align 8, !tbaa !230 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bt
  br i1 %i.cu, label %.thread98.from._ZN7easylog8record_tD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cv = load i64, ptr %i.bt, align 8, !tbaa !220
  %i.cw = add i64 %i.cv, 1
  tail call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #51
  br label %.thread98.from._ZN7easylog8record_tD2Ev.exit

.thread98.from._ZN7easylog8record_tD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %.sroa.18.0147.reload.addr319 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.18.0147.reload320 = load ptr, ptr %.sroa.18.0147.reload.addr319, align 8, !tbaa !3029
  %.sroa.071.0150.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cx = load <2 x ptr>, ptr %.sroa.071.0150.reload.addr, align 8, !tbaa !3029
  br label %.thread98

bb.w:                                             ; preds = %_ZN7easylog8record_t8_get_tidEv.exit.i
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  br label %.body34.from.

.body46.from.248:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.v
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body46

.from..body46:                                    ; preds = %.body46.from., %.body46.from.248
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.cz, %.body46.from.248 ], [ %i.cm, %.body46.from. ]
  tail call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.reload.addr) #40
  br label %.body34.from.

.body34.from.:                                    ; preds = %.from..body46, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2
  %.pn20 = phi { ptr, i32 } [ %eh.lpad-body47, %.from..body46 ], [ %i.cy, %bb.w ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2 ]
  %.sroa.18.0147.reload.addr315 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.18.0147.reload316 = load ptr, ptr %.sroa.18.0147.reload.addr315, align 8, !tbaa !3029
  br label %.body34

bb.x:                                             ; preds = %bb.h
  %.sroa.18.0147.reload.addr329 = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.sroa.18.0147.reload330 = load ptr, ptr %.sroa.18.0147.reload.addr329, align 8, !tbaa !3029
  %.sroa.069.0148.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.069.0148.reload = load i64, ptr %.sroa.069.0148.reload.addr, align 8, !tbaa !3029
  %.sroa.12.0149.reload.addr311 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %.sroa.12.0149.reload312 = load ptr, ptr %.sroa.12.0149.reload.addr311, align 8, !tbaa !3029
  %i.da = atomicrmw add ptr @qps, i64 1 seq_cst, align 8 ; 0 uses
  %i.db = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #40 ; 2 uses
  %i.dc = sub nsw i64 %i.db, %.sroa.069.0148.reload
  %i.dd = sdiv i64 %i.dc, 1000                    ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0149.reload312, %.sroa.18.0147.reload330
  %.sroa.12.0149.reload310 = load ptr, ptr %.sroa.12.0149.reload.addr311, align 8, !tbaa !3029 ; 4 uses
  br i1 %.not.i.i, label %bb.y, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from.

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from.: ; preds = %bb.x
  store i64 %i.dd, ptr %.sroa.12.0149.reload310, align 8, !tbaa !259
  %.sroa.18.0147.reload326 = load ptr, ptr %.sroa.18.0147.reload.addr329, align 8, !tbaa !3029
  %.sroa.071.0150.reload.addr279 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.071.0150.reload280 = load ptr, ptr %.sroa.071.0150.reload.addr279, align 8, !tbaa !3029
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit

bb.y:                                             ; preds = %bb.x
  %.sroa.071.0150.reload.addr295 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.071.0150.reload296 = load ptr, ptr %.sroa.071.0150.reload.addr295, align 8, !tbaa !3029 ; 4 uses
  %i.de = ptrtoint ptr %.sroa.12.0149.reload310 to i64
  %i.df = ptrtoint ptr %.sroa.071.0150.reload296 to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 6 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775800
  br i1 %i.dh, label %bb.z, label %_ZNKSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.126) #53
          to label %.noexc50 unwind label %.body34.from..loopexit.split-lp

.noexc50:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.di = ashr exact i64 %i.dg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = tail call i64 @llvm.umin.i64(i64 %i.dj, i64 1152921504606846975)
  %i.dm = select i1 %i.dk, i64 1152921504606846975, i64 %i.dl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #52
          to label %.noexc51 unwind label %.body34.from..loopexit116 ; 4 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 %i.dg ; 2 uses
  store i64 %i.dd, ptr %i.dp, align 8, !tbaa !259
  %i.dq = icmp sgt i64 %i.dg, 0
  br i1 %i.dq, label %bb.aa, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.aa:                                            ; preds = %.noexc51
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.do, ptr align 8 %.sroa.071.0150.reload296, i64 %i.dg, i1 false)
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.aa, %.noexc51
  %.not.i17.i.i.i = icmp eq ptr %.sroa.071.0150.reload296, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0150.reload296, i64 noundef %i.dg) #51
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i, %bb.ab
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dm
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from.
  %.sroa.18.1 = phi ptr [ %i.dr, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.18.0147.reload326, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from. ] ; 2 uses
  %.pn = phi ptr [ %i.dp, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.12.0149.reload310, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from. ]
  %.sroa.071.1 = phi ptr [ %i.do, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.071.0150.reload280, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit.from. ] ; 2 uses
  %.013151.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.013151.reload = load i32, ptr %.013151.reload.addr, align 8, !tbaa !3029
  %.sroa.12.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.ds = add nuw nsw i32 %.013151.reload, 1      ; 2 uses
  %i.dt = load i32, ptr @request_cnt, align 4, !tbaa !221
  %i.du = icmp slt i32 %i.ds, %i.dt
  br i1 %i.du, label %.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit, label %.thread98.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit, !llvm.loop !10005

.thread98.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit
  %i.dv = insertelement <2 x ptr> poison, ptr %.sroa.071.1, i64 0
  %i.dw = insertelement <2 x ptr> %i.dv, ptr %.sroa.12.1, i64 1
  br label %.thread98, !llvm.loop !10005

.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit
  br label %.from..lr.ph, !llvm.loop !10005

.body34.from..loopexit116:                        ; preds = %_ZNKSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body34

.body34.from..loopexit.split-lp:                  ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %.sroa.12.0149.reload = load ptr, ptr %.sroa.12.0149.reload.addr311, align 8, !tbaa !3029
  br label %.body34

.thread98:                                        ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE7reserveEm.exit, %.thread98.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit, %.thread98.from._ZN7easylog8record_tD2Ev.exit, %.thread98.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %.thread98.from._ZN7easylog6loggerILm0EE8instanceEv.exit
  %.sroa.18.0146 = phi ptr [ %.sroa.18.0147.reload320, %.thread98.from._ZN7easylog8record_tD2Ev.exit ], [ %.sroa.18.0147.reload324, %.thread98.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit ], [ %.sroa.18.0147.reload322, %.thread98.from._ZN7easylog6loggerILm0EE8instanceEv.exit ], [ %.sroa.18.1, %.thread98.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit ], [ %.sroa.18.5, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE7reserveEm.exit ]
  %i.dx = phi <2 x ptr> [ %i.cx, %.thread98.from._ZN7easylog8record_tD2Ev.exit ], [ %i.bj, %.thread98.from._ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit ], [ %i.au, %.thread98.from._ZN7easylog6loggerILm0EE8instanceEv.exit ], [ %i.dw, %.thread98.from._ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE9push_backEOS4_.exit ], [ %i.m, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EE7reserveEm.exit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ea = load i8, ptr %i.dy, align 8, !tbaa !258
  switch i8 %i.ea, label %bb.ag [
    i8 -1, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit
    i8 0, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit
    i8 1, label %bb.ac
    i8 2, label %bb.ae
  ], !prof !247

bb.ac:                                            ; preds = %.thread98
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !269 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !270
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.eg) #51
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit

bb.ae:                                            ; preds = %.thread98
  %i.eh = load ptr, ptr %i.dz, align 8, !tbaa !272
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.dz) #40
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit

bb.ag:                                            ; preds = %.thread98
  unreachable

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %.thread98, %.thread98
  store <2 x ptr> %i.dx, ptr %i.dz, align 8, !tbaa !283
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.18.0146, ptr %i.ei, align 8, !tbaa !270
  store i8 1, ptr %i.dy, align 8, !tbaa !258
  br label %bb.ah

.body34:                                          ; preds = %.body34.from..loopexit.split-lp, %.body34.from..loopexit116, %.body34.from., %.body34.from.265, %.body34.from._ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIvSt4errcEELb0EED2Ev.exit37, %.body34.from.263
  %.sroa.18.0147161 = phi ptr [ %.sroa.18.0147.reload, %.body34.from.265 ], [ %.sroa.18.0147.reload316, %.body34.from. ], [ %.sroa.18.0147.reload318, %.body34.from._ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIvSt4errcEELb0EED2Ev.exit37 ], [ %.sroa.18.0147.reload314, %.body34.from.263 ], [ %.sroa.12.0149.reload310, %.body34.from..loopexit116 ], [ %.sroa.12.0149.reload, %.body34.from..loopexit.split-lp ]
  %.pn21.pn = phi { ptr, i32 } [ %i.ba, %.body34.from.265 ], [ %.pn20, %.body34.from. ], [ %.pn.pn, %.body34.from._ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIvSt4errcEELb0EED2Ev.exit37 ], [ %i.ar, %.body34.from.263 ], [ %lpad.loopexit, %.body34.from..loopexit116 ], [ %lpad.loopexit.split-lp, %.body34.from..loopexit.split-lp ] ; 2 uses
  %.sroa.071.0150.reload.addr283 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.071.0150.reload284 = load ptr, ptr %.sroa.071.0150.reload.addr283, align 8, !tbaa !3029 ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %.sroa.071.0150.reload284, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit54, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit54.from.

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit54.from.: ; preds = %.body34
  %i.ej = ptrtoint ptr %.sroa.18.0147161 to i64
  %i.ek = ptrtoint ptr %.sroa.071.0150.reload284 to i64
  %i.el = sub i64 %i.ej, %i.ek
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0150.reload284, i64 noundef %i.el) #51
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit54

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit54: ; preds = %.body34, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit54.from., %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit54.from..body34.thread
  %.pn115 = phi { ptr, i32 } [ %i.n, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit54.from..body34.thread ], [ %.pn21.pn, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit54.from. ], [ %.pn21.pn, %.body34 ]
  %.5112 = extractvalue { ptr, i32 } %.pn115, 0
  %i.em = tail call ptr @__cxa_begin_catch(ptr %.5112) #40 ; 0 uses
  tail call void @_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr336) #40
  invoke void @__cxa_end_catch()
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit54
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 4
  %.sroa.0.0.copyload.i.i4 = load ptr, ptr %.reload.addr336, align 8, !tbaa !253 ; 2 uses
  %i.en = load ptr, ptr %.sroa.0.0.copyload.i.i4, align 8
  musttail call void %i.en(ptr nonnull %.sroa.0.0.copyload.i.i4)
  ret void

bb.ai:                                            ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit54
  %i.eo = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 4
  resume { ptr, i32 } %i.eo
}

; Function Attrs: coro_only_destroy_when_complete mustprogress nounwind uwtable
define internal void @_Z9call_echoSt10shared_ptrIN7coro_io13load_balancerIN8coro_rpc15coro_rpc_clientENS0_15io_context_poolEEEE.destroy(ptr noundef nonnull align 8 dereferenceable(232) %0) #48 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 228
  %index = load i8, ptr %index.addr, align 4
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %AfterCoroSuspend222, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread, !prof !10014

AfterCoroSuspend222:                              ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !3027 ; 3 uses
  %.not.i30 = icmp eq ptr %.pr, null
  br i1 %.not.i30, label %bb.c, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend222
  %i.b = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %.pr)
          to label %bb.c unwind label %bb.b, !inline_history !188

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #50
  unreachable

bb.c:                                             ; preds = %bb.a, %AfterCoroSuspend222
  %.sroa.071.0150.reload.addr287 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.071.0150.reload288 = load ptr, ptr %.sroa.071.0150.reload.addr287, align 8, !tbaa !3029 ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %.sroa.071.0150.reload288, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.18.0147.reload.addr327 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.18.0147.reload328 = load ptr, ptr %.sroa.18.0147.reload.addr327, align 8, !tbaa !3029
  %i.f = ptrtoint ptr %.sroa.18.0147.reload328 to i64
  %i.g = ptrtoint ptr %.sroa.071.0150.reload288 to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0150.reload288, i64 noundef %i.h) #51
  br label %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread

_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread: ; preds = %resume.entry, %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = load i8, ptr %i.i, align 8, !tbaa !258
  switch i8 %i.k, label %bb.i [
    i8 -1, label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit
    i8 0, label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit
    i8 1, label %bb.e
    i8 2, label %bb.g
  ], !prof !247

bb.e:                                             ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !269  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i55 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i55, label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !270
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #51
  br label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !272
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.j) #40
  br label %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread
  unreachable

_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread, %_ZNSt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS4_EED2Ev.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !249  ; 8 uses
  %.not.i.i56 = icmp eq ptr %i.t, null
  br i1 %.not.i.i56, label %_ZNSt12__shared_ptrIN7coro_io13load_balancerIN8coro_rpc15coro_rpc_clientENS0_15io_context_poolEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN12async_simple4coro6detail11LazyPromiseISt6vectorINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEESaIS8_EEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.u, align 8, !tbaa !251
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !252
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !204
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #40, !inline_history !6
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !204
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #40, !inline_history !6
  br label %_ZNSt12__shared_ptrIN7coro_io13load_balancerIN8coro_rpc15coro_rpc_clientENS0_15io_context_poolEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !220
  %.not.i.i.i57 = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i57, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.from.269

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.from.269: ; preds = %bb.l
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !221
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.from.: ; preds = %bb.l
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
end_hunk_1
