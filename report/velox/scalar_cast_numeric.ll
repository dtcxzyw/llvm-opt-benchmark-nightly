inline.NumInlined: 8266
inline.NumDeleted: 2332
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZNK5arrow7compute8internal18SafeRescaleDecimal4CallINS_10Decimal256ES4_EET_PNS0_13KernelContextET0_PNS_6StatusE:bb.a
  br i1 %.not.i8, label %_ZN5arrow6StatusD2Ev.exit, label %bb.k, !prof !203

bb.k:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA41_KcRKiEEES0_DpOT_.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status7InvalidIJRA41_KcRKiEEES0_DpOT_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.o

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.i, %_ZN5arrow6StatusaSERKS0_.exit
  %i.s = load ptr, ptr %8, align 8, !tbaa !45
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit, label %bb.n, !prof !203

bb.n:                                             ; preds = %bb.m
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %8)
  br label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit

_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit:      ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret void

bb.o:                                             ; preds = %bb.l, %bb.f
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.r, %bb.l ]
  %i.t = load ptr, ptr %8, align 8, !tbaa !45
  %.not.i.i9 = icmp eq ptr %i.t, null
  br i1 %.not.i.i9, label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit10, label %bb.p, !prof !203

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %8)
  br label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit10

_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit10:    ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit
  %.05 = phi ptr [ %i.ai, %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !132
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !1332
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !1332
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !118
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !134

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !116  ; 8 uses
  %.not.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i, label %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !130
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !132
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !1333
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !1333
  br label %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !118
  %.not.i.i.i2.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit, !prof !134

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23
  br label %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit

_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %.05, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.ai, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1334

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_8Int8TypeEfaEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.345, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 8
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32760                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw i8, ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %wide.load = load <4 x i8>, ptr %i.x, align 1, !tbaa !118
  %wide.load149.a = load <4 x i8>, ptr %i.y, align 1, !tbaa !118
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load150.a = load <4 x float>, ptr %i.z, align 4, !tbaa !491
  %wide.load151 = load <4 x float>, ptr %i.aa, align 4, !tbaa !491
  %i.ab = sitofp <4 x i8> %wide.load to <4 x float>
  %i.ac = sitofp <4 x i8> %wide.load149.a to <4 x float>
  %i.ad = fcmp une <4 x float> %wide.load150.a, %i.ab
  %i.ae = fcmp une <4 x float> %wide.load151, %i.ac
  %i.af = or <4 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <4 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1336

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.ag, %i.af
  %i.ai = bitcast <4 x i1> %bin.rdx to i4
  %i.aj = icmp ne i4 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.074109, i64 %.06896
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !118
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06896
  %i.an = load float, ptr %i.am, align 4, !tbaa !491
  %i.ao = sitofp i8 %i.al to float
  %i.ap = fcmp une float %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1339

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.074109, i64 %.06794
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !118
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794
  %i.az = load float, ptr %i.ay, align 4, !tbaa !491
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = sitofp i8 %i.ax to float
  %i.bj = fcmp une float %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.074109, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !118
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !491
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = sitofp i8 %i.bo to float
  %i.ca = fcmp une float %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1340

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw i8, ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !118
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !491
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = sitofp i8 %i.cf to float
  %i.cr = fcmp une float %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1342

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.074109, i64 %.066103
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !118
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.066103
  %i.da = load float, ptr %i.cz, align 4, !tbaa !491 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = sitofp i8 %i.cy to float
  %i.dk = fcmp une float %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_8Int8TypeEfaEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1343

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.074109, i64 %.0100
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !118
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.0100
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !491 ; 2 uses
  %i.dr = sitofp i8 %i.do to float
  %i.ds = fcmp une float %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_8Int8TypeEfaEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1344

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1345
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_9Int16TypeEfsEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.346, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 8
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32760                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %wide.load = load <4 x i16>, ptr %i.x, align 2, !tbaa !429
  %wide.load149.a = load <4 x i16>, ptr %i.y, align 2, !tbaa !429
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load150.a = load <4 x float>, ptr %i.z, align 4, !tbaa !491
  %wide.load151 = load <4 x float>, ptr %i.aa, align 4, !tbaa !491
  %i.ab = sitofp <4 x i16> %wide.load to <4 x float>
  %i.ac = sitofp <4 x i16> %wide.load149.a to <4 x float>
  %i.ad = fcmp une <4 x float> %wide.load150.a, %i.ab
  %i.ae = fcmp une <4 x float> %wide.load151, %i.ac
  %i.af = or <4 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <4 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1348

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.ag, %i.af
  %i.ai = bitcast <4 x i1> %bin.rdx to i4
  %i.aj = icmp ne i4 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.06896
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !429
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06896
  %i.an = load float, ptr %i.am, align 4, !tbaa !491
  %i.ao = sitofp i16 %i.al to float
  %i.ap = fcmp une float %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1349

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.06794
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !429
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794
  %i.az = load float, ptr %i.ay, align 4, !tbaa !491
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = sitofp i16 %i.ax to float
  %i.bj = fcmp une float %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !429
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !491
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = sitofp i16 %i.bo to float
  %i.ca = fcmp une float %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1350

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !429
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !491
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = sitofp i16 %i.cf to float
  %i.cr = fcmp une float %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1351

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.066103
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !429
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.066103
  %i.da = load float, ptr %i.cz, align 4, !tbaa !491 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = sitofp i16 %i.cy to float
  %i.dk = fcmp une float %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_9Int16TypeEfsEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1352

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.0100
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !429
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.0100
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !491 ; 2 uses
  %i.dr = sitofp i16 %i.do to float
  %i.ds = fcmp une float %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_9Int16TypeEfsEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds [2 x i8], ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1353

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1354
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_9Int32TypeEfiEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.347, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 8
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32760                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !tbaa !3
  %wide.load149.a = load <4 x i32>, ptr %i.y, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load150.a = load <4 x float>, ptr %i.z, align 4, !tbaa !491
  %wide.load151 = load <4 x float>, ptr %i.aa, align 4, !tbaa !491
  %i.ab = sitofp <4 x i32> %wide.load to <4 x float>
  %i.ac = sitofp <4 x i32> %wide.load149.a to <4 x float>
  %i.ad = fcmp une <4 x float> %wide.load150.a, %i.ab
  %i.ae = fcmp une <4 x float> %wide.load151, %i.ac
  %i.af = or <4 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <4 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1357

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.ag, %i.af
  %i.ai = bitcast <4 x i1> %bin.rdx to i4
  %i.aj = icmp ne i4 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.06896
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06896
  %i.an = load float, ptr %i.am, align 4, !tbaa !491
  %i.ao = sitofp i32 %i.al to float
  %i.ap = fcmp une float %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1358

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.06794
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794
  %i.az = load float, ptr %i.ay, align 4, !tbaa !491
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = sitofp i32 %i.ax to float
  %i.bj = fcmp une float %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !491
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = sitofp i32 %i.bo to float
  %i.ca = fcmp une float %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1359

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !491
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = sitofp i32 %i.cf to float
  %i.cr = fcmp une float %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1360

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.066103
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.066103
  %i.da = load float, ptr %i.cz, align 4, !tbaa !491 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = sitofp i32 %i.cy to float
  %i.dk = fcmp une float %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_9Int32TypeEfiEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1361

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.0100
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.0100
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !491 ; 2 uses
  %i.dr = sitofp i32 %i.do to float
  %i.ds = fcmp une float %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_9Int32TypeEfiEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds [4 x i8], ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1362

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1363
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_9Int64TypeEflEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.348, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 4
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32764                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x i64>, ptr %i.x, align 8, !tbaa !291
  %wide.load149.a = load <2 x i64>, ptr %i.y, align 8, !tbaa !291
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %wide.load150.a = load <2 x float>, ptr %i.z, align 4, !tbaa !491
  %wide.load151 = load <2 x float>, ptr %i.aa, align 4, !tbaa !491
  %i.ab = sitofp <2 x i64> %wide.load to <2 x float>
  %i.ac = sitofp <2 x i64> %wide.load149.a to <2 x float>
  %i.ad = fcmp une <2 x float> %wide.load150.a, %i.ab
  %i.ae = fcmp une <2 x float> %wide.load151, %i.ac
  %i.af = or <2 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <2 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1366

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.ag, %i.af
  %i.ai = bitcast <2 x i1> %bin.rdx to i2
  %i.aj = icmp ne i2 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.06896
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !291
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06896
  %i.an = load float, ptr %i.am, align 4, !tbaa !491
  %i.ao = sitofp i64 %i.al to float
  %i.ap = fcmp une float %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1367

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.06794
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !291
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794
  %i.az = load float, ptr %i.ay, align 4, !tbaa !491
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = sitofp i64 %i.ax to float
  %i.bj = fcmp une float %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !291
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !491
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = sitofp i64 %i.bo to float
  %i.ca = fcmp une float %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1368

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !291
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !491
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = sitofp i64 %i.cf to float
  %i.cr = fcmp une float %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1369

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.066103
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !291
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.066103
  %i.da = load float, ptr %i.cz, align 4, !tbaa !491 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = sitofp i64 %i.cy to float
  %i.dk = fcmp une float %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_9Int64TypeEflEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1370

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.0100
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !291
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.0100
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !491 ; 2 uses
  %i.dr = sitofp i64 %i.do to float
  %i.ds = fcmp une float %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_9Int64TypeEflEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds [8 x i8], ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1371

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1372
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_9UInt8TypeEfhEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.349, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 8
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32760                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw i8, ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %wide.load = load <4 x i8>, ptr %i.x, align 1, !tbaa !118
  %wide.load149.a = load <4 x i8>, ptr %i.y, align 1, !tbaa !118
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load150.a = load <4 x float>, ptr %i.z, align 4, !tbaa !491
  %wide.load151 = load <4 x float>, ptr %i.aa, align 4, !tbaa !491
  %i.ab = uitofp <4 x i8> %wide.load to <4 x float>
  %i.ac = uitofp <4 x i8> %wide.load149.a to <4 x float>
  %i.ad = fcmp une <4 x float> %wide.load150.a, %i.ab
  %i.ae = fcmp une <4 x float> %wide.load151, %i.ac
  %i.af = or <4 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <4 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1375

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.ag, %i.af
  %i.ai = bitcast <4 x i1> %bin.rdx to i4
  %i.aj = icmp ne i4 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.074109, i64 %.06896
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !118
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06896
  %i.an = load float, ptr %i.am, align 4, !tbaa !491
  %i.ao = uitofp i8 %i.al to float
  %i.ap = fcmp une float %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1376

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.074109, i64 %.06794
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !118
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794
  %i.az = load float, ptr %i.ay, align 4, !tbaa !491
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = uitofp i8 %i.ax to float
  %i.bj = fcmp une float %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.074109, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !118
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !491
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = uitofp i8 %i.bo to float
  %i.ca = fcmp une float %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1377

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw i8, ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !118
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !491
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = uitofp i8 %i.cf to float
  %i.cr = fcmp une float %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1378

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.074109, i64 %.066103
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !118
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.066103
  %i.da = load float, ptr %i.cz, align 4, !tbaa !491 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = uitofp i8 %i.cy to float
  %i.dk = fcmp une float %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_9UInt8TypeEfhEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1379

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.074109, i64 %.0100
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !118
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.0100
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !491 ; 2 uses
  %i.dr = uitofp i8 %i.do to float
  %i.ds = fcmp une float %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_9UInt8TypeEfhEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1380

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1381
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_10UInt16TypeEftEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.350, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 8
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32760                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %wide.load = load <4 x i16>, ptr %i.x, align 2, !tbaa !429
  %wide.load149.a = load <4 x i16>, ptr %i.y, align 2, !tbaa !429
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load150.a = load <4 x float>, ptr %i.z, align 4, !tbaa !491
  %wide.load151 = load <4 x float>, ptr %i.aa, align 4, !tbaa !491
  %i.ab = uitofp <4 x i16> %wide.load to <4 x float>
  %i.ac = uitofp <4 x i16> %wide.load149.a to <4 x float>
  %i.ad = fcmp une <4 x float> %wide.load150.a, %i.ab
  %i.ae = fcmp une <4 x float> %wide.load151, %i.ac
  %i.af = or <4 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <4 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1384

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.ag, %i.af
  %i.ai = bitcast <4 x i1> %bin.rdx to i4
  %i.aj = icmp ne i4 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.06896
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !429
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06896
  %i.an = load float, ptr %i.am, align 4, !tbaa !491
  %i.ao = uitofp i16 %i.al to float
  %i.ap = fcmp une float %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1385

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.06794
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !429
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794
  %i.az = load float, ptr %i.ay, align 4, !tbaa !491
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = uitofp i16 %i.ax to float
  %i.bj = fcmp une float %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !429
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !491
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = uitofp i16 %i.bo to float
  %i.ca = fcmp une float %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1386

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !429
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !491
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = uitofp i16 %i.cf to float
  %i.cr = fcmp une float %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1387

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.066103
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !429
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.066103
  %i.da = load float, ptr %i.cz, align 4, !tbaa !491 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = uitofp i16 %i.cy to float
  %i.dk = fcmp une float %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_10UInt16TypeEftEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1388

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.0100
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !429
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.0100
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !491 ; 2 uses
  %i.dr = uitofp i16 %i.do to float
  %i.ds = fcmp une float %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_10UInt16TypeEftEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds [2 x i8], ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1389

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1390
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_10UInt32TypeEfjEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.351, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 8
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32760                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !tbaa !3
  %wide.load149.a = load <4 x i32>, ptr %i.y, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load150.a = load <4 x float>, ptr %i.z, align 4, !tbaa !491
  %wide.load151 = load <4 x float>, ptr %i.aa, align 4, !tbaa !491
  %i.ab = uitofp <4 x i32> %wide.load to <4 x float>
  %i.ac = uitofp <4 x i32> %wide.load149.a to <4 x float>
  %i.ad = fcmp une <4 x float> %wide.load150.a, %i.ab
  %i.ae = fcmp une <4 x float> %wide.load151, %i.ac
  %i.af = or <4 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <4 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1393

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.ag, %i.af
  %i.ai = bitcast <4 x i1> %bin.rdx to i4
  %i.aj = icmp ne i4 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.06896
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06896
  %i.an = load float, ptr %i.am, align 4, !tbaa !491
  %i.ao = uitofp i32 %i.al to float
  %i.ap = fcmp une float %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1394

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.06794
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794
  %i.az = load float, ptr %i.ay, align 4, !tbaa !491
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = uitofp i32 %i.ax to float
  %i.bj = fcmp une float %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !491
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = uitofp i32 %i.bo to float
  %i.ca = fcmp une float %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1395

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !491
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = uitofp i32 %i.cf to float
  %i.cr = fcmp une float %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1396

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.066103
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.066103
  %i.da = load float, ptr %i.cz, align 4, !tbaa !491 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = uitofp i32 %i.cy to float
  %i.dk = fcmp une float %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_10UInt32TypeEfjEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1397

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.0100
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.0100
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !491 ; 2 uses
  %i.dr = uitofp i32 %i.do to float
  %i.ds = fcmp une float %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_10UInt32TypeEfjEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds [4 x i8], ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1398

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1399
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_10UInt64TypeEfmEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.352, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 4
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32764                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x i64>, ptr %i.x, align 8, !tbaa !291
  %wide.load149.a = load <2 x i64>, ptr %i.y, align 8, !tbaa !291
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %wide.load150.a = load <2 x float>, ptr %i.z, align 4, !tbaa !491
  %wide.load151 = load <2 x float>, ptr %i.aa, align 4, !tbaa !491
  %i.ab = uitofp <2 x i64> %wide.load to <2 x float>
  %i.ac = uitofp <2 x i64> %wide.load149.a to <2 x float>
  %i.ad = fcmp une <2 x float> %wide.load150.a, %i.ab
  %i.ae = fcmp une <2 x float> %wide.load151, %i.ac
  %i.af = or <2 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <2 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1402

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.ag, %i.af
  %i.ai = bitcast <2 x i1> %bin.rdx to i2
  %i.aj = icmp ne i2 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.06896
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !291
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06896
  %i.an = load float, ptr %i.am, align 4, !tbaa !491
  %i.ao = uitofp i64 %i.al to float
  %i.ap = fcmp une float %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1403

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.06794
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !291
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794
  %i.az = load float, ptr %i.ay, align 4, !tbaa !491
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = uitofp i64 %i.ax to float
  %i.bj = fcmp une float %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !291
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !491
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = uitofp i64 %i.bo to float
  %i.ca = fcmp une float %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1404

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !291
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !491
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = uitofp i64 %i.cf to float
  %i.cr = fcmp une float %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1405

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.066103
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !291
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.066103
  %i.da = load float, ptr %i.cz, align 4, !tbaa !491 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = uitofp i64 %i.cy to float
  %i.dk = fcmp une float %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_10UInt64TypeEfmEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1406

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.0100
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !291
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.072112, i64 %.0100
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !491 ; 2 uses
  %i.dr = uitofp i64 %i.do to float
  %i.ds = fcmp une float %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_10UInt64TypeEfmEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds [8 x i8], ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1407

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1408
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

declare noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_8Int8TypeEfaEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca float, align 4                    ; 2 uses
  store float %2, ptr %i.a, align 4, !tbaa !491
  %i.b = load ptr, ptr %1, align 8, !tbaa !1411, !nonnull !25, !align !457
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !1413
  call void @_ZN5arrow4util13StringBuilderIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(13) @.str.29, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(30) @.str.30, ptr noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !1413
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1413 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !118, !noalias !1413
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1413 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !118, !noalias !1413
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1413
  resume { ptr, i32 } %i.i

_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1413
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(30) %3, ptr noundef nonnull align 8 dereferenceable(72) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !447, !nonnull !25, !align !457 ; 4 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %1) #23
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.e = load float, ptr %2, align 4, !tbaa !491
  %i.f = fpext float %i.e to double
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.f)
          to label %.noexc5 unwind label %bb.c    ; 0 uses

.noexc5:                                          ; preds = %.noexc
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(30) %3) #23
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(30) %3, i64 noundef %i.h)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %.noexc5
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA13_KcJRfRA30_S2_RKNS_8DataTypeEEEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA13_KcJRfRA30_S2_RKNS_8DataTypeEEEEvRSoOT_DpOT0_.exit: ; preds = %.noexc6
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA13_KcJRfRA30_S2_RKNS_8DataTypeEEEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.c:                                             ; preds = %.noexc6, %.noexc5, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA13_KcJRfRA30_S2_RKNS_8DataTypeEEEEvRSoOT_DpOT0_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.k
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_9Int16TypeEfsEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca float, align 4                    ; 2 uses
  store float %2, ptr %i.a, align 4, !tbaa !491
  %i.b = load ptr, ptr %1, align 8, !tbaa !1418, !nonnull !25, !align !457
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !1420
  call void @_ZN5arrow4util13StringBuilderIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(13) @.str.29, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(30) @.str.30, ptr noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !1420
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1420 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !118, !noalias !1420
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1420 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
end_hunk_0
begin_hunk_1_@_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_9UInt8TypeEfhEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf:bb.a
  %i.j = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1441 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !118, !noalias !1441
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1441
  resume { ptr, i32 } %i.i

_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1441
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_10UInt16TypeEftEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca float, align 4                    ; 2 uses
  store float %2, ptr %i.a, align 4, !tbaa !491
  %i.b = load ptr, ptr %1, align 8, !tbaa !1446, !nonnull !25, !align !457
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !1448
  call void @_ZN5arrow4util13StringBuilderIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(13) @.str.29, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(30) @.str.30, ptr noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !1448
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1448 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !118, !noalias !1448
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1448 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !118, !noalias !1448
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1448
  resume { ptr, i32 } %i.i

_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1448
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_10UInt32TypeEfjEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca float, align 4                    ; 2 uses
  store float %2, ptr %i.a, align 4, !tbaa !491
  %i.b = load ptr, ptr %1, align 8, !tbaa !1453, !nonnull !25, !align !457
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !1455
  call void @_ZN5arrow4util13StringBuilderIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(13) @.str.29, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(30) @.str.30, ptr noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !1455
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1455 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !118, !noalias !1455
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1455 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !118, !noalias !1455
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1455
  resume { ptr, i32 } %i.i

_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1455
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_9FloatTypeENS_10UInt64TypeEfmEENS_6StatusERKNS_9ArraySpanES8_ENKUlfE_clEf(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca float, align 4                    ; 2 uses
  store float %2, ptr %i.a, align 4, !tbaa !491
  %i.b = load ptr, ptr %1, align 8, !tbaa !1460, !nonnull !25, !align !457
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !1462
  call void @_ZN5arrow4util13StringBuilderIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(13) @.str.29, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(30) @.str.30, ptr noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !1462
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1462 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !118, !noalias !1462
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1462 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !118, !noalias !1462
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1462
  resume { ptr, i32 } %i.i

_ZN5arrow6Status7InvalidIJRA13_KcRfRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1462
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_8Int8TypeEdaEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.353, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 4
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32764                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw i8, ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %wide.load = load <2 x i8>, ptr %i.x, align 1, !tbaa !118
  %wide.load149.a = load <2 x i8>, ptr %i.y, align 1, !tbaa !118
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load150.a = load <2 x double>, ptr %i.z, align 8, !tbaa !506
  %wide.load151 = load <2 x double>, ptr %i.aa, align 8, !tbaa !506
  %i.ab = sitofp <2 x i8> %wide.load to <2 x double>
  %i.ac = sitofp <2 x i8> %wide.load149.a to <2 x double>
  %i.ad = fcmp une <2 x double> %wide.load150.a, %i.ab
  %i.ae = fcmp une <2 x double> %wide.load151, %i.ac
  %i.af = or <2 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <2 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1467

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.ag, %i.af
  %i.ai = bitcast <2 x i1> %bin.rdx to i2
  %i.aj = icmp ne i2 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.074109, i64 %.06896
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !118
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06896
  %i.an = load double, ptr %i.am, align 8, !tbaa !506
  %i.ao = sitofp i8 %i.al to double
  %i.ap = fcmp une double %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1468

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.074109, i64 %.06794
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !118
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794
  %i.az = load double, ptr %i.ay, align 8, !tbaa !506
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = sitofp i8 %i.ax to double
  %i.bj = fcmp une double %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.074109, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !118
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !506
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = sitofp i8 %i.bo to double
  %i.ca = fcmp une double %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1469

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw i8, ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !118
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !506
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = sitofp i8 %i.cf to double
  %i.cr = fcmp une double %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1470

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.074109, i64 %.066103
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !118
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.066103
  %i.da = load double, ptr %i.cz, align 8, !tbaa !506 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = sitofp i8 %i.cy to double
  %i.dk = fcmp une double %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_8Int8TypeEdaEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1471

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.074109, i64 %.0100
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !118
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.0100
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !506 ; 2 uses
  %i.dr = sitofp i8 %i.do to double
  %i.ds = fcmp une double %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_8Int8TypeEdaEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1472

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1473
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_9Int16TypeEdsEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.354, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 4
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32764                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %wide.load = load <2 x i16>, ptr %i.x, align 2, !tbaa !429
  %wide.load149.a = load <2 x i16>, ptr %i.y, align 2, !tbaa !429
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load150.a = load <2 x double>, ptr %i.z, align 8, !tbaa !506
  %wide.load151 = load <2 x double>, ptr %i.aa, align 8, !tbaa !506
  %i.ab = sitofp <2 x i16> %wide.load to <2 x double>
  %i.ac = sitofp <2 x i16> %wide.load149.a to <2 x double>
  %i.ad = fcmp une <2 x double> %wide.load150.a, %i.ab
  %i.ae = fcmp une <2 x double> %wide.load151, %i.ac
  %i.af = or <2 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <2 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1476

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.ag, %i.af
  %i.ai = bitcast <2 x i1> %bin.rdx to i2
  %i.aj = icmp ne i2 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.06896
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !429
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06896
  %i.an = load double, ptr %i.am, align 8, !tbaa !506
  %i.ao = sitofp i16 %i.al to double
  %i.ap = fcmp une double %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1477

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.06794
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !429
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794
  %i.az = load double, ptr %i.ay, align 8, !tbaa !506
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = sitofp i16 %i.ax to double
  %i.bj = fcmp une double %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !429
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !506
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = sitofp i16 %i.bo to double
  %i.ca = fcmp une double %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1478

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !429
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !506
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = sitofp i16 %i.cf to double
  %i.cr = fcmp une double %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1479

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.066103
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !429
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.066103
  %i.da = load double, ptr %i.cz, align 8, !tbaa !506 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = sitofp i16 %i.cy to double
  %i.dk = fcmp une double %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_9Int16TypeEdsEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1480

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.0100
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !429
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.0100
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !506 ; 2 uses
  %i.dr = sitofp i16 %i.do to double
  %i.ds = fcmp une double %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_9Int16TypeEdsEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds [2 x i8], ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1481

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1482
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_9Int32TypeEdiEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.355, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 4
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32764                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %wide.load = load <2 x i32>, ptr %i.x, align 4, !tbaa !3
  %wide.load149.a = load <2 x i32>, ptr %i.y, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load150.a = load <2 x double>, ptr %i.z, align 8, !tbaa !506
  %wide.load151 = load <2 x double>, ptr %i.aa, align 8, !tbaa !506
  %i.ab = sitofp <2 x i32> %wide.load to <2 x double>
  %i.ac = sitofp <2 x i32> %wide.load149.a to <2 x double>
  %i.ad = fcmp une <2 x double> %wide.load150.a, %i.ab
  %i.ae = fcmp une <2 x double> %wide.load151, %i.ac
  %i.af = or <2 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <2 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1485

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.ag, %i.af
  %i.ai = bitcast <2 x i1> %bin.rdx to i2
  %i.aj = icmp ne i2 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.06896
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06896
  %i.an = load double, ptr %i.am, align 8, !tbaa !506
  %i.ao = sitofp i32 %i.al to double
  %i.ap = fcmp une double %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1486

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.06794
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794
  %i.az = load double, ptr %i.ay, align 8, !tbaa !506
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = sitofp i32 %i.ax to double
  %i.bj = fcmp une double %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !506
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = sitofp i32 %i.bo to double
  %i.ca = fcmp une double %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1487

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !506
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = sitofp i32 %i.cf to double
  %i.cr = fcmp une double %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1488

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.066103
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.066103
  %i.da = load double, ptr %i.cz, align 8, !tbaa !506 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = sitofp i32 %i.cy to double
  %i.dk = fcmp une double %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_9Int32TypeEdiEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1489

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.0100
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.0100
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !506 ; 2 uses
  %i.dr = sitofp i32 %i.do to double
  %i.ds = fcmp une double %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_9Int32TypeEdiEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds [4 x i8], ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1490

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1491
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_9Int64TypeEdlEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.356, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 4
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32764                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x i64>, ptr %i.x, align 8, !tbaa !291
  %wide.load149.a = load <2 x i64>, ptr %i.y, align 8, !tbaa !291
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load150.a = load <2 x double>, ptr %i.z, align 8, !tbaa !506
  %wide.load151 = load <2 x double>, ptr %i.aa, align 8, !tbaa !506
  %i.ab = sitofp <2 x i64> %wide.load to <2 x double>
  %i.ac = sitofp <2 x i64> %wide.load149.a to <2 x double>
  %i.ad = fcmp une <2 x double> %wide.load150.a, %i.ab
  %i.ae = fcmp une <2 x double> %wide.load151, %i.ac
  %i.af = or <2 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <2 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1494

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.ag, %i.af
  %i.ai = bitcast <2 x i1> %bin.rdx to i2
  %i.aj = icmp ne i2 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.06896
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !291
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06896
  %i.an = load double, ptr %i.am, align 8, !tbaa !506
  %i.ao = sitofp i64 %i.al to double
  %i.ap = fcmp une double %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1495

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.06794
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !291
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794
  %i.az = load double, ptr %i.ay, align 8, !tbaa !506
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = sitofp i64 %i.ax to double
  %i.bj = fcmp une double %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !291
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !506
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = sitofp i64 %i.bo to double
  %i.ca = fcmp une double %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1496

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !291
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !506
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = sitofp i64 %i.cf to double
  %i.cr = fcmp une double %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1497

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.066103
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !291
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.066103
  %i.da = load double, ptr %i.cz, align 8, !tbaa !506 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = sitofp i64 %i.cy to double
  %i.dk = fcmp une double %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_9Int64TypeEdlEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1498

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.0100
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !291
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.0100
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !506 ; 2 uses
  %i.dr = sitofp i64 %i.do to double
  %i.ds = fcmp une double %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_9Int64TypeEdlEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds [8 x i8], ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1499

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1500
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_9UInt8TypeEdhEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.357, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 4
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32764                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw i8, ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %wide.load = load <2 x i8>, ptr %i.x, align 1, !tbaa !118
  %wide.load149.a = load <2 x i8>, ptr %i.y, align 1, !tbaa !118
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load150.a = load <2 x double>, ptr %i.z, align 8, !tbaa !506
  %wide.load151 = load <2 x double>, ptr %i.aa, align 8, !tbaa !506
  %i.ab = uitofp <2 x i8> %wide.load to <2 x double>
  %i.ac = uitofp <2 x i8> %wide.load149.a to <2 x double>
  %i.ad = fcmp une <2 x double> %wide.load150.a, %i.ab
  %i.ae = fcmp une <2 x double> %wide.load151, %i.ac
  %i.af = or <2 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <2 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1503

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.ag, %i.af
  %i.ai = bitcast <2 x i1> %bin.rdx to i2
  %i.aj = icmp ne i2 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.074109, i64 %.06896
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !118
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06896
  %i.an = load double, ptr %i.am, align 8, !tbaa !506
  %i.ao = uitofp i8 %i.al to double
  %i.ap = fcmp une double %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1504

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.074109, i64 %.06794
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !118
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794
  %i.az = load double, ptr %i.ay, align 8, !tbaa !506
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = uitofp i8 %i.ax to double
  %i.bj = fcmp une double %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.074109, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !118
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !506
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = uitofp i8 %i.bo to double
  %i.ca = fcmp une double %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1505

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw i8, ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !118
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !506
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = uitofp i8 %i.cf to double
  %i.cr = fcmp une double %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1506

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.074109, i64 %.066103
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !118
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.066103
  %i.da = load double, ptr %i.cz, align 8, !tbaa !506 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = uitofp i8 %i.cy to double
  %i.dk = fcmp une double %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_9UInt8TypeEdhEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1507

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.074109, i64 %.0100
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !118
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.0100
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !506 ; 2 uses
  %i.dr = uitofp i8 %i.do to double
  %i.ds = fcmp une double %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_9UInt8TypeEdhEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1508

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1509
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_10UInt16TypeEdtEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.358, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 4
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32764                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %wide.load = load <2 x i16>, ptr %i.x, align 2, !tbaa !429
  %wide.load149.a = load <2 x i16>, ptr %i.y, align 2, !tbaa !429
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load150.a = load <2 x double>, ptr %i.z, align 8, !tbaa !506
  %wide.load151 = load <2 x double>, ptr %i.aa, align 8, !tbaa !506
  %i.ab = uitofp <2 x i16> %wide.load to <2 x double>
  %i.ac = uitofp <2 x i16> %wide.load149.a to <2 x double>
  %i.ad = fcmp une <2 x double> %wide.load150.a, %i.ab
  %i.ae = fcmp une <2 x double> %wide.load151, %i.ac
  %i.af = or <2 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <2 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1512

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.ag, %i.af
  %i.ai = bitcast <2 x i1> %bin.rdx to i2
  %i.aj = icmp ne i2 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.06896
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !429
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06896
  %i.an = load double, ptr %i.am, align 8, !tbaa !506
  %i.ao = uitofp i16 %i.al to double
  %i.ap = fcmp une double %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1513

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.06794
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !429
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794
  %i.az = load double, ptr %i.ay, align 8, !tbaa !506
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = uitofp i16 %i.ax to double
  %i.bj = fcmp une double %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !429
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !506
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = uitofp i16 %i.bo to double
  %i.ca = fcmp une double %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1514

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !429
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !506
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = uitofp i16 %i.cf to double
  %i.cr = fcmp une double %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1515

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.066103
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !429
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.066103
  %i.da = load double, ptr %i.cz, align 8, !tbaa !506 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = uitofp i16 %i.cy to double
  %i.dk = fcmp une double %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_10UInt16TypeEdtEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1516

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.074109, i64 %.0100
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !429
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.0100
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !506 ; 2 uses
  %i.dr = uitofp i16 %i.do to double
  %i.ds = fcmp une double %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_10UInt16TypeEdtEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds [2 x i8], ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1517

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1518
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_10UInt32TypeEdjEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.359, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 4
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32764                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %wide.load = load <2 x i32>, ptr %i.x, align 4, !tbaa !3
  %wide.load149.a = load <2 x i32>, ptr %i.y, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load150.a = load <2 x double>, ptr %i.z, align 8, !tbaa !506
  %wide.load151 = load <2 x double>, ptr %i.aa, align 8, !tbaa !506
  %i.ab = uitofp <2 x i32> %wide.load to <2 x double>
  %i.ac = uitofp <2 x i32> %wide.load149.a to <2 x double>
  %i.ad = fcmp une <2 x double> %wide.load150.a, %i.ab
  %i.ae = fcmp une <2 x double> %wide.load151, %i.ac
  %i.af = or <2 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <2 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1521

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.ag, %i.af
  %i.ai = bitcast <2 x i1> %bin.rdx to i2
  %i.aj = icmp ne i2 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.06896
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06896
  %i.an = load double, ptr %i.am, align 8, !tbaa !506
  %i.ao = uitofp i32 %i.al to double
  %i.ap = fcmp une double %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1522

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.06794
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794
  %i.az = load double, ptr %i.ay, align 8, !tbaa !506
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = uitofp i32 %i.ax to double
  %i.bj = fcmp une double %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !506
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = uitofp i32 %i.bo to double
  %i.ca = fcmp une double %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1523

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !506
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = uitofp i32 %i.cf to double
  %i.cr = fcmp une double %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1524

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.066103
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.066103
  %i.da = load double, ptr %i.cz, align 8, !tbaa !506 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = uitofp i32 %i.cy to double
  %i.dk = fcmp une double %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_10UInt32TypeEdjEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1525

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.074109, i64 %.0100
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.0100
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !506 ; 2 uses
  %i.dr = uitofp i32 %i.do to double
  %i.ds = fcmp une double %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_10UInt32TypeEdjEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds [4 x i8], ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1526

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1527
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_10UInt64TypeEdmEENS_6StatusERKNS_9ArraySpanES8_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.360, align 8            ; 5 uses
  %4 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !1335
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !425  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !428
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.b, i64 noundef %i.l)
  %i.m = load i64, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph115.preheader, label %._crit_edge

.lr.ph115.preheader:                              ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !424
  %i.p = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.b
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.critedge
  %.072112 = phi ptr [ %i.du, %.critedge ], [ %i.q, %.lr.ph115.preheader ] ; 8 uses
  %.074109 = phi ptr [ %i.dv, %.critedge ], [ %i.p, %.lr.ph115.preheader ] ; 8 uses
  %.076106 = phi i64 [ %i.dy, %.critedge ], [ %i.o, %.lr.ph115.preheader ] ; 5 uses
  %.078105 = phi i64 [ %i.dx, %.critedge ], [ 0, %.lr.ph115.preheader ]
  %i.r = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %4) ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.r to i16 ; 4 uses
  %i.s = ashr i32 %i.r, 16                        ; 2 uses
  %sext = shl i32 %i.r, 16
  %i.t = ashr exact i32 %sext, 16                 ; 2 uses
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %.preheader89, label %bb.b

.preheader89:                                     ; preds = %.lr.ph115
  %.sroa.0.0.extract.trunc.mask139 = and i32 %i.r, 65535 ; 2 uses
  %i.v = zext nneg i32 %.sroa.0.0.extract.trunc.mask139 to i64 ; 3 uses
  %i.w = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.w, label %.lr.ph97.preheader, label %.critedge

.lr.ph97.preheader:                               ; preds = %.preheader89
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask139, 4
  br i1 %min.iters.check, label %.lr.ph97.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.v, 32764                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi148 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x i64>, ptr %i.x, align 8, !tbaa !291
  %wide.load149.a = load <2 x i64>, ptr %i.y, align 8, !tbaa !291
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load150.a = load <2 x double>, ptr %i.z, align 8, !tbaa !506
  %wide.load151 = load <2 x double>, ptr %i.aa, align 8, !tbaa !506
  %i.ab = uitofp <2 x i64> %wide.load to <2 x double>
  %i.ac = uitofp <2 x i64> %wide.load149.a to <2 x double>
  %i.ad = fcmp une <2 x double> %wide.load150.a, %i.ab
  %i.ae = fcmp une <2 x double> %wide.load151, %i.ac
  %i.af = or <2 x i1> %vec.phi, %i.ad             ; 2 uses
  %i.ag = or <2 x i1> %vec.phi148, %i.ae          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1530

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.ag, %i.af
  %i.ai = bitcast <2 x i1> %bin.rdx to i2
  %i.aj = icmp ne i2 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %.loopexit, label %.lr.ph97.preheader153

.lr.ph97.preheader153:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.06896.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  %.06995.ph = phi i1 [ false, %.lr.ph97.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader153, %.lr.ph97
  %.06896 = phi i64 [ %i.ar, %.lr.ph97 ], [ %.06896.ph, %.lr.ph97.preheader153 ] ; 3 uses
  %.06995 = phi i1 [ %i.aq, %.lr.ph97 ], [ %.06995.ph, %.lr.ph97.preheader153 ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.06896
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !291
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06896
  %i.an = load double, ptr %i.am, align 8, !tbaa !506
  %i.ao = uitofp i64 %i.al to double
  %i.ap = fcmp une double %i.an, %i.ao
  %i.aq = or i1 %.06995, %i.ap                    ; 2 uses
  %i.ar = add nuw nsw i64 %.06896, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ar, %i.v
  br i1 %exitcond123.not, label %.loopexit, label %.lr.ph97, !llvm.loop !1531

bb.b:                                             ; preds = %.lr.ph115
  %i.as = icmp sgt i32 %i.s, 0
  br i1 %i.as, label %.preheader90, label %.critedge

.preheader90:                                     ; preds = %bb.b
  %.sroa.0.0.extract.trunc.mask = and i32 %i.r, 65535 ; 2 uses
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64 ; 2 uses
  %i.au = icmp sgt i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %xtraiter = and i64 %i.at, 1
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc.mask, 1
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.at, 32766
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06794 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %.17093 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.06794
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !291
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794
  %i.az = load double, ptr %i.ay, align 8, !tbaa !506
  %i.ba = add nsw i64 %.06794, %.076106           ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  %i.bi = uitofp i64 %i.ax to double
  %i.bj = fcmp une double %i.az, %i.bi
  %i.bk = and i1 %i.bj, %i.bh
  %i.bl = or i1 %.17093, %i.bk
  %i.bm = or disjoint i64 %.06794, 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !291
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %i.bm
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !506
  %i.br = add nsw i64 %i.bm, %.076106             ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !118
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  %i.bz = uitofp i64 %i.bo to double
  %i.ca = fcmp une double %i.bq, %i.bz
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = or i1 %i.bl, %i.cb                      ; 3 uses
  %i.cd = add nuw nsw i64 %.06794, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit154.unr-lcssa, label %.lr.ph, !llvm.loop !1532

.loopexit.loopexit154.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph.preheader
  %.06794.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit154.unr-lcssa ] ; 3 uses
  %.17093.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod163 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.06794.epil.init
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !291
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.06794.epil.init
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !506
  %i.ci = add nsw i64 %.06794.epil.init, %.076106 ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !118
  %i.cm = trunc i64 %i.ci to i8
  %i.cn = and i8 %i.cm, 7
  %i.co = lshr i8 %i.cl, %i.cn
  %i.cp = trunc i8 %i.co to i1
  %i.cq = uitofp i64 %i.cf to double
  %i.cr = fcmp une double %i.ch, %i.cq
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = or i1 %.17093.epil.init, %i.cs
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit154.unr-lcssa, %.lr.ph97, %middle.block
  %.271 = phi i1 [ %i.aq, %.lr.ph97 ], [ %i.aj, %middle.block ], [ %i.cc, %.loopexit.loopexit154.unr-lcssa ], [ %i.ct, %.lr.ph.epil.preheader ]
  br i1 %.271, label %bb.c, label %.critedge, !prof !1341

bb.c:                                             ; preds = %.loopexit
  %i.cu = call noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.cv = icmp sgt i64 %i.cu, 0
  %5 = sext i16 %.sroa.0.0.extract.trunc to i64   ; 2 uses
  br i1 %i.cv, label %.lr.ph104, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph104
  %i.cw = add nuw nsw i64 %.066103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.cw, %5
  br i1 %exitcond125.not, label %.critedge, label %.lr.ph104, !llvm.loop !1533

.lr.ph104:                                        ; preds = %bb.c, %bb.d
  %.066103 = phi i64 [ %i.cw, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.066103
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !291
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.066103
  %i.da = load double, ptr %i.cz, align 8, !tbaa !506 ; 2 uses
  %i.db = add nsw i64 %.066103, %.076106          ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !118
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  %i.dj = uitofp i64 %i.cy to double
  %i.dk = fcmp une double %i.da, %i.dj
  %i.dl = and i1 %i.dk, %i.di
  br i1 %i.dl, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph104
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_10UInt64TypeEdmEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.da)
  br label %.critedge85

bb.f:                                             ; preds = %.lr.ph101
  %i.dm = add nuw nsw i64 %.0100, 1               ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dm, %5
  br i1 %exitcond124.not, label %.critedge, label %.lr.ph101, !llvm.loop !1534

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.0100 = phi i64 [ %i.dm, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.074109, i64 %.0100
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !291
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.072112, i64 %.0100
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !506 ; 2 uses
  %i.dr = uitofp i64 %i.do to double
  %i.ds = fcmp une double %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.lr.ph101
  call void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_10UInt64TypeEdmEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.dq)
  br label %.critedge85

.critedge:                                        ; preds = %bb.f, %bb.d, %.preheader90, %.preheader89, %bb.b, %.loopexit
  %i.dt = sext i32 %i.t to i64                    ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.072112, i64 %i.dt
  %i.dv = getelementptr inbounds [8 x i8], ptr %.074109, i64 %i.dt
  %i.dw = sext i16 %.sroa.0.0.extract.trunc to i64 ; 2 uses
  %i.dx = add nsw i64 %.078105, %i.dw             ; 2 uses
  %i.dy = add nsw i64 %.076106, %i.dw
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !428
  %i.ea = icmp slt i64 %i.dx, %i.dz
  br i1 %i.ea, label %.lr.ph115, label %._crit_edge, !llvm.loop !1535

._crit_edge:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !1536
  br label %.critedge85

.critedge85:                                      ; preds = %bb.g, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_8Int8TypeEdaEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca double, align 8                   ; 2 uses
  store double %2, ptr %i.a, align 8, !tbaa !506
  %i.b = load ptr, ptr %1, align 8, !tbaa !1539, !nonnull !25, !align !457
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !1541
  call void @_ZN5arrow4util13StringBuilderIJRA13_KcRdRA30_S2_RKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(13) @.str.29, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(30) @.str.30, ptr noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !1541
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1541 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA13_KcRdRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !118, !noalias !1541
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRdRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1541 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !118, !noalias !1541
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1541
  resume { ptr, i32 } %i.i

_ZN5arrow6Status7InvalidIJRA13_KcRdRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1541
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA13_KcRdRA30_S2_RKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(30) %3, ptr noundef nonnull align 8 dereferenceable(72) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !447, !nonnull !25, !align !457 ; 4 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %1) #23
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.e = load double, ptr %2, align 8, !tbaa !506
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.e)
          to label %.noexc5 unwind label %bb.c    ; 0 uses

.noexc5:                                          ; preds = %.noexc
  %i.g = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(30) %3) #23
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(30) %3, i64 noundef %i.g)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %.noexc5
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA13_KcJRdRA30_S2_RKNS_8DataTypeEEEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA13_KcJRdRA30_S2_RKNS_8DataTypeEEEEvRSoOT_DpOT0_.exit: ; preds = %.noexc6
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA13_KcJRdRA30_S2_RKNS_8DataTypeEEEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.c:                                             ; preds = %.noexc6, %.noexc5, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA13_KcJRdRA30_S2_RKNS_8DataTypeEEEEvRSoOT_DpOT0_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.j
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal20CheckFloatTruncationINS_10DoubleTypeENS_9Int16TypeEdsEENS_6StatusERKNS_9ArraySpanES8_ENKUldE_clEd(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca double, align 8                   ; 2 uses
  store double %2, ptr %i.a, align 8, !tbaa !506
  %i.b = load ptr, ptr %1, align 8, !tbaa !1546, !nonnull !25, !align !457
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !1548
  call void @_ZN5arrow4util13StringBuilderIJRA13_KcRdRA30_S2_RKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(13) @.str.29, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(30) @.str.30, ptr noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !1548
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1548 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA13_KcRdRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !118, !noalias !1548
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRdRA30_S2_RKNS_8DataTypeEEEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !225, !noalias !1548 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !118, !noalias !1548
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

end_hunk_1
