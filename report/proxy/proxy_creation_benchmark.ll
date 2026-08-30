Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_creation_benchmark?download=true
inline.NumInlined: 3424
inline.NumDeleted: 2312
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_135BM_SmallObjectCreationWithSharedPtrERN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i.lr.ph: ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i.lr.ph, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit
  %.sroa.080.0102 = phi i64 [ %i.d, %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i.lr.ph ], [ %i.at, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.i = invoke noalias noundef nonnull dereferenceable(9600000) ptr @_Znwm(i64 noundef 9600000) #27
          to label %.noexc unwind label %bb.j     ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !329    ; 5 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !332  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %i.i, %.noexc ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %i.j, %.noexc ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.l = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.m = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !19, !alias.scope !336, !noalias !333
  store ptr null, ptr %i.l, align 8, !tbaa !338, !alias.scope !336, !noalias !333
  store <2 x ptr> %i.m, ptr %.012.i.i.i.i, align 8, !tbaa !19, !alias.scope !333, !noalias !336
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !341, !alias.scope !336, !noalias !333
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.k
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.j, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.s) #30
  br label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.a, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.i, ptr %1, align 8, !tbaa !329
  store ptr %i.i, ptr %i.f, align 8, !tbaa !332
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 9600000
  store ptr %i.t, ptr %i.e, align 8, !tbaa !344
  br label %bb.k

bb.b:                                             ; preds = %_ZNSt12__shared_ptrIN12_GLOBAL__N_112SmallObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::vector.181") align 8 dereferenceable(24) %1, ptr nonnull elementtype(%"class.std::vector.181") align 8 dereferenceable(24) %1) #28, !srcloc !95
  %i.u = load ptr, ptr %1, align 8, !tbaa !329    ; 3 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !332  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i ], [ %i.u, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !338  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.y, align 8, !tbaa !345
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !347
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28, !inline_history !348
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28, !inline_history !348
  br label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !349
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.f ], [ %i.al, %bb.g ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.h, label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i, !prof !13

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28
  br label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.v
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !350

_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !329
  br label %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #30
  br label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.at = add nsw i64 %.sroa.080.0102, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.at, 0
  br i1 %.not.i.not, label %._crit_edge, label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i, !prof !98

bb.j:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZNSt12__shared_ptrIN12_GLOBAL__N_112SmallObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0100 = phi i32 [ 0, %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.ek, %_ZNSt12__shared_ptrIN12_GLOBAL__N_112SmallObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.av = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.l unwind label %bb.aa      ; 7 uses

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 1, ptr %i.aw, align 8, !tbaa !345, !noalias !351
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 1, ptr %i.ax, align 4, !tbaa !347, !noalias !351
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.av, align 8, !tbaa !20, !noalias !351
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 4 uses
  store i32 0, ptr %i.ay, align 8, !tbaa !349, !noalias !351
  store ptr %i.av, ptr %i.g, align 8, !tbaa !338, !alias.scope !351
  store ptr %i.ay, ptr %2, align 8, !tbaa !354, !alias.scope !351
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !332 ; 7 uses
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !344
  %.not.i26 = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i26, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !341
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.av, ptr %i.bb, align 8, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.bc, ptr %i.f, align 8, !tbaa !332
  br label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %1, align 8, !tbaa !329   ; 5 uses
  %i.be = ptrtoint ptr %i.az to i64
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775792
  br i1 %i.bh, label %bb.o, label %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.n
  %i.bi = ashr exact i64 %i.bg, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 576460752303423487)
  %i.bm = select i1 %i.bk, i64 576460752303423487, i64 %i.bl ; 3 uses
  %.not.i.i46 = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i46)
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #27
          to label %.noexc55 unwind label %.loopexit ; 5 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg ; 2 uses
  store ptr %i.ay, ptr %i.bp, align 8, !tbaa !341
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !338
  store ptr %i.av, ptr %i.bq, align 8, !tbaa !338
  %.not10.i.i.i.i47 = icmp eq ptr %i.bd, %i.az
  br i1 %.not10.i.i.i.i47, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i48

.lr.ph.i.i.i.i48:                                 ; preds = %.noexc55, %.lr.ph.i.i.i.i48
  %.012.i.i.i.i49 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i48 ], [ %i.bo, %.noexc55 ] ; 2 uses
  %.0911.i.i.i.i50 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i48 ], [ %i.bd, %.noexc55 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i50, i64 8
  %i.bs = load <2 x ptr>, ptr %.0911.i.i.i.i50, align 8, !tbaa !19, !alias.scope !358, !noalias !355
  store ptr null, ptr %i.br, align 8, !tbaa !338, !alias.scope !358, !noalias !355
  store <2 x ptr> %i.bs, ptr %.012.i.i.i.i49, align 8, !tbaa !19, !alias.scope !355, !noalias !358
  store ptr null, ptr %.0911.i.i.i.i50, align 8, !tbaa !341, !alias.scope !358, !noalias !355
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i50, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i49, i64 16 ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.bt, %i.az
  br i1 %.not.i.i.i.i51, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i48, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i48, %.noexc55
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bo, %.noexc55 ], [ %i.bu, %.lr.ph.i.i.i.i48 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i23.i = icmp eq ptr %i.bd, null
  br i1 %.not.i23.i, label %.noexc27, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.by) #30
  br label %.noexc27

.noexc27:                                         ; preds = %bb.p, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.bo, ptr %1, align 8, !tbaa !329
  store ptr %i.bv, ptr %i.f, align 8, !tbaa !332
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.bz, ptr %i.e, align 8, !tbaa !344
  br label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %.noexc27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.ca = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.q unwind label %bb.ad      ; 7 uses

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 1, ptr %i.cb, align 8, !tbaa !345, !noalias !360
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 1, ptr %i.cc, align 4, !tbaa !347, !noalias !360
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIdSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ca, align 8, !tbaa !20, !noalias !360
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 4 uses
  store double 0.000000e+00, ptr %i.cd, align 8, !tbaa !363, !noalias !360
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !338, !alias.scope !360
  store ptr %i.cd, ptr %3, align 8, !tbaa !364, !alias.scope !360
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !332 ; 7 uses
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !344
  %.not.i30 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i30, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !341
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.ca, ptr %i.cg, align 8, !tbaa !338
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %i.ch, ptr %i.f, align 8, !tbaa !332
  br label %_ZNSt12__shared_ptrIdLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %1, align 8, !tbaa !329   ; 5 uses
  %i.cj = ptrtoint ptr %i.ce to i64
  %i.ck = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775792
  br i1 %i.cm, label %bb.t, label %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i56

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
          to label %.noexc75 unwind label %.loopexit.split-lp87

.noexc75:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i56: ; preds = %bb.s
  %i.cn = ashr exact i64 %i.cl, 4                 ; 3 uses
  %.sroa.speculated.i.i57 = call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.co = add nsw i64 %.sroa.speculated.i.i57, %i.cn ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  %i.cq = call i64 @llvm.umin.i64(i64 %i.co, i64 576460752303423487)
  %i.cr = select i1 %i.cp, i64 576460752303423487, i64 %i.cq ; 3 uses
  %.not.i.i58 = icmp ne i64 %i.cr, 0
  call void @llvm.assume(i1 %.not.i.i58)
  %i.cs = shl nuw nsw i64 %i.cr, 4
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #27
          to label %.noexc76 unwind label %.loopexit86 ; 5 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i56
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl ; 2 uses
  store ptr %i.cd, ptr %i.cu, align 8, !tbaa !341
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !338
  store ptr %i.ca, ptr %i.cv, align 8, !tbaa !338
  %.not10.i.i.i.i59 = icmp eq ptr %i.ci, %i.ce
  br i1 %.not10.i.i.i.i59, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i71, label %.lr.ph.i.i.i.i60

.lr.ph.i.i.i.i60:                                 ; preds = %.noexc76, %.lr.ph.i.i.i.i60
  %.012.i.i.i.i61 = phi ptr [ %i.cz, %.lr.ph.i.i.i.i60 ], [ %i.ct, %.noexc76 ] ; 2 uses
  %.0911.i.i.i.i62 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i60 ], [ %i.ci, %.noexc76 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i62, i64 8
  %i.cx = load <2 x ptr>, ptr %.0911.i.i.i.i62, align 8, !tbaa !19, !alias.scope !369, !noalias !366
  store ptr null, ptr %i.cw, align 8, !tbaa !338, !alias.scope !369, !noalias !366
  store <2 x ptr> %i.cx, ptr %.012.i.i.i.i61, align 8, !tbaa !19, !alias.scope !366, !noalias !369
  store ptr null, ptr %.0911.i.i.i.i62, align 8, !tbaa !341, !alias.scope !369, !noalias !366
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i62, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i61, i64 16 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.cy, %i.ce
  br i1 %.not.i.i.i.i63, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i71, label %.lr.ph.i.i.i.i60, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i71: ; preds = %.lr.ph.i.i.i.i60, %.noexc76
  %.0.lcssa.i.i.i.i65 = phi ptr [ %i.ct, %.noexc76 ], [ %i.cz, %.lr.ph.i.i.i.i60 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i65, i64 16
  %.not.i23.i73 = icmp eq ptr %i.ci, null
  br i1 %.not.i23.i73, label %.noexc32, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i71
  %i.db = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.dd) #30
  br label %.noexc32

.noexc32:                                         ; preds = %bb.u, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i71
  store ptr %i.ct, ptr %1, align 8, !tbaa !329
  store ptr %i.da, ptr %i.f, align 8, !tbaa !332
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.de, ptr %i.e, align 8, !tbaa !344
  br label %_ZNSt12__shared_ptrIdLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIdLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %.noexc32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.df = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.v unwind label %bb.ag      ; 7 uses

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIdLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 1, ptr %i.dg, align 8, !tbaa !345, !noalias !371
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 1, ptr %i.dh, align 4, !tbaa !347, !noalias !371
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_112SmallObject3ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.df, align 8, !tbaa !20, !noalias !371
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 3 uses
  store ptr null, ptr %i.di, align 8, !tbaa !127, !noalias !371
  %i.dj = load ptr, ptr %i.f, align 8, !tbaa !332 ; 7 uses
  %i.dk = load ptr, ptr %i.e, align 8, !tbaa !344
  %.not.i38 = icmp eq ptr %i.dj, %i.dk
  br i1 %.not.i38, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !341
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.df, ptr %i.dl, align 8, !tbaa !338
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %i.dm, ptr %i.f, align 8, !tbaa !332
  br label %_ZNSt12__shared_ptrIN12_GLOBAL__N_112SmallObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dn = load ptr, ptr %1, align 8, !tbaa !329   ; 5 uses
  %i.do = ptrtoint ptr %i.dj to i64
  %i.dp = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 3 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775792
  br i1 %i.dr, label %bb.y, label %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
          to label %.noexc40.a unwind label %.loopexit.split-lp92

.noexc40.a:                                       ; preds = %bb.y
  unreachable

_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.ds = ashr exact i64 %i.dq, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 576460752303423487)
  %i.dw = select i1 %i.du, i64 576460752303423487, i64 %i.dv ; 3 uses
  %.not.i.i.i39 = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i.i39)
  %i.dx = shl nuw nsw i64 %i.dw, 4
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #27
          to label %.noexc41 unwind label %.loopexit91 ; 5 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dq ; 2 uses
  store ptr %i.di, ptr %i.dz, align 8, !tbaa !341
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %i.df, ptr %i.ea, align 8, !tbaa !338
  %.not10.i.i.i.i.i = icmp eq ptr %i.dn, %i.dj
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc41, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %i.dy, %.noexc41 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %i.dn, %.noexc41 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.eb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8
  %i.ec = load <2 x ptr>, ptr %.0911.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !377, !noalias !374
  store ptr null, ptr %i.eb, align 8, !tbaa !338, !alias.scope !377, !noalias !374
  store <2 x ptr> %i.ec, ptr %.012.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !374, !noalias !377
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !341, !alias.scope !377, !noalias !374
  %i.ed = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ed, %i.dj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc41
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dy, %.noexc41 ], [ %i.ee, %.lr.ph.i.i.i.i.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112SmallObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ei) #30
  br label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112SmallObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112SmallObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.dy, ptr %1, align 8, !tbaa !329
  store ptr %i.ef, ptr %i.f, align 8, !tbaa !332
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.dw
  store ptr %i.ej, ptr %i.e, align 8, !tbaa !344
  br label %_ZNSt12__shared_ptrIN12_GLOBAL__N_112SmallObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12_GLOBAL__N_112SmallObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.w, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112SmallObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ek = add nuw nsw i32 %.0100, 3
  %i.el = icmp samesign ult i32 %.0100, 599997
  br i1 %i.el, label %bb.k, label %bb.b, !llvm.loop !379

bb.aa:                                            ; preds = %bb.k
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ab ], [ %i.em, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.ai

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit86:                                      ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i56
  %lpad.loopexit88 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp87:                             ; preds = %bb.t
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp87, %.loopexit86
  %lpad.phi90 = phi { ptr, i32 } [ %lpad.loopexit88, %.loopexit86 ], [ %lpad.loopexit.split-lp89, %.loopexit.split-lp87 ]
  call void @_ZNSt12__shared_ptrIdLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn13 = phi { ptr, i32 } [ %lpad.phi90, %bb.ae ], [ %i.en, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ai

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIdLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit91:                                      ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp92:                             ; preds = %bb.y
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp92, %.loopexit91
  %lpad.phi95 = phi { ptr, i32 } [ %lpad.loopexit93, %.loopexit91 ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp92 ]
  call fastcc void @_ZNSt12__shared_ptrIN12_GLOBAL__N_112SmallObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.df) #28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.ac, %bb.af, %bb.j
  %.pn15.pn.pn = phi { ptr, i32 } [ %i.au, %bb.j ], [ %.pn, %bb.ac ], [ %.pn13, %bb.af ], [ %lpad.phi95, %bb.ah ], [ %i.eo, %bb.ag ]
  call void @_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn15.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11make_uniqueIN9benchmark8internal17FunctionBenchmarkEJRA43_KcPFvRNS0_5StateEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef nonnull align 1 dereferenceable(43) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !9
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #29
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !13

.noexc11.i:                                       ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc6 unwind label %bb.h

.noexc6:                                          ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
          to label %.noexc7 unwind label %bb.h    ; 2 uses

.noexc7:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.h, ptr %3, align 8, !tbaa !14
  store i64 %i.c, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc7, %bb.a
  %i.i = phi ptr [ %i.h, %.noexc7 ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.c, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.j, ptr %i.i, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !17
  %i.m = load ptr, ptr %2, align 8, !tbaa !19
  invoke void @_ZN9benchmark9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.a, align 8, !tbaa !20
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_142BM_SmallObjectCreationWithSharedPtr_PooledERN9benchmark5StateE:bb.a
bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN12_GLOBAL__N_142BM_SmallObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool) #28
  br label %bb.ap

_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i.lr.ph, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit
  %.sroa.084.0109 = phi i64 [ %i.h, %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i.lr.ph ], [ %i.ay, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.n = invoke noalias noundef nonnull dereferenceable(9600000) ptr @_Znwm(i64 noundef 9600000) #27
          to label %.noexc unwind label %bb.p     ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i
  %i.o = load ptr, ptr %1, align 8, !tbaa !329    ; 5 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !332  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.n, %.noexc ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.o, %.noexc ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.q = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.r = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !19, !alias.scope !383, !noalias !380
  store ptr null, ptr %i.q, align 8, !tbaa !338, !alias.scope !383, !noalias !380
  store <2 x ptr> %i.r, ptr %.012.i.i.i.i, align 8, !tbaa !19, !alias.scope !380, !noalias !383
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !341, !alias.scope !383, !noalias !380
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.p
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !344
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.x) #30
  br label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.n, ptr %1, align 8, !tbaa !329
  store ptr %i.n, ptr %i.j, align 8, !tbaa !332
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 9600000
  store ptr %i.y, ptr %i.i, align 8, !tbaa !344
  br label %bb.q

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN12_GLOBAL__N_112SmallObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::vector.181") align 8 dereferenceable(24) %1, ptr nonnull elementtype(%"class.std::vector.181") align 8 dereferenceable(24) %1) #28, !srcloc !95
  %i.z = load ptr, ptr %1, align 8, !tbaa !329    ; 3 uses
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !332 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !338 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ad, align 8, !tbaa !345
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !347
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #28, !inline_history !348
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #28, !inline_history !348
  br label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !349
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.l ], [ %i.aq, %bb.m ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.n, label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i, !prof !13

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #28
  br label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i:  ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.aa
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !350

_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !329
  br label %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.h
  %i.at = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.z, %bb.h ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !344
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #30
  br label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.ay = add nsw i64 %.sroa.084.0109, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.ay, 0
  br i1 %.not.i.not, label %._crit_edge, label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i, !prof !98

bb.p:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.q:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZNSt12__shared_ptrIN12_GLOBAL__N_112SmallObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0107 = phi i32 [ 0, %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.ex, %_ZNSt12__shared_ptrIN12_GLOBAL__N_112SmallObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.ba = load ptr, ptr @_ZZN12_GLOBAL__N_142BM_SmallObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool, align 8, !tbaa !20, !noalias !388
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !388
  %i.bd = invoke noundef nonnull align 8 ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN12_GLOBAL__N_142BM_SmallObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool, i64 noundef 32, i64 noundef 8)
          to label %bb.r unwind label %bb.ag, !inline_history !391 ; 8 uses

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 1, ptr %i.be, align 8, !tbaa !345, !noalias !385
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 1, ptr %i.bf, align 4, !tbaa !347, !noalias !385
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIiNSt3pmr21polymorphic_allocatorISt4byteEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bd, align 8, !tbaa !20, !noalias !385
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 ptrtoint (ptr @_ZZN12_GLOBAL__N_142BM_SmallObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool to i64), ptr %i.bg, align 8, !tbaa !392, !noalias !385
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 4 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !349, !noalias !385
  store ptr %i.bd, ptr %i.k, align 8, !tbaa !338, !alias.scope !385
  store ptr %i.bh, ptr %2, align 8, !tbaa !354, !alias.scope !385
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !332 ; 7 uses
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !344
  %.not.i28 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i28, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !341
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bd, ptr %i.bk, align 8, !tbaa !338
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bl, ptr %i.j, align 8, !tbaa !332
  br label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %1, align 8, !tbaa !329   ; 5 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775792
  br i1 %i.bq, label %bb.u, label %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.br = ashr exact i64 %i.bp, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 576460752303423487)
  %i.bv = select i1 %i.bt, i64 576460752303423487, i64 %i.bu ; 3 uses
  %.not.i.i50 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i50)
  %i.bw = shl nuw nsw i64 %i.bv, 4
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #27
          to label %.noexc59 unwind label %.loopexit ; 5 uses

.noexc59:                                         ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp ; 2 uses
  store ptr %i.bh, ptr %i.by, align 8, !tbaa !341
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !338
  store ptr %i.bd, ptr %i.bz, align 8, !tbaa !338
  %.not10.i.i.i.i51 = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i51, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i52

.lr.ph.i.i.i.i52:                                 ; preds = %.noexc59, %.lr.ph.i.i.i.i52
  %.012.i.i.i.i53 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i52 ], [ %i.bx, %.noexc59 ] ; 2 uses
  %.0911.i.i.i.i54 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i52 ], [ %i.bm, %.noexc59 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i54, i64 8
  %i.cb = load <2 x ptr>, ptr %.0911.i.i.i.i54, align 8, !tbaa !19, !alias.scope !397, !noalias !394
  store ptr null, ptr %i.ca, align 8, !tbaa !338, !alias.scope !397, !noalias !394
  store <2 x ptr> %i.cb, ptr %.012.i.i.i.i53, align 8, !tbaa !19, !alias.scope !394, !noalias !397
  store ptr null, ptr %.0911.i.i.i.i54, align 8, !tbaa !341, !alias.scope !397, !noalias !394
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i54, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i53, i64 16 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %i.cc, %i.bi
  br i1 %.not.i.i.i.i55, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i52, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i52, %.noexc59
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bx, %.noexc59 ], [ %i.cd, %.lr.ph.i.i.i.i52 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i23.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i, label %.noexc29, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.cf = load ptr, ptr %i.i, align 8, !tbaa !344
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.ch) #30
  br label %.noexc29

.noexc29:                                         ; preds = %bb.v, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.bx, ptr %1, align 8, !tbaa !329
  store ptr %i.ce, ptr %i.j, align 8, !tbaa !332
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.ci, ptr %i.i, align 8, !tbaa !344
  br label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc29, %bb.s
  %.pre = load ptr, ptr @_ZZN12_GLOBAL__N_142BM_SmallObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool, align 8, !tbaa !20, !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !399
  %i.cl = invoke noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN12_GLOBAL__N_142BM_SmallObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool, i64 noundef 32, i64 noundef 8)
          to label %bb.w unwind label %bb.aj, !inline_history !405 ; 8 uses

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 1, ptr %i.cm, align 8, !tbaa !345, !noalias !404
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 1, ptr %i.cn, align 4, !tbaa !347, !noalias !404
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIdNSt3pmr21polymorphic_allocatorISt4byteEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cl, align 8, !tbaa !20, !noalias !404
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 ptrtoint (ptr @_ZZN12_GLOBAL__N_142BM_SmallObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool to i64), ptr %i.co, align 8, !tbaa !392, !noalias !404
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 4 uses
  store double 0.000000e+00, ptr %i.cp, align 8, !tbaa !363, !noalias !404
  store ptr %i.cl, ptr %i.l, align 8, !tbaa !338, !alias.scope !404
  store ptr %i.cp, ptr %3, align 8, !tbaa !364, !alias.scope !404
  %i.cq = load ptr, ptr %i.j, align 8, !tbaa !332 ; 7 uses
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !344
  %.not.i33 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i33, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !341
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cl, ptr %i.cs, align 8, !tbaa !338
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %i.ct, ptr %i.j, align 8, !tbaa !332
  br label %_ZNSt12__shared_ptrIdLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.cu = load ptr, ptr %1, align 8, !tbaa !329   ; 5 uses
  %i.cv = ptrtoint ptr %i.cq to i64
  %i.cw = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cx = sub i64 %i.cv, %i.cw                    ; 3 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775792
  br i1 %i.cy, label %bb.z, label %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i60

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
          to label %.noexc79 unwind label %.loopexit.split-lp94

.noexc79:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i60: ; preds = %bb.y
  %i.cz = ashr exact i64 %i.cx, 4                 ; 3 uses
  %.sroa.speculated.i.i61 = call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i61, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = call i64 @llvm.umin.i64(i64 %i.da, i64 576460752303423487)
  %i.dd = select i1 %i.db, i64 576460752303423487, i64 %i.dc ; 3 uses
  %.not.i.i62 = icmp ne i64 %i.dd, 0
  call void @llvm.assume(i1 %.not.i.i62)
  %i.de = shl nuw nsw i64 %i.dd, 4
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #27
          to label %.noexc80 unwind label %.loopexit93 ; 5 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i60
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cx ; 2 uses
  store ptr %i.cp, ptr %i.dg, align 8, !tbaa !341
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !338
  store ptr %i.cl, ptr %i.dh, align 8, !tbaa !338
  %.not10.i.i.i.i63 = icmp eq ptr %i.cu, %i.cq
  br i1 %.not10.i.i.i.i63, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i75, label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %.noexc80, %.lr.ph.i.i.i.i64
  %.012.i.i.i.i65 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i64 ], [ %i.df, %.noexc80 ] ; 2 uses
  %.0911.i.i.i.i66 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i64 ], [ %i.cu, %.noexc80 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i66, i64 8
  %i.dj = load <2 x ptr>, ptr %.0911.i.i.i.i66, align 8, !tbaa !19, !alias.scope !409, !noalias !406
  store ptr null, ptr %i.di, align 8, !tbaa !338, !alias.scope !409, !noalias !406
  store <2 x ptr> %i.dj, ptr %.012.i.i.i.i65, align 8, !tbaa !19, !alias.scope !406, !noalias !409
  store ptr null, ptr %.0911.i.i.i.i66, align 8, !tbaa !341, !alias.scope !409, !noalias !406
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i66, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i65, i64 16 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.dk, %i.cq
  br i1 %.not.i.i.i.i67, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i75, label %.lr.ph.i.i.i.i64, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i75: ; preds = %.lr.ph.i.i.i.i64, %.noexc80
  %.0.lcssa.i.i.i.i69 = phi ptr [ %i.df, %.noexc80 ], [ %i.dl, %.lr.ph.i.i.i.i64 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i69, i64 16
  %.not.i23.i77 = icmp eq ptr %i.cu, null
  br i1 %.not.i23.i77, label %.noexc35, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i75
  %i.dn = load ptr, ptr %i.i, align 8, !tbaa !344
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = sub i64 %i.do, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.dp) #30
  br label %.noexc35

.noexc35:                                         ; preds = %bb.aa, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i75
  store ptr %i.df, ptr %1, align 8, !tbaa !329
  store ptr %i.dm, ptr %i.j, align 8, !tbaa !332
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.dd
  store ptr %i.dq, ptr %i.i, align 8, !tbaa !344
  br label %_ZNSt12__shared_ptrIdLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIdLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc35, %bb.x
  %.pre115 = load ptr, ptr @_ZZN12_GLOBAL__N_142BM_SmallObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool, align 8, !tbaa !20, !noalias !411
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre115, i64 16
  %.pre116 = load ptr, ptr %.phi.trans.insert, align 8, !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.dr = invoke noundef nonnull align 8 dereferenceable(32) ptr %.pre116(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN12_GLOBAL__N_142BM_SmallObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool, i64 noundef 32, i64 noundef 8)
          to label %bb.ab unwind label %bb.am, !inline_history !416 ; 8 uses

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIdLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i32 1, ptr %i.ds, align 8, !tbaa !345, !noalias !417
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 1, ptr %i.dt, align 4, !tbaa !347, !noalias !417
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_112SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dr, align 8, !tbaa !20, !noalias !417
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i64 ptrtoint (ptr @_ZZN12_GLOBAL__N_142BM_SmallObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool to i64), ptr %i.du, align 8, !tbaa !392, !noalias !417
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 3 uses
  store ptr null, ptr %i.dv, align 8, !tbaa !127, !noalias !417
  %i.dw = load ptr, ptr %i.j, align 8, !tbaa !332 ; 7 uses
  %i.dx = load ptr, ptr %i.i, align 8, !tbaa !344
  %.not.i42 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not.i42, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !341
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.dr, ptr %i.dy, align 8, !tbaa !338
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store ptr %i.dz, ptr %i.j, align 8, !tbaa !332
  br label %_ZNSt12__shared_ptrIN12_GLOBAL__N_112SmallObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ea = load ptr, ptr %1, align 8, !tbaa !329   ; 5 uses
  %i.eb = ptrtoint ptr %i.dw to i64
  %i.ec = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 3 uses
  %i.ee = icmp eq i64 %i.ed, 9223372036854775792
  br i1 %i.ee, label %bb.ae, label %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
          to label %.noexc44.a unwind label %.loopexit.split-lp99

.noexc44.a:                                       ; preds = %bb.ae
  unreachable

_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.ef = ashr exact i64 %i.ed, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %i.eg = add nsw i64 %.sroa.speculated.i.i.i, %i.ef ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.ef
  %i.ei = call i64 @llvm.umin.i64(i64 %i.eg, i64 576460752303423487)
  %i.ej = select i1 %i.eh, i64 576460752303423487, i64 %i.ei ; 3 uses
  %.not.i.i.i43 = icmp ne i64 %i.ej, 0
  call void @llvm.assume(i1 %.not.i.i.i43)
  %i.ek = shl nuw nsw i64 %i.ej, 4
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #27
          to label %.noexc45 unwind label %.loopexit98 ; 5 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ed ; 2 uses
  store ptr %i.dv, ptr %i.em, align 8, !tbaa !341
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.dr, ptr %i.en, align 8, !tbaa !338
  %.not10.i.i.i.i.i = icmp eq ptr %i.ea, %i.dw
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc45, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i ], [ %i.el, %.noexc45 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i ], [ %i.ea, %.noexc45 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8
  %i.ep = load <2 x ptr>, ptr %.0911.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !421, !noalias !418
  store ptr null, ptr %i.eo, align 8, !tbaa !338, !alias.scope !421, !noalias !418
  store <2 x ptr> %i.ep, ptr %.012.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !418, !noalias !421
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !341, !alias.scope !421, !noalias !418
  %i.eq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eq, %i.dw
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc45
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.el, %.noexc45 ], [ %i.er, %.lr.ph.i.i.i.i.i ]
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112SmallObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.et = load ptr, ptr %i.i, align 8, !tbaa !344
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = sub i64 %i.eu, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ev) #30
  br label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112SmallObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112SmallObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.el, ptr %1, align 8, !tbaa !329
  store ptr %i.es, ptr %i.j, align 8, !tbaa !332
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.ej
  store ptr %i.ew, ptr %i.i, align 8, !tbaa !344
  br label %_ZNSt12__shared_ptrIN12_GLOBAL__N_112SmallObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12_GLOBAL__N_112SmallObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ac, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112SmallObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ex = add nuw nsw i32 %.0107, 3
  %i.ey = icmp samesign ult i32 %.0107, 599997
  br i1 %i.ey, label %bb.q, label %bb.h, !llvm.loop !423

bb.ag:                                            ; preds = %bb.q
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ah ], [ %i.ez, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.ao

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit93:                                      ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i60
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp94:                             ; preds = %bb.z
  %lpad.loopexit.split-lp96 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp94, %.loopexit93
  %lpad.phi97 = phi { ptr, i32 } [ %lpad.loopexit95, %.loopexit93 ], [ %lpad.loopexit.split-lp96, %.loopexit.split-lp94 ]
  call void @_ZNSt12__shared_ptrIdLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn14 = phi { ptr, i32 } [ %lpad.phi97, %bb.ak ], [ %i.fa, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ao

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIdLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit98:                                      ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit100 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp99:                             ; preds = %bb.ae
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp99, %.loopexit98
  %lpad.phi102 = phi { ptr, i32 } [ %lpad.loopexit100, %.loopexit98 ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp99 ]
  call fastcc void @_ZNSt12__shared_ptrIN12_GLOBAL__N_112SmallObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.dr) #28
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.ai, %bb.al, %bb.p
  %.pn16.pn.pn = phi { ptr, i32 } [ %i.az, %bb.p ], [ %.pn, %bb.ai ], [ %.pn14, %bb.al ], [ %lpad.phi102, %bb.an ], [ %i.fb, %bb.am ]
  call void @_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.f
  %.pn16.pn.pn.pn = phi { ptr, i32 } [ %.pn16.pn.pn, %bb.ao ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %.pn16.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11make_uniqueIN9benchmark8internal17FunctionBenchmarkEJRA30_KcPFvRNS0_5StateEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef nonnull align 1 dereferenceable(30) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !9
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #29
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !13

.noexc11.i:                                       ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc6 unwind label %bb.h

.noexc6:                                          ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
          to label %.noexc7 unwind label %bb.h    ; 2 uses

.noexc7:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.h, ptr %3, align 8, !tbaa !14
  store i64 %i.c, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc7, %bb.a
  %i.i = phi ptr [ %i.h, %.noexc7 ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.c, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.j, ptr %i.i, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !17
  %i.m = load ptr, ptr %2, align 8, !tbaa !19
  invoke void @_ZN9benchmark9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3)
end_hunk_1
begin_hunk_2_@_ZSt11make_uniqueIN9benchmark8internal17FunctionBenchmarkEJRA30_KcPFvRNS0_5StateEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_:bb.a
  %i.u = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.i
  %i.w = load i64, ptr %i.b, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.h
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.t, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 312) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_129BM_SmallObjectCreationWithAnyERN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %1 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %2 = alloca %"class.std::vector.228", align 8   ; 16 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !55
  %.not = icmp ne i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not3739 = icmp eq i64 %i.f, 0
  %.not.i.not37 = select i1 %.not, i1 true, i1 %.not.i.not3739
  br i1 %.not.i.not37, label %._crit_edge, label %.lr.ph, !prof !76

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  br label %bb.a

._crit_edge:                                      ; preds = %_ZNSt6vectorISt3anySaIS0_EED2Ev.exit, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

bb.a:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt3anySaIS0_EED2Ev.exit
  %.sroa.030.038 = phi i64 [ %i.f, %.lr.ph ], [ %i.t, %_ZNSt6vectorISt3anySaIS0_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorISt3anySaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 600000)
          to label %.preheader.preheader unwind label %bb.f

.preheader.preheader:                             ; preds = %bb.a
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !424
  br label %.preheader

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit
  call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::vector.228") align 8 dereferenceable(24) %2, ptr nonnull elementtype(%"class.std::vector.228") align 8 dereferenceable(24) %2) #28, !srcloc !95
  %i.i = load ptr, ptr %2, align 8, !tbaa !427    ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !424  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyISt3anyEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt3anyEvPT_.exit.i.i.i ], [ %i.i, %bb.b ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i, align 8, !tbaa !428 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt3anyEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  invoke void %i.k(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i, ptr noundef null)
          to label %_ZSt8_DestroyISt3anyEvPT_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

_ZSt8_DestroyISt3anyEvPT_.exit.i.i.i:             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.j
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !430

_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt3anyEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !427
  br label %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exit.i:   ; preds = %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.o = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.i, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt3anySaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exit.i
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !431
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.s) #30
  br label %_ZNSt6vectorISt3anySaIS0_EED2Ev.exit

_ZNSt6vectorISt3anySaIS0_EED2Ev.exit:             ; preds = %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.t = add nsw i64 %.sroa.030.038, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.t, 0
  br i1 %.not.i.not, label %._crit_edge, label %bb.a, !prof !98

bb.f:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit27

.preheader:                                       ; preds = %.preheader.preheader, %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit
  %i.v = phi ptr [ %i.bl, %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit ], [ %.pre, %.preheader.preheader ] ; 4 uses
  %.036 = phi i32 [ %i.bm, %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !349
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !431
  %.not.i17 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store <2 x ptr> <ptr @_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr null>, ptr %i.v, align 8, !tbaa !17
  store i32 0, ptr %i.x, align 8, !tbaa !349
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.g, align 8, !tbaa !424
  br label %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJiEEERS0_DpOT_.exit

bb.h:                                             ; preds = %.preheader
  invoke void @_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZNSt6vectorISt3anySaIS0_EE12emplace_backIJiEEERS0_DpOT_.exit_crit_edge unwind label %bb.s

._ZNSt6vectorISt3anySaIS0_EE12emplace_backIJiEEERS0_DpOT_.exit_crit_edge: ; preds = %bb.h
  %.pre40.a = load ptr, ptr %i.g, align 8, !tbaa !424
  br label %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJiEEERS0_DpOT_.exit

_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJiEEERS0_DpOT_.exit: ; preds = %._ZNSt6vectorISt3anySaIS0_EE12emplace_backIJiEEERS0_DpOT_.exit_crit_edge, %bb.g
  %i.aa = phi ptr [ %.pre40.a, %._ZNSt6vectorISt3anySaIS0_EE12emplace_backIJiEEERS0_DpOT_.exit_crit_edge ], [ %i.z, %bb.g ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !363
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !431
  %.not.i18 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJiEEERS0_DpOT_.exit
  store ptr @_ZNSt3any17_Manager_internalIdE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr %i.aa, align 8, !tbaa !428
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store double 0.000000e+00, ptr %i.ac, align 8, !tbaa !363
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !424
  br label %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJdEEERS0_DpOT_.exit

bb.j:                                             ; preds = %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJiEEERS0_DpOT_.exit
  invoke void @_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %._ZNSt6vectorISt3anySaIS0_EE12emplace_backIJdEEERS0_DpOT_.exit_crit_edge unwind label %bb.t

._ZNSt6vectorISt3anySaIS0_EE12emplace_backIJdEEERS0_DpOT_.exit_crit_edge: ; preds = %bb.j
  %.pre41 = load ptr, ptr %i.g, align 8, !tbaa !424
  br label %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJdEEERS0_DpOT_.exit

_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJdEEERS0_DpOT_.exit: ; preds = %._ZNSt6vectorISt3anySaIS0_EE12emplace_backIJdEEERS0_DpOT_.exit_crit_edge, %bb.i
  %i.af = phi ptr [ %.pre41, %._ZNSt6vectorISt3anySaIS0_EE12emplace_backIJdEEERS0_DpOT_.exit_crit_edge ], [ %i.ae, %bb.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !431
  %.not.i21 = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJdEEERS0_DpOT_.exit
  store ptr @_ZNSt3any17_Manager_internalIN12_GLOBAL__N_112SmallObject3EE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr %i.af, align 8, !tbaa !428
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !354
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store ptr %i.aj, ptr %i.g, align 8, !tbaa !424
  br label %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit

bb.l:                                             ; preds = %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJdEEERS0_DpOT_.exit
  %i.ak = load ptr, ptr %2, align 8, !tbaa !427   ; 5 uses
  %i.al = ptrtoint ptr %i.af to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775792
  br i1 %i.ao, label %bb.m, label %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
          to label %.noexc23.a unwind label %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit27.loopexit.split-lp

.noexc23.a:                                       ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ap = ashr exact i64 %i.an, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = call i64 @llvm.umin.i64(i64 %i.aq, i64 576460752303423487)
  %i.at = select i1 %i.ar, i64 576460752303423487, i64 %i.as ; 3 uses
  %.not.i.i.i22 = icmp ne i64 %i.at, 0
  call void @llvm.assume(i1 %.not.i.i.i22)
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #27
          to label %.noexc24 unwind label %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit27.loopexit ; 5 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an ; 2 uses
  store ptr @_ZNSt3any17_Manager_internalIN12_GLOBAL__N_112SmallObject3EE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr %i.aw, align 8, !tbaa !428
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 0, ptr %i.ax, align 8, !tbaa !354
  %.not12.i.i.i.i.i = icmp eq ptr %i.ak, %i.af
  br i1 %.not12.i.i.i.i.i, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc24, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.bf, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.av, %.noexc24 ] ; 4 uses
  %.0913.i.i.i.i.i = phi ptr [ %i.be, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.ak, %.noexc24 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.ay = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !17, !alias.scope !432, !noalias !435
  %i.az = load ptr, ptr %.0913.i.i.i.i.i, align 8, !tbaa !428, !alias.scope !435, !noalias !432 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i.i.i, label %bb.n

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr null, ptr %.014.i.i.i.i.i, align 8, !tbaa !428, !alias.scope !432, !noalias !435
  br label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28, !noalias !437
  store ptr %.014.i.i.i.i.i, ptr %1, align 8, !tbaa !17, !noalias !437
  invoke void %i.az(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i.i.i, ptr noundef nonnull %1)
          to label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #31
  unreachable

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !437
  %.pr.i.i.i.i.i.i = load ptr, ptr %.0913.i.i.i.i.i, align 8, !tbaa !428, !alias.scope !435, !noalias !432 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i.i.i
  invoke void %.pr.i.i.i.i.i.i(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i.i.i, ptr noundef null)
          to label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #31
  unreachable

_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i: ; preds = %bb.p, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i.i.i, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i.i, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.af
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !438

_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i: ; preds = %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i, %.noexc24
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.av, %.noexc24 ], [ %i.bf, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i39.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i39.i.i, label %_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJN12_GLOBAL__N_112SmallObject3EEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !431
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bj) #30
  br label %_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJN12_GLOBAL__N_112SmallObject3EEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJN12_GLOBAL__N_112SmallObject3EEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i
  store ptr %i.av, ptr %2, align 8, !tbaa !427
  store ptr %i.bg, ptr %i.g, align 8, !tbaa !424
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bk, ptr %i.h, align 8, !tbaa !431
  br label %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit

_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit:         ; preds = %bb.k, %_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJN12_GLOBAL__N_112SmallObject3EEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.bl = phi ptr [ %i.aj, %bb.k ], [ %i.bg, %_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJN12_GLOBAL__N_112SmallObject3EEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ]
  %i.bm = add nuw nsw i32 %.036, 3
  %i.bn = icmp samesign ult i32 %.036, 599997
  br i1 %i.bn, label %.preheader, label %bb.b, !llvm.loop !439

bb.s:                                             ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit27

bb.t:                                             ; preds = %bb.j
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit27

_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit27.loopexit: ; preds = %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit27

_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit27.loopexit.split-lp: ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit27

_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit27:       ; preds = %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit27.loopexit, %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit27.loopexit.split-lp, %bb.s, %bb.t, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.bo, %bb.s ], [ %i.bp, %bb.t ], [ %lpad.loopexit, %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit27.loopexit ], [ %lpad.loopexit.split-lp, %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit27.loopexit.split-lp ]
  call void @_ZNSt6vectorISt3anySaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_131BM_LargeObjectCreationWithProxyERN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %1 = alloca %"class.std::vector.16", align 8    ; 20 uses
  %2 = alloca %"class.pro::v4::proxy", align 16   ; 14 uses
  %3 = alloca %"class.pro::v4::proxy", align 16   ; 14 uses
  %4 = alloca %"class.pro::v4::proxy", align 16   ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not156158 = icmp eq i64 %i.d, 0
  %.not.i.not156 = select i1 %.not, i1 true, i1 %.not.i.not156158
  br i1 %.not.i.not156, label %._crit_edge, label %.lr.ph, !prof !76

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i69 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.a

._crit_edge:                                      ; preds = %_ZNSt6vectorIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EED2Ev.exit, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

bb.a:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EED2Ev.exit
  %.sroa.0116.0157 = phi i64 [ %i.d, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.j = invoke noalias noundef nonnull dereferenceable(14400000) ptr @_Znwm(i64 noundef 14400000) #27
          to label %.noexc unwind label %bb.h     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !77     ; 3 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !80   ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not1.i.i.i.i, label %_ZNSt6vectorIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %_ZSt19__relocate_object_aIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.s, %_ZSt19__relocate_object_aIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.j, %.noexc ] ; 4 uses
  %.092.i.i.i.i = phi ptr [ %i.r, %_ZSt19__relocate_object_aIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.k, %.noexc ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %.092.i.i.i.i, align 8, !tbaa !86, !alias.scope !443, !noalias !440
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt12construct_atIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 16
  %i.o = load i64, ptr %i.m, align 8, !alias.scope !443, !noalias !440
  store i64 %i.o, ptr %i.n, align 1, !alias.scope !440, !noalias !443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i, i64 16, i1 false), !alias.scope !445
  br label %_ZSt12construct_atIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i.i.i.i

_ZSt12construct_atIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i = phi ptr [ %.092.i.i.i.i, %bb.b ], [ %.03.i.i.i.i, %.lr.ph.i.i.i.i ]
  store ptr null, ptr %.sink.i.i.i.i.i.i.i.i, align 8, !tbaa !86, !alias.scope !445
  %.val.i.i.i5.i.i.i.i.i = load ptr, ptr %.092.i.i.i.i, align 8, !tbaa !86, !alias.scope !443, !noalias !440
  %.not.i.i.i6.i.i.i.i.i = icmp eq ptr %.val.i.i.i5.i.i.i.i.i, null
  br i1 %.not.i.i.i6.i.i.i.i.i, label %_ZSt19__relocate_object_aIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt12construct_atIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89, !alias.scope !443, !noalias !440
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i) #28, !noalias !440, !inline_history !91
  br label %_ZSt19__relocate_object_aIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %bb.c, %_ZSt12construct_atIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i, !llvm.loop !92

_ZNSt6vectorIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exitthread-pre-split.i: ; preds = %_ZSt19__relocate_object_aIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_135BM_LargeObjectCreationWithSharedPtrERN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i.lr.ph: ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i.lr.ph, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit
  %.sroa.080.0102 = phi i64 [ %i.d, %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i.lr.ph ], [ %i.at, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.i = invoke noalias noundef nonnull dereferenceable(9600000) ptr @_Znwm(i64 noundef 9600000) #27
          to label %.noexc unwind label %bb.j     ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !329    ; 5 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !332  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %i.i, %.noexc ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %i.j, %.noexc ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.l = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.m = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !19, !alias.scope !736, !noalias !733
  store ptr null, ptr %i.l, align 8, !tbaa !338, !alias.scope !736, !noalias !733
  store <2 x ptr> %i.m, ptr %.012.i.i.i.i, align 8, !tbaa !19, !alias.scope !733, !noalias !736
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !341, !alias.scope !736, !noalias !733
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.k
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.j, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.s) #30
  br label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.a, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.i, ptr %1, align 8, !tbaa !329
  store ptr %i.i, ptr %i.f, align 8, !tbaa !332
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 9600000
  store ptr %i.t, ptr %i.e, align 8, !tbaa !344
  br label %bb.k

bb.b:                                             ; preds = %_ZNSt12__shared_ptrIN12_GLOBAL__N_112LargeObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::vector.181") align 8 dereferenceable(24) %1, ptr nonnull elementtype(%"class.std::vector.181") align 8 dereferenceable(24) %1) #28, !srcloc !95
  %i.u = load ptr, ptr %1, align 8, !tbaa !329    ; 3 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !332  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i ], [ %i.u, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !338  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.y, align 8, !tbaa !345
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !347
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28, !inline_history !348
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28, !inline_history !348
  br label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !349
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.f ], [ %i.al, %bb.g ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.h, label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i, !prof !13

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28
  br label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.v
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !350

_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !329
  br label %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #30
  br label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.at = add nsw i64 %.sroa.080.0102, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.at, 0
  br i1 %.not.i.not, label %._crit_edge, label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i, !prof !98

bb.j:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZNSt12__shared_ptrIN12_GLOBAL__N_112LargeObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0100 = phi i32 [ 0, %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.eo, %_ZNSt12__shared_ptrIN12_GLOBAL__N_112LargeObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.av = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #27
          to label %bb.l unwind label %bb.aa      ; 7 uses

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 1, ptr %i.aw, align 8, !tbaa !345, !noalias !738
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 1, ptr %i.ax, align 4, !tbaa !347, !noalias !738
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt5arrayIcLm100EESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.av, align 8, !tbaa !20, !noalias !738
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.ay, i8 0, i64 100, i1 false), !noalias !738
  store ptr %i.av, ptr %i.g, align 8, !tbaa !338, !alias.scope !738
  store ptr %i.ay, ptr %2, align 8, !tbaa !741, !alias.scope !738
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !332 ; 7 uses
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !344
  %.not.i26 = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i26, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !341
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.av, ptr %i.bb, align 8, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.bc, ptr %i.f, align 8, !tbaa !332
  br label %_ZNSt12__shared_ptrISt5arrayIcLm100EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %1, align 8, !tbaa !329   ; 5 uses
  %i.be = ptrtoint ptr %i.az to i64
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775792
  br i1 %i.bh, label %bb.o, label %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.n
  %i.bi = ashr exact i64 %i.bg, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 576460752303423487)
  %i.bm = select i1 %i.bk, i64 576460752303423487, i64 %i.bl ; 3 uses
  %.not.i.i46 = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i46)
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #27
          to label %.noexc55 unwind label %.loopexit ; 5 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg ; 2 uses
  store ptr %i.ay, ptr %i.bp, align 8, !tbaa !341
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !338
  store ptr %i.av, ptr %i.bq, align 8, !tbaa !338
  %.not10.i.i.i.i47 = icmp eq ptr %i.bd, %i.az
  br i1 %.not10.i.i.i.i47, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i48

.lr.ph.i.i.i.i48:                                 ; preds = %.noexc55, %.lr.ph.i.i.i.i48
  %.012.i.i.i.i49 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i48 ], [ %i.bo, %.noexc55 ] ; 2 uses
  %.0911.i.i.i.i50 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i48 ], [ %i.bd, %.noexc55 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i50, i64 8
  %i.bs = load <2 x ptr>, ptr %.0911.i.i.i.i50, align 8, !tbaa !19, !alias.scope !746, !noalias !743
  store ptr null, ptr %i.br, align 8, !tbaa !338, !alias.scope !746, !noalias !743
  store <2 x ptr> %i.bs, ptr %.012.i.i.i.i49, align 8, !tbaa !19, !alias.scope !743, !noalias !746
  store ptr null, ptr %.0911.i.i.i.i50, align 8, !tbaa !341, !alias.scope !746, !noalias !743
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i50, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i49, i64 16 ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.bt, %i.az
  br i1 %.not.i.i.i.i51, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i48, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i48, %.noexc55
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bo, %.noexc55 ], [ %i.bu, %.lr.ph.i.i.i.i48 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i23.i = icmp eq ptr %i.bd, null
  br i1 %.not.i23.i, label %.noexc27, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.by) #30
  br label %.noexc27

.noexc27:                                         ; preds = %bb.p, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.bo, ptr %1, align 8, !tbaa !329
  store ptr %i.bv, ptr %i.f, align 8, !tbaa !332
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.bz, ptr %i.e, align 8, !tbaa !344
  br label %_ZNSt12__shared_ptrISt5arrayIcLm100EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt5arrayIcLm100EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %.noexc27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %i.ca = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #27
          to label %bb.q unwind label %bb.ad      ; 13 uses

bb.q:                                             ; preds = %_ZNSt12__shared_ptrISt5arrayIcLm100EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 1, ptr %i.cb, align 8, !tbaa !345, !noalias !748
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 1, ptr %i.cc, align 4, !tbaa !347, !noalias !748
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ca, align 8, !tbaa !20, !noalias !748
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ce, i8 0, i64 80, i1 false), !noalias !748
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !9, !noalias !748
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i64 0, ptr %i.cf, align 8, !tbaa !18, !noalias !748
  %.ptr.1.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  store ptr %i.cg, ptr %.ptr.1.i.i.i.i.i.i.i, align 8, !tbaa !9, !noalias !748
  %.ptr.2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  store ptr %i.ch, ptr %.ptr.2.i.i.i.i.i.i.i, align 8, !tbaa !9, !noalias !748
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !338, !alias.scope !748
  store ptr %i.cd, ptr %3, align 8, !tbaa !751, !alias.scope !748
  %i.ci = load ptr, ptr %i.f, align 8, !tbaa !332 ; 7 uses
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !344
  %.not.i30 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i30, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.cd, ptr %i.ci, align 8, !tbaa !341
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.ca, ptr %i.ck, align 8, !tbaa !338
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.cl, ptr %i.f, align 8, !tbaa !332
  br label %_ZNSt12__shared_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cm = load ptr, ptr %1, align 8, !tbaa !329   ; 5 uses
  %i.cn = ptrtoint ptr %i.ci to i64
  %i.co = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775792
  br i1 %i.cq, label %bb.t, label %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i56

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
          to label %.noexc75 unwind label %.loopexit.split-lp87

.noexc75:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i56: ; preds = %bb.s
  %i.cr = ashr exact i64 %i.cp, 4                 ; 3 uses
  %.sroa.speculated.i.i57 = call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i57, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 576460752303423487)
  %i.cv = select i1 %i.ct, i64 576460752303423487, i64 %i.cu ; 3 uses
  %.not.i.i58 = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i58)
  %i.cw = shl nuw nsw i64 %i.cv, 4
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #27
          to label %.noexc76 unwind label %.loopexit86 ; 5 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i56
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cp ; 2 uses
  store ptr %i.cd, ptr %i.cy, align 8, !tbaa !341
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !338
  store ptr %i.ca, ptr %i.cz, align 8, !tbaa !338
  %.not10.i.i.i.i59 = icmp eq ptr %i.cm, %i.ci
  br i1 %.not10.i.i.i.i59, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i71, label %.lr.ph.i.i.i.i60

.lr.ph.i.i.i.i60:                                 ; preds = %.noexc76, %.lr.ph.i.i.i.i60
  %.012.i.i.i.i61 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i60 ], [ %i.cx, %.noexc76 ] ; 2 uses
  %.0911.i.i.i.i62 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i60 ], [ %i.cm, %.noexc76 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i62, i64 8
  %i.db = load <2 x ptr>, ptr %.0911.i.i.i.i62, align 8, !tbaa !19, !alias.scope !756, !noalias !753
  store ptr null, ptr %i.da, align 8, !tbaa !338, !alias.scope !756, !noalias !753
  store <2 x ptr> %i.db, ptr %.012.i.i.i.i61, align 8, !tbaa !19, !alias.scope !753, !noalias !756
  store ptr null, ptr %.0911.i.i.i.i62, align 8, !tbaa !341, !alias.scope !756, !noalias !753
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i62, i64 16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i61, i64 16 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.dc, %i.ci
  br i1 %.not.i.i.i.i63, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i71, label %.lr.ph.i.i.i.i60, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i71: ; preds = %.lr.ph.i.i.i.i60, %.noexc76
  %.0.lcssa.i.i.i.i65 = phi ptr [ %i.cx, %.noexc76 ], [ %i.dd, %.lr.ph.i.i.i.i60 ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i65, i64 16
  %.not.i23.i73 = icmp eq ptr %i.cm, null
  br i1 %.not.i23.i73, label %.noexc32, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i71
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.dh) #30
  br label %.noexc32

.noexc32:                                         ; preds = %bb.u, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i71
  store ptr %i.cx, ptr %1, align 8, !tbaa !329
  store ptr %i.de, ptr %i.f, align 8, !tbaa !332
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.di, ptr %i.e, align 8, !tbaa !344
  br label %_ZNSt12__shared_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %.noexc32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.dj = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #27
          to label %bb.v unwind label %bb.ag      ; 7 uses

bb.v:                                             ; preds = %_ZNSt12__shared_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i32 1, ptr %i.dk, align 8, !tbaa !345, !noalias !758
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 1, ptr %i.dl, align 4, !tbaa !347, !noalias !758
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_112LargeObject3ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dj, align 8, !tbaa !20, !noalias !758
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dm, i8 0, i64 128, i1 false), !noalias !758
  %i.dn = load ptr, ptr %i.f, align 8, !tbaa !332 ; 7 uses
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !344
  %.not.i38 = icmp eq ptr %i.dn, %i.do
  br i1 %.not.i38, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !341
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.dj, ptr %i.dp, align 8, !tbaa !338
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store ptr %i.dq, ptr %i.f, align 8, !tbaa !332
  br label %_ZNSt12__shared_ptrIN12_GLOBAL__N_112LargeObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.dr = load ptr, ptr %1, align 8, !tbaa !329   ; 5 uses
  %i.ds = ptrtoint ptr %i.dn to i64
  %i.dt = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 3 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775792
  br i1 %i.dv, label %bb.y, label %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
          to label %.noexc40.a unwind label %.loopexit.split-lp92

.noexc40.a:                                       ; preds = %bb.y
  unreachable

_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.dw = ashr exact i64 %i.du, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 576460752303423487)
  %i.ea = select i1 %i.dy, i64 576460752303423487, i64 %i.dz ; 3 uses
  %.not.i.i.i39 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i39)
  %i.eb = shl nuw nsw i64 %i.ea, 4
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #27
          to label %.noexc41 unwind label %.loopexit91 ; 5 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du ; 2 uses
  store ptr %i.dm, ptr %i.ed, align 8, !tbaa !341
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.dj, ptr %i.ee, align 8, !tbaa !338
  %.not10.i.i.i.i.i = icmp eq ptr %i.dr, %i.dn
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc41, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %i.ec, %.noexc41 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %i.dr, %.noexc41 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.ef = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8
  %i.eg = load <2 x ptr>, ptr %.0911.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !764, !noalias !761
  store ptr null, ptr %i.ef, align 8, !tbaa !338, !alias.scope !764, !noalias !761
  store <2 x ptr> %i.eg, ptr %.012.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !761, !noalias !764
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !341, !alias.scope !764, !noalias !761
  %i.eh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eh, %i.dn
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc41
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ec, %.noexc41 ], [ %i.ei, %.lr.ph.i.i.i.i.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112LargeObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ek = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.em) #30
  br label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112LargeObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112LargeObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ec, ptr %1, align 8, !tbaa !329
  store ptr %i.ej, ptr %i.f, align 8, !tbaa !332
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.en, ptr %i.e, align 8, !tbaa !344
  br label %_ZNSt12__shared_ptrIN12_GLOBAL__N_112LargeObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12_GLOBAL__N_112LargeObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.w, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112LargeObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.eo = add nuw nsw i32 %.0100, 3
  %i.ep = icmp samesign ult i32 %.0100, 599997
  br i1 %i.ep, label %bb.k, label %bb.b, !llvm.loop !766

bb.aa:                                            ; preds = %bb.k
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrISt5arrayIcLm100EELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ab ], [ %i.eq, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.ai

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrISt5arrayIcLm100EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit86:                                      ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i56
  %lpad.loopexit88 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp87:                             ; preds = %bb.t
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp87, %.loopexit86
  %lpad.phi90 = phi { ptr, i32 } [ %lpad.loopexit88, %.loopexit86 ], [ %lpad.loopexit.split-lp89, %.loopexit.split-lp87 ]
  call void @_ZNSt12__shared_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn13 = phi { ptr, i32 } [ %lpad.phi90, %bb.ae ], [ %i.er, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ai

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit91:                                      ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp92:                             ; preds = %bb.y
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp92, %.loopexit91
  %lpad.phi95 = phi { ptr, i32 } [ %lpad.loopexit93, %.loopexit91 ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp92 ]
  call fastcc void @_ZNSt12__shared_ptrIN12_GLOBAL__N_112LargeObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.dj) #28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.ac, %bb.af, %bb.j
  %.pn15.pn.pn = phi { ptr, i32 } [ %i.au, %bb.j ], [ %.pn, %bb.ac ], [ %.pn13, %bb.af ], [ %lpad.phi95, %bb.ah ], [ %i.es, %bb.ag ]
  call void @_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn15.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.181", align 8   ; 19 uses
  %2 = alloca %"class.std::shared_ptr.514", align 8 ; 6 uses
  %3 = alloca %"class.std::shared_ptr.517", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !207

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool) #28
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt3pmr28unsynchronized_pool_resourceC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3pmr28unsynchronized_pool_resourceD1Ev, ptr nonnull @_ZZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool, ptr nonnull @__dso_handle) #28 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !55
  %.not92 = icmp eq i32 %i.f, 0
  br i1 %.not92, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.e
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 16, !tbaa !208 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not108 = icmp eq i64 %i.h, 0
  br i1 %.not.i.not108, label %._crit_edge, label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i.lr.ph, !prof !209

_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i.lr.ph: ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool) #28
  br label %bb.ap

_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i.lr.ph, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit
  %.sroa.084.0109 = phi i64 [ %i.h, %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i.lr.ph ], [ %i.ay, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.n = invoke noalias noundef nonnull dereferenceable(9600000) ptr @_Znwm(i64 noundef 9600000) #27
          to label %.noexc unwind label %bb.p     ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i
  %i.o = load ptr, ptr %1, align 8, !tbaa !329    ; 5 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !332  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.n, %.noexc ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.o, %.noexc ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.q = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.r = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !19, !alias.scope !770, !noalias !767
  store ptr null, ptr %i.q, align 8, !tbaa !338, !alias.scope !770, !noalias !767
  store <2 x ptr> %i.r, ptr %.012.i.i.i.i, align 8, !tbaa !19, !alias.scope !767, !noalias !770
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !341, !alias.scope !770, !noalias !767
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.p
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !344
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.x) #30
  br label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.n, ptr %1, align 8, !tbaa !329
  store ptr %i.n, ptr %i.j, align 8, !tbaa !332
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 9600000
  store ptr %i.y, ptr %i.i, align 8, !tbaa !344
  br label %bb.q

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN12_GLOBAL__N_112LargeObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::vector.181") align 8 dereferenceable(24) %1, ptr nonnull elementtype(%"class.std::vector.181") align 8 dereferenceable(24) %1) #28, !srcloc !95
  %i.z = load ptr, ptr %1, align 8, !tbaa !329    ; 3 uses
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !332 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !338 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ad, align 8, !tbaa !345
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !347
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #28, !inline_history !348
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #28, !inline_history !348
  br label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !349
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.l ], [ %i.aq, %bb.m ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.n, label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i, !prof !13

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #28
  br label %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i:  ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.aa
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !350

_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIvEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !329
  br label %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.h
  %i.at = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.z, %bb.h ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !344
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #30
  br label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPSt10shared_ptrIvES1_EvT_S3_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.ay = add nsw i64 %.sroa.084.0109, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.ay, 0
  br i1 %.not.i.not, label %._crit_edge, label %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i, !prof !98

bb.p:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE11_M_allocateEm.exit.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.q:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZNSt12__shared_ptrIN12_GLOBAL__N_112LargeObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0107 = phi i32 [ 0, %_ZNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.fb, %_ZNSt12__shared_ptrIN12_GLOBAL__N_112LargeObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  %i.ba = load ptr, ptr @_ZZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool, align 8, !tbaa !20, !noalias !775
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !775
  %i.bd = invoke noundef nonnull align 8 ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool, i64 noundef 128, i64 noundef 8)
          to label %bb.r unwind label %bb.ag, !inline_history !778 ; 8 uses

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 1, ptr %i.be, align 8, !tbaa !345, !noalias !772
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 1, ptr %i.bf, align 4, !tbaa !347, !noalias !772
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt5arrayIcLm100EENSt3pmr21polymorphic_allocatorISt4byteEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bd, align 8, !tbaa !20, !noalias !772
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 ptrtoint (ptr @_ZZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool to i64), ptr %i.bg, align 8, !tbaa !392, !noalias !772
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.bh, i8 0, i64 100, i1 false), !noalias !772
  store ptr %i.bd, ptr %i.k, align 8, !tbaa !338, !alias.scope !772
  store ptr %i.bh, ptr %2, align 8, !tbaa !741, !alias.scope !772
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !332 ; 7 uses
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !344
  %.not.i28 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i28, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !341
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bd, ptr %i.bk, align 8, !tbaa !338
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bl, ptr %i.j, align 8, !tbaa !332
  br label %_ZNSt12__shared_ptrISt5arrayIcLm100EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %1, align 8, !tbaa !329   ; 5 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775792
  br i1 %i.bq, label %bb.u, label %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.br = ashr exact i64 %i.bp, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 576460752303423487)
  %i.bv = select i1 %i.bt, i64 576460752303423487, i64 %i.bu ; 3 uses
  %.not.i.i50 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i50)
  %i.bw = shl nuw nsw i64 %i.bv, 4
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #27
          to label %.noexc59 unwind label %.loopexit ; 5 uses

.noexc59:                                         ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp ; 2 uses
  store ptr %i.bh, ptr %i.by, align 8, !tbaa !341
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !338
  store ptr %i.bd, ptr %i.bz, align 8, !tbaa !338
  %.not10.i.i.i.i51 = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i51, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i52

.lr.ph.i.i.i.i52:                                 ; preds = %.noexc59, %.lr.ph.i.i.i.i52
  %.012.i.i.i.i53 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i52 ], [ %i.bx, %.noexc59 ] ; 2 uses
  %.0911.i.i.i.i54 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i52 ], [ %i.bm, %.noexc59 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i54, i64 8
  %i.cb = load <2 x ptr>, ptr %.0911.i.i.i.i54, align 8, !tbaa !19, !alias.scope !782, !noalias !779
  store ptr null, ptr %i.ca, align 8, !tbaa !338, !alias.scope !782, !noalias !779
  store <2 x ptr> %i.cb, ptr %.012.i.i.i.i53, align 8, !tbaa !19, !alias.scope !779, !noalias !782
  store ptr null, ptr %.0911.i.i.i.i54, align 8, !tbaa !341, !alias.scope !782, !noalias !779
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i54, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i53, i64 16 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %i.cc, %i.bi
  br i1 %.not.i.i.i.i55, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i52, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i52, %.noexc59
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bx, %.noexc59 ], [ %i.cd, %.lr.ph.i.i.i.i52 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i23.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i, label %.noexc29, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.cf = load ptr, ptr %i.i, align 8, !tbaa !344
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.ch) #30
  br label %.noexc29

.noexc29:                                         ; preds = %bb.v, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.bx, ptr %1, align 8, !tbaa !329
  store ptr %i.ce, ptr %i.j, align 8, !tbaa !332
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.ci, ptr %i.i, align 8, !tbaa !344
  br label %_ZNSt12__shared_ptrISt5arrayIcLm100EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt5arrayIcLm100EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc29, %bb.s
  %.pre = load ptr, ptr @_ZZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool, align 8, !tbaa !20, !noalias !784
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !784
  %i.cl = invoke noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool, i64 noundef 120, i64 noundef 8)
          to label %bb.w unwind label %bb.aj, !inline_history !790 ; 14 uses

bb.w:                                             ; preds = %_ZNSt12__shared_ptrISt5arrayIcLm100EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 1, ptr %i.cm, align 8, !tbaa !345, !noalias !789
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 1, ptr %i.cn, align 4, !tbaa !347, !noalias !789
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cl, align 8, !tbaa !20, !noalias !789
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 ptrtoint (ptr @_ZZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool to i64), ptr %i.co, align 8, !tbaa !392, !noalias !789
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cq, i8 0, i64 80, i1 false), !noalias !789
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !9, !noalias !789
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store i64 0, ptr %i.cr, align 8, !tbaa !18, !noalias !789
  %.ptr.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  store ptr %i.cs, ptr %.ptr.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !9, !noalias !789
  %.ptr.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 104
  store ptr %i.ct, ptr %.ptr.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !9, !noalias !789
  store ptr %i.cl, ptr %i.l, align 8, !tbaa !338, !alias.scope !789
  store ptr %i.cp, ptr %3, align 8, !tbaa !751, !alias.scope !789
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !332 ; 7 uses
  %i.cv = load ptr, ptr %i.i, align 8, !tbaa !344
  %.not.i33 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i33, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.cp, ptr %i.cu, align 8, !tbaa !341
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cl, ptr %i.cw, align 8, !tbaa !338
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %i.cx, ptr %i.j, align 8, !tbaa !332
  br label %_ZNSt12__shared_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.cy = load ptr, ptr %1, align 8, !tbaa !329   ; 5 uses
  %i.cz = ptrtoint ptr %i.cu to i64
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = sub i64 %i.cz, %i.da                    ; 3 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775792
  br i1 %i.dc, label %bb.z, label %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i60

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
          to label %.noexc79 unwind label %.loopexit.split-lp94

.noexc79:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i60: ; preds = %bb.y
  %i.dd = ashr exact i64 %i.db, 4                 ; 3 uses
  %.sroa.speculated.i.i61 = call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.de = add nsw i64 %.sroa.speculated.i.i61, %i.dd ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = call i64 @llvm.umin.i64(i64 %i.de, i64 576460752303423487)
  %i.dh = select i1 %i.df, i64 576460752303423487, i64 %i.dg ; 3 uses
  %.not.i.i62 = icmp ne i64 %i.dh, 0
  call void @llvm.assume(i1 %.not.i.i62)
  %i.di = shl nuw nsw i64 %i.dh, 4
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #27
          to label %.noexc80 unwind label %.loopexit93 ; 5 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i60
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.db ; 2 uses
  store ptr %i.cp, ptr %i.dk, align 8, !tbaa !341
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !338
  store ptr %i.cl, ptr %i.dl, align 8, !tbaa !338
  %.not10.i.i.i.i63 = icmp eq ptr %i.cy, %i.cu
  br i1 %.not10.i.i.i.i63, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i75, label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %.noexc80, %.lr.ph.i.i.i.i64
  %.012.i.i.i.i65 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i64 ], [ %i.dj, %.noexc80 ] ; 2 uses
  %.0911.i.i.i.i66 = phi ptr [ %i.do, %.lr.ph.i.i.i.i64 ], [ %i.cy, %.noexc80 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i66, i64 8
  %i.dn = load <2 x ptr>, ptr %.0911.i.i.i.i66, align 8, !tbaa !19, !alias.scope !794, !noalias !791
  store ptr null, ptr %i.dm, align 8, !tbaa !338, !alias.scope !794, !noalias !791
  store <2 x ptr> %i.dn, ptr %.012.i.i.i.i65, align 8, !tbaa !19, !alias.scope !791, !noalias !794
  store ptr null, ptr %.0911.i.i.i.i66, align 8, !tbaa !341, !alias.scope !794, !noalias !791
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i66, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i65, i64 16 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.do, %i.cu
  br i1 %.not.i.i.i.i67, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i75, label %.lr.ph.i.i.i.i64, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i75: ; preds = %.lr.ph.i.i.i.i64, %.noexc80
  %.0.lcssa.i.i.i.i69 = phi ptr [ %i.dj, %.noexc80 ], [ %i.dp, %.lr.ph.i.i.i.i64 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i69, i64 16
  %.not.i23.i77 = icmp eq ptr %i.cy, null
  br i1 %.not.i23.i77, label %.noexc35, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i75
  %i.dr = load ptr, ptr %i.i, align 8, !tbaa !344
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dt) #30
  br label %.noexc35

.noexc35:                                         ; preds = %bb.aa, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i75
  store ptr %i.dj, ptr %1, align 8, !tbaa !329
  store ptr %i.dq, ptr %i.j, align 8, !tbaa !332
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dh
  store ptr %i.du, ptr %i.i, align 8, !tbaa !344
  br label %_ZNSt12__shared_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc35, %bb.x
  %.pre115 = load ptr, ptr @_ZZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool, align 8, !tbaa !20, !noalias !796
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre115, i64 16
  %.pre116 = load ptr, ptr %.phi.trans.insert, align 8, !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.dv = invoke noundef nonnull align 8 dereferenceable(152) ptr %.pre116(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool, i64 noundef 152, i64 noundef 8)
          to label %bb.ab unwind label %bb.am, !inline_history !801 ; 8 uses

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i32 1, ptr %i.dw, align 8, !tbaa !345, !noalias !802
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 1, ptr %i.dx, align 4, !tbaa !347, !noalias !802
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dv, align 8, !tbaa !20, !noalias !802
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i64 ptrtoint (ptr @_ZZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateEE4pool to i64), ptr %i.dy, align 8, !tbaa !392, !noalias !802
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dz, i8 0, i64 128, i1 false), !noalias !802
  %i.ea = load ptr, ptr %i.j, align 8, !tbaa !332 ; 7 uses
  %i.eb = load ptr, ptr %i.i, align 8, !tbaa !344
  %.not.i42 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not.i42, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !341
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.dv, ptr %i.ec, align 8, !tbaa !338
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %i.ed, ptr %i.j, align 8, !tbaa !332
  br label %_ZNSt12__shared_ptrIN12_GLOBAL__N_112LargeObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ee = load ptr, ptr %1, align 8, !tbaa !329   ; 5 uses
  %i.ef = ptrtoint ptr %i.ea to i64
  %i.eg = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.eh = sub i64 %i.ef, %i.eg                    ; 3 uses
  %i.ei = icmp eq i64 %i.eh, 9223372036854775792
  br i1 %i.ei, label %bb.ae, label %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
          to label %.noexc44.a unwind label %.loopexit.split-lp99

.noexc44.a:                                       ; preds = %bb.ae
  unreachable

_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.ej = ashr exact i64 %i.eh, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ej, i64 1)
  %i.ek = add nsw i64 %.sroa.speculated.i.i.i, %i.ej ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.ej
  %i.em = call i64 @llvm.umin.i64(i64 %i.ek, i64 576460752303423487)
  %i.en = select i1 %i.el, i64 576460752303423487, i64 %i.em ; 3 uses
  %.not.i.i.i43 = icmp ne i64 %i.en, 0
  call void @llvm.assume(i1 %.not.i.i.i43)
  %i.eo = shl nuw nsw i64 %i.en, 4
  %i.ep = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #27
          to label %.noexc45 unwind label %.loopexit98 ; 5 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eh ; 2 uses
  store ptr %i.dz, ptr %i.eq, align 8, !tbaa !341
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %i.dv, ptr %i.er, align 8, !tbaa !338
  %.not10.i.i.i.i.i = icmp eq ptr %i.ee, %i.ea
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc45, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i ], [ %i.ep, %.noexc45 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i ], [ %i.ee, %.noexc45 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.es = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8
  %i.et = load <2 x ptr>, ptr %.0911.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !806, !noalias !803
  store ptr null, ptr %i.es, align 8, !tbaa !338, !alias.scope !806, !noalias !803
  store <2 x ptr> %i.et, ptr %.012.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !803, !noalias !806
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !341, !alias.scope !806, !noalias !803
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eu, %i.ea
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc45
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ep, %.noexc45 ], [ %i.ev, %.lr.ph.i.i.i.i.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112LargeObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !344
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = sub i64 %i.ey, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ez) #30
  br label %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112LargeObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112LargeObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ep, ptr %1, align 8, !tbaa !329
  store ptr %i.ew, ptr %i.j, align 8, !tbaa !332
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.en
  store ptr %i.fa, ptr %i.i, align 8, !tbaa !344
  br label %_ZNSt12__shared_ptrIN12_GLOBAL__N_112LargeObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12_GLOBAL__N_112LargeObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ac, %_ZNSt6vectorISt10shared_ptrIvESaIS1_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_112LargeObject3EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.fb = add nuw nsw i32 %.0107, 3
  %i.fc = icmp samesign ult i32 %.0107, 599997
  br i1 %i.fc, label %bb.q, label %bb.h, !llvm.loop !808

bb.ag:                                            ; preds = %bb.q
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrISt5arrayIcLm100EELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ah ], [ %i.fd, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.ao

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrISt5arrayIcLm100EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit93:                                      ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i60
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp94:                             ; preds = %bb.z
  %lpad.loopexit.split-lp96 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp94, %.loopexit93
  %lpad.phi97 = phi { ptr, i32 } [ %lpad.loopexit95, %.loopexit93 ], [ %lpad.loopexit.split-lp96, %.loopexit.split-lp94 ]
  call void @_ZNSt12__shared_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn14 = phi { ptr, i32 } [ %lpad.phi97, %bb.ak ], [ %i.fe, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ao

bb.am:                                            ; preds = %_ZNSt12__shared_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit98:                                      ; preds = %_ZNKSt6vectorISt10shared_ptrIvESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit100 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp99:                             ; preds = %bb.ae
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp99, %.loopexit98
  %lpad.phi102 = phi { ptr, i32 } [ %lpad.loopexit100, %.loopexit98 ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp99 ]
  call fastcc void @_ZNSt12__shared_ptrIN12_GLOBAL__N_112LargeObject3ELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.dv) #28
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.ai, %bb.al, %bb.p
  %.pn16.pn.pn = phi { ptr, i32 } [ %i.az, %bb.p ], [ %.pn, %bb.ai ], [ %.pn14, %bb.al ], [ %lpad.phi102, %bb.an ], [ %i.ff, %bb.am ]
  call void @_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.f
  %.pn16.pn.pn.pn = phi { ptr, i32 } [ %.pn16.pn.pn, %bb.ao ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %.pn16.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_129BM_LargeObjectCreationWithAnyERN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %1 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %2 = alloca %"class.std::vector.228", align 8   ; 16 uses
  %3 = alloca %"struct.std::array", align 1       ; 6 uses
  %4 = alloca %"struct.std::array.277", align 8   ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not4850 = icmp eq i64 %i.d, 0
  %.not.i.not48 = select i1 %.not, i1 true, i1 %.not.i.not4850
  br i1 %.not.i.not48, label %._crit_edge, label %.lr.ph, !prof !76

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 7 uses
  %.phi.trans.insert2.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 7 uses
  %.phi.trans.insert4.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 72
  br label %bb.a

._crit_edge:                                      ; preds = %_ZNSt6vectorISt3anySaIS0_EED2Ev.exit, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

bb.a:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt3anySaIS0_EED2Ev.exit
  %.sroa.035.049 = phi i64 [ %i.d, %.lr.ph ], [ %i.aa, %_ZNSt6vectorISt3anySaIS0_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorISt3anySaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 600000)
          to label %.preheader.preheader unwind label %bb.f

.preheader.preheader:                             ; preds = %bb.a
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !424
  br label %.preheader

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit
  call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::vector.228") align 8 dereferenceable(24) %2, ptr nonnull elementtype(%"class.std::vector.228") align 8 dereferenceable(24) %2) #28, !srcloc !95
  %i.p = load ptr, ptr %2, align 8, !tbaa !427    ; 3 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !424  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyISt3anyEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt3anyEvPT_.exit.i.i.i ], [ %i.p, %bb.b ] ; 3 uses
  %i.r = load ptr, ptr %.05.i.i.i, align 8, !tbaa !428 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt3anyEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  invoke void %i.r(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i, ptr noundef null)
          to label %_ZSt8_DestroyISt3anyEvPT_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_129BM_LargeObjectCreationWithAnyERN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit

._ZNSt6vectorISt3anySaIS0_EE12emplace_backIJSt5arrayIcLm100EEEEERS0_DpOT_.exit_crit_edge: ; preds = %bb.h
  %.pre57 = load ptr, ptr %i.e, align 8, !tbaa !424
  br label %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJSt5arrayIcLm100EEEEERS0_DpOT_.exit

_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJSt5arrayIcLm100EEEEERS0_DpOT_.exit: ; preds = %._ZNSt6vectorISt3anySaIS0_EE12emplace_backIJSt5arrayIcLm100EEEEERS0_DpOT_.exit_crit_edge, %.noexc
  %i.ai = phi ptr [ %.pre57, %._ZNSt6vectorISt3anySaIS0_EE12emplace_backIJSt5arrayIcLm100EEEEERS0_DpOT_.exit_crit_edge ], [ %i.ah, %.noexc ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.g, ptr %4, align 8, !tbaa !9
  store i64 0, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !18
  store i8 0, ptr %i.g, align 8, !tbaa !17
  store ptr %i.l, ptr %i.h, align 8, !tbaa !9
  store i64 0, ptr %i.m, align 8, !tbaa !18
  store i8 0, ptr %i.l, align 8, !tbaa !17
  store ptr %i.n, ptr %i.j, align 8, !tbaa !9
  store i64 0, ptr %i.o, align 8, !tbaa !18
  store i8 0, ptr %i.n, align 8, !tbaa !17
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !431
  %.not.i20 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i20, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJSt5arrayIcLm100EEEEERS0_DpOT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store <2 x ptr> <ptr @_ZNSt3any17_Manager_externalISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr null>, ptr %i.ai, align 8, !tbaa !17
  %i.al = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27
          to label %.noexc22 unwind label %bb.ab  ; 11 uses

.noexc22:                                         ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !9
  %i.an = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.g
  br i1 %i.ao, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %.noexc22
  %i.ap = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !18 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.noexc22
  store ptr %i.an, ptr %i.al, align 8, !tbaa !14
  %i.as = load i64, ptr %i.g, align 8, !tbaa !17
  store i64 %i.as, ptr %i.am, align 8, !tbaa !17
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.j
  %i.at = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.ap, %bb.j ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !18
  store ptr %i.g, ptr %4, align 8, !tbaa !14
  store i64 0, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !18
  store i8 0, ptr %i.g, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 3 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !9
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !14  ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.i
  br i1 %i.ay, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !14
  %i.az = load i64, ptr %i.i, align 8, !tbaa !17
  store i64 %i.az, ptr %i.aw, align 8, !tbaa !17
  %.pre3.i.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i.i, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.1.i.i.i.i.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.ba = load i64, ptr %.phi.trans.insert2.i.i.i.i, align 8, !tbaa !18 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.bc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.1.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.1.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.1.i.i.i.i.i
  %i.bd = phi i64 [ %i.ba, %bb.k ], [ %.pre3.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.1.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !18
  store ptr %i.i, ptr %i.h, align 8, !tbaa !14
  store i64 0, ptr %.phi.trans.insert2.i.i.i.i, align 8, !tbaa !18
  store i8 0, ptr %i.i, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 80 ; 3 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !9
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !14  ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.k
  br i1 %i.bi, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.2.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.2.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.1.i.i.i.i.i
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !14
  %i.bj = load i64, ptr %i.k, align 8, !tbaa !17
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !17
  %.pre5.i.i.i.i = load i64, ptr %.phi.trans.insert4.i.i.i.i, align 8, !tbaa !18
  br label %_ZSt12construct_atISt3anyJSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.1.i.i.i.i.i
  %i.bk = load i64, ptr %.phi.trans.insert4.i.i.i.i, align 8, !tbaa !18 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.bm, i1 false)
  br label %_ZSt12construct_atISt3anyJSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i

_ZSt12construct_atISt3anyJSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.2.i.i.i.i.i
  %i.bn = phi i64 [ %.pre5.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.2.i.i.i.i.i ], [ %i.bk, %bb.l ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !18
  store ptr %i.k, ptr %i.j, align 8, !tbaa !14
  store i64 0, ptr %.phi.trans.insert4.i.i.i.i, align 8, !tbaa !18
  store i8 0, ptr %i.k, align 8, !tbaa !17
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !17
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !424
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bq, ptr %i.e, align 8, !tbaa !424
  br label %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEERS0_DpOT_.exit

bb.m:                                             ; preds = %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJSt5arrayIcLm100EEEEERS0_DpOT_.exit
  invoke void @_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEERS0_DpOT_.exit unwind label %bb.ab

_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEERS0_DpOT_.exit: ; preds = %bb.m, %_ZSt12construct_atISt3anyJSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !14  ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.k
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEERS0_DpOT_.exit
  %i.bt = load i64, ptr %i.k, align 8, !tbaa !17
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt3anySaIS0_EE12emplace_backIJSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEERS0_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !14  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.i
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bx = load i64, ptr %i.i, align 8, !tbaa !17
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i
  %i.bz = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.g
  br i1 %i.ca, label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i
  %i.cb = load i64, ptr %i.g, align 8, !tbaa !17
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #30
  br label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EED2Ev.exit

_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !424 ; 6 uses
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !431
  %.not.i24 = icmp eq ptr %i.cd, %i.ce
  br i1 %.not.i24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EED2Ev.exit
  store <2 x ptr> <ptr @_ZNSt3any17_Manager_externalIN12_GLOBAL__N_112LargeObject3EE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr null>, ptr %i.cd, align 8, !tbaa !17
  %i.cf = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #27
          to label %.noexc26.a unwind label %.loopexit ; 2 uses

.noexc26.a:                                       ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cf, i8 0, i64 128, i1 false)
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !17
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !424
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  store ptr %i.ci, ptr %i.e, align 8, !tbaa !424
  br label %_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit

bb.o:                                             ; preds = %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EED2Ev.exit
  %i.cj = load ptr, ptr %2, align 8, !tbaa !427   ; 5 uses
  %i.ck = ptrtoint ptr %i.cd to i64
  %i.cl = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl                    ; 3 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775792
  br i1 %i.cn, label %bb.p, label %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
          to label %.noexc27.a unwind label %.loopexit.split-lp

.noexc27.a:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.co = ashr exact i64 %i.cm, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cp = add nsw i64 %.sroa.speculated.i.i.i, %i.co ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.co
  %i.cr = call i64 @llvm.umin.i64(i64 %i.cp, i64 576460752303423487)
  %i.cs = select i1 %i.cq, i64 576460752303423487, i64 %i.cr ; 3 uses
  %.not.i.i.i25 = icmp ne i64 %i.cs, 0
  call void @llvm.assume(i1 %.not.i.i.i25)
  %i.ct = shl nuw nsw i64 %i.cs, 4                ; 2 uses
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #27
          to label %.noexc28 unwind label %.loopexit ; 6 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cm ; 2 uses
  store <2 x ptr> <ptr @_ZNSt3any17_Manager_externalIN12_GLOBAL__N_112LargeObject3EE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr null>, ptr %i.cv, align 8, !tbaa !17
  %i.cw = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #27
          to label %bb.q unwind label %bb.x       ; 2 uses

bb.q:                                             ; preds = %.noexc28
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cw, i8 0, i64 128, i1 false)
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !17
  %.not12.i.i.i.i.i = icmp eq ptr %i.cj, %i.cd
  br i1 %.not12.i.i.i.i.i, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.df, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.cu, %bb.q ] ; 4 uses
  %.0913.i.i.i.i.i = phi ptr [ %i.de, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.cj, %bb.q ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !810)
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.cy = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 8
  store ptr null, ptr %i.cy, align 8, !tbaa !17, !alias.scope !810, !noalias !813
  %i.cz = load ptr, ptr %.0913.i.i.i.i.i, align 8, !tbaa !428, !alias.scope !813, !noalias !810 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i.i.i, label %bb.r

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr null, ptr %.014.i.i.i.i.i, align 8, !tbaa !428, !alias.scope !810, !noalias !813
  br label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28, !noalias !815
  store ptr %.014.i.i.i.i.i, ptr %1, align 8, !tbaa !17, !noalias !815
  invoke void %i.cz(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i.i.i, ptr noundef nonnull %1)
          to label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i.i.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #31
  unreachable

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !815
  %.pr.i.i.i.i.i.i = load ptr, ptr %.0913.i.i.i.i.i, align 8, !tbaa !428, !alias.scope !813, !noalias !810 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i.i.i
  invoke void %.pr.i.i.i.i.i.i(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i.i.i, ptr noundef null)
          to label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #31
  unreachable

_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i: ; preds = %bb.t, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i.i.i, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i.i, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.de, %i.cd
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !438

_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i: ; preds = %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i, %bb.q
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cu, %bb.q ], [ %i.df, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i39.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i39.i.i, label %_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJN12_GLOBAL__N_112LargeObject3EEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i
  %i.dh = load ptr, ptr %i.f, align 8, !tbaa !431
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.dj) #30
  br label %_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJN12_GLOBAL__N_112LargeObject3EEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

bb.w:                                             ; preds = %bb.x
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit32 unwind label %bb.y

bb.x:                                             ; preds = %.noexc28
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  %i.dn = call ptr @__cxa_begin_catch(ptr %i.dm) #28 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.ct) #30
  invoke void @__cxa_rethrow() #29
          to label %bb.z unwind label %bb.w

bb.y:                                             ; preds = %bb.w
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #31
  unreachable

bb.z:                                             ; preds = %bb.x
  unreachable

_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJN12_GLOBAL__N_112LargeObject3EEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38.i.i
  store ptr %i.cu, ptr %2, align 8, !tbaa !427
  store ptr %i.dg, ptr %i.e, align 8, !tbaa !424
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cs
  store ptr %i.dq, ptr %i.f, align 8, !tbaa !431
  br label %_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit

_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit:         ; preds = %.noexc26.a, %_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJN12_GLOBAL__N_112LargeObject3EEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.dr = phi ptr [ %i.ci, %.noexc26.a ], [ %i.dg, %_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJN12_GLOBAL__N_112LargeObject3EEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ]
  %i.ds = add nuw nsw i32 %.047, 3
  %i.dt = icmp samesign ult i32 %.047, 599997
  br i1 %i.dt, label %.preheader, label %bb.b, !llvm.loop !816

bb.aa:                                            ; preds = %bb.h, %bb.g
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit32

bb.ab:                                            ; preds = %bb.m, %bb.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit32

.loopexit:                                        ; preds = %bb.n, %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit32

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit32

_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit32:       ; preds = %bb.w, %.loopexit.split-lp, %.loopexit, %bb.aa, %bb.ab, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.du, %bb.aa ], [ %i.dv, %bb.ab ], [ %i.dk, %bb.w ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt3anySaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.f, %_ZSt8_DestroyIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !86
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i) #28, !inline_history !817
  br label %_ZSt8_DestroyIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEEvPT_.exit.i.i

_ZSt8_DestroyIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !97

_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.h = ptrtoint ptr %.val1 to i64
  %i.i = ptrtoint ptr %.val to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.j) #30
  br label %_ZNSt12_Vector_baseIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exit, %bb.c
  ret void
}

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0
end_hunk_4
begin_hunk_5_@_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_112SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt3anySaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !431
  %i.d = load ptr, ptr %0, align 8, !tbaa !427
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt3anySaIS0_EE11_M_allocateEm.exit, label %bb.i

_ZNSt12_Vector_baseISt3anySaIS0_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !424
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 4
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !427    ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !424  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not12.i.i.i, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt3anySaIS0_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.y, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt3anySaIS0_EE11_M_allocateEm.exit ] ; 4 uses
  %.0913.i.i.i = phi ptr [ %i.x, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt3anySaIS0_EE11_M_allocateEm.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %i.r = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !17, !alias.scope !829, !noalias !832
  %i.s = load ptr, ptr %.0913.i.i.i, align 8, !tbaa !428, !alias.scope !832, !noalias !829 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i, label %bb.d

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr null, ptr %.014.i.i.i, align 8, !tbaa !428, !alias.scope !829, !noalias !832
  br label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !834
  store ptr %.014.i.i.i, ptr %2, align 8, !tbaa !17, !noalias !834
  invoke void %i.s(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i, ptr noundef nonnull %2)
          to label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #31
  unreachable

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !834
  %.pr.i.i.i.i = load ptr, ptr %.0913.i.i.i, align 8, !tbaa !428, !alias.scope !832, !noalias !829 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i
  invoke void %.pr.i.i.i.i(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i, ptr noundef null)
          to label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #31
  unreachable

_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.f, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.x, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !438

_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !427
  br label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exitthread-pre-split, %_ZNSt12_Vector_baseISt3anySaIS0_EE11_M_allocateEm.exit
  %i.z = phi ptr [ %.pr, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseISt3anySaIS0_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.z, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseISt3anySaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !431
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #30
  br label %_ZNSt12_Vector_baseISt3anySaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt3anySaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !427
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !424
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %1
  store ptr %i.af, ptr %i.b, align 8, !tbaa !431
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseISt3anySaIS0_EE13_M_deallocateEPS0_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt3anySaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !427    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !424  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt3anyEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyISt3anyEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !428 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt3anyEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  invoke void %i.d(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i, ptr noundef null)
          to label %_ZSt8_DestroyISt3anyEvPT_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #31
  unreachable

_ZSt8_DestroyISt3anyEvPT_.exit.i.i:               ; preds = %bb.b, %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !430

_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt3anyEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !427
  br label %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exit:     ; preds = %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt3anySaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !431
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #30
  br label %_ZNSt12_Vector_baseISt3anySaIS0_EED2Ev.exit

_ZNSt12_Vector_baseISt3anySaIS0_EED2Ev.exit:      ; preds = %_ZSt8_DestroyIPSt3anyS0_EvT_S2_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %4 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !424  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !427    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
  unreachable

_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  store ptr @_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr %i.q, align 8, !tbaa !428
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !17
  %i.s = load i32, ptr %2, align 4, !tbaa !349
  store i32 %i.s, ptr %i.r, align 8, !tbaa !349
  %.not12.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not12.i.i.i, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.aa, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0913.i.i.i = phi ptr [ %i.z, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !835)
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.t = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !17, !alias.scope !835, !noalias !838
  %i.u = load ptr, ptr %.0913.i.i.i, align 8, !tbaa !428, !alias.scope !838, !noalias !835 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i, label %bb.c

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr null, ptr %.014.i.i.i, align 8, !tbaa !428, !alias.scope !835, !noalias !838
  br label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !840
  store ptr %.014.i.i.i, ptr %4, align 8, !tbaa !17, !noalias !840
  invoke void %i.u(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i, ptr noundef nonnull %4)
          to label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #31
  unreachable

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !840
  %.pr.i.i.i.i = load ptr, ptr %.0913.i.i.i, align 8, !tbaa !428, !alias.scope !838, !noalias !835 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i
  invoke void %.pr.i.i.i.i(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i, ptr noundef null)
          to label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.e, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !438

_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not12.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not12.i.i.i26, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34
  %.014.i.i.i28 = phi ptr [ %i.aj, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %i.ab, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 4 uses
  %.0913.i.i.i29 = phi ptr [ %i.ai, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %1, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !17, !alias.scope !841, !noalias !844
  %i.ad = load ptr, ptr %.0913.i.i.i29, align 8, !tbaa !428, !alias.scope !844, !noalias !841 ; 2 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i30, label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i37, label %bb.g

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i37: ; preds = %.lr.ph.i.i.i27
  store ptr null, ptr %.014.i.i.i28, align 8, !tbaa !428, !alias.scope !841, !noalias !844
  br label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !846
  store ptr %.014.i.i.i28, ptr %3, align 8, !tbaa !17, !noalias !846
  invoke void %i.ad(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i29, ptr noundef nonnull %3)
          to label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i31 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #31
  unreachable

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i31: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !846
  %.pr.i.i.i.i32 = load ptr, ptr %.0913.i.i.i29, align 8, !tbaa !428, !alias.scope !844, !noalias !841 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %.pr.i.i.i.i32, null
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34, label %bb.i

bb.i:                                             ; preds = %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i31
  invoke void %.pr.i.i.i.i32(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i29, ptr noundef null)
          to label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #31
  unreachable

_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34: ; preds = %bb.i, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i31, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i37
  %i.ai = getelementptr inbounds nuw i8, ptr %.0913.i.i.i29, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 16 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i.i35, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, label %.lr.ph.i.i.i27, !llvm.loop !438

_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38: ; preds = %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.ab, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.aj, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseISt3anySaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !431
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #30
  br label %_ZNSt12_Vector_baseISt3anySaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt3anySaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !427
  store ptr %.0.lcssa.i.i.i36, ptr %i.a, align 8, !tbaa !424
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !431
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  switch i32 %0, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 8, !tbaa !17
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store ptr @_ZTIi, ptr %2, align 8, !tbaa !17
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.a, align 4, !tbaa !349
  store i32 %i.d, ptr %i.c, align 8, !tbaa !349
  %i.e = load ptr, ptr %1, align 8, !tbaa !428
  %i.f = load ptr, ptr %2, align 8, !tbaa !17
  store ptr %i.e, ptr %i.f, align 8, !tbaa !428
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.a, align 4, !tbaa !349
  store i32 %i.i, ptr %i.h, align 8, !tbaa !349
  %i.j = load ptr, ptr %1, align 8, !tbaa !428
  %i.k = load ptr, ptr %2, align 8, !tbaa !17
  store ptr %i.j, ptr %i.k, align 8, !tbaa !428
  store ptr null, ptr %1, align 8, !tbaa !428
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %4 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !424  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !427    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
  unreachable

_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  store ptr @_ZNSt3any17_Manager_internalIdE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr %i.q, align 8, !tbaa !428
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load double, ptr %2, align 8, !tbaa !363
  store double %i.s, ptr %i.r, align 8, !tbaa !363
  %.not12.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not12.i.i.i, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.aa, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0913.i.i.i = phi ptr [ %i.z, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.t = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !17, !alias.scope !847, !noalias !850
  %i.u = load ptr, ptr %.0913.i.i.i, align 8, !tbaa !428, !alias.scope !850, !noalias !847 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i, label %bb.c

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr null, ptr %.014.i.i.i, align 8, !tbaa !428, !alias.scope !847, !noalias !850
  br label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !852
  store ptr %.014.i.i.i, ptr %4, align 8, !tbaa !17, !noalias !852
  invoke void %i.u(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i, ptr noundef nonnull %4)
          to label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #31
  unreachable

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !852
  %.pr.i.i.i.i = load ptr, ptr %.0913.i.i.i, align 8, !tbaa !428, !alias.scope !850, !noalias !847 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i
  invoke void %.pr.i.i.i.i(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i, ptr noundef null)
          to label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.e, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !438

_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not12.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not12.i.i.i26, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34
  %.014.i.i.i28 = phi ptr [ %i.aj, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %i.ab, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 4 uses
  %.0913.i.i.i29 = phi ptr [ %i.ai, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %1, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !853)
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !17, !alias.scope !853, !noalias !856
  %i.ad = load ptr, ptr %.0913.i.i.i29, align 8, !tbaa !428, !alias.scope !856, !noalias !853 ; 2 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i30, label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i37, label %bb.g

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i37: ; preds = %.lr.ph.i.i.i27
  store ptr null, ptr %.014.i.i.i28, align 8, !tbaa !428, !alias.scope !853, !noalias !856
  br label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !858
  store ptr %.014.i.i.i28, ptr %3, align 8, !tbaa !17, !noalias !858
  invoke void %i.ad(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i29, ptr noundef nonnull %3)
          to label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i31 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #31
  unreachable

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i31: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !858
  %.pr.i.i.i.i32 = load ptr, ptr %.0913.i.i.i29, align 8, !tbaa !428, !alias.scope !856, !noalias !853 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %.pr.i.i.i.i32, null
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34, label %bb.i

bb.i:                                             ; preds = %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i31
  invoke void %.pr.i.i.i.i32(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i29, ptr noundef null)
          to label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #31
  unreachable

_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34: ; preds = %bb.i, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i31, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i37
  %i.ai = getelementptr inbounds nuw i8, ptr %.0913.i.i.i29, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 16 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i.i35, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, label %.lr.ph.i.i.i27, !llvm.loop !438

_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38: ; preds = %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.ab, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.aj, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseISt3anySaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !431
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #30
  br label %_ZNSt12_Vector_baseISt3anySaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt3anySaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !427
  store ptr %.0.lcssa.i.i.i36, ptr %i.a, align 8, !tbaa !424
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !431
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_internalIdE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  switch i32 %0, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 8, !tbaa !17
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store ptr @_ZTId, ptr %2, align 8, !tbaa !17
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load double, ptr %i.a, align 8, !tbaa !363
  store double %i.d, ptr %i.c, align 8, !tbaa !363
  %i.e = load ptr, ptr %1, align 8, !tbaa !428
  %i.f = load ptr, ptr %2, align 8, !tbaa !17
  store ptr %i.e, ptr %i.f, align 8, !tbaa !428
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load double, ptr %i.a, align 8, !tbaa !363
  store double %i.i, ptr %i.h, align 8, !tbaa !363
  %i.j = load ptr, ptr %1, align 8, !tbaa !428
  %i.k = load ptr, ptr %2, align 8, !tbaa !17
  store ptr %i.j, ptr %i.k, align 8, !tbaa !428
  store ptr null, ptr %1, align 8, !tbaa !428
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt3any17_Manager_internalIN12_GLOBAL__N_112SmallObject3EE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  switch i32 %0, label %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.j
    i32 4, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 8, !tbaa !17
  br label %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit

bb.c:                                             ; preds = %bb.a
end_hunk_5
begin_hunk_6_@_ZNSt23_Sp_counted_ptr_inplaceISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !17
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !17
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorISt4byteEEE7destroyISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEvRS3_PT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !17
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #30
  br label %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorISt4byteEEE7destroyISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEvRS3_PT_.exit

_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorISt4byteEEE7destroyISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEvRS3_PT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !819  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %0, i64 noundef 120, i64 noundef 8)
          to label %_ZNSt15__allocated_ptrINSt3pmr21polymorphic_allocatorISt23_Sp_counted_ptr_inplaceISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENS1_ISt4byteEELN9__gnu_cxx12_Lock_policyE2EEEEED2Ev.exit unwind label %bb.b, !inline_history !821

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #31
  unreachable

_ZNSt15__allocated_ptrINSt3pmr21polymorphic_allocatorISt23_Sp_counted_ptr_inplaceISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENS1_ISt4byteEELN9__gnu_cxx12_Lock_policyE2EEEEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !827  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #28
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorISt4byteEEE7destroyIN12_GLOBAL__N_112LargeObject3EEEvRS3_PT_.exit, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i:      ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef 4) #30
  br label %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorISt4byteEEE7destroyIN12_GLOBAL__N_112LargeObject3EEEvRS3_PT_.exit

_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorISt4byteEEE7destroyIN12_GLOBAL__N_112LargeObject3EEEvRS3_PT_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !819 ; 2 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr noundef nonnull %0, i64 noundef 152, i64 noundef 8)
          to label %_ZNSt15__allocated_ptrINSt3pmr21polymorphic_allocatorISt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_112LargeObject3ENS1_ISt4byteEELN9__gnu_cxx12_Lock_policyE2EEEEED2Ev.exit unwind label %bb.b, !inline_history !821

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #31
  unreachable

_ZNSt15__allocated_ptrINSt3pmr21polymorphic_allocatorISt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_112LargeObject3ENS1_ISt4byteEELN9__gnu_cxx12_Lock_policyE2EEEEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !827  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #28
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJSt5arrayIcLm100EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(100) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %4 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !424  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !427    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
  unreachable

_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  store ptr @_ZNSt3any17_Manager_externalISt5arrayIcLm100EEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr %i.q, align 8, !tbaa !428
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !17
  %i.s = invoke noalias noundef nonnull dereferenceable(100) ptr @_Znwm(i64 noundef 100) #27
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.s, ptr noundef nonnull align 1 dereferenceable(100) %2, i64 100, i1 false), !tbaa.struct !809
  store ptr %i.s, ptr %i.r, align 8, !tbaa !17
  %.not12.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not12.i.i.i, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.aa, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.c ] ; 4 uses
  %.0913.i.i.i = phi ptr [ %i.z, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.c ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.t = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !17, !alias.scope !881, !noalias !884
  %i.u = load ptr, ptr %.0913.i.i.i, align 8, !tbaa !428, !alias.scope !884, !noalias !881 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i, label %bb.d

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr null, ptr %.014.i.i.i, align 8, !tbaa !428, !alias.scope !881, !noalias !884
  br label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !886
  store ptr %.014.i.i.i, ptr %4, align 8, !tbaa !17, !noalias !886
  invoke void %i.u(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i, ptr noundef nonnull %4)
          to label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #31
  unreachable

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !886
  %.pr.i.i.i.i = load ptr, ptr %.0913.i.i.i, align 8, !tbaa !428, !alias.scope !884, !noalias !881 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i
  invoke void %.pr.i.i.i.i(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i, ptr noundef null)
          to label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.f, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !438

_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.aa, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not12.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not12.i.i.i26, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34
  %.014.i.i.i28 = phi ptr [ %i.aj, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %i.ab, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 4 uses
  %.0913.i.i.i29 = phi ptr [ %i.ai, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %1, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !17, !alias.scope !887, !noalias !890
  %i.ad = load ptr, ptr %.0913.i.i.i29, align 8, !tbaa !428, !alias.scope !890, !noalias !887 ; 2 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i30, label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i37, label %bb.h

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i37: ; preds = %.lr.ph.i.i.i27
  store ptr null, ptr %.014.i.i.i28, align 8, !tbaa !428, !alias.scope !887, !noalias !890
  br label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34

bb.h:                                             ; preds = %.lr.ph.i.i.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !892
  store ptr %.014.i.i.i28, ptr %3, align 8, !tbaa !17, !noalias !892
  invoke void %i.ad(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i29, ptr noundef nonnull %3)
          to label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i31 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #31
  unreachable

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i31: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !892
  %.pr.i.i.i.i32 = load ptr, ptr %.0913.i.i.i29, align 8, !tbaa !428, !alias.scope !890, !noalias !887 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %.pr.i.i.i.i32, null
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34, label %bb.j

bb.j:                                             ; preds = %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i31
  invoke void %.pr.i.i.i.i32(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i29, ptr noundef null)
          to label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #31
  unreachable

_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34: ; preds = %bb.j, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i31, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i37
  %i.ai = getelementptr inbounds nuw i8, ptr %.0913.i.i.i29, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 16 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i.i35, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, label %.lr.ph.i.i.i27, !llvm.loop !438

_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38: ; preds = %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.ab, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.aj, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseISt3anySaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !431
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #30
  br label %_ZNSt12_Vector_baseISt3anySaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt3anySaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, %bb.l
  store ptr %i.p, ptr %0, align 8, !tbaa !427
  store ptr %.0.lcssa.i.i.i36, ptr %i.a, align 8, !tbaa !424
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !431
  ret void

bb.m:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.n:                                             ; preds = %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #28 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #30
  invoke void @__cxa_rethrow() #29
          to label %bb.q unwind label %bb.m

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.ap

bb.p:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #31
  unreachable

bb.q:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_externalISt5arrayIcLm100EEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 noundef %0, ptr noundef %1, ptr noundef %2) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 5 uses
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !17
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  store ptr @_ZTISt5arrayIcLm100EE, ptr %2, align 8, !tbaa !17
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(100) ptr @_Znwm(i64 noundef 100) #27 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.c, ptr noundef nonnull align 1 dereferenceable(100) %i.b, i64 100, i1 false), !tbaa.struct !809
  %i.d = load ptr, ptr %2, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !17
  %i.f = load ptr, ptr %1, align 8, !tbaa !428
  %i.g = load ptr, ptr %2, align 8, !tbaa !17
  store ptr %i.f, ptr %i.g, align 8, !tbaa !428
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.b, null
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 100) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.b, ptr %i.j, align 8, !tbaa !17
  %i.k = load ptr, ptr %1, align 8, !tbaa !428
  %i.l = load ptr, ptr %2, align 8, !tbaa !17
  store ptr %i.k, ptr %i.l, align 8, !tbaa !428
  store ptr null, ptr %1, align 8, !tbaa !428
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt3anySaIS0_EE17_M_realloc_insertIJSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %4 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !424  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !427    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #29
  unreachable

_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  store ptr @_ZNSt3any17_Manager_externalISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr %i.q, align 8, !tbaa !428
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !17
  %i.s = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27
          to label %.noexc unwind label %bb.q     ; 11 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt3anySaIS0_EE12_M_check_lenEmPKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !9
  %i.u = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.c:                                             ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.noexc
  store ptr %i.u, ptr %i.s, align 8, !tbaa !14
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !17
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !17
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.c
  %i.ac = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.y, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !18
  store ptr %i.v, ptr %2, align 8, !tbaa !14
  store i64 0, ptr %i.ad, align 8, !tbaa !18
  store i8 0, ptr %i.v, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !9
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !14 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !14
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !17
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !17
  %.phi.trans.insert2.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre3.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.1.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !18 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.1.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.1.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.1.i.i.i.i
  %i.aq = phi i64 [ %i.an, %bb.d ], [ %.pre3.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.1.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !18
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !14
  store i64 0, ptr %i.ar, align 8, !tbaa !18
  store i8 0, ptr %i.aj, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 80 ; 3 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !9
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !14 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.2.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.2.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.1.i.i.i.i
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !14
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !17
  store i64 %i.az, ptr %i.av, align 8, !tbaa !17
  %.phi.trans.insert4.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.pre5.i.i.i = load i64, ptr %.phi.trans.insert4.i.i.i, align 8, !tbaa !18
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.1.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !18 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bd, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.2.i.i.i.i, %bb.e
  %i.be = phi i64 [ %.pre5.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.2.i.i.i.i ], [ %i.bb, %bb.e ]
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !18
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !14
  store i64 0, ptr %i.bf, align 8, !tbaa !18
  store i8 0, ptr %i.ax, align 8, !tbaa !17
  store ptr %i.s, ptr %i.r, align 8, !tbaa !17
  %.not12.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not12.i.i.i, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.bo, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.f ] ; 4 uses
  %.0913.i.i.i = phi ptr [ %i.bn, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.f ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.bh = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8
  store ptr null, ptr %i.bh, align 8, !tbaa !17, !alias.scope !893, !noalias !896
  %i.bi = load ptr, ptr %.0913.i.i.i, align 8, !tbaa !428, !alias.scope !896, !noalias !893 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i, label %bb.g

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr null, ptr %.014.i.i.i, align 8, !tbaa !428, !alias.scope !893, !noalias !896
  br label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !898
  store ptr %.014.i.i.i, ptr %4, align 8, !tbaa !17, !noalias !898
  invoke void %i.bi(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i, ptr noundef nonnull %4)
          to label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #31
  unreachable

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !898
  %.pr.i.i.i.i = load ptr, ptr %.0913.i.i.i, align 8, !tbaa !428, !alias.scope !896, !noalias !893 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i
  invoke void %.pr.i.i.i.i(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i, ptr noundef null)
          to label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #31
  unreachable

_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.i, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i, %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !438

_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.bo, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not12.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not12.i.i.i26, label %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34
  %.014.i.i.i28 = phi ptr [ %i.bx, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %i.bp, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 4 uses
  %.0913.i.i.i29 = phi ptr [ %i.bw, %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %1, %_ZNSt6vectorISt3anySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.bq = getelementptr inbounds nuw i8, ptr %.014.i.i.i28, i64 8
  store ptr null, ptr %i.bq, align 8, !tbaa !17, !alias.scope !899, !noalias !902
  %i.br = load ptr, ptr %.0913.i.i.i29, align 8, !tbaa !428, !alias.scope !902, !noalias !899 ; 2 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i30, label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i37, label %bb.k

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.thread.i.i.i.i37: ; preds = %.lr.ph.i.i.i27
  store ptr null, ptr %.014.i.i.i28, align 8, !tbaa !428, !alias.scope !899, !noalias !902
  br label %_ZSt19__relocate_object_aISt3anyS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i34

bb.k:                                             ; preds = %.lr.ph.i.i.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !904
  store ptr %.014.i.i.i28, ptr %3, align 8, !tbaa !17, !noalias !904
  invoke void %i.br(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.i29, ptr noundef nonnull %3)
          to label %_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i31 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #31
  unreachable

_ZSt12construct_atISt3anyJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_.exit.i.i.i.i31: ; preds = %bb.k
end_hunk_6
