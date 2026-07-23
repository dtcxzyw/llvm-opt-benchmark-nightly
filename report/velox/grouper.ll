inline.NumInlined: 4282
inline.NumDeleted: 2258
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN5arrow7compute8internal19VarLengthKeyEncoderINS_10BinaryTypeEE6DecodeEPPhiPNS_10MemoryPoolE:bb.a
  %.not.i85 = icmp eq ptr %i.hk, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86: ; preds = %.loopexit
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !14
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hk) #29, !inline_history !416
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.bj

bb.bh:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.j
  %i.ho = load ptr, ptr %10, align 8, !tbaa !19
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.bi, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !22

bb.bi:                                            ; preds = %bb.bh
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !372 ; 3 uses
  %.not.i.i.i.i88 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i88, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.bi
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !14
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hr) #29, !inline_history !417
  %.pr.pre.i = load ptr, ptr %10, align 8, !tbaa !19
  %i.hv = icmp eq ptr %.pr.pre.i, null
  br i1 %i.hv, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !61

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.bh
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.bi, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.hw = load ptr, ptr %9, align 8, !tbaa !372   ; 3 uses
  %.not.i89 = icmp eq ptr %i.hw, null
  br i1 %.not.i89, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit91, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i90

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i90: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !14
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hw) #29, !inline_history !416
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit91

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit91: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.bk

bb.bj:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87 ], [ %i.ak, %bb.k ]
  %i.ia = load ptr, ptr %9, align 8, !tbaa !372   ; 3 uses
  %.not.i92 = icmp eq ptr %i.ia, null
  br i1 %.not.i92, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit94, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i93

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i93: ; preds = %bb.bj
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !14
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ia) #29, !inline_history !416
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit94

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit94: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i93, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bt

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit91, %bb.f
  %i.ie = load ptr, ptr %8, align 8, !tbaa !19
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %bb.bl, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i95, !prof !22

bb.bl:                                            ; preds = %bb.bk
  %i.ig = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !372 ; 3 uses
  %.not.i.i.i.i96 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i96, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit99, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i97

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i97: ; preds = %bb.bl
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !14
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ih) #29, !inline_history !417
  %.pr.pre.i98 = load ptr, ptr %8, align 8, !tbaa !19
  %i.il = icmp eq ptr %.pr.pre.i98, null
  br i1 %i.il, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit99, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i95, !prof !61

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i95: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i97, %bb.bk
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit99

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit99: ; preds = %bb.bl, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i97, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit68, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.im = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !7  ; 8 uses
  %.not.i.i100 = icmp eq ptr %i.in, null
  br i1 %.not.i.i100, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 4 uses
  %i.ip = load atomic i64, ptr %i.io acquire, align 8 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 4294967297
  %i.ir = trunc i64 %i.ip to i32                  ; 2 uses
  br i1 %i.iq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.io, align 8, !tbaa !11
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  store i32 0, ptr %i.is, align 4, !tbaa !13
  %i.it = load ptr, ptr %i.in, align 8, !tbaa !14
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #29, !inline_history !418
  %i.iw = load ptr, ptr %i.in, align 8, !tbaa !14
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #29, !inline_history !418
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104

bb.bp:                                            ; preds = %bb.bn
  %i.iz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i101 = icmp eq i8 %i.iz, 0
  br i1 %.not.i.i.i101, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ja = add nsw i32 %i.ir, -1
  store i32 %i.ja, ptr %i.io, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102

bb.br:                                            ; preds = %bb.bp
  %i.jb = atomicrmw volatile add ptr %i.io, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i103 = phi i32 [ %i.ir, %bb.bq ], [ %i.jb, %bb.br ]
  %i.jc = icmp eq i32 %.0.i.i.i.i103, 1
  br i1 %i.jc, label %bb.bs, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104, !prof !18

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #29
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104: ; preds = %bb.bm, %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.bt:                                            ; preds = %bb.g, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit94, %bb.d
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %.pn.pn.pn.pn, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit94 ], [ %i.af, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internal19VarLengthKeyEncoderIS2_E9AddLengthERKNS5_9ExecValueElPiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS8_9AddLengthESB_lSC_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !572  ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !560  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !562  ; 3 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.e ; 5 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !562  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.j, i64 noundef %i.e, i64 noundef %i.b)
  %i.k = icmp sgt i64 %i.b, 0
  br i1 %i.k, label %.lr.ph23.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internal19VarLengthKeyEncoderIS3_E9AddLengthERKNS6_9ExecValueElPiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS9_9AddLengthESC_lSD_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SJ_EEvPKhllSO_SQ_.exit

.lr.ph23.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = shl i64 %i.e, 2                          ; 2 uses
  %scevgep25 = getelementptr i8, ptr %i.h, i64 %i.n
  %i.o = getelementptr i8, ptr %i.h, i64 %i.n
  %scevgep27 = getelementptr i8, ptr %i.o, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph23.i
  %.02422.i = phi i64 [ 0, %.lr.ph23.i ], [ %.4.i, %.loopexit.i ] ; 11 uses
  %i.p = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %3) ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.p to i16 ; 9 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %i.p, 16  ; 2 uses
  %.sroa.7.0.extract.trunc.i = trunc nuw i32 %.sroa.7.0.extract.shift.i to i16
  %i.q = icmp eq i16 %.sroa.0.0.extract.trunc.i, %.sroa.7.0.extract.trunc.i
  br i1 %i.q, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %4 = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 5 uses
  %i.r = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.r, label %.lr.ph18.i, label %.loopexit.i

.lr.ph18.i:                                       ; preds = %.preheader.i
  %i.s = load ptr, ptr %1, align 8, !tbaa !1077, !nonnull !263, !align !533
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !891  ; 6 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !1079, !nonnull !263, !align !533 ; 2 uses
  %.promoted20.i = load i64, ptr %i.u, align 8, !tbaa !315 ; 5 uses
  %min.iters.check = icmp ult i16 %.sroa.0.0.extract.trunc.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph18.i
  %i.v = shl i64 %.promoted20.i, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.v
  %i.w = shl nuw nsw i64 %4, 2                    ; 2 uses
  %i.x = getelementptr i8, ptr %i.t, i64 %i.v
  %scevgep24 = getelementptr i8, ptr %i.x, i64 %i.w
  %i.y = shl i64 %.02422.i, 2                     ; 2 uses
  %scevgep26 = getelementptr i8, ptr %scevgep25, i64 %i.y
  %i.z = getelementptr i8, ptr %scevgep27, i64 %i.y
  %scevgep28 = getelementptr i8, ptr %i.z, i64 %i.w
  %bound0 = icmp ult ptr %scevgep, %scevgep28
  %bound1 = icmp ult ptr %scevgep26, %scevgep24
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, 32760                      ; 5 uses
  %i.aa = add i64 %.promoted20.i, %n.vec          ; 2 uses
  %i.ab = add i64 %.02422.i, %n.vec               ; 2 uses
  %i.ac = getelementptr [4 x i8], ptr %i.i, i64 %.02422.i
  %i.ad = getelementptr [4 x i8], ptr %i.t, i64 %.promoted20.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr [4 x i8], ptr %i.ac, i64 %index ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <4 x i32>, ptr %i.ae, align 4, !tbaa !3, !alias.scope !1080
  %wide.load29 = load <4 x i32>, ptr %i.af, align 4, !tbaa !3, !alias.scope !1080
  %i.ag = getelementptr i8, ptr %i.ae, i64 4
  %i.ah = getelementptr i8, ptr %i.ae, i64 20
  %wide.load30 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !3, !alias.scope !1080
  %wide.load31 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !3, !alias.scope !1080
  %i.ai = getelementptr [4 x i8], ptr %i.ad, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load32 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !3, !alias.scope !1083, !noalias !1080
  %wide.load33 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !3, !alias.scope !1083, !noalias !1080
  %i.ak = sub <4 x i32> %wide.load30, %wide.load
  %i.al = sub <4 x i32> %wide.load31, %wide.load29
  %i.am = add <4 x i32> %i.ak, splat (i32 5)
  %i.an = add <4 x i32> %i.al, splat (i32 5)
  %i.ao = add <4 x i32> %i.am, %wide.load32
  %i.ap = add <4 x i32> %i.an, %wide.load33
  store <4 x i32> %i.ao, ptr %i.ai, align 4, !tbaa !3, !alias.scope !1083, !noalias !1080
  store <4 x i32> %i.ap, ptr %i.aj, align 4, !tbaa !3, !alias.scope !1083, !noalias !1080
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1085

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %4
  br i1 %cmp.n, label %..loopexit_crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph18.i, %middle.block
  %.ph = phi i64 [ %.promoted20.i, %vector.memcheck ], [ %.promoted20.i, %.lr.ph18.i ], [ %i.aa, %middle.block ] ; 3 uses
  %.02317.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph18.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.116.i.ph = phi i64 [ %.02422.i, %vector.memcheck ], [ %.02422.i, %.lr.ph18.i ], [ %i.ab, %middle.block ] ; 3 uses
  %5 = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %5, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.116.i.ph ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = getelementptr i8, ptr %i.ar, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = add nsw i64 %.ph, 1                     ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.ph ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %reass.sub14.prol = sub i32 %i.au, %i.as
  %i.ay = add i32 %reass.sub14.prol, 5
  %i.az = add i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !3
  %i.ba = or disjoint i64 %.02317.i.ph, 1
  %i.bb = add nsw i64 %.116.i.ph, 1               ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa53.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %.lcssa52.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %.02317.i.unr = phi i64 [ %.02317.i.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.116.i.unr = phi i64 [ %.116.i.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = add nsw i64 %4, -1
  %i.bd = icmp eq i64 %.02317.i.ph, %i.bc
  br i1 %i.bd, label %..loopexit_crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.be = phi i64 [ %i.bs, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.02317.i = phi i64 [ %i.by, %scalar.ph ], [ %.02317.i.unr, %scalar.ph.prol.loopexit ]
  %.116.i = phi i64 [ %i.bz, %scalar.ph ], [ %.116.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.116.i ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = getelementptr i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.be ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %reass.sub14 = sub i32 %i.bi, %i.bg
  %i.bl = add i32 %reass.sub14, 5
  %i.bm = add i32 %i.bl, %i.bk
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !3
  %i.bn = getelementptr [4 x i8], ptr %i.i, i64 %.116.i ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = getelementptr i8, ptr %i.bn, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = add nsw i64 %i.be, 2                    ; 2 uses
  %i.bt = getelementptr [4 x i8], ptr %i.t, i64 %i.be
  %i.bu = getelementptr i8, ptr %i.bt, i64 4      ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %reass.sub14.1 = sub i32 %i.br, %i.bp
  %i.bw = add i32 %reass.sub14.1, 5
  %i.bx = add i32 %i.bw, %i.bv
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !3
  %i.by = add nuw nsw i64 %.02317.i, 2            ; 2 uses
  %i.bz = add nsw i64 %.116.i, 2                  ; 2 uses
  %exitcond30.not.i.1 = icmp eq i64 %i.by, %4
  br i1 %exitcond30.not.i.1, label %..loopexit_crit_edge.i, label %scalar.ph, !llvm.loop !1086

bb.d:                                             ; preds = %bb.c
  %i.ca = icmp eq i32 %.sroa.7.0.extract.shift.i, 0
  br i1 %i.ca, label %.preheader6.i, label %.preheader8.i

.preheader8.i:                                    ; preds = %bb.d
  %i.cb = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.cb, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader8.i
  %.sroa.0.0.extract.trunc.mask.i = and i32 %i.p, 32767
  %i.cc = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i to i64
  %i.cd = add i64 %.02422.i, %i.cc                ; 2 uses
  br label %.lr.ph.i

.preheader6.i:                                    ; preds = %bb.d
  %i.ce = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.cf = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.cf, label %.lr.ph14.i, label %.loopexit.i

.lr.ph14.i:                                       ; preds = %.preheader6.i
  %i.cg = load ptr, ptr %2, align 8, !tbaa !1087, !nonnull !263, !align !533
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !891 ; 2 uses
  %i.ci = load ptr, ptr %i.l, align 8, !tbaa !1089, !nonnull !263, !align !533 ; 2 uses
  %.promoted.i = load i64, ptr %i.ci, align 8, !tbaa !315 ; 3 uses
  %min.iters.check37 = icmp ult i16 %.sroa.0.0.extract.trunc.i, 8
  br i1 %min.iters.check37, label %scalar.ph36.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph14.i
  %n.vec40 = and i64 %i.ce, 32760                 ; 4 uses
  %i.cj = add i64 %.promoted.i, %n.vec40          ; 2 uses
  %i.ck = getelementptr [4 x i8], ptr %i.ch, i64 %.promoted.i
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph38
  %index42 = phi i64 [ 0, %vector.ph38 ], [ %index.next45, %vector.body41 ] ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %i.ck, i64 %index42 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !3
  %wide.load44 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !3
  %i.cn = add <4 x i32> %wide.load43, splat (i32 5)
  %i.co = add <4 x i32> %wide.load44, splat (i32 5)
  store <4 x i32> %i.cn, ptr %i.cl, align 4, !tbaa !3
  store <4 x i32> %i.co, ptr %i.cm, align 4, !tbaa !3
  %index.next45 = add nuw i64 %index42, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next45, %n.vec40
  br i1 %i.cp, label %middle.block46, label %vector.body41, !llvm.loop !1090

middle.block46:                                   ; preds = %vector.body41
  %cmp.n47 = icmp eq i64 %n.vec40, %i.ce
  br i1 %cmp.n47, label %..loopexit7_crit_edge.i, label %scalar.ph36.preheader

scalar.ph36.preheader:                            ; preds = %.lr.ph14.i, %middle.block46
  %.ph50 = phi i64 [ %.promoted.i, %.lr.ph14.i ], [ %i.cj, %middle.block46 ]
  %.02213.i.ph = phi i64 [ 0, %.lr.ph14.i ], [ %n.vec40, %middle.block46 ]
  br label %scalar.ph36

scalar.ph36:                                      ; preds = %scalar.ph36.preheader, %scalar.ph36
  %i.cq = phi i64 [ %i.cr, %scalar.ph36 ], [ %.ph50, %scalar.ph36.preheader ] ; 2 uses
  %.02213.i = phi i64 [ %i.cv, %scalar.ph36 ], [ %.02213.i.ph, %scalar.ph36.preheader ]
  %i.cr = add nsw i64 %i.cq, 1                    ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cq ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = add i32 %i.ct, 5
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !3
  %i.cv = add nuw nsw i64 %.02213.i, 1            ; 2 uses
  %exitcond29.not.i = icmp eq i64 %i.cv, %i.ce
  br i1 %exitcond29.not.i, label %..loopexit7_crit_edge.i, label %scalar.ph36, !llvm.loop !1091

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.310.i = phi i64 [ %i.dz, %bb.g ], [ %.02422.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.cw = add nsw i64 %.310.i, %i.e               ; 2 uses
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !17
  %i.da = trunc i64 %i.cw to i8
  %i.db = and i8 %i.da, 7
  %i.dc = lshr i8 %i.cz, %i.db
  %i.dd = trunc i8 %i.dc to i1
  br i1 %i.dd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.de = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.310.i ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dg = getelementptr i8, ptr %i.de, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.di = load ptr, ptr %1, align 8, !tbaa !1077, !nonnull !263, !align !533
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !891
  %i.dk = load ptr, ptr %i.m, align 8, !tbaa !1079, !nonnull !263, !align !533 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !315 ; 2 uses
  %i.dm = add nsw i64 %i.dl, 1
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !315
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dl ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %reass.sub = sub i32 %i.dh, %i.df
  %i.dp = add i32 %reass.sub, 5
  %i.dq = add i32 %i.dp, %i.do
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.dr = load ptr, ptr %2, align 8, !tbaa !1087, !nonnull !263, !align !533
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !891
  %i.dt = load ptr, ptr %i.l, align 8, !tbaa !1089, !nonnull !263, !align !533 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !315 ; 2 uses
  %i.dv = add nsw i64 %i.du, 1
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !315
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.du ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = add i32 %i.dx, 5
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dz = add i64 %.310.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dz, %i.cd
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !1092

..loopexit_crit_edge.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa23 = phi i64 [ %i.aa, %middle.block ], [ %.lcssa53.unr, %scalar.ph.prol.loopexit ], [ %i.bs, %scalar.ph ]
  %.lcssa22 = phi i64 [ %i.ab, %middle.block ], [ %.lcssa52.unr, %scalar.ph.prol.loopexit ], [ %i.bz, %scalar.ph ]
  store i64 %.lcssa23, ptr %i.u, align 8, !tbaa !315
  br label %.loopexit.i

..loopexit7_crit_edge.i:                          ; preds = %scalar.ph36, %middle.block46
  %.lcssa = phi i64 [ %i.cj, %middle.block46 ], [ %i.cr, %scalar.ph36 ]
  %i.ea = add i64 %.02422.i, %i.ce
  store i64 %.lcssa, ptr %i.ci, align 8, !tbaa !315
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.g, %..loopexit7_crit_edge.i, %..loopexit_crit_edge.i, %.preheader6.i, %.preheader8.i, %.preheader.i
  %.4.i = phi i64 [ %.02422.i, %.preheader6.i ], [ %.02422.i, %.preheader.i ], [ %.lcssa22, %..loopexit_crit_edge.i ], [ %i.ea, %..loopexit7_crit_edge.i ], [ %.02422.i, %.preheader8.i ], [ %i.cd, %bb.g ] ; 2 uses
  %i.eb = icmp slt i64 %.4.i, %i.b
  br i1 %i.eb, label %bb.c, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internal19VarLengthKeyEncoderIS3_E9AddLengthERKNS6_9ExecValueElPiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS9_9AddLengthESC_lSD_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SJ_EEvPKhllSO_SQ_.exit, !llvm.loop !1093

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internal19VarLengthKeyEncoderIS3_E9AddLengthERKNS6_9ExecValueElPiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS9_9AddLengthESC_lSD_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SJ_EEvPKhllSO_SQ_.exit: ; preds = %.loopexit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internal19VarLengthKeyEncoderIS3_E9AddLengthERKNS6_9ExecValueElPiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS9_9AddLengthESC_lSD_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SJ_EEvPKhllSO_SQ_.exit
  ret void
}

declare void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i64 noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1094, !range !380, !noundef !263
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1097 ; 4 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1098 ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %i.e, 64
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #29 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.j, 16
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !1099 ; 2 uses
  %.0.copyload.i.i.i = load i64, ptr %i.k, align 1
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.l = sub nsw i64 128, %i.g
  %i.m = icmp slt i64 %i.e, %i.l
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #29 ; 2 uses
  %.sroa.5.0.extract.shift2.i = lshr i32 %i.n, 16
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !1099 ; 3 uses
  %.0.copyload.i.i6.i = load i64, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.0.copyload.i.i7.i = load i64, ptr %i.p, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %.0.copyload.i.i7.i, i64 %.0.copyload.i.i6.i, i64 %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.0.i.sink.i = phi i64 [ %.0.i.i, %bb.i ], [ %.0.copyload.i.i.i, %bb.f ]
  %i.q = phi ptr [ %i.o, %bb.i ], [ %i.k, %bb.f ]
  %i.r = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.s, ptr %i.c, align 8, !tbaa !1099
  %i.t = add nsw i64 %i.e, -64
  store i64 %i.t, ptr %i.d, align 8, !tbaa !1097
  %i.u = trunc nuw nsw i64 %i.r to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.e
  %.sroa.0.0.i = phi i32 [ %i.j, %bb.e ], [ 64, %bb.j ], [ %i.n, %bb.h ]
  %.sroa.5.0.i = phi i32 [ %.sroa.5.0.extract.shift.i, %bb.e ], [ %i.u, %bb.j ], [ %.sroa.5.0.extract.shift2.i, %bb.h ]
  %i.v = shl nuw i32 %.sroa.5.0.i, 16
  %i.w = and i32 %.sroa.0.0.i, 65535
  %i.x = or disjoint i32 %i.v, %i.w
  br label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit

_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit: ; preds = %bb.b, %bb.k
  %.sroa.0.0.insert.insert.i = phi i32 [ %i.x, %bb.k ], [ 0, %bb.b ] ; 3 uses
  %.sroa.0.0.extract.trunc = zext i32 %.sroa.0.0.insert.insert.i to i64
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert.i, 16
  %sext4 = shl i64 %.sroa.0.0.extract.trunc, 48
  %i.y = ashr exact i64 %sext4, 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1100
  %i.ab = add nsw i64 %i.y, %i.aa
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !1100
  %.pre = and i32 %.sroa.0.0.insert.insert.i, 65535
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1101
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1100 ; 2 uses
  %i.ag = sub nsw i64 %i.ad, %i.af
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 32767) ; 2 uses
  %i.ah = trunc i64 %.sroa.speculated to i32
  %sext = shl i64 %.sroa.speculated, 48
  %i.ai = ashr exact i64 %sext, 48
  %i.aj = add nsw i64 %i.ai, %i.af
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !1100
  %i.ak = and i32 %i.ah, 65535                    ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit
  %.sroa.0.0.insert.ext.pre-phi = phi i32 [ %i.ak, %bb.l ], [ %.pre, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ]
  %.sroa.4.0 = phi i32 [ %i.ak, %bb.l ], [ %.sroa.4.0.extract.shift, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ]
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0, 16
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext.pre-phi
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind
declare i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIRZNS_7compute8internal19VarLengthKeyEncoderIS2_E6EncodeERKNS5_9ExecValueElPPhEUlSt17basic_string_viewIcSt11char_traitsIcEEE_RZNS8_6EncodeESB_lSD_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !572  ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !560  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !562
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !562  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %storemerge = select i1 %i.m, ptr %i.a, ptr %i.l ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !562  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.n, i64 noundef %i.f, i64 noundef %i.c)
  %i.o = icmp sgt i64 %i.c, 0
  br i1 %i.o, label %.lr.ph44.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIRZNS_7compute8internal19VarLengthKeyEncoderIS3_E6EncodeERKNS6_9ExecValueElPPhEUlSt17basic_string_viewIcSt11char_traitsIcEEE_RZNS9_6EncodeESC_lSE_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SM_EEvPKhllSR_ST_.exit

.lr.ph44.i:                                       ; preds = %bb.b, %.loopexit.i
  %.02443.i = phi i64 [ %.4.i, %.loopexit.i ], [ 0, %bb.b ] ; 7 uses
  %i.p = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %3) ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.p to i16 ; 8 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %i.p, 16  ; 2 uses
  %.sroa.7.0.extract.trunc.i = trunc nuw i32 %.sroa.7.0.extract.shift.i to i16
  %i.q = icmp eq i16 %.sroa.0.0.extract.trunc.i, %.sroa.7.0.extract.trunc.i
  br i1 %i.q, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %.lr.ph44.i
  %4 = sext i16 %.sroa.0.0.extract.trunc.i to i64
  %i.r = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.r, label %.lr.ph41.i, label %.loopexit.i

.lr.ph41.i:                                       ; preds = %.preheader.i, %.lr.ph41.i
  %.02340.i = phi i64 [ %i.ak, %.lr.ph41.i ], [ 0, %.preheader.i ]
  %.139.i = phi i64 [ %i.al, %.lr.ph41.i ], [ %.02443.i, %.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.139.i ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %storemerge, i64 %i.u
  %i.w = getelementptr i8, ptr %i.s, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = sub nsw i32 %i.x, %i.t                   ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !1102, !nonnull !263, !align !533 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1046 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !1046
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !824 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !824
  store i8 0, ptr %i.ad, align 1, !tbaa !17
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !824
  store i32 %i.y, ptr %i.af, align 1
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !824
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !824
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %i.v, i64 %i.z, i1 false)
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !824
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.z
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !824
  %i.ak = add nuw nsw i64 %.02340.i, 1            ; 2 uses
  %i.al = add nsw i64 %.139.i, 1                  ; 2 uses
  %exitcond50.not.i = icmp eq i64 %i.ak, %4
  br i1 %exitcond50.not.i, label %.loopexit.i, label %.lr.ph41.i, !llvm.loop !1104

bb.c:                                             ; preds = %.lr.ph44.i
  %i.am = icmp eq i32 %.sroa.7.0.extract.shift.i, 0
  br i1 %i.am, label %.preheader29.i, label %.preheader31.i

.preheader31.i:                                   ; preds = %bb.c
  %i.an = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.an, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader31.i
  %.sroa.0.0.extract.trunc.mask.i = and i32 %i.p, 32767
  %i.ao = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i to i64
  %i.ap = add i64 %.02443.i, %i.ao                ; 2 uses
  br label %.lr.ph.i

.preheader29.i:                                   ; preds = %bb.c
  %i.aq = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.ar = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.ar, label %.lr.ph37.i.preheader, label %.loopexit.i

.lr.ph37.i.preheader:                             ; preds = %.preheader29.i
  %i.as = icmp eq i16 %.sroa.0.0.extract.trunc.i, 1
  br i1 %i.as, label %.lr.ph37.i.epil.preheader, label %.lr.ph37.i.preheader.new

.lr.ph37.i.preheader.new:                         ; preds = %.lr.ph37.i.preheader
  %unroll_iter = and i64 %i.aq, 32766
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.lr.ph37.i, %.lr.ph37.i.preheader.new
  %niter = phi i64 [ 0, %.lr.ph37.i.preheader.new ], [ %niter.next.1, %.lr.ph37.i ]
  %i.at = load ptr, ptr %2, align 8, !tbaa !1105, !nonnull !263, !align !533 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1046 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.at, align 8, !tbaa !1046
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !824 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !824
  store i8 1, ptr %i.aw, align 1, !tbaa !17
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !824
  store i32 0, ptr %i.ay, align 1
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !824
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !824
  %i.bb = load ptr, ptr %2, align 8, !tbaa !1105, !nonnull !263, !align !533 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1046 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !1046
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !824 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !824
  store i8 1, ptr %i.be, align 1, !tbaa !17
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !824
  store i32 0, ptr %i.bg, align 1
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !824
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store ptr %i.bi, ptr %i.bc, align 8, !tbaa !824
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit45.i.unr-lcssa, label %.lr.ph37.i, !llvm.loop !1107

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.333.i = phi i64 [ %i.cp, %bb.f ], [ %.02443.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.bj = add nsw i64 %.333.i, %i.f               ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = trunc i64 %i.bj to i8
  %i.bo = and i8 %i.bn, 7
  %i.bp = lshr i8 %i.bm, %i.bo
  %i.bq = trunc i8 %i.bp to i1
  br i1 %i.bq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.br = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.333.i ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3  ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %storemerge, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.br, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = sub nsw i32 %i.bw, %i.bs                ; 2 uses
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = load ptr, ptr %1, align 8, !tbaa !1102, !nonnull !263, !align !533 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1046 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !1046
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !824 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !824
  store i8 0, ptr %i.cc, align 1, !tbaa !17
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !824
  store i32 %i.bx, ptr %i.ce, align 1
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !824
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  store ptr %i.cg, ptr %i.ca, align 8, !tbaa !824
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull align 1 %i.bu, i64 %i.by, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.ch = load ptr, ptr %2, align 8, !tbaa !1105, !nonnull !263, !align !533 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1046 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !1046
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !824 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store ptr %i.cl, ptr %i.ci, align 8, !tbaa !824
  store i8 1, ptr %i.ck, align 1, !tbaa !17
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !824
  store i32 0, ptr %i.cm, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi ptr [ %i.ca, %bb.d ], [ %i.ci, %bb.e ] ; 2 uses
  %.sink57.i = phi i64 [ %i.by, %bb.d ], [ 4, %bb.e ]
  %i.cn = load ptr, ptr %.sink.i, align 8, !tbaa !824
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sink57.i
  store ptr %i.co, ptr %.sink.i, align 8, !tbaa !824
  %i.cp = add i64 %.333.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cp, %i.ap
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !1108

.loopexit.loopexit45.i.unr-lcssa:                 ; preds = %.lr.ph37.i
  %i.cq = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.cq, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit45.i, label %.lr.ph37.i.epil.preheader

.lr.ph37.i.epil.preheader:                        ; preds = %.loopexit.loopexit45.i.unr-lcssa, %.lr.ph37.i.preheader
  %lcmp.mod23 = trunc i32 %i.p to i1
  call void @llvm.assume(i1 %lcmp.mod23)
  %i.cr = load ptr, ptr %2, align 8, !tbaa !1105, !nonnull !263, !align !533 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1046 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !1046
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !824 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store ptr %i.cv, ptr %i.cs, align 8, !tbaa !824
  store i8 1, ptr %i.cu, align 1, !tbaa !17
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !824
  store i32 0, ptr %i.cw, align 1
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !824
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store ptr %i.cy, ptr %i.cs, align 8, !tbaa !824
  br label %.loopexit.loopexit45.i

.loopexit.loopexit45.i:                           ; preds = %.loopexit.loopexit45.i.unr-lcssa, %.lr.ph37.i.epil.preheader
  %i.cz = add i64 %.02443.i, %i.aq
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph41.i, %.loopexit.loopexit45.i, %.preheader29.i, %.preheader31.i, %.preheader.i
  %.4.i = phi i64 [ %i.al, %.lr.ph41.i ], [ %i.cz, %.loopexit.loopexit45.i ], [ %.02443.i, %.preheader.i ], [ %.02443.i, %.preheader29.i ], [ %.02443.i, %.preheader31.i ], [ %i.ap, %bb.f ] ; 2 uses
  %i.da = icmp slt i64 %.4.i, %i.c
  br i1 %i.da, label %.lr.ph44.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIRZNS_7compute8internal19VarLengthKeyEncoderIS3_E6EncodeERKNS6_9ExecValueElPPhEUlSt17basic_string_viewIcSt11char_traitsIcEEE_RZNS9_6EncodeESC_lSE_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SM_EEvPKhllSR_ST_.exit, !llvm.loop !1109

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIRZNS_7compute8internal19VarLengthKeyEncoderIS3_E6EncodeERKNS6_9ExecValueElPPhEUlSt17basic_string_viewIcSt11char_traitsIcEEE_RZNS9_6EncodeESC_lSE_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SM_EEvPKhllSR_ST_.exit: ; preds = %.loopexit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIRZNS_7compute8internal19VarLengthKeyEncoderIS3_E6EncodeERKNS6_9ExecValueElPPhEUlSt17basic_string_viewIcSt11char_traitsIcEEE_RZNS9_6EncodeESC_lSE_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SM_EEvPKhllSR_ST_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

declare void @_ZN5arrow7compute8internal10KeyEncoder11DecodeNullsEPNS_10MemoryPoolEiPPhPSt10shared_ptrINS_6BufferEEPi(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal19VarLengthKeyEncoderINS_15LargeBinaryTypeEE6DecodeEPPhiPNS_10MemoryPoolE:bb.a
  %.not.i85 = icmp eq ptr %i.hh, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86: ; preds = %.loopexit
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !14
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hh) #29, !inline_history !416
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i86, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.bj

bb.bh:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.j
  %i.hl = load ptr, ptr %10, align 8, !tbaa !19
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.bi, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !22

bb.bi:                                            ; preds = %bb.bh
  %i.hn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !372 ; 3 uses
  %.not.i.i.i.i88 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i88, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.bi
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !14
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ho) #29, !inline_history !417
  %.pr.pre.i = load ptr, ptr %10, align 8, !tbaa !19
  %i.hs = icmp eq ptr %.pr.pre.i, null
  br i1 %i.hs, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !61

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.bh
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.bi, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.ht = load ptr, ptr %9, align 8, !tbaa !372   ; 3 uses
  %.not.i89 = icmp eq ptr %i.ht, null
  br i1 %.not.i89, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit91, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i90

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i90: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !14
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ht) #29, !inline_history !416
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit91

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit91: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.bk

bb.bj:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit87 ], [ %i.aj, %bb.k ]
  %i.hx = load ptr, ptr %9, align 8, !tbaa !372   ; 3 uses
  %.not.i92 = icmp eq ptr %i.hx, null
  br i1 %.not.i92, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit94, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i93

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i93: ; preds = %bb.bj
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !14
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hx) #29, !inline_history !416
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit94

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit94: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i93, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bt

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit91, %bb.f
  %i.ib = load ptr, ptr %8, align 8, !tbaa !19
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.bl, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i95, !prof !22

bb.bl:                                            ; preds = %bb.bk
  %i.id = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !372 ; 3 uses
  %.not.i.i.i.i96 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i96, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit99, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i97

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i97: ; preds = %bb.bl
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !14
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ie) #29, !inline_history !417
  %.pr.pre.i98 = load ptr, ptr %8, align 8, !tbaa !19
  %i.ii = icmp eq ptr %.pr.pre.i98, null
  br i1 %i.ii, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit99, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i95, !prof !61

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i95: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i97, %bb.bk
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit99

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit99: ; preds = %bb.bl, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i97, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit68, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !7  ; 8 uses
  %.not.i.i100 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i100, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 4 uses
  %i.im = load atomic i64, ptr %i.il acquire, align 8 ; 2 uses
  %i.in = icmp eq i64 %i.im, 4294967297
  %i.io = trunc i64 %i.im to i32                  ; 2 uses
  br i1 %i.in, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.il, align 8, !tbaa !11
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i32 0, ptr %i.ip, align 4, !tbaa !13
  %i.iq = load ptr, ptr %i.ik, align 8, !tbaa !14
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #29, !inline_history !418
  %i.it = load ptr, ptr %i.ik, align 8, !tbaa !14
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #29, !inline_history !418
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104

bb.bp:                                            ; preds = %bb.bn
  %i.iw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i101 = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i101, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ix = add nsw i32 %i.io, -1
  store i32 %i.ix, ptr %i.il, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102

bb.br:                                            ; preds = %bb.bp
  %i.iy = atomicrmw volatile add ptr %i.il, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i103 = phi i32 [ %i.io, %bb.bq ], [ %i.iy, %bb.br ]
  %i.iz = icmp eq i32 %.0.i.i.i.i103, 1
  br i1 %i.iz, label %bb.bs, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104, !prof !18

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #29
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104: ; preds = %bb.bm, %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.bt:                                            ; preds = %bb.g, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit94, %bb.d
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %.pn.pn.pn.pn, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit94 ], [ %i.ae, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internal19VarLengthKeyEncoderIS2_E9AddLengthERKNS5_9ExecValueElPiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS8_9AddLengthESB_lSC_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !572  ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !560  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !562  ; 3 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.e ; 5 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !562  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.j, i64 noundef %i.e, i64 noundef %i.b)
  %i.k = icmp sgt i64 %i.b, 0
  br i1 %i.k, label %.lr.ph21.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internal19VarLengthKeyEncoderIS3_E9AddLengthERKNS6_9ExecValueElPiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS9_9AddLengthESC_lSD_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SJ_EEvPKhllSO_SQ_.exit

.lr.ph21.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = shl i64 %i.e, 3                          ; 2 uses
  %scevgep22 = getelementptr i8, ptr %i.h, i64 %i.n
  %i.o = getelementptr i8, ptr %i.h, i64 %i.n
  %scevgep24 = getelementptr i8, ptr %i.o, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph21.i
  %.02420.i = phi i64 [ 0, %.lr.ph21.i ], [ %.4.i, %.loopexit.i ] ; 12 uses
  %i.p = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %3) ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.p to i16 ; 9 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %i.p, 16  ; 2 uses
  %.sroa.7.0.extract.trunc.i = trunc nuw i32 %.sroa.7.0.extract.shift.i to i16
  %i.q = icmp eq i16 %.sroa.0.0.extract.trunc.i, %.sroa.7.0.extract.trunc.i
  br i1 %i.q, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %4 = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 5 uses
  %i.r = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.r, label %.lr.ph17.i, label %.loopexit.i

.lr.ph17.i:                                       ; preds = %.preheader.i
  %i.s = load ptr, ptr %1, align 8, !tbaa !1140, !nonnull !263, !align !533
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !891  ; 4 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !1142, !nonnull !263, !align !533 ; 7 uses
  %.promoted19.i = load i64, ptr %i.u, align 8, !tbaa !315 ; 5 uses
  %min.iters.check = icmp ult i16 %.sroa.0.0.extract.trunc.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph17.i
  %scevgep = getelementptr i8, ptr %i.u, i64 8
  %i.v = shl i64 %.02420.i, 3
  %scevgep23 = getelementptr i8, ptr %scevgep22, i64 %i.v
  %i.w = add i64 %.02420.i, %4
  %i.x = shl i64 %i.w, 3
  %scevgep25 = getelementptr i8, ptr %scevgep24, i64 %i.x
  %bound0 = icmp ult ptr %i.u, %scevgep25
  %bound1 = icmp ult ptr %scevgep23, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, 32766                      ; 5 uses
  %i.y = add i64 %.promoted19.i, %n.vec
  %i.z = add i64 %.02420.i, %n.vec                ; 2 uses
  %i.aa = add nsw i64 %.promoted19.i, 1
  %i.ab = getelementptr [8 x i8], ptr %i.i, i64 %.02420.i
  %i.ac = getelementptr [4 x i8], ptr %i.t, i64 %.promoted19.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = phi i64 [ %i.aa, %vector.ph ], [ %i.am, %vector.body ] ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ae, align 8, !tbaa !315, !alias.scope !1143
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %wide.load26 = load <2 x i64>, ptr %i.af, align 8, !tbaa !315, !alias.scope !1143
  %i.ag = sub nsw <2 x i64> %wide.load26, %wide.load
  %i.ah = add nsw i64 %i.ad, 1
  %i.ai = getelementptr [4 x i8], ptr %i.ac, i64 %index ; 2 uses
  %wide.load27 = load <2 x i32>, ptr %i.ai, align 4, !tbaa !3
  %i.aj = trunc <2 x i64> %i.ag to <2 x i32>
  %i.ak = add <2 x i32> %i.aj, splat (i32 9)
  %i.al = add <2 x i32> %i.ak, %wide.load27
  store <2 x i32> %i.al, ptr %i.ai, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.am = add nsw i64 %i.ad, 2
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1146

middle.block:                                     ; preds = %vector.body
  store i64 %i.ah, ptr %i.u, align 8, !tbaa !315, !alias.scope !1147, !noalias !1143
  %cmp.n = icmp eq i64 %n.vec, %4
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph17.i, %middle.block
  %.ph = phi i64 [ %.promoted19.i, %vector.memcheck ], [ %.promoted19.i, %.lr.ph17.i ], [ %i.y, %middle.block ] ; 3 uses
  %.02316.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph17.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.115.i.ph = phi i64 [ %.02420.i, %vector.memcheck ], [ %.02420.i, %.lr.ph17.i ], [ %i.z, %middle.block ] ; 3 uses
  %5 = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %5, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.115.i.ph ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !315
  %i.aq = getelementptr i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !315
  %i.as = sub nsw i64 %i.ar, %i.ap
  %i.at = add nsw i64 %.ph, 1                     ; 2 uses
  store i64 %i.at, ptr %i.u, align 8, !tbaa !315
  %i.au = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.ph ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = trunc i64 %i.as to i32
  %i.ax = add i32 %i.aw, 9
  %i.ay = add i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !3
  %i.az = or disjoint i64 %.02316.i.ph, 1
  %i.ba = add nsw i64 %.115.i.ph, 1               ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa47.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.at, %scalar.ph.prol ]
  %.02316.i.unr = phi i64 [ %.02316.i.ph, %scalar.ph.preheader ], [ %i.az, %scalar.ph.prol ]
  %.115.i.unr = phi i64 [ %.115.i.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %i.bb = add nsw i64 %4, -1
  %i.bc = icmp eq i64 %.02316.i.ph, %i.bb
  br i1 %i.bc, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bd = phi i64 [ %i.bv, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.02316.i = phi i64 [ %i.cb, %scalar.ph ], [ %.02316.i.unr, %scalar.ph.prol.loopexit ]
  %.115.i = phi i64 [ %i.cc, %scalar.ph ], [ %.115.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.115.i ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !315
  %i.bg = getelementptr i8, ptr %i.be, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !315
  %i.bi = sub nsw i64 %i.bh, %i.bf
  %i.bj = add nsw i64 %i.bd, 1                    ; 2 uses
  store i64 %i.bj, ptr %i.u, align 8, !tbaa !315
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bd ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = trunc i64 %i.bi to i32
  %i.bn = add i32 %i.bm, 9
  %i.bo = add i32 %i.bn, %i.bl
  store i32 %i.bo, ptr %i.bk, align 4, !tbaa !3
  %i.bp = getelementptr [8 x i8], ptr %i.i, i64 %.115.i ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !315
  %i.bs = getelementptr i8, ptr %i.bp, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !315
  %i.bu = sub nsw i64 %i.bt, %i.br
  %i.bv = add nsw i64 %i.bd, 2                    ; 2 uses
  store i64 %i.bv, ptr %i.u, align 8, !tbaa !315
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bj ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = trunc i64 %i.bu to i32
  %i.bz = add i32 %i.by, 9
  %i.ca = add i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.bw, align 4, !tbaa !3
  %i.cb = add nuw nsw i64 %.02316.i, 2            ; 2 uses
  %i.cc = add nsw i64 %.115.i, 2                  ; 2 uses
  %exitcond27.not.i.1 = icmp eq i64 %i.cb, %4
  br i1 %exitcond27.not.i.1, label %.loopexit.i, label %scalar.ph, !llvm.loop !1149

bb.d:                                             ; preds = %bb.c
  %i.cd = icmp eq i32 %.sroa.7.0.extract.shift.i, 0
  br i1 %i.cd, label %.preheader5.i, label %.preheader7.i

.preheader7.i:                                    ; preds = %bb.d
  %i.ce = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.ce, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader7.i
  %.sroa.0.0.extract.trunc.mask.i = and i32 %i.p, 32767
  %i.cf = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i to i64
  %i.cg = add i64 %.02420.i, %i.cf                ; 2 uses
  br label %.lr.ph.i

.preheader5.i:                                    ; preds = %bb.d
  %i.ch = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.ci = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.ci, label %.lr.ph13.i, label %.loopexit.i

.lr.ph13.i:                                       ; preds = %.preheader5.i
  %i.cj = load ptr, ptr %2, align 8, !tbaa !1150, !nonnull !263, !align !533
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !891 ; 2 uses
  %i.cl = load ptr, ptr %i.l, align 8, !tbaa !1152, !nonnull !263, !align !533 ; 2 uses
  %.promoted.i = load i64, ptr %i.cl, align 8, !tbaa !315 ; 3 uses
  %min.iters.check31 = icmp ult i16 %.sroa.0.0.extract.trunc.i, 8
  br i1 %min.iters.check31, label %scalar.ph30.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph13.i
  %n.vec34 = and i64 %i.ch, 32760                 ; 4 uses
  %i.cm = add i64 %.promoted.i, %n.vec34          ; 2 uses
  %i.cn = getelementptr [4 x i8], ptr %i.ck, i64 %.promoted.i
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph32
  %index36 = phi i64 [ 0, %vector.ph32 ], [ %index.next39, %vector.body35 ] ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %index36 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load37 = load <4 x i32>, ptr %i.co, align 4, !tbaa !3
  %wide.load38 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !3
  %i.cq = add <4 x i32> %wide.load37, splat (i32 9)
  %i.cr = add <4 x i32> %wide.load38, splat (i32 9)
  store <4 x i32> %i.cq, ptr %i.co, align 4, !tbaa !3
  store <4 x i32> %i.cr, ptr %i.cp, align 4, !tbaa !3
  %index.next39 = add nuw i64 %index36, 8         ; 2 uses
  %i.cs = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.cs, label %middle.block40, label %vector.body35, !llvm.loop !1153

middle.block40:                                   ; preds = %vector.body35
  %cmp.n41 = icmp eq i64 %n.vec34, %i.ch
  br i1 %cmp.n41, label %..loopexit6_crit_edge.i, label %scalar.ph30.preheader

scalar.ph30.preheader:                            ; preds = %.lr.ph13.i, %middle.block40
  %.ph44 = phi i64 [ %.promoted.i, %.lr.ph13.i ], [ %i.cm, %middle.block40 ]
  %.02212.i.ph = phi i64 [ 0, %.lr.ph13.i ], [ %n.vec34, %middle.block40 ]
  br label %scalar.ph30

scalar.ph30:                                      ; preds = %scalar.ph30.preheader, %scalar.ph30
  %i.ct = phi i64 [ %i.cu, %scalar.ph30 ], [ %.ph44, %scalar.ph30.preheader ] ; 2 uses
  %.02212.i = phi i64 [ %i.cy, %scalar.ph30 ], [ %.02212.i.ph, %scalar.ph30.preheader ]
  %i.cu = add nsw i64 %i.ct, 1                    ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.ct ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = add i32 %i.cw, 9
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !3
  %i.cy = add nuw nsw i64 %.02212.i, 1            ; 2 uses
  %exitcond26.not.i = icmp eq i64 %i.cy, %i.ch
  br i1 %exitcond26.not.i, label %..loopexit6_crit_edge.i, label %scalar.ph30, !llvm.loop !1154

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.39.i = phi i64 [ %i.ee, %bb.g ], [ %.02420.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.cz = add nsw i64 %.39.i, %i.e                ; 2 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !17
  %i.dd = trunc i64 %i.cz to i8
  %i.de = and i8 %i.dd, 7
  %i.df = lshr i8 %i.dc, %i.de
  %i.dg = trunc i8 %i.df to i1
  br i1 %i.dg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.39.i ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !315
  %i.dj = getelementptr i8, ptr %i.dh, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !315
  %i.dl = sub nsw i64 %i.dk, %i.di
  %i.dm = load ptr, ptr %1, align 8, !tbaa !1140, !nonnull !263, !align !533
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !891
  %i.do = load ptr, ptr %i.m, align 8, !tbaa !1142, !nonnull !263, !align !533 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !315 ; 2 uses
  %i.dq = add nsw i64 %i.dp, 1
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !315
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.dp ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = trunc i64 %i.dl to i32
  %i.du = add i32 %i.dt, 9
  %i.dv = add i32 %i.du, %i.ds
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.dw = load ptr, ptr %2, align 8, !tbaa !1150, !nonnull !263, !align !533
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !891
  %i.dy = load ptr, ptr %i.l, align 8, !tbaa !1152, !nonnull !263, !align !533 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !315 ; 2 uses
  %i.ea = add nsw i64 %i.dz, 1
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !315
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.dz ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = add i32 %i.ec, 9
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ee = add i64 %.39.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ee, %i.cg
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !1155

..loopexit6_crit_edge.i:                          ; preds = %scalar.ph30, %middle.block40
  %.lcssa = phi i64 [ %i.cm, %middle.block40 ], [ %i.cu, %scalar.ph30 ]
  %i.ef = add i64 %.02420.i, %i.ch
  store i64 %.lcssa, ptr %i.cl, align 8, !tbaa !315
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.g, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %..loopexit6_crit_edge.i, %.preheader5.i, %.preheader7.i, %.preheader.i
  %.4.i = phi i64 [ %.02420.i, %.preheader5.i ], [ %i.cc, %scalar.ph ], [ %.02420.i, %.preheader.i ], [ %i.ef, %..loopexit6_crit_edge.i ], [ %.02420.i, %.preheader7.i ], [ %i.z, %middle.block ], [ %.lcssa47.unr, %scalar.ph.prol.loopexit ], [ %i.cg, %bb.g ] ; 2 uses
  %i.eg = icmp slt i64 %.4.i, %i.b
  br i1 %i.eg, label %bb.c, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internal19VarLengthKeyEncoderIS3_E9AddLengthERKNS6_9ExecValueElPiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS9_9AddLengthESC_lSD_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SJ_EEvPKhllSO_SQ_.exit, !llvm.loop !1156

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internal19VarLengthKeyEncoderIS3_E9AddLengthERKNS6_9ExecValueElPiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS9_9AddLengthESC_lSD_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SJ_EEvPKhllSO_SQ_.exit: ; preds = %.loopexit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internal19VarLengthKeyEncoderIS3_E9AddLengthERKNS6_9ExecValueElPiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS9_9AddLengthESC_lSD_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SJ_EEvPKhllSO_SQ_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIRZNS_7compute8internal19VarLengthKeyEncoderIS2_E6EncodeERKNS5_9ExecValueElPPhEUlSt17basic_string_viewIcSt11char_traitsIcEEE_RZNS8_6EncodeESB_lSD_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !572  ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !560  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !562
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !562  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %storemerge = select i1 %i.m, ptr %i.a, ptr %i.l ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !562  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.n, i64 noundef %i.f, i64 noundef %i.c)
  %i.o = icmp sgt i64 %i.c, 0
  br i1 %i.o, label %.lr.ph44.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIRZNS_7compute8internal19VarLengthKeyEncoderIS3_E6EncodeERKNS6_9ExecValueElPPhEUlSt17basic_string_viewIcSt11char_traitsIcEEE_RZNS9_6EncodeESC_lSE_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SM_EEvPKhllSR_ST_.exit

.lr.ph44.i:                                       ; preds = %bb.b, %.loopexit.i
  %.02443.i = phi i64 [ %.4.i, %.loopexit.i ], [ 0, %bb.b ] ; 7 uses
  %i.p = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %3) ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.p to i16 ; 8 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %i.p, 16  ; 2 uses
  %.sroa.7.0.extract.trunc.i = trunc nuw i32 %.sroa.7.0.extract.shift.i to i16
  %i.q = icmp eq i16 %.sroa.0.0.extract.trunc.i, %.sroa.7.0.extract.trunc.i
  br i1 %i.q, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %.lr.ph44.i
  %4 = sext i16 %.sroa.0.0.extract.trunc.i to i64
  %i.r = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.r, label %.lr.ph41.i, label %.loopexit.i

.lr.ph41.i:                                       ; preds = %.preheader.i, %.lr.ph41.i
  %.02340.i = phi i64 [ %i.ai, %.lr.ph41.i ], [ 0, %.preheader.i ]
  %.139.i = phi i64 [ %i.aj, %.lr.ph41.i ], [ %.02443.i, %.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.139.i ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !315  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %storemerge, i64 %i.t
  %i.v = getelementptr i8, ptr %i.s, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !315
  %i.x = sub nsw i64 %i.w, %i.t                   ; 3 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !1157, !nonnull !263, !align !533 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1046 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !1046
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !824 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !824
  store i8 0, ptr %i.ab, align 1, !tbaa !17
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !824
  store i64 %i.x, ptr %i.ad, align 1
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !824
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.z, align 8, !tbaa !824
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.u, i64 %i.x, i1 false)
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !824
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.x
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !824
  %i.ai = add nuw nsw i64 %.02340.i, 1            ; 2 uses
  %i.aj = add nsw i64 %.139.i, 1                  ; 2 uses
  %exitcond50.not.i = icmp eq i64 %i.ai, %4
  br i1 %exitcond50.not.i, label %.loopexit.i, label %.lr.ph41.i, !llvm.loop !1159

bb.c:                                             ; preds = %.lr.ph44.i
  %i.ak = icmp eq i32 %.sroa.7.0.extract.shift.i, 0
  br i1 %i.ak, label %.preheader29.i, label %.preheader31.i

.preheader31.i:                                   ; preds = %bb.c
  %i.al = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.al, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader31.i
  %.sroa.0.0.extract.trunc.mask.i = and i32 %i.p, 32767
  %i.am = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i to i64
  %i.an = add i64 %.02443.i, %i.am                ; 2 uses
  br label %.lr.ph.i

.preheader29.i:                                   ; preds = %bb.c
  %i.ao = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 2 uses
  %i.ap = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.ap, label %.lr.ph37.i.preheader, label %.loopexit.i

.lr.ph37.i.preheader:                             ; preds = %.preheader29.i
  %i.aq = icmp eq i16 %.sroa.0.0.extract.trunc.i, 1
  br i1 %i.aq, label %.lr.ph37.i.epil.preheader, label %.lr.ph37.i.preheader.new

.lr.ph37.i.preheader.new:                         ; preds = %.lr.ph37.i.preheader
  %unroll_iter = and i64 %i.ao, 32766
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.lr.ph37.i, %.lr.ph37.i.preheader.new
  %niter = phi i64 [ 0, %.lr.ph37.i.preheader.new ], [ %niter.next.1, %.lr.ph37.i ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !1160, !nonnull !263, !align !533 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1046 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !1046
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !824 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.av, ptr %i.as, align 8, !tbaa !824
  store i8 1, ptr %i.au, align 1, !tbaa !17
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !824
  store i64 0, ptr %i.aw, align 1
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !824
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !824
  %i.az = load ptr, ptr %2, align 8, !tbaa !1160, !nonnull !263, !align !533 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1046 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !1046
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !824 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !824
  store i8 1, ptr %i.bc, align 1, !tbaa !17
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !824
  store i64 0, ptr %i.be, align 1
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !824
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.ba, align 8, !tbaa !824
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit45.i.unr-lcssa, label %.lr.ph37.i, !llvm.loop !1162

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.333.i = phi i64 [ %i.cl, %bb.f ], [ %.02443.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.bh = add nsw i64 %.333.i, %i.f               ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !17
  %i.bl = trunc i64 %i.bh to i8
  %i.bm = and i8 %i.bl, 7
  %i.bn = lshr i8 %i.bk, %i.bm
  %i.bo = trunc i8 %i.bn to i1
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.333.i ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !315 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %storemerge, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.bp, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !315
  %i.bu = sub nsw i64 %i.bt, %i.bq                ; 3 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !1157, !nonnull !263, !align !533 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1046 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !1046
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !824 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !824
  store i8 0, ptr %i.by, align 1, !tbaa !17
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !824
  store i64 %i.bu, ptr %i.ca, align 1
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !824
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  store ptr %i.cc, ptr %i.bw, align 8, !tbaa !824
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull align 1 %i.br, i64 %i.bu, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.cd = load ptr, ptr %2, align 8, !tbaa !1160, !nonnull !263, !align !533 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1046 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !1046
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !824 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !824
  store i8 1, ptr %i.cg, align 1, !tbaa !17
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !824
  store i64 0, ptr %i.ci, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi ptr [ %i.bw, %bb.d ], [ %i.ce, %bb.e ] ; 2 uses
  %.sink57.i = phi i64 [ %i.bu, %bb.d ], [ 8, %bb.e ]
  %i.cj = load ptr, ptr %.sink.i, align 8, !tbaa !824
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sink57.i
  store ptr %i.ck, ptr %.sink.i, align 8, !tbaa !824
  %i.cl = add i64 %.333.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cl, %i.an
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !1163

.loopexit.loopexit45.i.unr-lcssa:                 ; preds = %.lr.ph37.i
  %i.cm = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %i.cm, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit45.i, label %.lr.ph37.i.epil.preheader

.lr.ph37.i.epil.preheader:                        ; preds = %.loopexit.loopexit45.i.unr-lcssa, %.lr.ph37.i.preheader
  %lcmp.mod23 = trunc i32 %i.p to i1
  call void @llvm.assume(i1 %lcmp.mod23)
  %i.cn = load ptr, ptr %2, align 8, !tbaa !1160, !nonnull !263, !align !533 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1046 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !1046
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !824 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store ptr %i.cr, ptr %i.co, align 8, !tbaa !824
  store i8 1, ptr %i.cq, align 1, !tbaa !17
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !824
  store i64 0, ptr %i.cs, align 1
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !824
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cu, ptr %i.co, align 8, !tbaa !824
  br label %.loopexit.loopexit45.i

.loopexit.loopexit45.i:                           ; preds = %.loopexit.loopexit45.i.unr-lcssa, %.lr.ph37.i.epil.preheader
  %i.cv = add i64 %.02443.i, %i.ao
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph41.i, %.loopexit.loopexit45.i, %.preheader29.i, %.preheader31.i, %.preheader.i
  %.4.i = phi i64 [ %i.aj, %.lr.ph41.i ], [ %i.cv, %.loopexit.loopexit45.i ], [ %.02443.i, %.preheader.i ], [ %.02443.i, %.preheader29.i ], [ %.02443.i, %.preheader31.i ], [ %i.an, %bb.f ] ; 2 uses
  %i.cw = icmp slt i64 %.4.i, %i.c
  br i1 %i.cw, label %.lr.ph44.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIRZNS_7compute8internal19VarLengthKeyEncoderIS3_E6EncodeERKNS6_9ExecValueElPPhEUlSt17basic_string_viewIcSt11char_traitsIcEEE_RZNS9_6EncodeESC_lSE_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SM_EEvPKhllSR_ST_.exit, !llvm.loop !1164

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIRZNS_7compute8internal19VarLengthKeyEncoderIS3_E6EncodeERKNS6_9ExecValueElPPhEUlSt17basic_string_viewIcSt11char_traitsIcEEE_RZNS9_6EncodeESC_lSE_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SM_EEvPKhllSR_ST_.exit: ; preds = %.loopexit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIRZNS_7compute8internal19VarLengthKeyEncoderIS3_E6EncodeERKNS6_9ExecValueElPPhEUlSt17basic_string_viewIcSt11char_traitsIcEEE_RZNS9_6EncodeESC_lSE_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SM_EEvPKhllSR_ST_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10KeyEncoderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14NullKeyEncoderD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
end_hunk_1
