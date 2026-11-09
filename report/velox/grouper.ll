Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/grouper?download=true
inline.NumInlined: 4282
inline.NumDeleted: 2258
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN5arrow7compute8internal19VarLengthKeyEncoderINS_10BinaryTypeEE6DecodeEPPhiPNS_10MemoryPoolE:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bg, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.hj, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.hq = load ptr, ptr %11, align 8, !tbaa !359  ; 3 uses
  %.not.i86 = icmp eq ptr %i.hq, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87: ; preds = %.loopexit
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !148
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(80) %i.hq) #29, !inline_history !9
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.bk

bb.bi:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.j
  %i.hu = load ptr, ptr %10, align 8, !tbaa !154
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %bb.bj, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !155

bb.bj:                                            ; preds = %bb.bi
  %i.hw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !359 ; 3 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i89, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.bj
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !148
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(80) %i.hx) #29, !inline_history !10
  %.pr.pre.i = load ptr, ptr %10, align 8, !tbaa !154
  %i.ib = icmp eq ptr %.pr.pre.i, null
  br i1 %i.ib, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !182

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.bi
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.bj, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.ic = load ptr, ptr %9, align 8, !tbaa !359   ; 3 uses
  %.not.i90 = icmp eq ptr %i.ic, null
  br i1 %.not.i90, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit92, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i91

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i91: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !148
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(80) %i.ic) #29, !inline_history !9
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit92

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit92: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.bl

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88 ], [ %i.ak, %bb.k ]
  %i.ig = load ptr, ptr %9, align 8, !tbaa !359   ; 3 uses
  %.not.i93 = icmp eq ptr %i.ig, null
  br i1 %.not.i93, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit95, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i94

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i94: ; preds = %bb.bk
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !148
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(80) %i.ig) #29, !inline_history !9
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit95

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit95: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i94, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bu

bb.bl:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit92, %bb.f
  %i.ik = load ptr, ptr %8, align 8, !tbaa !154
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.bm, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i96, !prof !155

bb.bm:                                            ; preds = %bb.bl
  %i.im = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !359 ; 3 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i97, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit100, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i98

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i98: ; preds = %bb.bm
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !148
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(80) %i.in) #29, !inline_history !10
  %.pr.pre.i99 = load ptr, ptr %8, align 8, !tbaa !154
  %i.ir = icmp eq ptr %.pr.pre.i99, null
  br i1 %i.ir, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit100, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i96, !prof !182

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i96: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i98, %bb.bl
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit100

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit100: ; preds = %bb.bm, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i98, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit68, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !143 ; 8 uses
  %.not.i.i101 = icmp eq ptr %i.it, null
  br i1 %.not.i.i101, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 4 uses
  %i.iv = load atomic i64, ptr %i.iu acquire, align 8 ; 2 uses
  %i.iw = icmp eq i64 %i.iv, 4294967297
  %i.ix = trunc i64 %i.iv to i32                  ; 2 uses
  br i1 %i.iw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.iu, align 8, !tbaa !145
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  store i32 0, ptr %i.iy, align 4, !tbaa !146
  %i.iz = load ptr, ptr %i.it, align 8, !tbaa !148
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.it) #29, !inline_history !11
  %i.jc = load ptr, ptr %i.it, align 8, !tbaa !148
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(16) %i.it) #29, !inline_history !11
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105

bb.bq:                                            ; preds = %bb.bo
  %i.jf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !149
  %.not.i.i.i102 = icmp eq i8 %i.jf, 0
  br i1 %.not.i.i.i102, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jg = add nsw i32 %i.ix, -1
  store i32 %i.jg, ptr %i.iu, align 8, !tbaa !150
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103

bb.bs:                                            ; preds = %bb.bq
  %i.jh = atomicrmw volatile add ptr %i.iu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i104 = phi i32 [ %i.ix, %bb.br ], [ %i.jh, %bb.bs ]
  %i.ji = icmp eq i32 %.0.i.i.i.i104, 1
  br i1 %i.ji, label %bb.bt, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105, !prof !151

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.it) #29
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105: ; preds = %bb.bn, %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.bu:                                            ; preds = %bb.g, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit95, %bb.d
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %.pn.pn.pn.pn, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit95 ], [ %i.af, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internal19VarLengthKeyEncoderIS2_E9AddLengthERKNS5_9ExecValueElPiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS8_9AddLengthESB_lSC_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 !guid !1334 {
bb.a:
  %3 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !425  ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !422  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424  ; 3 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.e ; 5 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !424  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.j, i64 noundef %i.e, i64 noundef %i.b)
  %i.k = icmp sgt i64 %i.b, 0
  br i1 %i.k, label %.lr.ph23.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internal19VarLengthKeyEncoderIS3_E9AddLengthERKNS6_9ExecValueElPiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS9_9AddLengthESC_lSD_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SJ_EEvPKhllSO_SQ_.exit

.lr.ph23.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph23.i
  %.02422.i = phi i64 [ 0, %.lr.ph23.i ], [ %.4.i, %.loopexit.i ] ; 11 uses
  %i.n = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %3) ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.n to i16 ; 6 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %i.n, 16  ; 2 uses
  %.sroa.7.0.extract.trunc.i = trunc nuw i32 %.sroa.7.0.extract.shift.i to i16
  %i.o = icmp eq i16 %.sroa.0.0.extract.trunc.i, %.sroa.7.0.extract.trunc.i
  br i1 %i.o, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %.sroa.0.0.extract.trunc.mask36.i = and i32 %i.n, 65535 ; 2 uses
  %i.p = zext nneg i32 %.sroa.0.0.extract.trunc.mask36.i to i64 ; 6 uses
  %i.q = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.q, label %.lr.ph18.i, label %.loopexit.i

.lr.ph18.i:                                       ; preds = %.preheader.i
  %i.r = load ptr, ptr %1, align 8, !tbaa !1336, !nonnull !312, !align !418
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !485  ; 6 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !1337, !nonnull !312, !align !418 ; 2 uses
  %.promoted20.i = load i64, ptr %i.t, align 8, !tbaa !331 ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask36.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph18.i
  %i.u = shl i64 %.promoted20.i, 2                ; 2 uses
  %i.v = getelementptr i8, ptr %i.s, i64 %i.u
  %i.w = shl nuw nsw i64 %i.p, 2                  ; 2 uses
  %i.x = getelementptr i8, ptr %i.s, i64 %i.u
  %i.y = getelementptr i8, ptr %i.x, i64 %i.w
  %4 = add i64 %.02422.i, %i.e
  %i.z = shl i64 %4, 2                            ; 2 uses
  %5 = getelementptr i8, ptr %i.h, i64 %i.z
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.w
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %bound0 = icmp ult ptr %i.v, %i.ac
  %bound1 = icmp ult ptr %5, %i.y
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 32760                    ; 5 uses
  %i.ad = add i64 %.promoted20.i, %n.vec          ; 2 uses
  %i.ae = add i64 %.02422.i, %n.vec               ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.i, i64 %.02422.i
  %i.ag = getelementptr [4 x i8], ptr %i.s, i64 %.promoted20.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr [4 x i8], ptr %i.af, i64 %index ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x i32>, ptr %i.ah, align 4, !tbaa !150, !alias.scope !1338
  %wide.load29 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !150, !alias.scope !1338
  %i.aj = getelementptr i8, ptr %i.ah, i64 4
  %i.ak = getelementptr i8, ptr %i.ah, i64 20
  %wide.load30 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !150, !alias.scope !1338
  %wide.load31 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !150, !alias.scope !1338
  %i.al = getelementptr [4 x i8], ptr %i.ag, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load32 = load <4 x i32>, ptr %i.al, align 4, !tbaa !150, !alias.scope !1339, !noalias !1338
  %wide.load33 = load <4 x i32>, ptr %i.am, align 4, !tbaa !150, !alias.scope !1339, !noalias !1338
  %i.an = sub <4 x i32> %wide.load30, %wide.load
  %i.ao = sub <4 x i32> %wide.load31, %wide.load29
  %i.ap = add <4 x i32> %i.an, splat (i32 5)
  %i.aq = add <4 x i32> %i.ao, splat (i32 5)
  %i.ar = add <4 x i32> %i.ap, %wide.load32
  %i.as = add <4 x i32> %i.aq, %wide.load33
  store <4 x i32> %i.ar, ptr %i.al, align 4, !tbaa !150, !alias.scope !1339, !noalias !1338
  store <4 x i32> %i.as, ptr %i.am, align 4, !tbaa !150, !alias.scope !1339, !noalias !1338
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1328

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.p
  br i1 %cmp.n, label %..loopexit_crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph18.i, %middle.block
  %.ph = phi i64 [ %.promoted20.i, %vector.memcheck ], [ %.promoted20.i, %.lr.ph18.i ], [ %i.ad, %middle.block ] ; 3 uses
  %.02317.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph18.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.116.i.ph = phi i64 [ %.02422.i, %vector.memcheck ], [ %.02422.i, %.lr.ph18.i ], [ %i.ae, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.au = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.116.i.ph ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !150
  %i.aw = getelementptr i8, ptr %i.au, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !150
  %i.ay = add nsw i64 %.ph, 1                     ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.ph ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !150
  %reass.sub14.prol = sub i32 %i.ax, %i.av
  %i.bb = add i32 %reass.sub14.prol, 5
  %i.bc = add i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !150
  %i.bd = or disjoint i64 %.02317.i.ph, 1
  %i.be = add nsw i64 %.116.i.ph, 1               ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa52.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ay, %scalar.ph.prol ]
  %.lcssa51.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.be, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ay, %scalar.ph.prol ]
  %.02317.i.unr = phi i64 [ %.02317.i.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %.116.i.unr = phi i64 [ %.116.i.ph, %scalar.ph.preheader ], [ %i.be, %scalar.ph.prol ]
  %i.bf = add nsw i64 %i.p, -1
  %i.bg = icmp eq i64 %.02317.i.ph, %i.bf
  br i1 %i.bg, label %..loopexit_crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bh = phi i64 [ %i.bv, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.02317.i = phi i64 [ %i.cb, %scalar.ph ], [ %.02317.i.unr, %scalar.ph.prol.loopexit ]
  %.116.i = phi i64 [ %i.cc, %scalar.ph ], [ %.116.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.116.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !150
  %i.bk = getelementptr i8, ptr %i.bi, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !150
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bh ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !150
  %reass.sub14 = sub i32 %i.bl, %i.bj
  %i.bo = add i32 %reass.sub14, 5
  %i.bp = add i32 %i.bo, %i.bn
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !150
  %i.bq = getelementptr [4 x i8], ptr %i.i, i64 %.116.i ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !150
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !150
  %i.bv = add nsw i64 %i.bh, 2                    ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %i.s, i64 %i.bh
  %i.bx = getelementptr i8, ptr %i.bw, i64 4      ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !150
  %reass.sub14.1 = sub i32 %i.bu, %i.bs
  %i.bz = add i32 %reass.sub14.1, 5
  %i.ca = add i32 %i.bz, %i.by
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !150
  %i.cb = add nuw nsw i64 %.02317.i, 2            ; 2 uses
  %i.cc = add nsw i64 %.116.i, 2                  ; 2 uses
  %exitcond30.not.i.1 = icmp eq i64 %i.cb, %i.p
  br i1 %exitcond30.not.i.1, label %..loopexit_crit_edge.i, label %scalar.ph, !llvm.loop !1329

bb.d:                                             ; preds = %bb.c
  %i.cd = icmp eq i32 %.sroa.7.0.extract.shift.i, 0
  br i1 %i.cd, label %.preheader6.i, label %.preheader8.i

.preheader8.i:                                    ; preds = %bb.d
  %i.ce = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.ce, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader8.i
  %.sroa.0.0.extract.trunc.mask.i = and i32 %i.n, 32767
  %i.cf = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i to i64
  %i.cg = add i64 %.02422.i, %i.cf                ; 2 uses
  br label %.lr.ph.i

.preheader6.i:                                    ; preds = %bb.d
  %i.ch = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.ci = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.ci, label %.lr.ph14.i, label %.loopexit.i

.lr.ph14.i:                                       ; preds = %.preheader6.i
  %i.cj = load ptr, ptr %2, align 8, !tbaa !1341, !nonnull !312, !align !418
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !485 ; 2 uses
  %i.cl = load ptr, ptr %i.l, align 8, !tbaa !1342, !nonnull !312, !align !418 ; 2 uses
  %.promoted.i = load i64, ptr %i.cl, align 8, !tbaa !331 ; 3 uses
  %min.iters.check37 = icmp ult i16 %.sroa.0.0.extract.trunc.i, 8
  br i1 %min.iters.check37, label %scalar.ph36.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph14.i
  %n.vec39 = and i64 %i.ch, 32760                 ; 4 uses
  %i.cm = add i64 %.promoted.i, %n.vec39          ; 2 uses
  %i.cn = getelementptr [4 x i8], ptr %i.ck, i64 %.promoted.i
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %vector.ph38
  %index41 = phi i64 [ 0, %vector.ph38 ], [ %index.next44, %vector.body40 ] ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %index41 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load42 = load <4 x i32>, ptr %i.co, align 4, !tbaa !150
  %wide.load43 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !150
  %i.cq = add <4 x i32> %wide.load42, splat (i32 5)
  %i.cr = add <4 x i32> %wide.load43, splat (i32 5)
  store <4 x i32> %i.cq, ptr %i.co, align 4, !tbaa !150
  store <4 x i32> %i.cr, ptr %i.cp, align 4, !tbaa !150
  %index.next44 = add nuw i64 %index41, 8         ; 2 uses
  %i.cs = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.cs, label %middle.block45, label %vector.body40, !llvm.loop !1330

middle.block45:                                   ; preds = %vector.body40
  %cmp.n46 = icmp eq i64 %n.vec39, %i.ch
  br i1 %cmp.n46, label %..loopexit7_crit_edge.i, label %scalar.ph36.preheader

scalar.ph36.preheader:                            ; preds = %.lr.ph14.i, %middle.block45
  %.ph49 = phi i64 [ %.promoted.i, %.lr.ph14.i ], [ %i.cm, %middle.block45 ]
  %.02213.i.ph = phi i64 [ 0, %.lr.ph14.i ], [ %n.vec39, %middle.block45 ]
  br label %scalar.ph36

scalar.ph36:                                      ; preds = %scalar.ph36.preheader, %scalar.ph36
  %i.ct = phi i64 [ %i.cu, %scalar.ph36 ], [ %.ph49, %scalar.ph36.preheader ] ; 2 uses
  %.02213.i = phi i64 [ %i.cy, %scalar.ph36 ], [ %.02213.i.ph, %scalar.ph36.preheader ]
  %i.cu = add nsw i64 %i.ct, 1                    ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.ct ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !150
  %i.cx = add i32 %i.cw, 5
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !150
  %i.cy = add nuw nsw i64 %.02213.i, 1            ; 2 uses
  %exitcond29.not.i = icmp eq i64 %i.cy, %i.ch
  br i1 %exitcond29.not.i, label %..loopexit7_crit_edge.i, label %scalar.ph36, !llvm.loop !1331

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.310.i = phi i64 [ %i.ec, %bb.g ], [ %.02422.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.cz = add nsw i64 %.310.i, %i.e               ; 2 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !149
  %i.dd = trunc i64 %i.cz to i8
  %i.de = and i8 %i.dd, 7
  %i.df = lshr i8 %i.dc, %i.de
  %i.dg = trunc i8 %i.df to i1
  br i1 %i.dg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.310.i ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !150
  %i.dj = getelementptr i8, ptr %i.dh, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !150
  %i.dl = load ptr, ptr %1, align 8, !tbaa !1336, !nonnull !312, !align !418
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !485
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !1337, !nonnull !312, !align !418 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !331 ; 2 uses
  %i.dp = add nsw i64 %i.do, 1
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !331
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.do ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !150
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal19VarLengthKeyEncoderINS_15LargeBinaryTypeEE6DecodeEPPhiPNS_10MemoryPoolE:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bg, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.hg, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.hn = load ptr, ptr %11, align 8, !tbaa !359  ; 3 uses
  %.not.i86 = icmp eq ptr %i.hn, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87: ; preds = %.loopexit
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !148
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(80) %i.hn) #29, !inline_history !9
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i87, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.bk

bb.bi:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.j
  %i.hr = load ptr, ptr %10, align 8, !tbaa !154
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %bb.bj, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !155

bb.bj:                                            ; preds = %bb.bi
  %i.ht = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !359 ; 3 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i89, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.bj
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !148
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(80) %i.hu) #29, !inline_history !10
  %.pr.pre.i = load ptr, ptr %10, align 8, !tbaa !154
  %i.hy = icmp eq ptr %.pr.pre.i, null
  br i1 %i.hy, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !182

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.bi
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.bj, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.hz = load ptr, ptr %9, align 8, !tbaa !359   ; 3 uses
  %.not.i90 = icmp eq ptr %i.hz, null
  br i1 %.not.i90, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit92, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i91

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i91: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !148
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(80) %i.hz) #29, !inline_history !9
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit92

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit92: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.bl

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit88 ], [ %i.aj, %bb.k ]
  %i.id = load ptr, ptr %9, align 8, !tbaa !359   ; 3 uses
  %.not.i93 = icmp eq ptr %i.id, null
  br i1 %.not.i93, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit95, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i94

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i94: ; preds = %bb.bk
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !148
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(80) %i.id) #29, !inline_history !9
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit95

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit95: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i94, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bu

bb.bl:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit92, %bb.f
  %i.ih = load ptr, ptr %8, align 8, !tbaa !154
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.bm, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i96, !prof !155

bb.bm:                                            ; preds = %bb.bl
  %i.ij = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !359 ; 3 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i97, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit100, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i98

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i98: ; preds = %bb.bm
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !148
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(80) %i.ik) #29, !inline_history !10
  %.pr.pre.i99 = load ptr, ptr %8, align 8, !tbaa !154
  %i.io = icmp eq ptr %.pr.pre.i99, null
  br i1 %i.io, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit100, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i96, !prof !182

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i96: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i98, %bb.bl
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit100

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit100: ; preds = %bb.bm, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i98, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit68, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !143 ; 8 uses
  %.not.i.i101 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i101, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 4 uses
  %i.is = load atomic i64, ptr %i.ir acquire, align 8 ; 2 uses
  %i.it = icmp eq i64 %i.is, 4294967297
  %i.iu = trunc i64 %i.is to i32                  ; 2 uses
  br i1 %i.it, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.ir, align 8, !tbaa !145
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  store i32 0, ptr %i.iv, align 4, !tbaa !146
  %i.iw = load ptr, ptr %i.iq, align 8, !tbaa !148
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #29, !inline_history !11
  %i.iz = load ptr, ptr %i.iq, align 8, !tbaa !148
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #29, !inline_history !11
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105

bb.bq:                                            ; preds = %bb.bo
  %i.jc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !149
  %.not.i.i.i102 = icmp eq i8 %i.jc, 0
  br i1 %.not.i.i.i102, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jd = add nsw i32 %i.iu, -1
  store i32 %i.jd, ptr %i.ir, align 8, !tbaa !150
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103

bb.bs:                                            ; preds = %bb.bq
  %i.je = atomicrmw volatile add ptr %i.ir, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i104 = phi i32 [ %i.iu, %bb.br ], [ %i.je, %bb.bs ]
  %i.jf = icmp eq i32 %.0.i.i.i.i104, 1
  br i1 %i.jf, label %bb.bt, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105, !prof !151

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #29
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105: ; preds = %bb.bn, %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.bu:                                            ; preds = %bb.g, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit95, %bb.d
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %.pn.pn.pn.pn, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit95 ], [ %i.ae, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internal19VarLengthKeyEncoderIS2_E9AddLengthERKNS5_9ExecValueElPiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS8_9AddLengthESB_lSC_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 !guid !1408 {
bb.a:
  %3 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !425  ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !422  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424  ; 3 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.e ; 5 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !424  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.j, i64 noundef %i.e, i64 noundef %i.b)
  %i.k = icmp sgt i64 %i.b, 0
  br i1 %i.k, label %.lr.ph21.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internal19VarLengthKeyEncoderIS3_E9AddLengthERKNS6_9ExecValueElPiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNS9_9AddLengthESC_lSD_EUlvE_EEvRKNS_9ArraySpanEOT_OT0_EUllE_SJ_EEvPKhllSO_SQ_.exit

.lr.ph21.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph21.i
  %.02420.i = phi i64 [ 0, %.lr.ph21.i ], [ %.4.i, %.loopexit.i ] ; 11 uses
  %i.n = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %3) ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.n to i16 ; 6 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %i.n, 16  ; 2 uses
  %.sroa.7.0.extract.trunc.i = trunc nuw i32 %.sroa.7.0.extract.shift.i to i16
  %i.o = icmp eq i16 %.sroa.0.0.extract.trunc.i, %.sroa.7.0.extract.trunc.i
  br i1 %i.o, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %.sroa.0.0.extract.trunc.mask33.i = and i32 %i.n, 65535 ; 2 uses
  %i.p = zext nneg i32 %.sroa.0.0.extract.trunc.mask33.i to i64 ; 6 uses
  %i.q = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.q, label %.lr.ph17.i, label %.loopexit.i

.lr.ph17.i:                                       ; preds = %.preheader.i
  %i.r = load ptr, ptr %1, align 8, !tbaa !1410, !nonnull !312, !align !418
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !485  ; 4 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !1411, !nonnull !312, !align !418 ; 7 uses
  %.promoted19.i = load i64, ptr %i.t, align 8, !tbaa !331 ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.sroa.0.0.extract.trunc.mask33.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph17.i
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %4 = add i64 %.02420.i, %i.e                    ; 2 uses
  %i.v = shl i64 %4, 3
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add i64 %4, %i.p
  %i.y = shl i64 %i.x, 3
  %5 = getelementptr i8, ptr %i.h, i64 %i.y
  %i.z = getelementptr i8, ptr %5, i64 8
  %bound0 = icmp ult ptr %i.t, %i.z
  %bound1 = icmp ult ptr %i.w, %i.u
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 32766                    ; 5 uses
  %i.aa = add i64 %.promoted19.i, %n.vec
  %i.ab = add i64 %.02420.i, %n.vec               ; 2 uses
  %i.ac = add nsw i64 %.promoted19.i, 1
  %i.ad = getelementptr [8 x i8], ptr %i.i, i64 %.02420.i
  %i.ae = getelementptr [4 x i8], ptr %i.s, i64 %.promoted19.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = phi i64 [ %i.ac, %vector.ph ], [ %i.ao, %vector.body ] ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ag, align 8, !tbaa !331, !alias.scope !1412
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %wide.load26 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !331, !alias.scope !1412
  %i.ai = sub nsw <2 x i64> %wide.load26, %wide.load
  %i.aj = add nsw i64 %i.af, 1
  %i.ak = getelementptr [4 x i8], ptr %i.ae, i64 %index ; 2 uses
  %wide.load27 = load <2 x i32>, ptr %i.ak, align 4, !tbaa !150
  %i.al = trunc <2 x i64> %i.ai to <2 x i32>
  %i.am = add <2 x i32> %i.al, splat (i32 9)
  %i.an = add <2 x i32> %i.am, %wide.load27
  store <2 x i32> %i.an, ptr %i.ak, align 4, !tbaa !150
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ao = add nsw i64 %i.af, 2
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1401

middle.block:                                     ; preds = %vector.body
  store i64 %i.aj, ptr %i.t, align 8, !tbaa !331, !alias.scope !1413, !noalias !1412
  %cmp.n = icmp eq i64 %n.vec, %i.p
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph17.i, %middle.block
  %.ph = phi i64 [ %.promoted19.i, %vector.memcheck ], [ %.promoted19.i, %.lr.ph17.i ], [ %i.aa, %middle.block ] ; 3 uses
  %.02316.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph17.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.115.i.ph = phi i64 [ %.02420.i, %vector.memcheck ], [ %.02420.i, %.lr.ph17.i ], [ %i.ab, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.115.i.ph ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !331
  %i.as = getelementptr i8, ptr %i.aq, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !331
  %i.au = sub nsw i64 %i.at, %i.ar
  %i.av = add nsw i64 %.ph, 1                     ; 2 uses
  store i64 %i.av, ptr %i.t, align 8, !tbaa !331
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.ph ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !150
  %i.ay = trunc i64 %i.au to i32
  %i.az = add i32 %i.ay, 9
  %i.ba = add i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.aw, align 4, !tbaa !150
  %i.bb = or disjoint i64 %.02316.i.ph, 1
  %i.bc = add nsw i64 %.115.i.ph, 1               ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa46.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %.02316.i.unr = phi i64 [ %.02316.i.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %.115.i.unr = phi i64 [ %.115.i.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %i.bd = add nsw i64 %i.p, -1
  %i.be = icmp eq i64 %.02316.i.ph, %i.bd
  br i1 %i.be, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bf = phi i64 [ %i.bx, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.02316.i = phi i64 [ %i.cd, %scalar.ph ], [ %.02316.i.unr, %scalar.ph.prol.loopexit ]
  %.115.i = phi i64 [ %i.ce, %scalar.ph ], [ %.115.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.115.i ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !331
  %i.bi = getelementptr i8, ptr %i.bg, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !331
  %i.bk = sub nsw i64 %i.bj, %i.bh
  %i.bl = add nsw i64 %i.bf, 1                    ; 2 uses
  store i64 %i.bl, ptr %i.t, align 8, !tbaa !331
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bf ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !150
  %i.bo = trunc i64 %i.bk to i32
  %i.bp = add i32 %i.bo, 9
  %i.bq = add i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bm, align 4, !tbaa !150
  %i.br = getelementptr [8 x i8], ptr %i.i, i64 %.115.i ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !331
  %i.bu = getelementptr i8, ptr %i.br, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !331
  %i.bw = sub nsw i64 %i.bv, %i.bt
  %i.bx = add nsw i64 %i.bf, 2                    ; 2 uses
  store i64 %i.bx, ptr %i.t, align 8, !tbaa !331
  %i.by = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bl ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !150
  %i.ca = trunc i64 %i.bw to i32
  %i.cb = add i32 %i.ca, 9
  %i.cc = add i32 %i.cb, %i.bz
  store i32 %i.cc, ptr %i.by, align 4, !tbaa !150
  %i.cd = add nuw nsw i64 %.02316.i, 2            ; 2 uses
  %i.ce = add nsw i64 %.115.i, 2                  ; 2 uses
  %exitcond27.not.i.1 = icmp eq i64 %i.cd, %i.p
  br i1 %exitcond27.not.i.1, label %.loopexit.i, label %scalar.ph, !llvm.loop !1403

bb.d:                                             ; preds = %bb.c
  %i.cf = icmp eq i32 %.sroa.7.0.extract.shift.i, 0
  br i1 %i.cf, label %.preheader5.i, label %.preheader7.i

.preheader7.i:                                    ; preds = %bb.d
  %i.cg = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.cg, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader7.i
  %.sroa.0.0.extract.trunc.mask.i = and i32 %i.n, 32767
  %i.ch = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i to i64
  %i.ci = add i64 %.02420.i, %i.ch                ; 2 uses
  br label %.lr.ph.i

.preheader5.i:                                    ; preds = %bb.d
  %i.cj = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.ck = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.ck, label %.lr.ph13.i, label %.loopexit.i

.lr.ph13.i:                                       ; preds = %.preheader5.i
  %i.cl = load ptr, ptr %2, align 8, !tbaa !1415, !nonnull !312, !align !418
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !485 ; 2 uses
  %i.cn = load ptr, ptr %i.l, align 8, !tbaa !1416, !nonnull !312, !align !418 ; 2 uses
  %.promoted.i = load i64, ptr %i.cn, align 8, !tbaa !331 ; 3 uses
  %min.iters.check31 = icmp ult i16 %.sroa.0.0.extract.trunc.i, 8
  br i1 %min.iters.check31, label %scalar.ph30.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph13.i
  %n.vec33 = and i64 %i.cj, 32760                 ; 4 uses
  %i.co = add i64 %.promoted.i, %n.vec33          ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.cm, i64 %.promoted.i
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next38, %vector.body34 ] ; 2 uses
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %index35 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %wide.load36 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !150
  %wide.load37 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !150
  %i.cs = add <4 x i32> %wide.load36, splat (i32 9)
  %i.ct = add <4 x i32> %wide.load37, splat (i32 9)
  store <4 x i32> %i.cs, ptr %i.cq, align 4, !tbaa !150
  store <4 x i32> %i.ct, ptr %i.cr, align 4, !tbaa !150
  %index.next38 = add nuw i64 %index35, 8         ; 2 uses
  %i.cu = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.cu, label %middle.block39, label %vector.body34, !llvm.loop !1404

middle.block39:                                   ; preds = %vector.body34
  %cmp.n40 = icmp eq i64 %n.vec33, %i.cj
  br i1 %cmp.n40, label %..loopexit6_crit_edge.i, label %scalar.ph30.preheader

scalar.ph30.preheader:                            ; preds = %.lr.ph13.i, %middle.block39
  %.ph43 = phi i64 [ %.promoted.i, %.lr.ph13.i ], [ %i.co, %middle.block39 ]
  %.02212.i.ph = phi i64 [ 0, %.lr.ph13.i ], [ %n.vec33, %middle.block39 ]
  br label %scalar.ph30

scalar.ph30:                                      ; preds = %scalar.ph30.preheader, %scalar.ph30
  %i.cv = phi i64 [ %i.cw, %scalar.ph30 ], [ %.ph43, %scalar.ph30.preheader ] ; 2 uses
  %.02212.i = phi i64 [ %i.da, %scalar.ph30 ], [ %.02212.i.ph, %scalar.ph30.preheader ]
  %i.cw = add nsw i64 %i.cv, 1                    ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cv ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !150
  %i.cz = add i32 %i.cy, 9
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !150
  %i.da = add nuw nsw i64 %.02212.i, 1            ; 2 uses
  %exitcond26.not.i = icmp eq i64 %i.da, %i.cj
  br i1 %exitcond26.not.i, label %..loopexit6_crit_edge.i, label %scalar.ph30, !llvm.loop !1405

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.39.i = phi i64 [ %i.eg, %bb.g ], [ %.02420.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.db = add nsw i64 %.39.i, %i.e                ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !149
  %i.df = trunc i64 %i.db to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = lshr i8 %i.de, %i.dg
  %i.di = trunc i8 %i.dh to i1
  br i1 %i.di, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.39.i ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !331
  %i.dl = getelementptr i8, ptr %i.dj, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !331
  %i.dn = sub nsw i64 %i.dm, %i.dk
  %i.do = load ptr, ptr %1, align 8, !tbaa !1410, !nonnull !312, !align !418
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !485
  %i.dq = load ptr, ptr %i.m, align 8, !tbaa !1411, !nonnull !312, !align !418 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !331 ; 2 uses
end_hunk_1
