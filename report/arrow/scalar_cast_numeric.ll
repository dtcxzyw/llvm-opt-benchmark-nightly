Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/scalar_cast_numeric?download=true
inline.NumInlined: 13022
inline.NumDeleted: 3863
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5arrow12UInt64ScalarD0Ev:bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !155  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !21   ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !11
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5arrow8internal15PrimitiveScalarINS_10UInt64TypeEmE4dataEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow8internal15PrimitiveScalarINS_10UInt64TypeEmE4viewEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.fca.1.insert = insertvalue { i64, ptr } { i64 8, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_13HalfFloatTypeENS_10BinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !586
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144, !noalias !587
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !586
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_13HalfFloatTypeENS_15LargeBinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.121", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !592
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144, !noalias !593
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !592
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !599
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !128
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.16.sink, ptr %i.e, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !159
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162
  %i.j = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !163  ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !159  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !162  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %storemerge.i.i.i = select i1 %i.v, ptr %i.a, ptr %i.u ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.w, i64 noundef %i.o, i64 noundef %i.l)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.d
  %i.x = icmp sgt i64 %i.l, 0
  br i1 %i.x, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.noexc8, %.loopexit.i.i.i.i
  %.0 = phi ptr [ %.1, %.loopexit.i.i.i.i ], [ %i.j, %.noexc8 ] ; 7 uses
  %.02444.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc8 ] ; 7 uses
  %i.y = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc9:                                          ; preds = %.lr.ph45.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.y to i16 ; 2 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.y, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.z = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.aa = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.z, label %.preheader.i.i.i.i, label %bb.e

.preheader.i.i.i.i:                               ; preds = %.noexc9
  %.sroa.0.0.extract.trunc.mask60.i.i.i.i = and i32 %i.y, 65535
  %i.ab = zext nneg i32 %.sroa.0.0.extract.trunc.mask60.i.i.i.i to i64
  br i1 %i.aa, label %.lr.ph42.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph42.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc10
  %.3 = phi ptr [ %i.al, %.noexc10 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.02341.i.i.i.i = phi i64 [ %i.am, %.noexc10 ], [ 0, %.preheader.i.i.i.i ]
  %.140.i.i.i.i = phi i64 [ %i.an, %.noexc10 ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.140.i.i.i.i ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.ac, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  %i.ai = sub nsw i32 %i.ah, %i.ad
  %i.aj = sext i32 %i.ai to i64
  %i.ak = invoke i16 @_ZNK5arrow7compute8internal11ParseStringINS_13HalfFloatTypeEE4CallINS_4util7Float16ESt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.aj, ptr nonnull %i.af, ptr noundef nonnull %0)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.lr.ph42.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ak, ptr %.3, align 2, !tbaa !164
  %i.am = add nuw nsw i64 %.02341.i.i.i.i, 1      ; 2 uses
  %i.an = add nsw i64 %.140.i.i.i.i, 1            ; 2 uses
  %exitcond50.not.i.i.i.i = icmp eq i64 %i.am, %i.ab
  br i1 %exitcond50.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph42.i.i.i.i, !llvm.loop !596

bb.e:                                             ; preds = %.noexc9
  %i.ao = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ao, label %.preheader30.i.i.i.i, label %.preheader32.i.i.i.i

.preheader32.i.i.i.i:                             ; preds = %bb.e
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader32.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.y, 32767
  %i.ap = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.aq = add i64 %.02444.i.i.i.i, %i.ap          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader30.i.i.i.i:                             ; preds = %bb.e
  br i1 %i.aa, label %.lr.ph38.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader30.i.i.i.i
  %i.ar = zext nneg i32 %i.y to i64               ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.as, i1 false), !tbaa !164
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.as
  %i.at = add i64 %.02444.i.i.i.i, %i.ar
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.bl, %.noexc11 ] ; 2 uses
  %.334.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.bm, %.noexc11 ] ; 3 uses
  %i.au = add nsw i64 %.334.i.i.i.i, %i.o         ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !69
  %i.ay = trunc i64 %i.au to i8
  %i.az = and i8 %i.ay, 7
  %i.ba = lshr i8 %i.ax, %i.az
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %bb.f, label %.noexc11

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.334.i.i.i.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !21
  %i.bi = sub nsw i32 %i.bh, %i.bd
  %i.bj = sext i32 %i.bi to i64
  %i.bk = invoke i16 @_ZNK5arrow7compute8internal11ParseStringINS_13HalfFloatTypeEE4CallINS_4util7Float16ESt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.bj, ptr nonnull %i.bf, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.f ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !164
  %i.bm = add i64 %.334.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bm, %i.aq
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !597

.loopexit.i.i.i.i:                                ; preds = %.noexc11, %.noexc10, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader32.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %i.al, %.noexc10 ], [ %i.bl, %.noexc11 ]
  %.4.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.preheader32.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ], [ %i.at, %.lr.ph38.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.an, %.noexc10 ], [ %i.aq, %.noexc11 ] ; 2 uses
  %i.bn = icmp slt i64 %.4.i.i.i.i, %i.l
  br i1 %i.bn, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !598

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.lr.ph42.i.i.i.i, %.lr.ph45.i.i.i.i, %.invoke, %bb.d
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !88, !range !89, !noundef !90
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h, %bb.i
  resume { ptr, i32 } %lpad.loopexit.split-lp58
}

declare void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !602, !range !89, !noundef !90
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !603  ; 4 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !604  ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %i.e, 64
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #26 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.j, 16
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !605  ; 2 uses
  %i.l = load i64, ptr %i.k, align 1
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.m = sub nsw i64 128, %i.g
  %i.n = icmp slt i64 %i.e, %i.m
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #26 ; 2 uses
  %.sroa.5.0.extract.shift2.i = lshr i32 %i.o, 16
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !605  ; 3 uses
  %i.q = load i64, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.s, i64 %i.q, i64 %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.0.i.sink.i = phi i64 [ %.0.i.i, %bb.i ], [ %i.l, %bb.f ]
  %i.t = phi ptr [ %i.p, %bb.i ], [ %i.k, %bb.f ]
  %i.u = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.c, align 8, !tbaa !605
  %i.w = add nsw i64 %i.e, -64
  store i64 %i.w, ptr %i.d, align 8, !tbaa !603
  %i.x = trunc nuw nsw i64 %i.u to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.e
  %.sroa.0.0.i = phi i32 [ %i.j, %bb.e ], [ 64, %bb.j ], [ %i.o, %bb.h ]
  %.sroa.5.0.i = phi i32 [ %.sroa.5.0.extract.shift.i, %bb.e ], [ %i.x, %bb.j ], [ %.sroa.5.0.extract.shift2.i, %bb.h ]
  %i.y = shl nuw i32 %.sroa.5.0.i, 16
  %i.z = and i32 %.sroa.0.0.i, 65535
  %i.aa = or disjoint i32 %i.y, %i.z
  br label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit

_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit: ; preds = %bb.b, %bb.k
  %.sroa.0.0.insert.insert.i = phi i32 [ %i.aa, %bb.k ], [ 0, %bb.b ] ; 3 uses
  %.sroa.0.0.extract.trunc = zext i32 %.sroa.0.0.insert.insert.i to i64
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert.i, 16
  %sext4 = shl i64 %.sroa.0.0.extract.trunc, 48
  %i.ab = ashr exact i64 %sext4, 48
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !606
  %i.ae = add nsw i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !606
  %.pre = and i32 %.sroa.0.0.insert.insert.i, 65535
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !607
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !606 ; 2 uses
  %i.aj = sub nsw i64 %i.ag, %i.ai
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.aj, i64 32767) ; 2 uses
  %i.ak = trunc i64 %.sroa.speculated to i32
  %sext = shl i64 %.sroa.speculated, 48
  %i.al = ashr exact i64 %sext, 48
  %i.am = add nsw i64 %i.al, %i.ai
  store i64 %i.am, ptr %i.ah, align 8, !tbaa !606
  %i.an = and i32 %i.ak, 65535                    ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit
  %.sroa.0.0.insert.ext.pre-phi = phi i32 [ %i.an, %bb.l ], [ %.pre, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ]
  %.sroa.4.0 = phi i32 [ %i.an, %bb.l ], [ %.sroa.4.0.extract.shift, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ]
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0, 16
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext.pre-phi
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind
declare i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr i16 @_ZNK5arrow7compute8internal11ParseStringINS_13HalfFloatTypeEE4CallINS_4util7Float16ESt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::util::Float16", align 2 ; 3 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  store i64 %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = tail call i16 @_ZN5arrow4util7Float1610FromDoubleEd(double noundef 0.000000e+00)
  store i16 %i.b, ptr %5, align 2, !tbaa !164
end_hunk_0
begin_hunk_1_@_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_:bb.a
}

declare i16 @_ZN5arrow4util7Float1610FromDoubleEd(double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare noundef zeroext i1 @_ZN5arrow8internal13StringToFloatEPKcmcPNS_4util7Float16E(ptr noundef, i64 noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175, !nonnull !90, !align !176
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E2_clIS4_EEDaSK_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E2_clIS4_EEDaSK_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !175, !nonnull !90, !align !176
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !177
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !611
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E1_clIS9_EEDaSK_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E1_clIS9_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E2_clIS4_EEDaSK_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !175, !nonnull !90, !align !176
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(23) %3) #26
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(23) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E0_clISB_EEDaSK_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E0_clISB_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E1_clIS9_EEDaSK_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !175, !nonnull !90, !align !176
  %i.k = load ptr, ptr %4, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !101
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E_clISF_EEDaSK_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E_clISF_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E0_clISB_EEDaSK_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E_clISF_EEDaSK_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E0_clISB_EEDaSK_.exit, %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E2_clIS4_EEDaSK_.exit, %bb.a, %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E1_clIS9_EEDaSK_.exit, %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E_clISF_EEDaSK_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.o
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !617
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !128
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.16.sink, ptr %i.e, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !159
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162
  %i.j = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !163  ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !159  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !162  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %storemerge.i.i.i = select i1 %i.v, ptr %i.a, ptr %i.u ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.w, i64 noundef %i.o, i64 noundef %i.l)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.d
  %i.x = icmp sgt i64 %i.l, 0
  br i1 %i.x, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.noexc8, %.loopexit.i.i.i.i
  %.0 = phi ptr [ %.1, %.loopexit.i.i.i.i ], [ %i.j, %.noexc8 ] ; 7 uses
  %.02444.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc8 ] ; 7 uses
  %i.y = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc9:                                          ; preds = %.lr.ph45.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.y to i16 ; 2 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.y, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.z = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.aa = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.z, label %.preheader.i.i.i.i, label %bb.e

.preheader.i.i.i.i:                               ; preds = %.noexc9
  %.sroa.0.0.extract.trunc.mask60.i.i.i.i = and i32 %i.y, 65535
  %i.ab = zext nneg i32 %.sroa.0.0.extract.trunc.mask60.i.i.i.i to i64
  br i1 %i.aa, label %.lr.ph42.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph42.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc10
  %.3 = phi ptr [ %i.aj, %.noexc10 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.02341.i.i.i.i = phi i64 [ %i.ak, %.noexc10 ], [ 0, %.preheader.i.i.i.i ]
  %.140.i.i.i.i = phi i64 [ %i.al, %.noexc10 ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.140.i.i.i.i ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !177 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !177
  %i.ah = sub nsw i64 %i.ag, %i.ad
  %i.ai = invoke i16 @_ZNK5arrow7compute8internal11ParseStringINS_13HalfFloatTypeEE4CallINS_4util7Float16ESt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.ah, ptr nonnull %i.ae, ptr noundef nonnull %0)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.lr.ph42.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ai, ptr %.3, align 2, !tbaa !164
  %i.ak = add nuw nsw i64 %.02341.i.i.i.i, 1      ; 2 uses
  %i.al = add nsw i64 %.140.i.i.i.i, 1            ; 2 uses
  %exitcond50.not.i.i.i.i = icmp eq i64 %i.ak, %i.ab
  br i1 %exitcond50.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph42.i.i.i.i, !llvm.loop !614

bb.e:                                             ; preds = %.noexc9
  %i.am = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.am, label %.preheader30.i.i.i.i, label %.preheader32.i.i.i.i

.preheader32.i.i.i.i:                             ; preds = %bb.e
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader32.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.y, 32767
  %i.an = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.ao = add i64 %.02444.i.i.i.i, %i.an          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader30.i.i.i.i:                             ; preds = %bb.e
  br i1 %i.aa, label %.lr.ph38.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader30.i.i.i.i
  %i.ap = zext nneg i32 %i.y to i64               ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ap, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.aq, i1 false), !tbaa !164
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.aq
  %i.ar = add i64 %.02444.i.i.i.i, %i.ap
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.bh, %.noexc11 ] ; 2 uses
  %.334.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.bi, %.noexc11 ] ; 3 uses
  %i.as = add nsw i64 %.334.i.i.i.i, %i.o         ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !69
  %i.aw = trunc i64 %i.as to i8
  %i.ax = and i8 %i.aw, 7
  %i.ay = lshr i8 %i.av, %i.ax
  %i.az = trunc i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %.noexc11

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.334.i.i.i.i ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !177 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !177
  %i.bf = sub nsw i64 %i.be, %i.bb
  %i.bg = invoke i16 @_ZNK5arrow7compute8internal11ParseStringINS_13HalfFloatTypeEE4CallINS_4util7Float16ESt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.bf, ptr nonnull %i.bc, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.bg, %bb.f ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !164
  %i.bi = add i64 %.334.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bi, %i.ao
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !615

.loopexit.i.i.i.i:                                ; preds = %.noexc11, %.noexc10, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader32.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %i.aj, %.noexc10 ], [ %i.bh, %.noexc11 ]
  %.4.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.preheader32.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ar, %.lr.ph38.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.al, %.noexc10 ], [ %i.ao, %.noexc11 ] ; 2 uses
  %i.bj = icmp slt i64 %.4.i.i.i.i, %i.l
  br i1 %i.bj, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !616

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.lr.ph42.i.i.i.i, %.lr.ph45.i.i.i.i, %.invoke, %bb.d
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h, %bb.i
  resume { ptr, i32 } %lpad.loopexit.split-lp58
}

declare void @_ZN5arrow7compute8internal24ResolveOutputFromOptionsEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS5_EE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.c = load i32, ptr %1, align 8, !tbaa !74
  store i32 %i.c, ptr %0, align 8, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  store ptr %i.e, ptr %i.a, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !21
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !50 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !44
  %i.s = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26, !inline_history !8
  %i.v = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26, !inline_history !8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i9.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.h, ptr %i.f, align 8, !tbaa !50
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 2)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !62
  br label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %i.ac, align 16, !tbaa !91 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i5, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %.body unwind label %bb.m      ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #29
  unreachable

_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i: ; preds = %bb.j, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.an = phi <2 x ptr> [ splat (ptr null), %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit ], [ %i.ah, %bb.j ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !618
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.b, align 8, !tbaa !69
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !62
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !62 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal11CastFunctorINS_9Int16TypeENS_11BooleanTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.as = add nsw i64 %i.al, 1                    ; 2 uses
  %i.at = add nuw nsw i64 %i.ab, 2                ; 2 uses
  %i.au = icmp eq i64 %i.as, 8
  br i1 %i.au, label %bb.g, label %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1, !prof !92

bb.g:                                             ; preds = %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i
  %i.av = add nsw i64 %.sroa.1423.1.i, 1          ; 3 uses
  %i.aw = icmp slt i64 %i.at, %i.h
  br i1 %i.aw, label %bb.h, label %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1, !prof !78

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds i8, ptr %i.d, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !69, !noalias !2996
  br label %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1

_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1: ; preds = %bb.h, %bb.g, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i
  %.sroa.1423.1.i.1 = phi i64 [ %i.av, %bb.h ], [ %i.av, %bb.g ], [ %.sroa.1423.1.i, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i ]
  %i.az = phi i8 [ %i.ay, %bb.h ], [ %i.ak, %bb.g ], [ %i.ak, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i ] ; 2 uses
  %i.ba = phi i64 [ 0, %bb.h ], [ 0, %bb.g ], [ %i.as, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i ] ; 2 uses
  %i.bb = trunc nsw i64 %i.al to i32
  %i.bc = zext i8 %i.ak to i32
  %i.bd = lshr i32 %i.bc, %i.bb
  %i.be = trunc nuw nsw i32 %i.bd to i16
  %i.bf = and i16 %i.be, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.056.i.i, i64 4 ; 2 uses
  store i16 %i.bf, ptr %i.ar, align 2, !tbaa !164, !noalias !2996
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !2994

_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa: ; preds = %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.epil.init = phi i8 [ %.sroa.10.0.i, %.lr.ph.i.i ], [ %i.az, %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa ]
  %.epil.init8 = phi i64 [ %i.j, %.lr.ph.i.i ], [ %i.ba, %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.056.i.i.epil.init = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.bg, %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa ]
  %lcmp.mod9 = trunc i64 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.bh = icmp eq i64 %.epil.init8, 7             ; 0 uses
  %i.bi = trunc nsw i64 %.epil.init8 to i32
  %i.bj = zext i8 %.epil.init to i32
  %i.bk = lshr i32 %i.bj, %i.bi
  %i.bl = trunc nuw nsw i32 %i.bk to i16
  %i.bm = and i16 %i.bl, 1
  store i16 %i.bm, ptr %.056.i.i.epil.init, align 2, !tbaa !164, !noalias !2996
  br label %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit: ; preds = %.epil.preheader, %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa, %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit.i
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !2995
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_9Int16TypeENS_10BinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.862", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !3001
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144, !noalias !3002
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !3001
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_9Int16TypeENS_15LargeBinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.872", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !3007
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144, !noalias !3008
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !3007
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3014
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !128
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.16.sink, ptr %i.e, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !159
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162
  %i.j = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !163  ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !159  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !162  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %storemerge.i.i.i = select i1 %i.v, ptr %i.a, ptr %i.u ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.w, i64 noundef %i.o, i64 noundef %i.l)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.d
  %i.x = icmp sgt i64 %i.l, 0
  br i1 %i.x, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.noexc8, %.loopexit.i.i.i.i
  %.0 = phi ptr [ %.1, %.loopexit.i.i.i.i ], [ %i.j, %.noexc8 ] ; 7 uses
  %.02444.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc8 ] ; 7 uses
  %i.y = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc9:                                          ; preds = %.lr.ph45.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.y to i16 ; 2 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.y, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.z = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.aa = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.z, label %.preheader.i.i.i.i, label %bb.e

.preheader.i.i.i.i:                               ; preds = %.noexc9
  %.sroa.0.0.extract.trunc.mask60.i.i.i.i = and i32 %i.y, 65535
  %i.ab = zext nneg i32 %.sroa.0.0.extract.trunc.mask60.i.i.i.i to i64
  br i1 %i.aa, label %.lr.ph42.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph42.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc10
  %.3 = phi ptr [ %i.al, %.noexc10 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.02341.i.i.i.i = phi i64 [ %i.am, %.noexc10 ], [ 0, %.preheader.i.i.i.i ]
  %.140.i.i.i.i = phi i64 [ %i.an, %.noexc10 ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.140.i.i.i.i ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.ac, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  %i.ai = sub nsw i32 %i.ah, %i.ad
  %i.aj = sext i32 %i.ai to i64
  %i.ak = invoke noundef signext i16 @_ZNK5arrow7compute8internal11ParseStringINS_9Int16TypeEE4CallIsSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.aj, ptr nonnull %i.af, ptr noundef nonnull %0)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.lr.ph42.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ak, ptr %.3, align 2, !tbaa !164
  %i.am = add nuw nsw i64 %.02341.i.i.i.i, 1      ; 2 uses
  %i.an = add nsw i64 %.140.i.i.i.i, 1            ; 2 uses
  %exitcond50.not.i.i.i.i = icmp eq i64 %i.am, %i.ab
  br i1 %exitcond50.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph42.i.i.i.i, !llvm.loop !3011

bb.e:                                             ; preds = %.noexc9
  %i.ao = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ao, label %.preheader30.i.i.i.i, label %.preheader32.i.i.i.i

.preheader32.i.i.i.i:                             ; preds = %bb.e
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader32.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.y, 32767
  %i.ap = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.aq = add i64 %.02444.i.i.i.i, %i.ap          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader30.i.i.i.i:                             ; preds = %bb.e
  br i1 %i.aa, label %.lr.ph38.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader30.i.i.i.i
  %i.ar = zext nneg i32 %i.y to i64               ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.as, i1 false), !tbaa !164
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.as
  %i.at = add i64 %.02444.i.i.i.i, %i.ar
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.bl, %.noexc11 ] ; 2 uses
  %.334.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.bm, %.noexc11 ] ; 3 uses
  %i.au = add nsw i64 %.334.i.i.i.i, %i.o         ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !69
  %i.ay = trunc i64 %i.au to i8
  %i.az = and i8 %i.ay, 7
  %i.ba = lshr i8 %i.ax, %i.az
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %bb.f, label %.noexc11

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.334.i.i.i.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !21
  %i.bi = sub nsw i32 %i.bh, %i.bd
  %i.bj = sext i32 %i.bi to i64
  %i.bk = invoke noundef signext i16 @_ZNK5arrow7compute8internal11ParseStringINS_9Int16TypeEE4CallIsSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.bj, ptr nonnull %i.bf, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.f ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !164
  %i.bm = add i64 %.334.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bm, %i.aq
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3012

.loopexit.i.i.i.i:                                ; preds = %.noexc11, %.noexc10, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader32.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %i.al, %.noexc10 ], [ %i.bl, %.noexc11 ]
  %.4.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.preheader32.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ], [ %i.at, %.lr.ph38.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.an, %.noexc10 ], [ %i.aq, %.noexc11 ] ; 2 uses
  %i.bn = icmp slt i64 %.4.i.i.i.i, %i.l
  br i1 %i.bn, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !3013

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.lr.ph42.i.i.i.i, %.lr.ph45.i.i.i.i, %.invoke, %bb.d
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !88, !range !89, !noundef !90
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h, %bb.i
  resume { ptr, i32 } %lpad.loopexit.split-lp58
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef signext i16 @_ZNK5arrow7compute8internal11ParseStringINS_9Int16TypeEE4CallIsSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::internal::StringConverter.870", align 1 ; 3 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.a = alloca i16, align 2                      ; 6 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  store i64 %2, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i16 0, ptr %i.a, align 2, !tbaa !164
  %i.c = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, !prof !165

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow9Int16TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !46
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  br label %_ZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit

_ZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.g = call noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int16TypeEE7ConvertERKS2_PKcmPs(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr noundef %3, i64 noundef %2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %i.g, label %bb.k, label %bb.d, !prof !78

bb.d:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZN5arrow10TypeTraitsINS_9Int16TypeEE14type_singletonEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.30") align 8 %9)
  %i.h = load ptr, ptr %9, align 8, !tbaa !68     ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(26) @.str.18, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(23) @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g, !prof !78

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !88, !range !89, !noundef !90
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.h, %bb.g, %bb.f
  %i.p = load ptr, ptr %7, align 8, !tbaa !77
  store ptr %i.p, ptr %4, align 8, !tbaa !77
  store ptr null, ptr %7, align 8, !tbaa !77
  %i.q = load ptr, ptr %8, align 8, !tbaa !102    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !69
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

bb.j:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %8, align 8, !tbaa !102    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.j
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !69
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.i
  %.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ], [ %i.w, %bb.j ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  %i.ac = load i16, ptr %i.a, align 2, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i16 %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int16TypeEE7ConvertERKS2_PKcmPs(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int16TypeEE7ConvertERKS2_PKcmPs:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.cb = getelementptr inbounds nuw i8, ptr %.12549, i64 3
  %i.cc = load i8, ptr %i.bv, align 1, !tbaa !69
  %i.cd = add i8 %i.cc, -48                       ; 2 uses
  %i.ce = mul nuw nsw i16 %i.ca, 10
  %i.cf = icmp ult i8 %i.cd, 10
  %i.cg = zext nneg i8 %i.cd to i16
  %i.ch = add nuw nsw i16 %i.ce, %i.cg            ; 2 uses
  br i1 %i.cf, label %bb.ai, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, !prof !225

bb.ai:                                            ; preds = %bb.ah
  %.not73.i = icmp eq i64 %.150, 3
  br i1 %.not73.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ci = getelementptr inbounds nuw i8, ptr %.12549, i64 4
  %i.cj = load i8, ptr %i.cb, align 1, !tbaa !69
  %i.ck = add i8 %i.cj, -48                       ; 2 uses
  %i.cl = mul nuw nsw i16 %i.ch, 10
  %i.cm = add i64 %.150, -4                       ; 2 uses
  %i.cn = icmp ult i8 %i.ck, 10
  %i.co = zext nneg i8 %i.ck to i16
  %i.cp = add nuw i16 %i.cl, %i.co                ; 3 uses
  br i1 %i.cn, label %bb.ak, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, !prof !225

bb.ak:                                            ; preds = %bb.aj
  %.not74.i = icmp eq i64 %i.cm, 0
  br i1 %.not74.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cq = icmp ugt i16 %i.cp, 6553
  br i1 %i.cq, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, label %bb.am, !prof !92

bb.am:                                            ; preds = %bb.al
  %i.cr = load i8, ptr %i.ci, align 1, !tbaa !69
  %i.cs = add i8 %i.cr, -48                       ; 2 uses
  %.not75.i = icmp ne i64 %i.cm, 1
  %i.ct = icmp ugt i8 %i.cs, 9
  %or.cond.i30 = or i1 %.not75.i, %i.ct
  br i1 %or.cond.i30, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, label %bb.an, !prof !226

bb.an:                                            ; preds = %bb.am
  %i.cu = mul nuw i16 %i.cp, 10                   ; 3 uses
  %i.cv = zext nneg i8 %i.cs to i16
  %i.cw = add i16 %i.cu, %i.cv                    ; 2 uses
  %.not77.i = icmp ult i16 %i.cw, %i.cu
  %..i = tail call i16 @llvm.umax.i16(i16 %i.cw, i16 %i.cu)
  br i1 %.not77.i, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit, !prof !227

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit:    ; preds = %bb.an, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %.133 = phi i16 [ %i.bu, %bb.ae ], [ %i.cp, %bb.ak ], [ %i.ch, %bb.ai ], [ %i.ca, %bb.ag ], [ %..i, %bb.an ] ; 4 uses
  br i1 %i.bm, label %bb.ao, label %bb.ap

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.thread38: ; preds = %bb.ad
  br i1 %i.bm, label %.thread42, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread.sink.split

bb.ao:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit
  %i.cx = icmp ugt i16 %.133, -32768
  br i1 %i.cx, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, label %.thread42, !prof !228

.thread42:                                        ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.thread38, %bb.ao
  %.1334044 = phi i16 [ %.133, %bb.ao ], [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.thread38 ]
  %i.cy = sub i16 0, %.1334044
  br label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread.sink.split

bb.ap:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit
  %i.cz = icmp slt i16 %.133, 0
  br i1 %i.cz, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread.sink.split, !prof !228

_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread.sink.split: ; preds = %bb.j, %bb.p, %bb.v, %bb.aa, %bb.z, %bb.y, %.thread42, %bb.ap, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.thread38
  %storemerge.sink = phi i16 [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.thread38 ], [ %i.cy, %.thread42 ], [ %.133, %bb.ap ], [ %.1.i, %bb.j ], [ %.1.i.1, %bb.p ], [ %.1.i.2, %bb.v ], [ %i.bh, %bb.aa ], [ %i.bf, %bb.z ], [ %i.bc, %bb.y ]
  store i16 %storemerge.sink, ptr %4, align 2, !tbaa !164
  br label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread

_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread: ; preds = %bb.h, %bb.l, %bb.r, %bb.x, %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread.sink.split, %bb.al, %bb.af, %bb.ah, %bb.aj, %bb.an, %bb.am, %.critedge, %bb.d, %bb.ap, %bb.ao, %bb.ab, %bb.a
  %.022 = phi i1 [ false, %bb.ab ], [ false, %bb.af ], [ false, %bb.a ], [ false, %bb.ap ], [ false, %bb.al ], [ true, %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread.sink.split ], [ false, %bb.ao ], [ false, %bb.d ], [ false, %.critedge ], [ false, %bb.am ], [ false, %bb.an ], [ false, %bb.aj ], [ false, %bb.ah ], [ false, %bb.x ], [ false, %bb.r ], [ false, %bb.l ], [ false, %bb.h ]
  ret i1 %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3021
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !128
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.16.sink, ptr %i.e, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !159
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162
  %i.j = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !163  ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !159  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !162  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %storemerge.i.i.i = select i1 %i.v, ptr %i.a, ptr %i.u ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.w, i64 noundef %i.o, i64 noundef %i.l)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.d
  %i.x = icmp sgt i64 %i.l, 0
  br i1 %i.x, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.noexc8, %.loopexit.i.i.i.i
  %.0 = phi ptr [ %.1, %.loopexit.i.i.i.i ], [ %i.j, %.noexc8 ] ; 7 uses
  %.02444.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc8 ] ; 7 uses
  %i.y = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc9:                                          ; preds = %.lr.ph45.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.y to i16 ; 2 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.y, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.z = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.aa = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.z, label %.preheader.i.i.i.i, label %bb.e

.preheader.i.i.i.i:                               ; preds = %.noexc9
  %.sroa.0.0.extract.trunc.mask60.i.i.i.i = and i32 %i.y, 65535
  %i.ab = zext nneg i32 %.sroa.0.0.extract.trunc.mask60.i.i.i.i to i64
  br i1 %i.aa, label %.lr.ph42.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph42.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc10
  %.3 = phi ptr [ %i.aj, %.noexc10 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.02341.i.i.i.i = phi i64 [ %i.ak, %.noexc10 ], [ 0, %.preheader.i.i.i.i ]
  %.140.i.i.i.i = phi i64 [ %i.al, %.noexc10 ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.140.i.i.i.i ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !177 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !177
  %i.ah = sub nsw i64 %i.ag, %i.ad
  %i.ai = invoke noundef signext i16 @_ZNK5arrow7compute8internal11ParseStringINS_9Int16TypeEE4CallIsSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.ah, ptr nonnull %i.ae, ptr noundef nonnull %0)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.lr.ph42.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ai, ptr %.3, align 2, !tbaa !164
  %i.ak = add nuw nsw i64 %.02341.i.i.i.i, 1      ; 2 uses
  %i.al = add nsw i64 %.140.i.i.i.i, 1            ; 2 uses
  %exitcond50.not.i.i.i.i = icmp eq i64 %i.ak, %i.ab
  br i1 %exitcond50.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph42.i.i.i.i, !llvm.loop !3018

bb.e:                                             ; preds = %.noexc9
  %i.am = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.am, label %.preheader30.i.i.i.i, label %.preheader32.i.i.i.i

.preheader32.i.i.i.i:                             ; preds = %bb.e
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader32.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.y, 32767
  %i.an = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.ao = add i64 %.02444.i.i.i.i, %i.an          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader30.i.i.i.i:                             ; preds = %bb.e
  br i1 %i.aa, label %.lr.ph38.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader30.i.i.i.i
  %i.ap = zext nneg i32 %i.y to i64               ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ap, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.aq, i1 false), !tbaa !164
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.aq
  %i.ar = add i64 %.02444.i.i.i.i, %i.ap
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.bh, %.noexc11 ] ; 2 uses
  %.334.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.bi, %.noexc11 ] ; 3 uses
  %i.as = add nsw i64 %.334.i.i.i.i, %i.o         ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !69
  %i.aw = trunc i64 %i.as to i8
  %i.ax = and i8 %i.aw, 7
  %i.ay = lshr i8 %i.av, %i.ax
  %i.az = trunc i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %.noexc11

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.334.i.i.i.i ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !177 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !177
  %i.bf = sub nsw i64 %i.be, %i.bb
  %i.bg = invoke noundef signext i16 @_ZNK5arrow7compute8internal11ParseStringINS_9Int16TypeEE4CallIsSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.bf, ptr nonnull %i.bc, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.bg, %bb.f ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !164
  %i.bi = add i64 %.334.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bi, %i.ao
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3019

.loopexit.i.i.i.i:                                ; preds = %.noexc11, %.noexc10, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader32.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %i.aj, %.noexc10 ], [ %i.bh, %.noexc11 ]
  %.4.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.preheader32.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ar, %.lr.ph38.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.al, %.noexc10 ], [ %i.ao, %.noexc11 ] ; 2 uses
  %i.bj = icmp slt i64 %.4.i.i.i.i, %i.l
  br i1 %i.bj, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !3020

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.lr.ph42.i.i.i.i, %.lr.ph45.i.i.i.i, %.invoke, %bb.d
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h, %bb.i
  resume { ptr, i32 } %lpad.loopexit.split-lp58
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_9Int16TypeENS_14BinaryViewTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.877", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !3026
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144, !noalias !3027
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !3026
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3033
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !163
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS1_11ParseStringIS6_EEE9ArrayExecIS6_vE4ExecERKS9_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSB_4ExecESD_SF_SI_SK_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESI_OSS_OT1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !159
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.n ; 2 uses
  %i.r = invoke { ptr, i64 } @_ZNK5arrow9ArraySpan18GetVariadicBuffersEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !162  ; 2 uses
  %i.v = load i64, ptr %i.m, align 8, !tbaa !159  ; 2 uses
  %i.w = load i64, ptr %i.j, align 8, !tbaa !163  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.u, i64 noundef %i.v, i64 noundef %i.w)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph46.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph46.i.i.i.i:                                 ; preds = %.noexc9, %.loopexit.i.i.i.i
  %.0 = phi ptr [ %.1, %.loopexit.i.i.i.i ], [ %i.i, %.noexc9 ] ; 7 uses
  %.02445.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc9 ] ; 7 uses
  %i.y = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc10:                                         ; preds = %.lr.ph46.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.y to i16 ; 3 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.y, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.z = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.aa = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.z, label %.preheader.i.i.i.i, label %bb.g

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.ab = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  br i1 %i.aa, label %.lr.ph43.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph43.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc11
  %.3 = phi ptr [ %i.ay, %.noexc11 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.02342.i.i.i.i = phi i64 [ %i.az, %.noexc11 ], [ 0, %.preheader.i.i.i.i ]
  %.141.i.i.i.i = phi i64 [ %i.ba, %.noexc11 ], [ %.02445.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.q, i64 %.141.i.i.i.i ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !69 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 13
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph43.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph43.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !69
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !205 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  %i.am = load i8, ptr %i.al, align 1, !tbaa !212, !range !89, !noundef !90
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = select i1 %i.an, ptr %i.ap, ptr null, !prof !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !69
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.av = phi ptr [ %i.af, %bb.e ], [ %i.au, %bb.f ]
  %i.aw = sext i32 %i.ad to i64
  %i.ax = invoke noundef signext i16 @_ZNK5arrow7compute8internal11ParseStringINS_9Int16TypeEE4CallIsSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.aw, ptr %i.av, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ax, ptr %.3, align 2, !tbaa !164
  %i.az = add nuw nsw i64 %.02342.i.i.i.i, 1      ; 2 uses
  %i.ba = add nsw i64 %.141.i.i.i.i, 1            ; 2 uses
  %exitcond51.not.i.i.i.i = icmp eq i64 %i.az, %i.ab
  br i1 %exitcond51.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph43.i.i.i.i, !llvm.loop !3030

bb.g:                                             ; preds = %.noexc10
  %i.bb = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.bb, label %.preheader31.i.i.i.i, label %.preheader33.i.i.i.i

.preheader33.i.i.i.i:                             ; preds = %bb.g
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader33.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.y, 32767
  %i.bc = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.bd = add i64 %.02445.i.i.i.i, %i.bc          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader31.i.i.i.i:                             ; preds = %bb.g
  br i1 %i.aa, label %.lr.ph39.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph39.i.i.i.i:                                 ; preds = %.preheader31.i.i.i.i
  %i.be = zext nneg i32 %i.y to i64               ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.bf, i1 false), !tbaa !164
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.bf
  %i.bg = add i64 %.02445.i.i.i.i, %i.be
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc12, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.cl, %.noexc12 ] ; 2 uses
  %.335.i.i.i.i = phi i64 [ %.02445.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.cm, %.noexc12 ] ; 3 uses
  %i.bh = add nsw i64 %.335.i.i.i.i, %i.v         ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !69
  %i.bl = trunc i64 %i.bh to i8
  %i.bm = and i8 %i.bl, 7
  %i.bn = lshr i8 %i.bk, %i.bm
  %i.bo = trunc i8 %i.bn to i1
  br i1 %i.bo, label %bb.h, label %.noexc12

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.q, i64 %.335.i.i.i.i ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !69 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 13
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !69
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !205 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 9
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !212, !range !89, !noundef !90
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = select i1 %i.ca, ptr %i.cc, ptr null, !prof !78
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !69
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.ci = phi ptr [ %i.bs, %bb.i ], [ %i.ch, %bb.j ]
  %i.cj = sext i32 %i.bq to i64
  %i.ck = invoke noundef signext i16 @_ZNK5arrow7compute8internal11ParseStringINS_9Int16TypeEE4CallIsSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.cj, ptr %i.ci, ptr noundef nonnull %0)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.ck, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !164
  %i.cm = add i64 %.335.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cm, %i.bd
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3031

.loopexit.i.i.i.i:                                ; preds = %.noexc12, %.noexc11, %.lr.ph39.i.i.i.i, %.preheader31.i.i.i.i, %.preheader33.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader33.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph39.i.i.i.i ], [ %.0, %.preheader31.i.i.i.i ], [ %i.ay, %.noexc11 ], [ %i.cl, %.noexc12 ]
  %.4.i.i.i.i = phi i64 [ %.02445.i.i.i.i, %.preheader33.i.i.i.i ], [ %.02445.i.i.i.i, %.preheader.i.i.i.i ], [ %i.bg, %.lr.ph39.i.i.i.i ], [ %.02445.i.i.i.i, %.preheader31.i.i.i.i ], [ %i.ba, %.noexc11 ], [ %i.bd, %.noexc12 ] ; 2 uses
  %i.cn = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.cn, label %.lr.ph46.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !3032

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS1_11ParseStringIS6_EEE9ArrayExecIS6_vE4ExecERKS9_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSB_4ExecESD_SF_SI_SK_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESI_OSS_OT1_.exit

_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS1_11ParseStringIS6_EEE9ArrayExecIS6_vE4ExecERKS9_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSB_4ExecESD_SF_SI_SK_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESI_OSS_OT1_.exit: ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i, %.lr.ph46.i.i.i.i, %.invoke, %.noexc8, %bb.d
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.k, !prof !78

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !88, !range !89, !noundef !90
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZN5arrow6StatusD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k, %bb.l
  resume { ptr, i32 } %lpad.loopexit.split-lp59
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal128TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %8 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Decimal128", align 16 ; 4 uses
  %11 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %12 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %13 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::Decimal128", align 16 ; 4 uses
  %16 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3045
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %3, align 8, !tbaa !213    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3036

.noexc8:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !159  ; 3 uses
  %i.q = sext i32 %i.n to i64                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !163  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.u, i64 noundef %i.p, i64 noundef %i.w)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph60.i.i.i.i, label %.loopexit28

.lr.ph60.i.i.i.i:                                 ; preds = %.noexc9
  %i.y = mul nsw i64 %i.p, %i.q
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph60.i.i.i.i
  %.0 = phi ptr [ %i.i, %.lr.ph60.i.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.z, %.lr.ph60.i.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i.i ] ; 6 uses
  %.02459.i.i.i.i = phi i64 [ 0, %.lr.ph60.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.aj = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc10:                                         ; preds = %bb.d
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.aj to i16 ; 6 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.aj, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ak = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ak, label %.preheader.i.i.i.i, label %bb.t

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.al = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.am = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.am, label %.lr.ph57.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph57.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.an = add i64 %.02459.i.i.i.i, %i.al
  br label %.lr.ph57.i.i.i.i

end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal128TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a

bb.f:                                             ; preds = %.noexc12
  store i64 32767, ptr %13, align 8
  store i64 0, ptr %i.af, align 8
  %i.ax = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.ax, label %bb.g, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc13
  %.pre.i.i.i.i.i = load i64, ptr %16, align 8, !tbaa !177
  br label %bb.s

.critedge6.i.i.i.i.i.i:                           ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !3046
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !3047
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !175, !noalias !3047, !nonnull !90, !align !176
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !3047 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !3046

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3046
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3047
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3046
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3047
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.bb = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3046 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ah
  br i1 %i.bc, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.bd = load i64, ptr %i.ah, align 8, !tbaa !69, !noalias !3046
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3046 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ah
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.bi = load i64, ptr %i.ah, align 8, !tbaa !69, !noalias !3046
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3046
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3046
  %i.bk = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i36.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i36.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bq, align 8, !tbaa !43
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !44
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !46
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #26, !inline_history !3041
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #26, !inline_history !3041
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bt, %bb.p ], [ %i.cd, %bb.q ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ce, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !102 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !69
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i:            ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cl = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.cl, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.cm = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.as, %.critedge.i.i.i.i.i.i ]
  %i.cn = trunc i64 %i.cm to i16
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i16 [ %i.cn, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.co = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.cp = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.cq = add nuw nsw i64 %.02356.i.i.i.i, 1      ; 2 uses
  %exitcond67.not.i.i.i.i = icmp eq i64 %i.cq, %i.al
  br i1 %exitcond67.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph57.i.i.i.i, !llvm.loop !3042

bb.t:                                             ; preds = %.noexc10
  %i.cr = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.cr, label %.preheader41.i.i.i.i, label %.preheader43.i.i.i.i

.preheader43.i.i.i.i:                             ; preds = %bb.t
  %i.cs = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ct = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ct, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader41.i.i.i.i:                             ; preds = %bb.t
  %i.cu = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cu, label %.lr.ph51.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph51.i.i.i.i:                                 ; preds = %.preheader41.i.i.i.i
  %i.cv = zext nneg i32 %i.aj to i64              ; 3 uses
  %i.cw = shl nuw nsw i64 %i.cv, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.cw, i1 false), !tbaa !164
  %i.cx = mul nsw i64 %i.cv, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cx
  %scevgep66.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cw
  %i.cy = add i64 %.02459.i.i.i.i, %i.cv
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader43.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.dy, %bb.ab ], [ %.0, %.preheader43.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader43.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i = phi i64 [ %i.dz, %bb.ab ], [ 0, %.preheader43.i.i.i.i ]
  %.347.i.i.i.i = phi i64 [ %i.ea, %bb.ab ], [ %.02459.i.i.i.i, %.preheader43.i.i.i.i ] ; 2 uses
  %i.cz = add nsw i64 %.347.i.i.i.i, %i.p         ; 2 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !69
  %i.dd = trunc i64 %i.cz to i8
  %i.de = and i8 %i.dd, 7
  %i.df = lshr i8 %i.dc, %i.de
  %i.dg = trunc i8 %i.df to i1
  br i1 %i.dg, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dh = load <2 x i64>, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store <2 x i64> %i.dh, ptr %10, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.di = load i32, ptr %1, align 4, !tbaa !230
  %i.dj = sub nsw i32 0, %i.di
  %i.dk = invoke { i64, i64 } @_ZNK5arrow15BasicDecimal12815IncreaseScaleByEi(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %i.dj)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %bb.u
  %i.dl = extractvalue { i64, i64 } %i.dk, 0      ; 2 uses
  store i64 %i.dl, ptr %11, align 8
  %i.dm = extractvalue { i64, i64 } %i.dk, 1
  store i64 %i.dm, ptr %i.aa, align 8
  %i.dn = load i8, ptr %i.ai, align 4, !tbaa !231, !range !89, !noundef !90
  %i.do = trunc nuw i8 %i.dn to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.do, label %.critedge.i.i34.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  store i64 -32768, ptr %7, align 8
  store i64 -1, ptr %i.ab, align 8
  %i.dp = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.dp, label %.critedge6.i.i33.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  store i64 32767, ptr %8, align 8
  store i64 0, ptr %i.ac, align 8
  %i.dq = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.dq, label %bb.x, label %._crit_edge.i28.i.i.i.i

._crit_edge.i28.i.i.i.i:                          ; preds = %.noexc17
  %.pre.i29.i.i.i.i = load i64, ptr %11, align 8, !tbaa !177
  br label %bb.aa

.critedge6.i.i33.i.i.i.i:                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i33.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.dr = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i31.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i31.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !88, !range !89, !noundef !90
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i:          ; preds = %bb.z, %bb.y, %.noexc18
  %i.dv = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dv, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i

.critedge.i.i34.i.i.i.i:                          ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i34.i.i.i.i, %._crit_edge.i28.i.i.i.i
  %i.dw = phi i64 [ %.pre.i29.i.i.i.i, %._crit_edge.i28.i.i.i.i ], [ %i.dl, %.critedge.i.i34.i.i.i.i ]
  %i.dx = trunc i64 %i.dw to i16
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i

_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i
  %.0.i.i30.i.i.i.i = phi i16 [ %i.dx, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i30.i.i.i.i, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dz = add nuw nsw i64 %.048.i.i.i.i, 1        ; 2 uses
  %i.ea = add nsw i64 %.347.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dz, %i.cs
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit61.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3043

.loopexit.loopexit61.i.i.i.i:                     ; preds = %bb.ab
  %i.eb = add i64 %.02459.i.i.i.i, %i.cs
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit61.i.i.i.i, %.lr.ph51.i.i.i.i, %.preheader41.i.i.i.i, %.preheader43.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader43.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep66.i.i.i.i, %.lr.ph51.i.i.i.i ], [ %.0, %.preheader41.i.i.i.i ], [ %i.dy, %.loopexit.loopexit61.i.i.i.i ], [ %i.co, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader43.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph51.i.i.i.i ], [ %.0.i.i.i, %.preheader41.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit61.i.i.i.i ], [ %i.cp, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02459.i.i.i.i, %.preheader43.i.i.i.i ], [ %.02459.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cy, %.lr.ph51.i.i.i.i ], [ %.02459.i.i.i.i, %.preheader41.i.i.i.i ], [ %i.eb, %.loopexit.loopexit61.i.i.i.i ], [ %i.an, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.ec = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.ec, label %bb.d, label %.loopexit28, !llvm.loop !3044

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph57.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.ba, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ed = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.ed, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !88, !range !89, !noundef !90
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal128TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %8 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Decimal128", align 16 ; 4 uses
  %11 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %12 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %13 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::Decimal128", align 16 ; 4 uses
  %16 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3059
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal128TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a

bb.f:                                             ; preds = %.noexc12
  store i64 32767, ptr %13, align 8
  store i64 0, ptr %i.af, align 8
  %i.aw = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.aw, label %bb.g, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc13
  %.pre.i.i.i.i.i = load i64, ptr %16, align 8, !tbaa !177
  br label %bb.s

.critedge6.i.i.i.i.i.i:                           ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !3060
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !3061
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !175, !noalias !3061, !nonnull !90, !align !176
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !3061 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !3060

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3060
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3061
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3060
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3061
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.ba = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3060 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ah
  br i1 %i.bb, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.bc = load i64, ptr %i.ah, align 8, !tbaa !69, !noalias !3060
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3060 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ah
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.bh = load i64, ptr %i.ah, align 8, !tbaa !69, !noalias !3060
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3060
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3060
  %i.bj = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i36.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i36.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bp, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !44
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #26, !inline_history !3055
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !46
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #26, !inline_history !3055
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bs, %bb.p ], [ %i.cc, %bb.q ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cd, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !102 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !69
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i:            ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.ck = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.ck, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.cl = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ar, %.critedge.i.i.i.i.i.i ]
  %i.cm = trunc i64 %i.cl to i16
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i16 [ %i.cm, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.cn = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.co = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.cp = add nuw nsw i64 %.02356.i.i.i.i, 1      ; 2 uses
  %exitcond67.not.i.i.i.i = icmp eq i64 %i.cp, %i.al
  br i1 %exitcond67.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph57.i.i.i.i, !llvm.loop !3056

bb.t:                                             ; preds = %.noexc10
  %i.cq = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.cq, label %.preheader41.i.i.i.i, label %.preheader43.i.i.i.i

.preheader43.i.i.i.i:                             ; preds = %bb.t
  %i.cr = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cs = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader41.i.i.i.i:                             ; preds = %bb.t
  %i.ct = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ct, label %.lr.ph51.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph51.i.i.i.i:                                 ; preds = %.preheader41.i.i.i.i
  %i.cu = zext nneg i32 %i.aj to i64              ; 3 uses
  %i.cv = shl nuw nsw i64 %i.cu, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.cv, i1 false), !tbaa !164
  %i.cw = mul nsw i64 %i.cu, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cw
  %scevgep66.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cv
  %i.cx = add i64 %.02459.i.i.i.i, %i.cu
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader43.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.dw, %bb.ab ], [ %.0, %.preheader43.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader43.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i = phi i64 [ %i.dx, %bb.ab ], [ 0, %.preheader43.i.i.i.i ]
  %.347.i.i.i.i = phi i64 [ %i.dy, %bb.ab ], [ %.02459.i.i.i.i, %.preheader43.i.i.i.i ] ; 2 uses
  %i.cy = add nsw i64 %.347.i.i.i.i, %i.p         ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !69
  %i.dc = trunc i64 %i.cy to i8
  %i.dd = and i8 %i.dc, 7
  %i.de = lshr i8 %i.db, %i.dd
  %i.df = trunc i8 %i.de to i1
  br i1 %i.df, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dg = load <2 x i64>, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store <2 x i64> %i.dg, ptr %10, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.dh = load i32, ptr %1, align 4, !tbaa !230
  %i.di = invoke { i64, i64 } @_ZNK5arrow15BasicDecimal12813ReduceScaleByEib(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %i.dh, i1 noundef zeroext false)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %bb.u
  %i.dj = extractvalue { i64, i64 } %i.di, 0      ; 2 uses
  store i64 %i.dj, ptr %11, align 8
  %i.dk = extractvalue { i64, i64 } %i.di, 1
  store i64 %i.dk, ptr %i.aa, align 8
  %i.dl = load i8, ptr %i.ai, align 4, !tbaa !231, !range !89, !noundef !90
  %i.dm = trunc nuw i8 %i.dl to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.dm, label %.critedge.i.i34.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  store i64 -32768, ptr %7, align 8
  store i64 -1, ptr %i.ab, align 8
  %i.dn = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.dn, label %.critedge6.i.i33.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  store i64 32767, ptr %8, align 8
  store i64 0, ptr %i.ac, align 8
  %i.do = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.do, label %bb.x, label %._crit_edge.i28.i.i.i.i

._crit_edge.i28.i.i.i.i:                          ; preds = %.noexc17
  %.pre.i29.i.i.i.i = load i64, ptr %11, align 8, !tbaa !177
  br label %bb.aa

.critedge6.i.i33.i.i.i.i:                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i33.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.dp = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i31.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i31.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !88, !range !89, !noundef !90
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i:          ; preds = %bb.z, %bb.y, %.noexc18
  %i.dt = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dt, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i

.critedge.i.i34.i.i.i.i:                          ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i34.i.i.i.i, %._crit_edge.i28.i.i.i.i
  %i.du = phi i64 [ %.pre.i29.i.i.i.i, %._crit_edge.i28.i.i.i.i ], [ %i.dj, %.critedge.i.i34.i.i.i.i ]
  %i.dv = trunc i64 %i.du to i16
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i

_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i
  %.0.i.i30.i.i.i.i = phi i16 [ %i.dv, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i30.i.i.i.i, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dx = add nuw nsw i64 %.048.i.i.i.i, 1        ; 2 uses
  %i.dy = add nsw i64 %.347.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dx, %i.cr
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit61.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3057

.loopexit.loopexit61.i.i.i.i:                     ; preds = %bb.ab
  %i.dz = add i64 %.02459.i.i.i.i, %i.cr
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit61.i.i.i.i, %.lr.ph51.i.i.i.i, %.preheader41.i.i.i.i, %.preheader43.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader43.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep66.i.i.i.i, %.lr.ph51.i.i.i.i ], [ %.0, %.preheader41.i.i.i.i ], [ %i.dw, %.loopexit.loopexit61.i.i.i.i ], [ %i.cn, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader43.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph51.i.i.i.i ], [ %.0.i.i.i, %.preheader41.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit61.i.i.i.i ], [ %i.co, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02459.i.i.i.i, %.preheader43.i.i.i.i ], [ %.02459.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cx, %.lr.ph51.i.i.i.i ], [ %.02459.i.i.i.i, %.preheader41.i.i.i.i ], [ %i.dz, %.loopexit.loopexit61.i.i.i.i ], [ %i.an, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.ea = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.ea, label %bb.d, label %.loopexit28, !llvm.loop !3058

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph57.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.az, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.eb = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.eb, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !88, !range !89, !noundef !90
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal128TypeENS1_27SafeRescaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3068
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %3, align 8, !tbaa !213    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3064

.noexc8:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !159  ; 3 uses
  %i.q = sext i32 %i.n to i64                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !163  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.u, i64 noundef %i.p, i64 noundef %i.w)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph49.i.preheader.i.i.i, label %.loopexit25

.lr.ph49.i.preheader.i.i.i:                       ; preds = %.noexc9
  %i.y = mul nsw i64 %i.p, %i.q
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 %i.y
  br label %.lr.ph49.i.i.i.i

.lr.ph49.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i, %.lr.ph49.i.preheader.i.i.i
  %.0 = phi ptr [ %i.i, %.lr.ph49.i.preheader.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.z, %.lr.ph49.i.preheader.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i.i ] ; 6 uses
  %.02448.i.i.i.i = phi i64 [ 0, %.lr.ph49.i.preheader.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.aa = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc10:                                         ; preds = %.lr.ph49.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.aa to i16 ; 6 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.aa, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ab = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ab, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.ac = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ad = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ad, label %.lr.ph46.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph46.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc11
  %.3 = phi ptr [ %i.ag, %.noexc11 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.4.i.i.i = phi ptr [ %i.ah, %.noexc11 ], [ %.0.i.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %.02345.i.i.i.i = phi i64 [ %i.ai, %.noexc11 ], [ 0, %.preheader.i.i.i.i ]
  %.val1.i.i.i.i.i = load i64, ptr %.4.i.i.i, align 1
  %i.ae = getelementptr i8, ptr %.4.i.i.i, i64 8
  %.val2.i.i.i.i.i = load i64, ptr %i.ae, align 1
  %i.af = invoke noundef signext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, i64 %.val1.i.i.i.i.i, i64 %.val2.i.i.i.i.i, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %.lr.ph46.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.af, ptr %.3, align 2, !tbaa !164
  %i.ah = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ai = add nuw nsw i64 %.02345.i.i.i.i, 1      ; 2 uses
  %exitcond56.not.i.i.i.i = icmp eq i64 %i.ai, %i.ac
  br i1 %exitcond56.not.i.i.i.i, label %.loopexit.loopexit.i.i.i.i, label %.lr.ph46.i.i.i.i, !llvm.loop !3065

bb.d:                                             ; preds = %.noexc10
  %i.aj = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.aj, label %.preheader32.i.i.i.i, label %.preheader34.i.i.i.i

.preheader34.i.i.i.i:                             ; preds = %bb.d
  %i.ak = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.al = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader32.i.i.i.i:                             ; preds = %bb.d
  %i.am = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.am, label %.lr.ph40.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph40.i.i.i.i:                                 ; preds = %.preheader32.i.i.i.i
  %i.an = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.ao = shl nuw nsw i64 %i.an, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.ao, i1 false), !tbaa !164
  %i.ap = mul nsw i64 %i.an, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.ap
  %scevgep55.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.ao
  %i.aq = add i64 %.02448.i.i.i.i, %i.an
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader34.i.i.i.i, %.noexc12
  %.2 = phi ptr [ %i.bb, %.noexc12 ], [ %.0, %.preheader34.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %.noexc12 ], [ %.0.i.i.i, %.preheader34.i.i.i.i ] ; 3 uses
  %.037.i.i.i.i = phi i64 [ %i.bc, %.noexc12 ], [ 0, %.preheader34.i.i.i.i ]
  %.336.i.i.i.i = phi i64 [ %i.bd, %.noexc12 ], [ %.02448.i.i.i.i, %.preheader34.i.i.i.i ] ; 2 uses
  %i.ar = add nsw i64 %.336.i.i.i.i, %i.p         ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69
  %i.av = trunc i64 %i.ar to i8
  %i.aw = and i8 %i.av, 7
  %i.ax = lshr i8 %i.au, %i.aw
  %i.ay = trunc i8 %i.ax to i1
  br i1 %i.ay, label %bb.e, label %.noexc12

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %.val1.i26.i.i.i.i = load i64, ptr %.2.i.i.i, align 1
  %i.az = getelementptr i8, ptr %.2.i.i.i, i64 8
  %.val2.i27.i.i.i.i = load i64, ptr %i.az, align 1
  %i.ba = invoke noundef signext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, i64 %.val1.i26.i.i.i.i, i64 %.val2.i27.i.i.i.i, ptr noundef nonnull %0)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.ba, %bb.e ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.bc = add nuw nsw i64 %.037.i.i.i.i, 1        ; 2 uses
  %i.bd = add nsw i64 %.336.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bc, %i.ak
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit50.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3066

.loopexit.loopexit.i.i.i.i:                       ; preds = %.noexc11
  %i.be = add i64 %.02448.i.i.i.i, %i.ac
  br label %.loopexit.i.i.i.i

.loopexit.loopexit50.i.i.i.i:                     ; preds = %.noexc12
  %i.bf = add i64 %.02448.i.i.i.i, %i.ak
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.loopexit50.i.i.i.i, %.loopexit.loopexit.i.i.i.i, %.lr.ph40.i.i.i.i, %.preheader32.i.i.i.i, %.preheader34.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %i.ag, %.loopexit.loopexit.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep55.i.i.i.i, %.lr.ph40.i.i.i.i ], [ %.0, %.preheader32.i.i.i.i ], [ %i.bb, %.loopexit.loopexit50.i.i.i.i ], [ %.0, %.preheader34.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %i.ah, %.loopexit.loopexit.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph40.i.i.i.i ], [ %.0.i.i.i, %.preheader32.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit50.i.i.i.i ], [ %.0.i.i.i, %.preheader34.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %i.be, %.loopexit.loopexit.i.i.i.i ], [ %.02448.i.i.i.i, %.preheader.i.i.i.i ], [ %i.aq, %.lr.ph40.i.i.i.i ], [ %.02448.i.i.i.i, %.preheader32.i.i.i.i ], [ %i.bf, %.loopexit.loopexit50.i.i.i.i ], [ %.02448.i.i.i.i, %.preheader34.i.i.i.i ] ; 2 uses
  %i.bg = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.bg, label %.lr.ph49.i.i.i.i, label %.loopexit25, !llvm.loop !3067

.loopexit25:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %.lr.ph46.i.i.i.i, %.lr.ph49.i.i.i.i, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f, !prof !78

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f, %bb.g
  resume { ptr, i32 } %lpad.loopexit.split-lp56
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef signext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %0, ptr noundef %1, i64 %2, i64 %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %6 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.arrow::Decimal128", align 8 ; 6 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %10 = alloca %"class.arrow::Decimal128", align 8 ; 3 uses
  %11 = alloca %"class.arrow::Result.424", align 8 ; 13 uses
  store i64 %2, ptr %10, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %3, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.b = load i32, ptr %0, align 4, !tbaa !230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3071)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !3071
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !3071
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !3071
  %i.c = call noundef i32 @_ZNK5arrow15BasicDecimal1287RescaleEiiPS0_(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %i.b, i32 noundef 0, ptr noundef nonnull %8), !noalias !3071
  call void @_ZN5arrow8internal13ToArrowStatusENS_13DecimalStatusE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i32 noundef %i.c), !noalias !3071
  %i.d = load ptr, ptr %9, align 8, !tbaa !77, !noalias !3071
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK5arrow10Decimal1287RescaleEii.exit.thread, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_10Decimal128EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(8) %9) #26
  %i.f = load ptr, ptr %9, align 8, !tbaa !77, !noalias !3071 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK5arrow10Decimal1287RescaleEii.exit, label %bb.c, !prof !78

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !88, !range !89, !noundef !90
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNK5arrow10Decimal1287RescaleEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #26
  br label %_ZNK5arrow10Decimal1287RescaleEii.exit

_ZNK5arrow10Decimal1287RescaleEii.exit.thread:    ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !3071
  store ptr null, ptr %11, align 8, !tbaa !77, !alias.scope !3071
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !3071
  br label %bb.j

_ZNK5arrow10Decimal1287RescaleEii.exit:           ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !3071
  %.pr = load ptr, ptr %11, align 8, !tbaa !77    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !3071
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %bb.j, label %bb.e, !prof !191

bb.e:                                             ; preds = %_ZNK5arrow10Decimal1287RescaleEii.exit
  %i.l = load ptr, ptr %4, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.l, %.pr
  br i1 %.not.i, label %_ZN5arrow6StatusaSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZN5arrow6StatusaSERKS0_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %11, align 8, !tbaa !77    ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i.i6, label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !88, !range !89, !noundef !90
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #26
  br label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit

_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit:      ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  resume { ptr, i32 } %i.m

bb.j:                                             ; preds = %_ZNK5arrow10Decimal1287RescaleEii.exit.thread, %_ZNK5arrow10Decimal1287RescaleEii.exit
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 4, !tbaa !231, !range !89, !noundef !90
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  br i1 %i.u, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 -32768, ptr %5, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -1, ptr %i.v, align 8
  %i.w = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc10 unwind label %bb.g

.noexc10:                                         ; preds = %bb.k
  br i1 %i.w, label %.critedge6.i, label %bb.l, !prof !92

bb.l:                                             ; preds = %.noexc10
  store i64 32767, ptr %6, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.x, align 8
  %i.y = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc11 unwind label %bb.g

.noexc11:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %i.y, label %bb.m, label %bb.p

.critedge6.i:                                     ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.m

end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_13Decimal32TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %i.an, label %.critedge6.i.i.i.i.i.i, label %bb.f, !prof !92

bb.f:                                             ; preds = %.noexc12
  store i32 32767, ptr %13, align 4, !tbaa !195
  %i.ao = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %16, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.ao, label %bb.g, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc13
  %.pre.i.i.i.i.i = load i32, ptr %16, align 4, !tbaa !195
  br label %bb.s

.critedge6.i.i.i.i.i.i:                           ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !3084
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !3085
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !175, !noalias !3085, !nonnull !90, !align !176
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !3085 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !3084

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3084
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3085
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3084
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3085
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.as = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3084 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ab
  br i1 %i.at, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.au = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !3084
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3084 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ab
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.az = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !3084
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3084
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3084
  %i.bb = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !88, !range !89, !noundef !90
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i35.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i35.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bh, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !44
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26, !inline_history !3079
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26, !inline_history !3079
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.p ], [ %i.bu, %bb.q ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !102 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !69
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i:            ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cc = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.cc, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.cd = phi i32 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ak, %.critedge.i.i.i.i.i.i ]
  %i.ce = trunc i32 %i.cd to i16
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i16 [ %i.ce, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.cf = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.cg = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ch = add nuw nsw i64 %.02355.i.i.i.i, 1      ; 2 uses
  %exitcond66.not.i.i.i.i = icmp eq i64 %i.ch, %i.af
  br i1 %exitcond66.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph56.i.i.i.i, !llvm.loop !3080

bb.t:                                             ; preds = %.noexc10
  %i.ci = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ci, label %.preheader40.i.i.i.i, label %.preheader42.i.i.i.i

.preheader42.i.i.i.i:                             ; preds = %bb.t
  %i.cj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ck = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ck, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader40.i.i.i.i:                             ; preds = %bb.t
  %i.cl = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cl, label %.lr.ph50.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph50.i.i.i.i:                                 ; preds = %.preheader40.i.i.i.i
  %i.cm = zext nneg i32 %i.ad to i64              ; 3 uses
  %i.cn = shl nuw nsw i64 %i.cm, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.cn, i1 false), !tbaa !164
  %i.co = mul nsw i64 %i.cm, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.co
  %scevgep65.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cn
  %i.cp = add i64 %.02458.i.i.i.i, %i.cm
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader42.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.dm, %bb.ab ], [ %.0, %.preheader42.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %.047.i.i.i.i = phi i64 [ %i.dn, %bb.ab ], [ 0, %.preheader42.i.i.i.i ]
  %.346.i.i.i.i = phi i64 [ %i.do, %bb.ab ], [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %i.cq = add nsw i64 %.346.i.i.i.i, %i.p         ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !69
  %i.cu = trunc i64 %i.cq to i8
  %i.cv = and i8 %i.cu, 7
  %i.cw = lshr i8 %i.ct, %i.cv
  %i.cx = trunc i8 %i.cw to i1
  br i1 %i.cx, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %.val1.i26.i.i.i.i = load i32, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i32 %.val1.i26.i.i.i.i, ptr %10, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cy = load i32, ptr %1, align 4, !tbaa !230
  %i.cz = sub nsw i32 0, %i.cy
  %i.da = invoke i32 @_ZNK5arrow14BasicDecimal3215IncreaseScaleByEi(ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %i.cz)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %bb.u
  store i32 %i.da, ptr %11, align 4
  %i.db = load i8, ptr %i.ac, align 4, !tbaa !231, !range !89, !noundef !90
  %i.dc = trunc nuw i8 %i.db to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.dc, label %.critedge.i.i33.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  store i32 -32768, ptr %7, align 4, !tbaa !195
  %i.dd = invoke noundef zeroext i1 @_ZN5arrowltERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.dd, label %.critedge6.i.i32.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  store i32 32767, ptr %8, align 4, !tbaa !195
  %i.de = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.de, label %bb.x, label %._crit_edge.i27.i.i.i.i

._crit_edge.i27.i.i.i.i:                          ; preds = %.noexc17
  %.pre.i28.i.i.i.i = load i32, ptr %11, align 4, !tbaa !195
  br label %bb.aa

.critedge6.i.i32.i.i.i.i:                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i32.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.df = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i30.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i30.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !88, !range !89, !noundef !90
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i:          ; preds = %bb.z, %bb.y, %.noexc18
  %i.dj = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dj, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

.critedge.i.i33.i.i.i.i:                          ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i33.i.i.i.i, %._crit_edge.i27.i.i.i.i
  %i.dk = phi i32 [ %.pre.i28.i.i.i.i, %._crit_edge.i27.i.i.i.i ], [ %i.da, %.critedge.i.i33.i.i.i.i ]
  %i.dl = trunc i32 %i.dk to i16
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i
  %.0.i.i29.i.i.i.i = phi i16 [ %i.dl, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i29.i.i.i.i, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dn = add nuw nsw i64 %.047.i.i.i.i, 1        ; 2 uses
  %i.do = add nsw i64 %.346.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dn, %i.cj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit60.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3081

.loopexit.loopexit60.i.i.i.i:                     ; preds = %bb.ab
  %i.dp = add i64 %.02458.i.i.i.i, %i.cj
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit60.i.i.i.i, %.lr.ph50.i.i.i.i, %.preheader40.i.i.i.i, %.preheader42.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader42.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep65.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0, %.preheader40.i.i.i.i ], [ %i.dm, %.loopexit.loopexit60.i.i.i.i ], [ %i.cf, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader42.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0.i.i.i, %.preheader40.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit60.i.i.i.i ], [ %i.cg, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cp, %.lr.ph50.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader40.i.i.i.i ], [ %i.dp, %.loopexit.loopexit60.i.i.i.i ], [ %i.ah, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.dq = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.dq, label %bb.d, label %.loopexit28, !llvm.loop !3082

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph56.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.ar, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dr = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.dr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !88, !range !89, !noundef !90
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_13Decimal32TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %8 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Decimal32", align 4 ; 4 uses
  %11 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %12 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %13 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::Decimal32", align 4 ; 4 uses
  %16 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3097
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_13Decimal32TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %i.am, label %.critedge6.i.i.i.i.i.i, label %bb.f, !prof !92

bb.f:                                             ; preds = %.noexc12
  store i32 32767, ptr %13, align 4, !tbaa !195
  %i.an = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %16, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.an, label %bb.g, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc13
  %.pre.i.i.i.i.i = load i32, ptr %16, align 4, !tbaa !195
  br label %bb.s

.critedge6.i.i.i.i.i.i:                           ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !3098
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !3099
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !175, !noalias !3099, !nonnull !90, !align !176
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !3099 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !3098

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3098
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3099
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3098
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3099
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.ar = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3098 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ab
  br i1 %i.as, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.at = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !3098
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3098 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ab
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.ay = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !3098
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3098
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3098
  %i.ba = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i35.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i35.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bg, align 8, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !44
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !46
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26, !inline_history !3093
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26, !inline_history !3093
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.p ], [ %i.bt, %bb.q ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !102 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !69
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i:            ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cb = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.cb, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.cc = phi i32 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.aj, %.critedge.i.i.i.i.i.i ]
  %i.cd = trunc i32 %i.cc to i16
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i16 [ %i.cd, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.ce = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.cf = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.cg = add nuw nsw i64 %.02355.i.i.i.i, 1      ; 2 uses
  %exitcond66.not.i.i.i.i = icmp eq i64 %i.cg, %i.af
  br i1 %exitcond66.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph56.i.i.i.i, !llvm.loop !3094

bb.t:                                             ; preds = %.noexc10
  %i.ch = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ch, label %.preheader40.i.i.i.i, label %.preheader42.i.i.i.i

.preheader42.i.i.i.i:                             ; preds = %bb.t
  %i.ci = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cj = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader40.i.i.i.i:                             ; preds = %bb.t
  %i.ck = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ck, label %.lr.ph50.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph50.i.i.i.i:                                 ; preds = %.preheader40.i.i.i.i
  %i.cl = zext nneg i32 %i.ad to i64              ; 3 uses
  %i.cm = shl nuw nsw i64 %i.cl, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.cm, i1 false), !tbaa !164
  %i.cn = mul nsw i64 %i.cl, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cn
  %scevgep65.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cm
  %i.co = add i64 %.02458.i.i.i.i, %i.cl
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader42.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.dk, %bb.ab ], [ %.0, %.preheader42.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %.047.i.i.i.i = phi i64 [ %i.dl, %bb.ab ], [ 0, %.preheader42.i.i.i.i ]
  %.346.i.i.i.i = phi i64 [ %i.dm, %bb.ab ], [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %i.cp = add nsw i64 %.346.i.i.i.i, %i.p         ; 2 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !69
  %i.ct = trunc i64 %i.cp to i8
  %i.cu = and i8 %i.ct, 7
  %i.cv = lshr i8 %i.cs, %i.cu
  %i.cw = trunc i8 %i.cv to i1
  br i1 %i.cw, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %.val1.i26.i.i.i.i = load i32, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i32 %.val1.i26.i.i.i.i, ptr %10, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cx = load i32, ptr %1, align 4, !tbaa !230
  %i.cy = invoke i32 @_ZNK5arrow14BasicDecimal3213ReduceScaleByEib(ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %i.cx, i1 noundef zeroext false)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %bb.u
  store i32 %i.cy, ptr %11, align 4
  %i.cz = load i8, ptr %i.ac, align 4, !tbaa !231, !range !89, !noundef !90
  %i.da = trunc nuw i8 %i.cz to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.da, label %.critedge.i.i33.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  store i32 -32768, ptr %7, align 4, !tbaa !195
  %i.db = invoke noundef zeroext i1 @_ZN5arrowltERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.db, label %.critedge6.i.i32.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  store i32 32767, ptr %8, align 4, !tbaa !195
  %i.dc = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.dc, label %bb.x, label %._crit_edge.i27.i.i.i.i

._crit_edge.i27.i.i.i.i:                          ; preds = %.noexc17
  %.pre.i28.i.i.i.i = load i32, ptr %11, align 4, !tbaa !195
  br label %bb.aa

.critedge6.i.i32.i.i.i.i:                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i32.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.dd = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i30.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i30.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !88, !range !89, !noundef !90
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i:          ; preds = %bb.z, %bb.y, %.noexc18
  %i.dh = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dh, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

.critedge.i.i33.i.i.i.i:                          ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i33.i.i.i.i, %._crit_edge.i27.i.i.i.i
  %i.di = phi i32 [ %.pre.i28.i.i.i.i, %._crit_edge.i27.i.i.i.i ], [ %i.cy, %.critedge.i.i33.i.i.i.i ]
  %i.dj = trunc i32 %i.di to i16
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i
  %.0.i.i29.i.i.i.i = phi i16 [ %i.dj, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i29.i.i.i.i, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dl = add nuw nsw i64 %.047.i.i.i.i, 1        ; 2 uses
  %i.dm = add nsw i64 %.346.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dl, %i.ci
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit60.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3095

.loopexit.loopexit60.i.i.i.i:                     ; preds = %bb.ab
  %i.dn = add i64 %.02458.i.i.i.i, %i.ci
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit60.i.i.i.i, %.lr.ph50.i.i.i.i, %.preheader40.i.i.i.i, %.preheader42.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader42.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep65.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0, %.preheader40.i.i.i.i ], [ %i.dk, %.loopexit.loopexit60.i.i.i.i ], [ %i.ce, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader42.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0.i.i.i, %.preheader40.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit60.i.i.i.i ], [ %i.cf, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader.i.i.i.i ], [ %i.co, %.lr.ph50.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader40.i.i.i.i ], [ %i.dn, %.loopexit.loopexit60.i.i.i.i ], [ %i.ah, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.do = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.do, label %bb.d, label %.loopexit28, !llvm.loop !3096

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph56.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.aq, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dp = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !88, !range !89, !noundef !90
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_13Decimal32TypeENS1_27SafeRescaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3106
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %3, align 8, !tbaa !213    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3102

.noexc8:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !159  ; 3 uses
  %i.q = sext i32 %i.n to i64                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !163  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.u, i64 noundef %i.p, i64 noundef %i.w)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph48.i.preheader.i.i.i, label %.loopexit25

.lr.ph48.i.preheader.i.i.i:                       ; preds = %.noexc9
  %i.y = mul nsw i64 %i.p, %i.q
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 %i.y
  br label %.lr.ph48.i.i.i.i

.lr.ph48.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i, %.lr.ph48.i.preheader.i.i.i
  %.0 = phi ptr [ %i.i, %.lr.ph48.i.preheader.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.z, %.lr.ph48.i.preheader.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i.i ] ; 6 uses
  %.02447.i.i.i.i = phi i64 [ 0, %.lr.ph48.i.preheader.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.aa = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc10:                                         ; preds = %.lr.ph48.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.aa to i16 ; 6 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.aa, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ab = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ab, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.ac = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ad = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ad, label %.lr.ph45.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc11
  %.3 = phi ptr [ %i.af, %.noexc11 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.4.i.i.i = phi ptr [ %i.ag, %.noexc11 ], [ %.0.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.02344.i.i.i.i = phi i64 [ %i.ah, %.noexc11 ], [ 0, %.preheader.i.i.i.i ]
  %.val1.i.i.i.i.i = load i32, ptr %.4.i.i.i, align 1
  %i.ae = invoke noundef signext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, i32 %.val1.i.i.i.i.i, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %.lr.ph45.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ae, ptr %.3, align 2, !tbaa !164
  %i.ag = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ah = add nuw nsw i64 %.02344.i.i.i.i, 1      ; 2 uses
  %exitcond55.not.i.i.i.i = icmp eq i64 %i.ah, %i.ac
  br i1 %exitcond55.not.i.i.i.i, label %.loopexit.loopexit.i.i.i.i, label %.lr.ph45.i.i.i.i, !llvm.loop !3103

bb.d:                                             ; preds = %.noexc10
  %i.ai = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ai, label %.preheader31.i.i.i.i, label %.preheader33.i.i.i.i

.preheader33.i.i.i.i:                             ; preds = %bb.d
  %i.aj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader31.i.i.i.i:                             ; preds = %bb.d
  %i.al = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.al, label %.lr.ph39.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph39.i.i.i.i:                                 ; preds = %.preheader31.i.i.i.i
  %i.am = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.an = shl nuw nsw i64 %i.am, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.an, i1 false), !tbaa !164
  %i.ao = mul nsw i64 %i.am, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.ao
  %scevgep54.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.an
  %i.ap = add i64 %.02447.i.i.i.i, %i.am
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader33.i.i.i.i, %.noexc12
  %.2 = phi ptr [ %i.az, %.noexc12 ], [ %.0, %.preheader33.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %.noexc12 ], [ %.0.i.i.i, %.preheader33.i.i.i.i ] ; 2 uses
  %.036.i.i.i.i = phi i64 [ %i.ba, %.noexc12 ], [ 0, %.preheader33.i.i.i.i ]
  %.335.i.i.i.i = phi i64 [ %i.bb, %.noexc12 ], [ %.02447.i.i.i.i, %.preheader33.i.i.i.i ] ; 2 uses
  %i.aq = add nsw i64 %.335.i.i.i.i, %i.p         ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !69
  %i.au = trunc i64 %i.aq to i8
  %i.av = and i8 %i.au, 7
  %i.aw = lshr i8 %i.at, %i.av
  %i.ax = trunc i8 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %.noexc12

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %.val1.i26.i.i.i.i = load i32, ptr %.2.i.i.i, align 1
  %i.ay = invoke noundef signext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, i32 %.val1.i26.i.i.i.i, ptr noundef nonnull %0)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.ay, %bb.e ]
  %i.az = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.ba = add nuw nsw i64 %.036.i.i.i.i, 1        ; 2 uses
  %i.bb = add nsw i64 %.335.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit49.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3104

.loopexit.loopexit.i.i.i.i:                       ; preds = %.noexc11
  %i.bc = add i64 %.02447.i.i.i.i, %i.ac
  br label %.loopexit.i.i.i.i

.loopexit.loopexit49.i.i.i.i:                     ; preds = %.noexc12
  %i.bd = add i64 %.02447.i.i.i.i, %i.aj
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.loopexit49.i.i.i.i, %.loopexit.loopexit.i.i.i.i, %.lr.ph39.i.i.i.i, %.preheader31.i.i.i.i, %.preheader33.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %i.af, %.loopexit.loopexit.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep54.i.i.i.i, %.lr.ph39.i.i.i.i ], [ %.0, %.preheader31.i.i.i.i ], [ %i.az, %.loopexit.loopexit49.i.i.i.i ], [ %.0, %.preheader33.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %i.ag, %.loopexit.loopexit.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph39.i.i.i.i ], [ %.0.i.i.i, %.preheader31.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit49.i.i.i.i ], [ %.0.i.i.i, %.preheader33.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %i.bc, %.loopexit.loopexit.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ap, %.lr.ph39.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader31.i.i.i.i ], [ %i.bd, %.loopexit.loopexit49.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader33.i.i.i.i ] ; 2 uses
  %i.be = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.be, label %.lr.ph48.i.i.i.i, label %.loopexit25, !llvm.loop !3105

.loopexit25:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %.lr.ph45.i.i.i.i, %.lr.ph48.i.i.i.i, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f, !prof !78

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f, %bb.g
  resume { ptr, i32 } %lpad.loopexit.split-lp56
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef signext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %5 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Decimal32", align 4  ; 6 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Decimal32", align 4  ; 2 uses
  %10 = alloca %"class.arrow::Result.139", align 8 ; 13 uses
  store i32 %2, ptr %9, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.a = load i32, ptr %0, align 4, !tbaa !230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3109)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !3109
  store i32 0, ptr %7, align 4, !tbaa !195, !noalias !3109
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !3109
  %i.b = call noundef i32 @_ZNK5arrow14BasicDecimal327RescaleEiiPS0_(ptr noundef nonnull align 4 dereferenceable(4) %9, i32 noundef %i.a, i32 noundef 0, ptr noundef nonnull %7), !noalias !3109
  call void @_ZN5arrow8internal13ToArrowStatusENS_13DecimalStatusE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i32 noundef %i.b), !noalias !3109
  %i.c = load ptr, ptr %8, align 8, !tbaa !77, !noalias !3109
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK5arrow9Decimal327RescaleEii.exit.thread, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_9Decimal32EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  %i.e = load ptr, ptr %8, align 8, !tbaa !77, !noalias !3109 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK5arrow9Decimal327RescaleEii.exit, label %bb.c, !prof !78

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !88, !range !89, !noundef !90
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK5arrow9Decimal327RescaleEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br label %_ZNK5arrow9Decimal327RescaleEii.exit

_ZNK5arrow9Decimal327RescaleEii.exit.thread:      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !3109
  store ptr null, ptr %10, align 8, !tbaa !77, !alias.scope !3109
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.j = load i32, ptr %7, align 4, !noalias !3109
  store i32 %i.j, ptr %i.i, align 8, !alias.scope !3109
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !3109
  br label %bb.j

_ZNK5arrow9Decimal327RescaleEii.exit:             ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !3109
  %.pr = load ptr, ptr %10, align 8, !tbaa !77    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !3109
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %bb.j, label %bb.e, !prof !191

bb.e:                                             ; preds = %_ZNK5arrow9Decimal327RescaleEii.exit
  %i.l = load ptr, ptr %3, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.l, %.pr
  br i1 %.not.i, label %_ZN5arrow6StatusaSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6StatusaSERKS0_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %10, align 8, !tbaa !77    ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i.i6, label %_ZN5arrow6ResultINS_9Decimal32EED2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !88, !range !89, !noundef !90
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5arrow6ResultINS_9Decimal32EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %10) #26
  br label %_ZN5arrow6ResultINS_9Decimal32EED2Ev.exit

_ZN5arrow6ResultINS_9Decimal32EED2Ev.exit:        ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  resume { ptr, i32 } %i.m

bb.j:                                             ; preds = %_ZNK5arrow9Decimal327RescaleEii.exit.thread, %_ZNK5arrow9Decimal327RescaleEii.exit
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 4, !tbaa !231, !range !89, !noundef !90
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  br i1 %i.u, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 -32768, ptr %4, align 4, !tbaa !195
  %i.v = invoke noundef zeroext i1 @_ZN5arrowltERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc10 unwind label %bb.g

.noexc10:                                         ; preds = %bb.k
  br i1 %i.v, label %.critedge6.i, label %bb.l, !prof !92

bb.l:                                             ; preds = %.noexc10
  store i32 32767, ptr %5, align 4, !tbaa !195
  %i.w = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %.noexc11 unwind label %bb.g

.noexc11:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.w, label %bb.m, label %bb.p

.critedge6.i:                                     ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.m

bb.m:                                             ; preds = %.critedge6.i, %.noexc11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc12 unwind label %bb.g

.noexc12:                                         ; preds = %bb.m
  %i.x = load ptr, ptr %3, align 8, !tbaa !77     ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_13Decimal64TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %i.an, label %.critedge6.i.i.i.i.i.i, label %bb.f, !prof !92

bb.f:                                             ; preds = %.noexc12
  store i64 32767, ptr %13, align 8, !tbaa !223
  %i.ao = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.ao, label %bb.g, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc13
  %.pre.i.i.i.i.i = load i64, ptr %16, align 8, !tbaa !223
  br label %bb.s

.critedge6.i.i.i.i.i.i:                           ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !3122
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !3123
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !175, !noalias !3123, !nonnull !90, !align !176
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !3123 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !3122

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3122
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3123
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3122
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3123
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.as = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3122 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ab
  br i1 %i.at, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.au = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !3122
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3122 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ab
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.az = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !3122
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3122
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3122
  %i.bb = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !88, !range !89, !noundef !90
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i35.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i35.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bh, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !44
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26, !inline_history !3117
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26, !inline_history !3117
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.p ], [ %i.bu, %bb.q ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !102 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !69
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i:            ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cc = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.cc, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.cd = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ak, %.critedge.i.i.i.i.i.i ]
  %i.ce = trunc i64 %i.cd to i16
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i16 [ %i.ce, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.cf = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.cg = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ch = add nuw nsw i64 %.02355.i.i.i.i, 1      ; 2 uses
  %exitcond66.not.i.i.i.i = icmp eq i64 %i.ch, %i.af
  br i1 %exitcond66.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph56.i.i.i.i, !llvm.loop !3118

bb.t:                                             ; preds = %.noexc10
  %i.ci = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ci, label %.preheader40.i.i.i.i, label %.preheader42.i.i.i.i

.preheader42.i.i.i.i:                             ; preds = %bb.t
  %i.cj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ck = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ck, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader40.i.i.i.i:                             ; preds = %bb.t
  %i.cl = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cl, label %.lr.ph50.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph50.i.i.i.i:                                 ; preds = %.preheader40.i.i.i.i
  %i.cm = zext nneg i32 %i.ad to i64              ; 3 uses
  %i.cn = shl nuw nsw i64 %i.cm, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.cn, i1 false), !tbaa !164
  %i.co = mul nsw i64 %i.cm, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.co
  %scevgep65.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cn
  %i.cp = add i64 %.02458.i.i.i.i, %i.cm
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader42.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.dm, %bb.ab ], [ %.0, %.preheader42.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %.047.i.i.i.i = phi i64 [ %i.dn, %bb.ab ], [ 0, %.preheader42.i.i.i.i ]
  %.346.i.i.i.i = phi i64 [ %i.do, %bb.ab ], [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %i.cq = add nsw i64 %.346.i.i.i.i, %i.p         ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !69
  %i.cu = trunc i64 %i.cq to i8
  %i.cv = and i8 %i.cu, 7
  %i.cw = lshr i8 %i.ct, %i.cv
  %i.cx = trunc i8 %i.cw to i1
  br i1 %i.cx, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %.val1.i26.i.i.i.i = load i64, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i64 %.val1.i26.i.i.i.i, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cy = load i32, ptr %1, align 4, !tbaa !230
  %i.cz = sub nsw i32 0, %i.cy
  %i.da = invoke i64 @_ZNK5arrow14BasicDecimal6415IncreaseScaleByEi(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %i.cz)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %bb.u
  store i64 %i.da, ptr %11, align 8
  %i.db = load i8, ptr %i.ac, align 4, !tbaa !231, !range !89, !noundef !90
  %i.dc = trunc nuw i8 %i.db to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.dc, label %.critedge.i.i33.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  store i64 -32768, ptr %7, align 8, !tbaa !223
  %i.dd = invoke noundef zeroext i1 @_ZN5arrowltERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.dd, label %.critedge6.i.i32.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  store i64 32767, ptr %8, align 8, !tbaa !223
  %i.de = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.de, label %bb.x, label %._crit_edge.i27.i.i.i.i

._crit_edge.i27.i.i.i.i:                          ; preds = %.noexc17
  %.pre.i28.i.i.i.i = load i64, ptr %11, align 8, !tbaa !223
  br label %bb.aa

.critedge6.i.i32.i.i.i.i:                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i32.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.df = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i30.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i30.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !88, !range !89, !noundef !90
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i:          ; preds = %bb.z, %bb.y, %.noexc18
  %i.dj = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dj, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

.critedge.i.i33.i.i.i.i:                          ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i33.i.i.i.i, %._crit_edge.i27.i.i.i.i
  %i.dk = phi i64 [ %.pre.i28.i.i.i.i, %._crit_edge.i27.i.i.i.i ], [ %i.da, %.critedge.i.i33.i.i.i.i ]
  %i.dl = trunc i64 %i.dk to i16
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i
  %.0.i.i29.i.i.i.i = phi i16 [ %i.dl, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i29.i.i.i.i, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dn = add nuw nsw i64 %.047.i.i.i.i, 1        ; 2 uses
  %i.do = add nsw i64 %.346.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dn, %i.cj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit60.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3119

.loopexit.loopexit60.i.i.i.i:                     ; preds = %bb.ab
  %i.dp = add i64 %.02458.i.i.i.i, %i.cj
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit60.i.i.i.i, %.lr.ph50.i.i.i.i, %.preheader40.i.i.i.i, %.preheader42.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader42.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep65.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0, %.preheader40.i.i.i.i ], [ %i.dm, %.loopexit.loopexit60.i.i.i.i ], [ %i.cf, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader42.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0.i.i.i, %.preheader40.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit60.i.i.i.i ], [ %i.cg, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cp, %.lr.ph50.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader40.i.i.i.i ], [ %i.dp, %.loopexit.loopexit60.i.i.i.i ], [ %i.ah, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.dq = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.dq, label %bb.d, label %.loopexit28, !llvm.loop !3120

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph56.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.ar, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dr = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.dr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !88, !range !89, !noundef !90
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_13Decimal64TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %8 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Decimal64", align 8 ; 4 uses
  %11 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %12 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %13 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::Decimal64", align 8 ; 4 uses
  %16 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3135
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_13Decimal64TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %i.am, label %.critedge6.i.i.i.i.i.i, label %bb.f, !prof !92

bb.f:                                             ; preds = %.noexc12
  store i64 32767, ptr %13, align 8, !tbaa !223
  %i.an = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.an, label %bb.g, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc13
  %.pre.i.i.i.i.i = load i64, ptr %16, align 8, !tbaa !223
  br label %bb.s

.critedge6.i.i.i.i.i.i:                           ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !3136
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !3137
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !175, !noalias !3137, !nonnull !90, !align !176
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !3137 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !3136

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3136
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3137
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3136
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3137
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.ar = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3136 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ab
  br i1 %i.as, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.at = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !3136
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3136 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ab
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.ay = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !3136
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3136
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3136
  %i.ba = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i35.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i35.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bg, align 8, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !44
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !46
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26, !inline_history !3131
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26, !inline_history !3131
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.p ], [ %i.bt, %bb.q ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !102 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !69
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i:            ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cb = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.cb, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.cc = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.aj, %.critedge.i.i.i.i.i.i ]
  %i.cd = trunc i64 %i.cc to i16
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i16 [ %i.cd, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.ce = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.cf = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.cg = add nuw nsw i64 %.02355.i.i.i.i, 1      ; 2 uses
  %exitcond66.not.i.i.i.i = icmp eq i64 %i.cg, %i.af
  br i1 %exitcond66.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph56.i.i.i.i, !llvm.loop !3132

bb.t:                                             ; preds = %.noexc10
  %i.ch = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ch, label %.preheader40.i.i.i.i, label %.preheader42.i.i.i.i

.preheader42.i.i.i.i:                             ; preds = %bb.t
  %i.ci = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cj = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader40.i.i.i.i:                             ; preds = %bb.t
  %i.ck = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ck, label %.lr.ph50.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph50.i.i.i.i:                                 ; preds = %.preheader40.i.i.i.i
  %i.cl = zext nneg i32 %i.ad to i64              ; 3 uses
  %i.cm = shl nuw nsw i64 %i.cl, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.cm, i1 false), !tbaa !164
  %i.cn = mul nsw i64 %i.cl, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cn
  %scevgep65.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cm
  %i.co = add i64 %.02458.i.i.i.i, %i.cl
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader42.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.dk, %bb.ab ], [ %.0, %.preheader42.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %.047.i.i.i.i = phi i64 [ %i.dl, %bb.ab ], [ 0, %.preheader42.i.i.i.i ]
  %.346.i.i.i.i = phi i64 [ %i.dm, %bb.ab ], [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %i.cp = add nsw i64 %.346.i.i.i.i, %i.p         ; 2 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !69
  %i.ct = trunc i64 %i.cp to i8
  %i.cu = and i8 %i.ct, 7
  %i.cv = lshr i8 %i.cs, %i.cu
  %i.cw = trunc i8 %i.cv to i1
  br i1 %i.cw, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %.val1.i26.i.i.i.i = load i64, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i64 %.val1.i26.i.i.i.i, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cx = load i32, ptr %1, align 4, !tbaa !230
  %i.cy = invoke i64 @_ZNK5arrow14BasicDecimal6413ReduceScaleByEib(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %i.cx, i1 noundef zeroext false)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %bb.u
  store i64 %i.cy, ptr %11, align 8
  %i.cz = load i8, ptr %i.ac, align 4, !tbaa !231, !range !89, !noundef !90
  %i.da = trunc nuw i8 %i.cz to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.da, label %.critedge.i.i33.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  store i64 -32768, ptr %7, align 8, !tbaa !223
  %i.db = invoke noundef zeroext i1 @_ZN5arrowltERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.db, label %.critedge6.i.i32.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  store i64 32767, ptr %8, align 8, !tbaa !223
  %i.dc = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.dc, label %bb.x, label %._crit_edge.i27.i.i.i.i

._crit_edge.i27.i.i.i.i:                          ; preds = %.noexc17
  %.pre.i28.i.i.i.i = load i64, ptr %11, align 8, !tbaa !223
  br label %bb.aa

.critedge6.i.i32.i.i.i.i:                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i32.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.dd = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i30.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i30.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !88, !range !89, !noundef !90
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i:          ; preds = %bb.z, %bb.y, %.noexc18
  %i.dh = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dh, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

.critedge.i.i33.i.i.i.i:                          ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i33.i.i.i.i, %._crit_edge.i27.i.i.i.i
  %i.di = phi i64 [ %.pre.i28.i.i.i.i, %._crit_edge.i27.i.i.i.i ], [ %i.cy, %.critedge.i.i33.i.i.i.i ]
  %i.dj = trunc i64 %i.di to i16
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i
  %.0.i.i29.i.i.i.i = phi i16 [ %i.dj, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i29.i.i.i.i, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dl = add nuw nsw i64 %.047.i.i.i.i, 1        ; 2 uses
  %i.dm = add nsw i64 %.346.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dl, %i.ci
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit60.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3133

.loopexit.loopexit60.i.i.i.i:                     ; preds = %bb.ab
  %i.dn = add i64 %.02458.i.i.i.i, %i.ci
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit60.i.i.i.i, %.lr.ph50.i.i.i.i, %.preheader40.i.i.i.i, %.preheader42.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader42.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep65.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0, %.preheader40.i.i.i.i ], [ %i.dk, %.loopexit.loopexit60.i.i.i.i ], [ %i.ce, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader42.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0.i.i.i, %.preheader40.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit60.i.i.i.i ], [ %i.cf, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader.i.i.i.i ], [ %i.co, %.lr.ph50.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader40.i.i.i.i ], [ %i.dn, %.loopexit.loopexit60.i.i.i.i ], [ %i.ah, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.do = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.do, label %bb.d, label %.loopexit28, !llvm.loop !3134

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph56.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.aq, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dp = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !88, !range !89, !noundef !90
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_13Decimal64TypeENS1_27SafeRescaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3144
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %3, align 8, !tbaa !213    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3140

.noexc8:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !159  ; 3 uses
  %i.q = sext i32 %i.n to i64                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !163  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.u, i64 noundef %i.p, i64 noundef %i.w)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph48.i.preheader.i.i.i, label %.loopexit25

.lr.ph48.i.preheader.i.i.i:                       ; preds = %.noexc9
  %i.y = mul nsw i64 %i.p, %i.q
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 %i.y
  br label %.lr.ph48.i.i.i.i

.lr.ph48.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i, %.lr.ph48.i.preheader.i.i.i
  %.0 = phi ptr [ %i.i, %.lr.ph48.i.preheader.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.z, %.lr.ph48.i.preheader.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i.i ] ; 6 uses
  %.02447.i.i.i.i = phi i64 [ 0, %.lr.ph48.i.preheader.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.aa = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc10:                                         ; preds = %.lr.ph48.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.aa to i16 ; 6 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.aa, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ab = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ab, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.ac = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ad = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ad, label %.lr.ph45.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc11
  %.3 = phi ptr [ %i.af, %.noexc11 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.4.i.i.i = phi ptr [ %i.ag, %.noexc11 ], [ %.0.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.02344.i.i.i.i = phi i64 [ %i.ah, %.noexc11 ], [ 0, %.preheader.i.i.i.i ]
  %.val1.i.i.i.i.i = load i64, ptr %.4.i.i.i, align 1
  %i.ae = invoke noundef signext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, i64 %.val1.i.i.i.i.i, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %.lr.ph45.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ae, ptr %.3, align 2, !tbaa !164
  %i.ag = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ah = add nuw nsw i64 %.02344.i.i.i.i, 1      ; 2 uses
  %exitcond55.not.i.i.i.i = icmp eq i64 %i.ah, %i.ac
  br i1 %exitcond55.not.i.i.i.i, label %.loopexit.loopexit.i.i.i.i, label %.lr.ph45.i.i.i.i, !llvm.loop !3141

bb.d:                                             ; preds = %.noexc10
  %i.ai = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ai, label %.preheader31.i.i.i.i, label %.preheader33.i.i.i.i

.preheader33.i.i.i.i:                             ; preds = %bb.d
  %i.aj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader31.i.i.i.i:                             ; preds = %bb.d
  %i.al = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.al, label %.lr.ph39.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph39.i.i.i.i:                                 ; preds = %.preheader31.i.i.i.i
  %i.am = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.an = shl nuw nsw i64 %i.am, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.an, i1 false), !tbaa !164
  %i.ao = mul nsw i64 %i.am, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.ao
  %scevgep54.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.an
  %i.ap = add i64 %.02447.i.i.i.i, %i.am
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader33.i.i.i.i, %.noexc12
  %.2 = phi ptr [ %i.az, %.noexc12 ], [ %.0, %.preheader33.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %.noexc12 ], [ %.0.i.i.i, %.preheader33.i.i.i.i ] ; 2 uses
  %.036.i.i.i.i = phi i64 [ %i.ba, %.noexc12 ], [ 0, %.preheader33.i.i.i.i ]
  %.335.i.i.i.i = phi i64 [ %i.bb, %.noexc12 ], [ %.02447.i.i.i.i, %.preheader33.i.i.i.i ] ; 2 uses
  %i.aq = add nsw i64 %.335.i.i.i.i, %i.p         ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !69
  %i.au = trunc i64 %i.aq to i8
  %i.av = and i8 %i.au, 7
  %i.aw = lshr i8 %i.at, %i.av
  %i.ax = trunc i8 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %.noexc12

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %.val1.i26.i.i.i.i = load i64, ptr %.2.i.i.i, align 1
  %i.ay = invoke noundef signext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, i64 %.val1.i26.i.i.i.i, ptr noundef nonnull %0)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.ay, %bb.e ]
  %i.az = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.ba = add nuw nsw i64 %.036.i.i.i.i, 1        ; 2 uses
  %i.bb = add nsw i64 %.335.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit49.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3142

.loopexit.loopexit.i.i.i.i:                       ; preds = %.noexc11
  %i.bc = add i64 %.02447.i.i.i.i, %i.ac
  br label %.loopexit.i.i.i.i

.loopexit.loopexit49.i.i.i.i:                     ; preds = %.noexc12
  %i.bd = add i64 %.02447.i.i.i.i, %i.aj
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.loopexit49.i.i.i.i, %.loopexit.loopexit.i.i.i.i, %.lr.ph39.i.i.i.i, %.preheader31.i.i.i.i, %.preheader33.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %i.af, %.loopexit.loopexit.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep54.i.i.i.i, %.lr.ph39.i.i.i.i ], [ %.0, %.preheader31.i.i.i.i ], [ %i.az, %.loopexit.loopexit49.i.i.i.i ], [ %.0, %.preheader33.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %i.ag, %.loopexit.loopexit.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph39.i.i.i.i ], [ %.0.i.i.i, %.preheader31.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit49.i.i.i.i ], [ %.0.i.i.i, %.preheader33.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %i.bc, %.loopexit.loopexit.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ap, %.lr.ph39.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader31.i.i.i.i ], [ %i.bd, %.loopexit.loopexit49.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader33.i.i.i.i ] ; 2 uses
  %i.be = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.be, label %.lr.ph48.i.i.i.i, label %.loopexit25, !llvm.loop !3143

.loopexit25:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %.lr.ph45.i.i.i.i, %.lr.ph48.i.i.i.i, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f, !prof !78

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f, %bb.g
  resume { ptr, i32 } %lpad.loopexit.split-lp56
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef signext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %0, ptr noundef %1, i64 %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %5 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Decimal64", align 8  ; 6 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Decimal64", align 8  ; 2 uses
  %10 = alloca %"class.arrow::Result.306", align 8 ; 13 uses
  store i64 %2, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.a = load i32, ptr %0, align 4, !tbaa !230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3147)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !3147
  store i64 0, ptr %7, align 8, !tbaa !223, !noalias !3147
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !3147
  %i.b = call noundef i32 @_ZNK5arrow14BasicDecimal647RescaleEiiPS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %i.a, i32 noundef 0, ptr noundef nonnull %7), !noalias !3147
  call void @_ZN5arrow8internal13ToArrowStatusENS_13DecimalStatusE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i32 noundef %i.b), !noalias !3147
  %i.c = load ptr, ptr %8, align 8, !tbaa !77, !noalias !3147
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK5arrow9Decimal647RescaleEii.exit.thread, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_9Decimal64EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  %i.e = load ptr, ptr %8, align 8, !tbaa !77, !noalias !3147 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK5arrow9Decimal647RescaleEii.exit, label %bb.c, !prof !78

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !88, !range !89, !noundef !90
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK5arrow9Decimal647RescaleEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br label %_ZNK5arrow9Decimal647RescaleEii.exit

_ZNK5arrow9Decimal647RescaleEii.exit.thread:      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !3147
  store ptr null, ptr %10, align 8, !tbaa !77, !alias.scope !3147
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.j = load i64, ptr %7, align 8, !noalias !3147
  store i64 %i.j, ptr %i.i, align 8, !alias.scope !3147
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !3147
  br label %bb.j

_ZNK5arrow9Decimal647RescaleEii.exit:             ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !3147
  %.pr = load ptr, ptr %10, align 8, !tbaa !77    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !3147
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %bb.j, label %bb.e, !prof !191

bb.e:                                             ; preds = %_ZNK5arrow9Decimal647RescaleEii.exit
  %i.l = load ptr, ptr %3, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.l, %.pr
  br i1 %.not.i, label %_ZN5arrow6StatusaSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6StatusaSERKS0_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %10, align 8, !tbaa !77    ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i.i6, label %_ZN5arrow6ResultINS_9Decimal64EED2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !88, !range !89, !noundef !90
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5arrow6ResultINS_9Decimal64EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #26
  br label %_ZN5arrow6ResultINS_9Decimal64EED2Ev.exit

_ZN5arrow6ResultINS_9Decimal64EED2Ev.exit:        ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  resume { ptr, i32 } %i.m

bb.j:                                             ; preds = %_ZNK5arrow9Decimal647RescaleEii.exit.thread, %_ZNK5arrow9Decimal647RescaleEii.exit
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 4, !tbaa !231, !range !89, !noundef !90
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  br i1 %i.u, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 -32768, ptr %4, align 8, !tbaa !223
  %i.v = invoke noundef zeroext i1 @_ZN5arrowltERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc10 unwind label %bb.g

.noexc10:                                         ; preds = %bb.k
  br i1 %i.v, label %.critedge6.i, label %bb.l, !prof !92

bb.l:                                             ; preds = %.noexc10
  store i64 32767, ptr %5, align 8, !tbaa !223
  %i.w = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc11 unwind label %bb.g

.noexc11:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.w, label %bb.m, label %bb.p

.critedge6.i:                                     ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.m

bb.m:                                             ; preds = %.critedge6.i, %.noexc11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc12 unwind label %bb.g

.noexc12:                                         ; preds = %bb.m
  %i.x = load ptr, ptr %3, align 8, !tbaa !77     ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal256TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.e
  br i1 %i.aq, label %.critedge6.i.i.i.i.i.i.i.i.i, label %bb.f, !prof !92

bb.f:                                             ; preds = %.noexc12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !alias.scope !3169
  store i64 32767, ptr %13, align 8, !tbaa !177, !alias.scope !3169
  %i.ar = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.ar, label %bb.g, label %bb.s

.critedge6.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !3170
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !3171
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !175, !noalias !3171, !nonnull !90, !align !176
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !3171 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !3170

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3170
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3171
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3170
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3171
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.av = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3170 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.af
  br i1 %i.aw, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.ax = load i64, ptr %i.af, align 8, !tbaa !69, !noalias !3170
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3170 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.af
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.af, align 8, !tbaa !69, !noalias !3170
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3170
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3170
  %i.be = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bk, align 8, !tbaa !43
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !44
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #26, !inline_history !3159
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !46
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #26, !inline_history !3159
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.p ], [ %i.bx, %bb.q ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !102 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !69
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i:      ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cf = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.cf, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i.i.i.i, %.noexc13
  %i.cg = load i64, ptr %15, align 8, !tbaa !177
  %i.ch = trunc i64 %i.cg to i16
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ch, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.ci = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.cj = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ck = add nuw nsw i64 %.02351.i.i.i.i, 1      ; 2 uses
  %exitcond62.not.i.i.i.i = icmp eq i64 %i.ck, %i.aj
  br i1 %exitcond62.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph52.i.i.i.i, !llvm.loop !3160

bb.t:                                             ; preds = %.noexc10
  %i.cl = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.cl, label %.preheader36.i.i.i.i, label %.preheader38.i.i.i.i

.preheader38.i.i.i.i:                             ; preds = %bb.t
  %i.cm = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cn = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cn, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader36.i.i.i.i:                             ; preds = %bb.t
  %i.co = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.co, label %.lr.ph46.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph46.i.i.i.i:                                 ; preds = %.preheader36.i.i.i.i
  %i.cp = zext nneg i32 %i.ah to i64              ; 3 uses
  %i.cq = shl nuw nsw i64 %i.cp, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.cq, i1 false), !tbaa !164
  %i.cr = mul nsw i64 %i.cp, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cr
  %scevgep61.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cq
  %i.cs = add i64 %.02454.i.i.i.i, %i.cp
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader38.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.do, %bb.ab ], [ %.0, %.preheader38.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader38.i.i.i.i ] ; 2 uses
  %.043.i.i.i.i = phi i64 [ %i.dp, %bb.ab ], [ 0, %.preheader38.i.i.i.i ]
  %.342.i.i.i.i = phi i64 [ %i.dq, %bb.ab ], [ %.02454.i.i.i.i, %.preheader38.i.i.i.i ] ; 2 uses
  %i.ct = add nsw i64 %.342.i.i.i.i, %i.p         ; 2 uses
  %i.cu = lshr i64 %i.ct, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !69
  %i.cx = trunc i64 %i.ct to i8
  %i.cy = and i8 %i.cx, 7
  %i.cz = lshr i8 %i.cw, %i.cy
  %i.da = trunc i8 %i.cz to i1
  br i1 %i.da, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull readonly align 1 dereferenceable(32) %.2.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.db = load i32, ptr %1, align 4, !tbaa !230
  %i.dc = sub nsw i32 0, %i.db
  invoke void @_ZNK5arrow15BasicDecimal25615IncreaseScaleByEi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %i.dc)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.u
  %i.dd = load i8, ptr %i.ag, align 4, !tbaa !231, !range !89, !noundef !90
  %i.de = trunc nuw i8 %i.dd to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.de, label %.critedge.i.i.i.i.i30.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 -1, i64 24, i1 false), !tbaa !177, !alias.scope !3172
  store i64 -32768, ptr %7, align 8, !tbaa !177, !alias.scope !3172
  %i.df = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.df, label %.critedge6.i.i.i.i.i29.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !3173
  store i64 32767, ptr %8, align 8, !tbaa !177, !alias.scope !3173
  %i.dg = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.dg, label %bb.x, label %bb.aa

.critedge6.i.i.i.i.i29.i.i.i.i:                   ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i.i.i.i29.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.dh = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i.i.i.i27.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i.i.i27.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !88, !range !89, !noundef !90
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i:    ; preds = %bb.z, %bb.y, %.noexc18
  %i.dl = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dl, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i

.critedge.i.i.i.i.i30.i.i.i.i:                    ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i.i.i.i30.i.i.i.i, %.noexc17
  %i.dm = load i64, ptr %10, align 8, !tbaa !177
  %i.dn = trunc i64 %i.dm to i16
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i
  %.0.i.i.i.i.i26.i.i.i.i = phi i16 [ %i.dn, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i.i.i.i26.i.i.i.i, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dp = add nuw nsw i64 %.043.i.i.i.i, 1        ; 2 uses
  %i.dq = add nsw i64 %.342.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dp, %i.cm
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit56.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3165

.loopexit.loopexit56.i.i.i.i:                     ; preds = %bb.ab
  %i.dr = add i64 %.02454.i.i.i.i, %i.cm
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i, %.loopexit.loopexit56.i.i.i.i, %.lr.ph46.i.i.i.i, %.preheader36.i.i.i.i, %.preheader38.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader38.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep61.i.i.i.i, %.lr.ph46.i.i.i.i ], [ %.0, %.preheader36.i.i.i.i ], [ %i.do, %.loopexit.loopexit56.i.i.i.i ], [ %i.ci, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader38.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph46.i.i.i.i ], [ %.0.i.i.i, %.preheader36.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit56.i.i.i.i ], [ %i.cj, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02454.i.i.i.i, %.preheader38.i.i.i.i ], [ %.02454.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cs, %.lr.ph46.i.i.i.i ], [ %.02454.i.i.i.i, %.preheader36.i.i.i.i ], [ %i.dr, %.loopexit.loopexit56.i.i.i.i ], [ %i.al, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i ] ; 2 uses
  %i.ds = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.ds, label %bb.d, label %.loopexit28, !llvm.loop !3166

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph52.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.au, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dt = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.dt, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !88, !range !89, !noundef !90
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal256TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal256", align 8 ; 7 uses
  %8 = alloca %"class.arrow::BasicDecimal256", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::BasicDecimal256", align 8 ; 6 uses
  %11 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %12 = alloca %"class.arrow::BasicDecimal256", align 8 ; 7 uses
  %13 = alloca %"class.arrow::BasicDecimal256", align 8 ; 7 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::BasicDecimal256", align 8 ; 6 uses
  %16 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3193
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %3, align 8, !tbaa !213    ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal256TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.e
  br i1 %i.ap, label %.critedge6.i.i.i.i.i.i.i.i.i, label %bb.f, !prof !92

bb.f:                                             ; preds = %.noexc12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !alias.scope !3195
  store i64 32767, ptr %13, align 8, !tbaa !177, !alias.scope !3195
  %i.aq = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.aq, label %bb.g, label %bb.s

.critedge6.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !3196
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !3197
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !175, !noalias !3197, !nonnull !90, !align !176
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !3197 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !3196

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3196
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3197
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3196
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3197
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.au = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3196 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.af
  br i1 %i.av, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.aw = load i64, ptr %i.af, align 8, !tbaa !69, !noalias !3196
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3196 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.af
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.bb = load i64, ptr %i.af, align 8, !tbaa !69, !noalias !3196
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3196
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3196
  %i.bd = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bj, align 8, !tbaa !43
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !44
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #26, !inline_history !3185
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !46
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #26, !inline_history !3185
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bm, %bb.p ], [ %i.bw, %bb.q ]
  %i.bx = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bx, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !102 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !69
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i:      ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.ce = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.ce, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i.i.i.i, %.noexc13
  %i.cf = load i64, ptr %15, align 8, !tbaa !177
  %i.cg = trunc i64 %i.cf to i16
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cg, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.ch = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.ci = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.cj = add nuw nsw i64 %.02351.i.i.i.i, 1      ; 2 uses
  %exitcond62.not.i.i.i.i = icmp eq i64 %i.cj, %i.aj
  br i1 %exitcond62.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph52.i.i.i.i, !llvm.loop !3186

bb.t:                                             ; preds = %.noexc10
  %i.ck = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ck, label %.preheader36.i.i.i.i, label %.preheader38.i.i.i.i

.preheader38.i.i.i.i:                             ; preds = %bb.t
  %i.cl = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cm = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cm, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader36.i.i.i.i:                             ; preds = %bb.t
  %i.cn = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cn, label %.lr.ph46.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph46.i.i.i.i:                                 ; preds = %.preheader36.i.i.i.i
  %i.co = zext nneg i32 %i.ah to i64              ; 3 uses
  %i.cp = shl nuw nsw i64 %i.co, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.cp, i1 false), !tbaa !164
  %i.cq = mul nsw i64 %i.co, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cq
  %scevgep61.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cp
  %i.cr = add i64 %.02454.i.i.i.i, %i.co
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader38.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.dm, %bb.ab ], [ %.0, %.preheader38.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader38.i.i.i.i ] ; 2 uses
  %.043.i.i.i.i = phi i64 [ %i.dn, %bb.ab ], [ 0, %.preheader38.i.i.i.i ]
  %.342.i.i.i.i = phi i64 [ %i.do, %bb.ab ], [ %.02454.i.i.i.i, %.preheader38.i.i.i.i ] ; 2 uses
  %i.cs = add nsw i64 %.342.i.i.i.i, %i.p         ; 2 uses
  %i.ct = lshr i64 %i.cs, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !69
  %i.cw = trunc i64 %i.cs to i8
  %i.cx = and i8 %i.cw, 7
  %i.cy = lshr i8 %i.cv, %i.cx
  %i.cz = trunc i8 %i.cy to i1
  br i1 %i.cz, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull readonly align 1 dereferenceable(32) %.2.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.da = load i32, ptr %1, align 4, !tbaa !230
  invoke void @_ZNK5arrow15BasicDecimal25613ReduceScaleByEib(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %i.da, i1 noundef zeroext false)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.u
  %i.db = load i8, ptr %i.ag, align 4, !tbaa !231, !range !89, !noundef !90
  %i.dc = trunc nuw i8 %i.db to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.dc, label %.critedge.i.i.i.i.i30.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 -1, i64 24, i1 false), !tbaa !177, !alias.scope !3198
  store i64 -32768, ptr %7, align 8, !tbaa !177, !alias.scope !3198
  %i.dd = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.dd, label %.critedge6.i.i.i.i.i29.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !3199
  store i64 32767, ptr %8, align 8, !tbaa !177, !alias.scope !3199
  %i.de = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.de, label %bb.x, label %bb.aa

.critedge6.i.i.i.i.i29.i.i.i.i:                   ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i.i.i.i29.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.df = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i.i.i.i27.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i.i.i27.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !88, !range !89, !noundef !90
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i:    ; preds = %bb.z, %bb.y, %.noexc18
  %i.dj = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dj, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i

.critedge.i.i.i.i.i30.i.i.i.i:                    ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i.i.i.i30.i.i.i.i, %.noexc17
  %i.dk = load i64, ptr %10, align 8, !tbaa !177
  %i.dl = trunc i64 %i.dk to i16
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i
  %.0.i.i.i.i.i26.i.i.i.i = phi i16 [ %i.dl, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i.i.i.i26.i.i.i.i, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dn = add nuw nsw i64 %.043.i.i.i.i, 1        ; 2 uses
  %i.do = add nsw i64 %.342.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dn, %i.cl
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit56.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3191

.loopexit.loopexit56.i.i.i.i:                     ; preds = %bb.ab
  %i.dp = add i64 %.02454.i.i.i.i, %i.cl
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i, %.loopexit.loopexit56.i.i.i.i, %.lr.ph46.i.i.i.i, %.preheader36.i.i.i.i, %.preheader38.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader38.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep61.i.i.i.i, %.lr.ph46.i.i.i.i ], [ %.0, %.preheader36.i.i.i.i ], [ %i.dm, %.loopexit.loopexit56.i.i.i.i ], [ %i.ch, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader38.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph46.i.i.i.i ], [ %.0.i.i.i, %.preheader36.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit56.i.i.i.i ], [ %i.ci, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02454.i.i.i.i, %.preheader38.i.i.i.i ], [ %.02454.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cr, %.lr.ph46.i.i.i.i ], [ %.02454.i.i.i.i, %.preheader36.i.i.i.i ], [ %i.dp, %.loopexit.loopexit56.i.i.i.i ], [ %i.al, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i ] ; 2 uses
  %i.dq = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.dq, label %bb.d, label %.loopexit28, !llvm.loop !3192

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph52.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.at, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dr = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.dr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !88, !range !89, !noundef !90
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal256TypeENS1_27SafeRescaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %6 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %7 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3206
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %3, align 8, !tbaa !213    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3202

.noexc8:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !159  ; 3 uses
  %i.q = sext i32 %i.n to i64                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !163  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.u, i64 noundef %i.p, i64 noundef %i.w)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph47.i.preheader.i.i.i, label %.loopexit27

.lr.ph47.i.preheader.i.i.i:                       ; preds = %.noexc9
  %i.y = mul nsw i64 %i.p, %i.q
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 %i.y
  br label %.lr.ph47.i.i.i.i

.lr.ph47.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i, %.lr.ph47.i.preheader.i.i.i
  %.0 = phi ptr [ %i.i, %.lr.ph47.i.preheader.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.z, %.lr.ph47.i.preheader.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i.i ] ; 6 uses
  %.02446.i.i.i.i = phi i64 [ 0, %.lr.ph47.i.preheader.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.aa = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc10:                                         ; preds = %.lr.ph47.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.aa to i16 ; 6 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.aa, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ab = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ab, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.ac = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ad = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ad, label %.lr.ph44.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph44.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc11
  %.4 = phi ptr [ %i.af, %.noexc11 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.4.i.i.i = phi ptr [ %i.ag, %.noexc11 ], [ %.0.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.02343.i.i.i.i = phi i64 [ %i.ah, %.noexc11 ], [ 0, %.preheader.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 1 dereferenceable(32) %.4.i.i.i, i64 32, i1 false)
  %i.ae = invoke noundef signext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_10Decimal256EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, ptr noundef nonnull byval(%"class.arrow::Decimal256") align 8 %6, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %.lr.ph44.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.4, i64 2 ; 2 uses
  store i16 %i.ae, ptr %.4, align 2, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ag = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ah = add nuw nsw i64 %.02343.i.i.i.i, 1      ; 2 uses
  %exitcond54.not.i.i.i.i = icmp eq i64 %i.ah, %i.ac
  br i1 %exitcond54.not.i.i.i.i, label %.loopexit.loopexit.i.i.i.i, label %.lr.ph44.i.i.i.i, !llvm.loop !3203

bb.d:                                             ; preds = %.noexc10
  %i.ai = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ai, label %.preheader30.i.i.i.i, label %.preheader32.i.i.i.i

.preheader32.i.i.i.i:                             ; preds = %bb.d
  %i.aj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader30.i.i.i.i:                             ; preds = %bb.d
  %i.al = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.al, label %.lr.ph38.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader30.i.i.i.i
  %i.am = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.an = shl nuw nsw i64 %i.am, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.an, i1 false), !tbaa !164
  %i.ao = mul nsw i64 %i.am, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.ao
  %scevgep53.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.an
  %i.ap = add i64 %.02446.i.i.i.i, %i.am
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader32.i.i.i.i, %bb.g
  %.2 = phi ptr [ %.3, %bb.g ], [ %.0, %.preheader32.i.i.i.i ] ; 3 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.g ], [ %.0.i.i.i, %.preheader32.i.i.i.i ] ; 2 uses
  %.035.i.i.i.i = phi i64 [ %i.az, %bb.g ], [ 0, %.preheader32.i.i.i.i ]
  %.334.i.i.i.i = phi i64 [ %i.ba, %bb.g ], [ %.02446.i.i.i.i, %.preheader32.i.i.i.i ] ; 2 uses
  %i.aq = add nsw i64 %.334.i.i.i.i, %i.p         ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !69
  %i.au = trunc i64 %i.aq to i8
  %i.av = and i8 %i.au, 7
  %i.aw = lshr i8 %i.at, %i.av
  %i.ax = trunc i8 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 1 dereferenceable(32) %.2.i.i.i, i64 32, i1 false)
  %i.ay = invoke noundef signext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_10Decimal256EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, ptr noundef nonnull byval(%"class.arrow::Decimal256") align 8 %5, ptr noundef nonnull %0)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.e
  store i16 %i.ay, ptr %.2, align 2, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  store i16 0, ptr %.2, align 2, !tbaa !164
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc12
  %.3 = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.az = add nuw nsw i64 %.035.i.i.i.i, 1        ; 2 uses
  %i.ba = add nsw i64 %.334.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.az, %i.aj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit48.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3204

.loopexit.loopexit.i.i.i.i:                       ; preds = %.noexc11
  %i.bb = add i64 %.02446.i.i.i.i, %i.ac
  br label %.loopexit.i.i.i.i

.loopexit.loopexit48.i.i.i.i:                     ; preds = %bb.g
  %i.bc = add i64 %.02446.i.i.i.i, %i.aj
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.loopexit48.i.i.i.i, %.loopexit.loopexit.i.i.i.i, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %i.af, %.loopexit.loopexit.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep53.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %.3, %.loopexit.loopexit48.i.i.i.i ], [ %.0, %.preheader32.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %i.ag, %.loopexit.loopexit.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0.i.i.i, %.preheader30.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit48.i.i.i.i ], [ %.0.i.i.i, %.preheader32.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %i.bb, %.loopexit.loopexit.i.i.i.i ], [ %.02446.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ap, %.lr.ph38.i.i.i.i ], [ %.02446.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.bc, %.loopexit.loopexit48.i.i.i.i ], [ %.02446.i.i.i.i, %.preheader32.i.i.i.i ] ; 2 uses
  %i.bd = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.bd, label %.lr.ph47.i.i.i.i, label %.loopexit27, !llvm.loop !3205

.loopexit27:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %.lr.ph44.i.i.i.i, %.lr.ph47.i.i.i.i, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h, %bb.i
  resume { ptr, i32 } %lpad.loopexit.split-lp54
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef signext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_10Decimal256EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %0, ptr noundef %1, ptr noundef byval(%"class.arrow::Decimal256") align 8 %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::BasicDecimal256", align 8 ; 7 uses
  %5 = alloca %"class.arrow::BasicDecimal256", align 8 ; 7 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Decimal256", align 8 ; 6 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Result.446", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.a = load i32, ptr %0, align 4, !tbaa !230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3213)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !3213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false), !noalias !3213
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !3213
  %i.b = call noundef i32 @_ZNK5arrow15BasicDecimal2567RescaleEiiPS0_(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.a, i32 noundef 0, ptr noundef nonnull %7), !noalias !3213
  call void @_ZN5arrow8internal13ToArrowStatusENS_13DecimalStatusE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i32 noundef %i.b), !noalias !3213
  %i.c = load ptr, ptr %8, align 8, !tbaa !77, !noalias !3213
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK5arrow10Decimal2567RescaleEii.exit.thread, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_10Decimal256EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  %i.e = load ptr, ptr %8, align 8, !tbaa !77, !noalias !3213 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK5arrow10Decimal2567RescaleEii.exit, label %bb.c, !prof !78

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !88, !range !89, !noundef !90
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK5arrow10Decimal2567RescaleEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br label %_ZNK5arrow10Decimal2567RescaleEii.exit

_ZNK5arrow10Decimal2567RescaleEii.exit.thread:    ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !3213
  store ptr null, ptr %9, align 8, !tbaa !77, !alias.scope !3213
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !3213
  br label %bb.j

_ZNK5arrow10Decimal2567RescaleEii.exit:           ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !3213
  %.pr = load ptr, ptr %9, align 8, !tbaa !77     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !3213
  %i.j = icmp eq ptr %.pr, null
  br i1 %i.j, label %bb.j, label %bb.e, !prof !191

bb.e:                                             ; preds = %_ZNK5arrow10Decimal2567RescaleEii.exit
  %i.k = load ptr, ptr %3, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.k, %.pr
  br i1 %.not.i, label %_ZN5arrow6StatusaSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN5arrow6StatusaSERKS0_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %9, align 8, !tbaa !77     ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.m, null
  br i1 %.not.i.i6, label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !88, !range !89, !noundef !90
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #26
  br label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit

_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit:      ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  resume { ptr, i32 } %i.l

bb.j:                                             ; preds = %_ZNK5arrow10Decimal2567RescaleEii.exit.thread, %_ZNK5arrow10Decimal2567RescaleEii.exit
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i8, ptr %i.r, align 4, !tbaa !231, !range !89, !noundef !90
  %i.t = trunc nuw i8 %i.s to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  br i1 %i.t, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 -1, i64 24, i1 false), !tbaa !177, !alias.scope !3214
  store i64 -32768, ptr %4, align 8, !tbaa !177, !alias.scope !3214
  %i.v = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc10 unwind label %bb.g

.noexc10:                                         ; preds = %bb.k
  br i1 %i.v, label %.critedge6.i, label %bb.l, !prof !92

bb.l:                                             ; preds = %.noexc10
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !alias.scope !3215
  store i64 32767, ptr %5, align 8, !tbaa !177, !alias.scope !3215
  %i.x = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %.noexc11 unwind label %bb.g

.noexc11:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.x, label %bb.m, label %bb.p

.critedge6.i:                                     ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
end_hunk_11
begin_hunk_12_@_ZN5arrow7compute8internal11CastFunctorINS_10UInt16TypeENS_11BooleanTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.as = add nsw i64 %i.al, 1                    ; 2 uses
  %i.at = add nuw nsw i64 %i.ab, 2                ; 2 uses
  %i.au = icmp eq i64 %i.as, 8
  br i1 %i.au, label %bb.g, label %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1, !prof !92

bb.g:                                             ; preds = %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i
  %i.av = add nsw i64 %.sroa.1423.1.i, 1          ; 3 uses
  %i.aw = icmp slt i64 %i.at, %i.h
  br i1 %i.aw, label %bb.h, label %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1, !prof !78

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds i8, ptr %i.d, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !69, !noalias !3885
  br label %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1

_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1: ; preds = %bb.h, %bb.g, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i
  %.sroa.1423.1.i.1 = phi i64 [ %i.av, %bb.h ], [ %i.av, %bb.g ], [ %.sroa.1423.1.i, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i ]
  %i.az = phi i8 [ %i.ay, %bb.h ], [ %i.ak, %bb.g ], [ %i.ak, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i ] ; 2 uses
  %i.ba = phi i64 [ 0, %bb.h ], [ 0, %bb.g ], [ %i.as, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i ] ; 2 uses
  %i.bb = trunc nsw i64 %i.al to i32
  %i.bc = zext i8 %i.ak to i32
  %i.bd = lshr i32 %i.bc, %i.bb
  %i.be = trunc nuw nsw i32 %i.bd to i16
  %i.bf = and i16 %i.be, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.056.i.i, i64 4 ; 2 uses
  store i16 %i.bf, ptr %i.ar, align 2, !tbaa !164, !noalias !3885
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !3883

_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa: ; preds = %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.epil.init = phi i8 [ %.sroa.10.0.i, %.lr.ph.i.i ], [ %i.az, %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa ]
  %.epil.init8 = phi i64 [ %i.j, %.lr.ph.i.i ], [ %i.ba, %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.056.i.i.epil.init = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.bg, %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa ]
  %lcmp.mod9 = trunc i64 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.bh = icmp eq i64 %.epil.init8, 7             ; 0 uses
  %i.bi = trunc nsw i64 %.epil.init8 to i32
  %i.bj = zext i8 %.epil.init to i32
  %i.bk = lshr i32 %i.bj, %i.bi
  %i.bl = trunc nuw nsw i32 %i.bk to i16
  %i.bm = and i16 %i.bl, 1
  store i16 %i.bm, ptr %.056.i.i.epil.init, align 2, !tbaa !164, !noalias !3885
  br label %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit: ; preds = %.epil.preheader, %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa, %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit.i
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3884
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_10UInt16TypeENS_10BinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.1233", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !3890
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144, !noalias !3891
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !3890
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_10UInt16TypeENS_15LargeBinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.1243", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !3896
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144, !noalias !3897
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !3896
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3903
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !128
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.16.sink, ptr %i.e, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !159
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162
  %i.j = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !163  ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !159  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !162  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %storemerge.i.i.i = select i1 %i.v, ptr %i.a, ptr %i.u ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.w, i64 noundef %i.o, i64 noundef %i.l)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.d
  %i.x = icmp sgt i64 %i.l, 0
  br i1 %i.x, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.noexc8, %.loopexit.i.i.i.i
  %.0 = phi ptr [ %.1, %.loopexit.i.i.i.i ], [ %i.j, %.noexc8 ] ; 7 uses
  %.02444.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc8 ] ; 7 uses
  %i.y = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc9:                                          ; preds = %.lr.ph45.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.y to i16 ; 2 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.y, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.z = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.aa = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.z, label %.preheader.i.i.i.i, label %bb.e

.preheader.i.i.i.i:                               ; preds = %.noexc9
  %.sroa.0.0.extract.trunc.mask60.i.i.i.i = and i32 %i.y, 65535
  %i.ab = zext nneg i32 %.sroa.0.0.extract.trunc.mask60.i.i.i.i to i64
  br i1 %i.aa, label %.lr.ph42.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph42.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc10
  %.3 = phi ptr [ %i.al, %.noexc10 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.02341.i.i.i.i = phi i64 [ %i.am, %.noexc10 ], [ 0, %.preheader.i.i.i.i ]
  %.140.i.i.i.i = phi i64 [ %i.an, %.noexc10 ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.140.i.i.i.i ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.ac, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  %i.ai = sub nsw i32 %i.ah, %i.ad
  %i.aj = sext i32 %i.ai to i64
  %i.ak = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_10UInt16TypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.aj, ptr nonnull %i.af, ptr noundef nonnull %0)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.lr.ph42.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ak, ptr %.3, align 2, !tbaa !164
  %i.am = add nuw nsw i64 %.02341.i.i.i.i, 1      ; 2 uses
  %i.an = add nsw i64 %.140.i.i.i.i, 1            ; 2 uses
  %exitcond50.not.i.i.i.i = icmp eq i64 %i.am, %i.ab
  br i1 %exitcond50.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph42.i.i.i.i, !llvm.loop !3900

bb.e:                                             ; preds = %.noexc9
  %i.ao = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ao, label %.preheader30.i.i.i.i, label %.preheader32.i.i.i.i

.preheader32.i.i.i.i:                             ; preds = %bb.e
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader32.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.y, 32767
  %i.ap = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.aq = add i64 %.02444.i.i.i.i, %i.ap          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader30.i.i.i.i:                             ; preds = %bb.e
  br i1 %i.aa, label %.lr.ph38.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader30.i.i.i.i
  %i.ar = zext nneg i32 %i.y to i64               ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.as, i1 false), !tbaa !164
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.as
  %i.at = add i64 %.02444.i.i.i.i, %i.ar
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.bl, %.noexc11 ] ; 2 uses
  %.334.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.bm, %.noexc11 ] ; 3 uses
  %i.au = add nsw i64 %.334.i.i.i.i, %i.o         ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !69
  %i.ay = trunc i64 %i.au to i8
  %i.az = and i8 %i.ay, 7
  %i.ba = lshr i8 %i.ax, %i.az
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %bb.f, label %.noexc11

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.334.i.i.i.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !21
  %i.bi = sub nsw i32 %i.bh, %i.bd
  %i.bj = sext i32 %i.bi to i64
  %i.bk = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_10UInt16TypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.bj, ptr nonnull %i.bf, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.f ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !164
  %i.bm = add i64 %.334.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bm, %i.aq
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3901

.loopexit.i.i.i.i:                                ; preds = %.noexc11, %.noexc10, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader32.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %i.al, %.noexc10 ], [ %i.bl, %.noexc11 ]
  %.4.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.preheader32.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ], [ %i.at, %.lr.ph38.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.an, %.noexc10 ], [ %i.aq, %.noexc11 ] ; 2 uses
  %i.bn = icmp slt i64 %.4.i.i.i.i, %i.l
  br i1 %i.bn, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !3902

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.lr.ph42.i.i.i.i, %.lr.ph45.i.i.i.i, %.invoke, %bb.d
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !88, !range !89, !noundef !90
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h, %bb.i
  resume { ptr, i32 } %lpad.loopexit.split-lp58
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_10UInt16TypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::internal::StringConverter.1241", align 1 ; 3 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.a = alloca i16, align 2                      ; 6 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  store i64 %2, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i16 0, ptr %i.a, align 2, !tbaa !164
  %i.c = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, !prof !165

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt16TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !46
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  br label %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit

_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.g = call noundef zeroext i1 @_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt16TypeEE7ConvertERKS2_PKcmPt(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr noundef %3, i64 noundef %2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %i.g, label %bb.k, label %bb.d, !prof !78

bb.d:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZN5arrow10TypeTraitsINS_10UInt16TypeEE14type_singletonEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.30") align 8 %9)
  %i.h = load ptr, ptr %9, align 8, !tbaa !68     ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(26) @.str.18, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(23) @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g, !prof !78

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !88, !range !89, !noundef !90
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.h, %bb.g, %bb.f
  %i.p = load ptr, ptr %7, align 8, !tbaa !77
  store ptr %i.p, ptr %4, align 8, !tbaa !77
  store ptr null, ptr %7, align 8, !tbaa !77
  %i.q = load ptr, ptr %8, align 8, !tbaa !102    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !69
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

bb.j:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %8, align 8, !tbaa !102    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.j
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !69
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.i
  %.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ], [ %i.w, %bb.j ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  %i.ac = load i16, ptr %i.a, align 2, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i16 %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt16TypeEE7ConvertERKS2_PKcmPt(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_12
begin_hunk_13_@_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt16TypeEE7ConvertERKS2_PKcmPt:bb.a
  %i.bp = zext nneg i8 %i.bn to i16               ; 2 uses
  br i1 %i.bo, label %bb.ae, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit

bb.ae:                                            ; preds = %.critedge
  %.not71.i = icmp eq i64 %.01725, 1
  br i1 %.not71.i, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bq = getelementptr inbounds nuw i8, ptr %.01824, i64 2
  %i.br = load i8, ptr %i.bm, align 1, !tbaa !69
  %i.bs = add i8 %i.br, -48                       ; 2 uses
  %narrow.i = mul nuw nsw i16 %i.bp, 10
  %i.bt = icmp ult i8 %i.bs, 10
  %i.bu = zext nneg i8 %i.bs to i16
  %i.bv = add nuw nsw i16 %narrow.i, %i.bu        ; 2 uses
  br i1 %i.bt, label %bb.ag, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit

bb.ag:                                            ; preds = %bb.af
  %.not72.i = icmp eq i64 %.01725, 2
  br i1 %.not72.i, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bw = getelementptr inbounds nuw i8, ptr %.01824, i64 3
  %i.bx = load i8, ptr %i.bq, align 1, !tbaa !69
  %i.by = add i8 %i.bx, -48                       ; 2 uses
  %i.bz = mul nuw nsw i16 %i.bv, 10
  %i.ca = icmp ult i8 %i.by, 10
  %i.cb = zext nneg i8 %i.by to i16
  %i.cc = add nuw nsw i16 %i.bz, %i.cb            ; 2 uses
  br i1 %i.ca, label %bb.ai, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit

bb.ai:                                            ; preds = %bb.ah
  %.not73.i = icmp eq i64 %.01725, 3
  br i1 %.not73.i, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cd = getelementptr inbounds nuw i8, ptr %.01824, i64 4
  %i.ce = load i8, ptr %i.bw, align 1, !tbaa !69
  %i.cf = add i8 %i.ce, -48                       ; 2 uses
  %i.cg = mul nuw nsw i16 %i.cc, 10
  %i.ch = add i64 %.01725, -4                     ; 2 uses
  %i.ci = icmp ult i8 %i.cf, 10
  %i.cj = zext nneg i8 %i.cf to i16
  %i.ck = add nuw i16 %i.cg, %i.cj                ; 3 uses
  br i1 %i.ci, label %bb.ak, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit

bb.ak:                                            ; preds = %bb.aj
  %.not74.i = icmp eq i64 %i.ch, 0
  br i1 %.not74.i, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cl = icmp ugt i16 %i.ck, 6553
  br i1 %i.cl, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit, label %bb.am, !prof !92

bb.am:                                            ; preds = %bb.al
  %i.cm = load i8, ptr %i.cd, align 1, !tbaa !69
  %i.cn = add i8 %i.cm, -48                       ; 2 uses
  %.not75.i = icmp ne i64 %i.ch, 1
  %i.co = icmp ugt i8 %i.cn, 9
  %or.cond.i21 = or i1 %.not75.i, %i.co
  br i1 %or.cond.i21, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit, label %bb.an, !prof !226

bb.an:                                            ; preds = %bb.am
  %i.cp = mul nuw i16 %i.ck, 10                   ; 3 uses
  %i.cq = zext nneg i8 %i.cn to i16
  %i.cr = add i16 %i.cp, %i.cq                    ; 2 uses
  %.not77.i = icmp ult i16 %i.cr, %i.cp
  %..i = tail call i16 @llvm.umax.i16(i16 %i.cr, i16 %i.cp)
  br i1 %.not77.i, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split

_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split: ; preds = %bb.k, %bb.q, %bb.w, %bb.ab, %bb.aa, %bb.z, %bb.ad, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.an
  %.5.i.sink = phi i16 [ 0, %bb.ad ], [ %..i, %bb.an ], [ %i.ck, %bb.ak ], [ %i.cc, %bb.ai ], [ %i.bv, %bb.ag ], [ %i.bp, %bb.ae ], [ %.1.i, %bb.k ], [ %.1.i.1, %bb.q ], [ %.1.i.2, %bb.w ], [ %i.bh, %bb.ab ], [ %i.bf, %bb.aa ], [ %i.bc, %bb.z ]
  store i16 %.5.i.sink, ptr %4, align 2, !tbaa !164
  br label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit

_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit:     ; preds = %bb.i, %bb.m, %bb.s, %bb.y, %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split, %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ah, %bb.af, %.critedge, %bb.e, %bb.a
  %.0 = phi i1 [ false, %bb.am ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.al ], [ false, %.critedge ], [ true, %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split ], [ false, %bb.an ], [ false, %bb.aj ], [ false, %bb.ah ], [ false, %bb.af ], [ false, %bb.y ], [ false, %bb.s ], [ false, %bb.m ], [ false, %bb.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3910
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !128
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.16.sink, ptr %i.e, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !159
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162
  %i.j = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !163  ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !159  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !162  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %storemerge.i.i.i = select i1 %i.v, ptr %i.a, ptr %i.u ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.w, i64 noundef %i.o, i64 noundef %i.l)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.d
  %i.x = icmp sgt i64 %i.l, 0
  br i1 %i.x, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.noexc8, %.loopexit.i.i.i.i
  %.0 = phi ptr [ %.1, %.loopexit.i.i.i.i ], [ %i.j, %.noexc8 ] ; 7 uses
  %.02444.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc8 ] ; 7 uses
  %i.y = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc9:                                          ; preds = %.lr.ph45.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.y to i16 ; 2 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.y, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.z = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.aa = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.z, label %.preheader.i.i.i.i, label %bb.e

.preheader.i.i.i.i:                               ; preds = %.noexc9
  %.sroa.0.0.extract.trunc.mask60.i.i.i.i = and i32 %i.y, 65535
  %i.ab = zext nneg i32 %.sroa.0.0.extract.trunc.mask60.i.i.i.i to i64
  br i1 %i.aa, label %.lr.ph42.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph42.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc10
  %.3 = phi ptr [ %i.aj, %.noexc10 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.02341.i.i.i.i = phi i64 [ %i.ak, %.noexc10 ], [ 0, %.preheader.i.i.i.i ]
  %.140.i.i.i.i = phi i64 [ %i.al, %.noexc10 ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.140.i.i.i.i ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !177 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !177
  %i.ah = sub nsw i64 %i.ag, %i.ad
  %i.ai = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_10UInt16TypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.ah, ptr nonnull %i.ae, ptr noundef nonnull %0)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.lr.ph42.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ai, ptr %.3, align 2, !tbaa !164
  %i.ak = add nuw nsw i64 %.02341.i.i.i.i, 1      ; 2 uses
  %i.al = add nsw i64 %.140.i.i.i.i, 1            ; 2 uses
  %exitcond50.not.i.i.i.i = icmp eq i64 %i.ak, %i.ab
  br i1 %exitcond50.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph42.i.i.i.i, !llvm.loop !3907

bb.e:                                             ; preds = %.noexc9
  %i.am = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.am, label %.preheader30.i.i.i.i, label %.preheader32.i.i.i.i

.preheader32.i.i.i.i:                             ; preds = %bb.e
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader32.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.y, 32767
  %i.an = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.ao = add i64 %.02444.i.i.i.i, %i.an          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader30.i.i.i.i:                             ; preds = %bb.e
  br i1 %i.aa, label %.lr.ph38.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader30.i.i.i.i
  %i.ap = zext nneg i32 %i.y to i64               ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ap, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.aq, i1 false), !tbaa !164
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.aq
  %i.ar = add i64 %.02444.i.i.i.i, %i.ap
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.bh, %.noexc11 ] ; 2 uses
  %.334.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.bi, %.noexc11 ] ; 3 uses
  %i.as = add nsw i64 %.334.i.i.i.i, %i.o         ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !69
  %i.aw = trunc i64 %i.as to i8
  %i.ax = and i8 %i.aw, 7
  %i.ay = lshr i8 %i.av, %i.ax
  %i.az = trunc i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %.noexc11

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.334.i.i.i.i ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !177 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !177
  %i.bf = sub nsw i64 %i.be, %i.bb
  %i.bg = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_10UInt16TypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.bf, ptr nonnull %i.bc, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.bg, %bb.f ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !164
  %i.bi = add i64 %.334.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bi, %i.ao
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3908

.loopexit.i.i.i.i:                                ; preds = %.noexc11, %.noexc10, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader32.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %i.aj, %.noexc10 ], [ %i.bh, %.noexc11 ]
  %.4.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.preheader32.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ar, %.lr.ph38.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.al, %.noexc10 ], [ %i.ao, %.noexc11 ] ; 2 uses
  %i.bj = icmp slt i64 %.4.i.i.i.i, %i.l
  br i1 %i.bj, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !3909

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.lr.ph42.i.i.i.i, %.lr.ph45.i.i.i.i, %.invoke, %bb.d
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h, %bb.i
  resume { ptr, i32 } %lpad.loopexit.split-lp58
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_10UInt16TypeENS_14BinaryViewTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.1248", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !3915
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144, !noalias !3916
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !3915
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3922
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !163
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS1_11ParseStringIS6_EEE9ArrayExecIS6_vE4ExecERKS9_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSB_4ExecESD_SF_SI_SK_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESI_OSS_OT1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !159
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  %i.q = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.n ; 2 uses
  %i.r = invoke { ptr, i64 } @_ZNK5arrow9ArraySpan18GetVariadicBuffersEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !162  ; 2 uses
  %i.v = load i64, ptr %i.m, align 8, !tbaa !159  ; 2 uses
  %i.w = load i64, ptr %i.j, align 8, !tbaa !163  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.u, i64 noundef %i.v, i64 noundef %i.w)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph46.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph46.i.i.i.i:                                 ; preds = %.noexc9, %.loopexit.i.i.i.i
  %.0 = phi ptr [ %.1, %.loopexit.i.i.i.i ], [ %i.i, %.noexc9 ] ; 7 uses
  %.02445.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc9 ] ; 7 uses
  %i.y = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc10:                                         ; preds = %.lr.ph46.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.y to i16 ; 3 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.y, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.z = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.aa = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.z, label %.preheader.i.i.i.i, label %bb.g

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.ab = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  br i1 %i.aa, label %.lr.ph43.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph43.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc11
  %.3 = phi ptr [ %i.ay, %.noexc11 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.02342.i.i.i.i = phi i64 [ %i.az, %.noexc11 ], [ 0, %.preheader.i.i.i.i ]
  %.141.i.i.i.i = phi i64 [ %i.ba, %.noexc11 ], [ %.02445.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.q, i64 %.141.i.i.i.i ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !69 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 13
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph43.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph43.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !69
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !205 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  %i.am = load i8, ptr %i.al, align 1, !tbaa !212, !range !89, !noundef !90
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = select i1 %i.an, ptr %i.ap, ptr null, !prof !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !69
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.av = phi ptr [ %i.af, %bb.e ], [ %i.au, %bb.f ]
  %i.aw = sext i32 %i.ad to i64
  %i.ax = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_10UInt16TypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.aw, ptr %i.av, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ax, ptr %.3, align 2, !tbaa !164
  %i.az = add nuw nsw i64 %.02342.i.i.i.i, 1      ; 2 uses
  %i.ba = add nsw i64 %.141.i.i.i.i, 1            ; 2 uses
  %exitcond51.not.i.i.i.i = icmp eq i64 %i.az, %i.ab
  br i1 %exitcond51.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph43.i.i.i.i, !llvm.loop !3919

bb.g:                                             ; preds = %.noexc10
  %i.bb = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.bb, label %.preheader31.i.i.i.i, label %.preheader33.i.i.i.i

.preheader33.i.i.i.i:                             ; preds = %bb.g
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader33.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.y, 32767
  %i.bc = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.bd = add i64 %.02445.i.i.i.i, %i.bc          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader31.i.i.i.i:                             ; preds = %bb.g
  br i1 %i.aa, label %.lr.ph39.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph39.i.i.i.i:                                 ; preds = %.preheader31.i.i.i.i
  %i.be = zext nneg i32 %i.y to i64               ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.bf, i1 false), !tbaa !164
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.bf
  %i.bg = add i64 %.02445.i.i.i.i, %i.be
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc12, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.cl, %.noexc12 ] ; 2 uses
  %.335.i.i.i.i = phi i64 [ %.02445.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.cm, %.noexc12 ] ; 3 uses
  %i.bh = add nsw i64 %.335.i.i.i.i, %i.v         ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !69
  %i.bl = trunc i64 %i.bh to i8
  %i.bm = and i8 %i.bl, 7
  %i.bn = lshr i8 %i.bk, %i.bm
  %i.bo = trunc i8 %i.bn to i1
  br i1 %i.bo, label %bb.h, label %.noexc12

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.q, i64 %.335.i.i.i.i ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !69 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 13
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !69
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !205 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 9
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !212, !range !89, !noundef !90
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = select i1 %i.ca, ptr %i.cc, ptr null, !prof !78
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !69
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.ci = phi ptr [ %i.bs, %bb.i ], [ %i.ch, %bb.j ]
  %i.cj = sext i32 %i.bq to i64
  %i.ck = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_10UInt16TypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.cj, ptr %i.ci, ptr noundef nonnull %0)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.ck, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !164
  %i.cm = add i64 %.335.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cm, %i.bd
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3920

.loopexit.i.i.i.i:                                ; preds = %.noexc12, %.noexc11, %.lr.ph39.i.i.i.i, %.preheader31.i.i.i.i, %.preheader33.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader33.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph39.i.i.i.i ], [ %.0, %.preheader31.i.i.i.i ], [ %i.ay, %.noexc11 ], [ %i.cl, %.noexc12 ]
  %.4.i.i.i.i = phi i64 [ %.02445.i.i.i.i, %.preheader33.i.i.i.i ], [ %.02445.i.i.i.i, %.preheader.i.i.i.i ], [ %i.bg, %.lr.ph39.i.i.i.i ], [ %.02445.i.i.i.i, %.preheader31.i.i.i.i ], [ %i.ba, %.noexc11 ], [ %i.bd, %.noexc12 ] ; 2 uses
  %i.cn = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.cn, label %.lr.ph46.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !3921

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS1_11ParseStringIS6_EEE9ArrayExecIS6_vE4ExecERKS9_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSB_4ExecESD_SF_SI_SK_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESI_OSS_OT1_.exit

_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS1_11ParseStringIS6_EEE9ArrayExecIS6_vE4ExecERKS9_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSB_4ExecESD_SF_SI_SK_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESI_OSS_OT1_.exit: ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i, %.lr.ph46.i.i.i.i, %.invoke, %.noexc8, %bb.d
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.k, !prof !78

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !88, !range !89, !noundef !90
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZN5arrow6StatusD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k, %bb.l
  resume { ptr, i32 } %lpad.loopexit.split-lp59
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal128TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %8 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Decimal128", align 16 ; 4 uses
  %11 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %12 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %13 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::Decimal128", align 16 ; 4 uses
  %16 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3934
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %3, align 8, !tbaa !213    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3925

.noexc8:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !159  ; 3 uses
  %i.q = sext i32 %i.n to i64                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !163  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.u, i64 noundef %i.p, i64 noundef %i.w)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph60.i.i.i.i, label %.loopexit28

.lr.ph60.i.i.i.i:                                 ; preds = %.noexc9
  %i.y = mul nsw i64 %i.p, %i.q
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph60.i.i.i.i
  %.0 = phi ptr [ %i.i, %.lr.ph60.i.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.z, %.lr.ph60.i.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i.i ] ; 6 uses
  %.02459.i.i.i.i = phi i64 [ 0, %.lr.ph60.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.ah = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc10:                                         ; preds = %bb.d
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.ah to i16 ; 6 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.ah, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ai = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ai, label %.preheader.i.i.i.i, label %bb.t

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.aj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ak, label %.lr.ph57.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph57.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.al = add i64 %.02459.i.i.i.i, %i.aj
  br label %.lr.ph57.i.i.i.i

.lr.ph57.i.i.i.i:                                 ; preds = %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, %.lr.ph57.preheader.i.i.i.i
  %.3 = phi ptr [ %.0, %.lr.ph57.preheader.i.i.i.i ], [ %i.cm, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal128TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a

bb.f:                                             ; preds = %.noexc12
  store i64 65535, ptr %13, align 8
  store i64 0, ptr %i.ad, align 8
  %i.av = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.av, label %bb.g, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc13
  %.pre.i.i.i.i.i = load i64, ptr %16, align 8, !tbaa !177
  br label %bb.s

.critedge6.i.i.i.i.i.i:                           ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !3935
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !3936
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !175, !noalias !3936, !nonnull !90, !align !176
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !3936 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !3935

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3935
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3936
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3935
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3936
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.az = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3935 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.af
  br i1 %i.ba, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.bb = load i64, ptr %i.af, align 8, !tbaa !69, !noalias !3935
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3935 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.af
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.bg = load i64, ptr %i.af, align 8, !tbaa !69, !noalias !3935
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3935
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3935
  %i.bi = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i36.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i36.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bo, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !44
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !46
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #26, !inline_history !3930
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !46
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #26, !inline_history !3930
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.br, %bb.p ], [ %i.cb, %bb.q ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !102 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !69
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i:            ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cj = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.cj, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.ck = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.aq, %.critedge.i.i.i.i.i.i ]
  %i.cl = trunc i64 %i.ck to i16
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i16 [ %i.cl, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.cm = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.cn = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.co = add nuw nsw i64 %.02356.i.i.i.i, 1      ; 2 uses
  %exitcond67.not.i.i.i.i = icmp eq i64 %i.co, %i.aj
  br i1 %exitcond67.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph57.i.i.i.i, !llvm.loop !3931

bb.t:                                             ; preds = %.noexc10
  %i.cp = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.cp, label %.preheader41.i.i.i.i, label %.preheader43.i.i.i.i

.preheader43.i.i.i.i:                             ; preds = %bb.t
  %i.cq = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cr = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cr, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader41.i.i.i.i:                             ; preds = %bb.t
  %i.cs = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cs, label %.lr.ph51.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph51.i.i.i.i:                                 ; preds = %.preheader41.i.i.i.i
  %i.ct = zext nneg i32 %i.ah to i64              ; 3 uses
  %i.cu = shl nuw nsw i64 %i.ct, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.cu, i1 false), !tbaa !164
  %i.cv = mul nsw i64 %i.ct, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cv
  %scevgep66.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cu
  %i.cw = add i64 %.02459.i.i.i.i, %i.ct
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader43.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.dw, %bb.ab ], [ %.0, %.preheader43.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader43.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i = phi i64 [ %i.dx, %bb.ab ], [ 0, %.preheader43.i.i.i.i ]
  %.347.i.i.i.i = phi i64 [ %i.dy, %bb.ab ], [ %.02459.i.i.i.i, %.preheader43.i.i.i.i ] ; 2 uses
  %i.cx = add nsw i64 %.347.i.i.i.i, %i.p         ; 2 uses
  %i.cy = lshr i64 %i.cx, 3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !69
  %i.db = trunc i64 %i.cx to i8
  %i.dc = and i8 %i.db, 7
  %i.dd = lshr i8 %i.da, %i.dc
  %i.de = trunc i8 %i.dd to i1
  br i1 %i.de, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.df = load <2 x i64>, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store <2 x i64> %i.df, ptr %10, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.dg = load i32, ptr %1, align 4, !tbaa !230
  %i.dh = sub nsw i32 0, %i.dg
  %i.di = invoke { i64, i64 } @_ZNK5arrow15BasicDecimal12815IncreaseScaleByEi(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %i.dh)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %bb.u
  %i.dj = extractvalue { i64, i64 } %i.di, 0      ; 2 uses
  store i64 %i.dj, ptr %11, align 8
  %i.dk = extractvalue { i64, i64 } %i.di, 1
  store i64 %i.dk, ptr %i.aa, align 8
  %i.dl = load i8, ptr %i.ag, align 4, !tbaa !231, !range !89, !noundef !90
  %i.dm = trunc nuw i8 %i.dl to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.dm, label %.critedge.i.i34.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.dn = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.dn, label %.critedge6.i.i33.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  store i64 65535, ptr %8, align 8
  store i64 0, ptr %i.ab, align 8
  %i.do = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.do, label %bb.x, label %._crit_edge.i28.i.i.i.i

._crit_edge.i28.i.i.i.i:                          ; preds = %.noexc17
  %.pre.i29.i.i.i.i = load i64, ptr %11, align 8, !tbaa !177
  br label %bb.aa

.critedge6.i.i33.i.i.i.i:                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i33.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.dp = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i31.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i31.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !88, !range !89, !noundef !90
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i:          ; preds = %bb.z, %bb.y, %.noexc18
  %i.dt = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dt, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i

.critedge.i.i34.i.i.i.i:                          ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i34.i.i.i.i, %._crit_edge.i28.i.i.i.i
  %i.du = phi i64 [ %.pre.i29.i.i.i.i, %._crit_edge.i28.i.i.i.i ], [ %i.dj, %.critedge.i.i34.i.i.i.i ]
  %i.dv = trunc i64 %i.du to i16
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i

_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i
  %.0.i.i30.i.i.i.i = phi i16 [ %i.dv, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i30.i.i.i.i, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dx = add nuw nsw i64 %.048.i.i.i.i, 1        ; 2 uses
  %i.dy = add nsw i64 %.347.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dx, %i.cq
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit61.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3932

.loopexit.loopexit61.i.i.i.i:                     ; preds = %bb.ab
  %i.dz = add i64 %.02459.i.i.i.i, %i.cq
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit61.i.i.i.i, %.lr.ph51.i.i.i.i, %.preheader41.i.i.i.i, %.preheader43.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader43.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep66.i.i.i.i, %.lr.ph51.i.i.i.i ], [ %.0, %.preheader41.i.i.i.i ], [ %i.dw, %.loopexit.loopexit61.i.i.i.i ], [ %i.cm, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader43.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph51.i.i.i.i ], [ %.0.i.i.i, %.preheader41.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit61.i.i.i.i ], [ %i.cn, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02459.i.i.i.i, %.preheader43.i.i.i.i ], [ %.02459.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cw, %.lr.ph51.i.i.i.i ], [ %.02459.i.i.i.i, %.preheader41.i.i.i.i ], [ %i.dz, %.loopexit.loopexit61.i.i.i.i ], [ %i.al, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.ea = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.ea, label %bb.d, label %.loopexit28, !llvm.loop !3933

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph57.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.ay, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.eb = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.eb, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !88, !range !89, !noundef !90
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal128TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %8 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Decimal128", align 16 ; 4 uses
  %11 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %12 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %13 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::Decimal128", align 16 ; 4 uses
  %16 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3948
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable
end_hunk_14
begin_hunk_15_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal128TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a

bb.f:                                             ; preds = %.noexc12
  store i64 65535, ptr %13, align 8
  store i64 0, ptr %i.ad, align 8
  %i.au = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.au, label %bb.g, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc13
  %.pre.i.i.i.i.i = load i64, ptr %16, align 8, !tbaa !177
  br label %bb.s

.critedge6.i.i.i.i.i.i:                           ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !3949
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !3950
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !175, !noalias !3950, !nonnull !90, !align !176
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !3950 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !3949

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3949
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3950
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3949
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3950
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.ay = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3949 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.af
  br i1 %i.az, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.ba = load i64, ptr %i.af, align 8, !tbaa !69, !noalias !3949
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3949 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.af
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.bf = load i64, ptr %i.af, align 8, !tbaa !69, !noalias !3949
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3949
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3949
  %i.bh = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i36.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i36.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bn, align 8, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !44
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !46
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #26, !inline_history !3944
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !46
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #26, !inline_history !3944
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.p ], [ %i.ca, %bb.q ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !102 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !69
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i:            ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.ci = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.ci, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.cj = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ap, %.critedge.i.i.i.i.i.i ]
  %i.ck = trunc i64 %i.cj to i16
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i16 [ %i.ck, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.cl = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.cm = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.cn = add nuw nsw i64 %.02356.i.i.i.i, 1      ; 2 uses
  %exitcond67.not.i.i.i.i = icmp eq i64 %i.cn, %i.aj
  br i1 %exitcond67.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph57.i.i.i.i, !llvm.loop !3945

bb.t:                                             ; preds = %.noexc10
  %i.co = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.co, label %.preheader41.i.i.i.i, label %.preheader43.i.i.i.i

.preheader43.i.i.i.i:                             ; preds = %bb.t
  %i.cp = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cq = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cq, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader41.i.i.i.i:                             ; preds = %bb.t
  %i.cr = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cr, label %.lr.ph51.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph51.i.i.i.i:                                 ; preds = %.preheader41.i.i.i.i
  %i.cs = zext nneg i32 %i.ah to i64              ; 3 uses
  %i.ct = shl nuw nsw i64 %i.cs, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.ct, i1 false), !tbaa !164
  %i.cu = mul nsw i64 %i.cs, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cu
  %scevgep66.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.ct
  %i.cv = add i64 %.02459.i.i.i.i, %i.cs
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader43.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.du, %bb.ab ], [ %.0, %.preheader43.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader43.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i = phi i64 [ %i.dv, %bb.ab ], [ 0, %.preheader43.i.i.i.i ]
  %.347.i.i.i.i = phi i64 [ %i.dw, %bb.ab ], [ %.02459.i.i.i.i, %.preheader43.i.i.i.i ] ; 2 uses
  %i.cw = add nsw i64 %.347.i.i.i.i, %i.p         ; 2 uses
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !69
  %i.da = trunc i64 %i.cw to i8
  %i.db = and i8 %i.da, 7
  %i.dc = lshr i8 %i.cz, %i.db
  %i.dd = trunc i8 %i.dc to i1
  br i1 %i.dd, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.de = load <2 x i64>, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store <2 x i64> %i.de, ptr %10, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.df = load i32, ptr %1, align 4, !tbaa !230
  %i.dg = invoke { i64, i64 } @_ZNK5arrow15BasicDecimal12813ReduceScaleByEib(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %i.df, i1 noundef zeroext false)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %bb.u
  %i.dh = extractvalue { i64, i64 } %i.dg, 0      ; 2 uses
  store i64 %i.dh, ptr %11, align 8
  %i.di = extractvalue { i64, i64 } %i.dg, 1
  store i64 %i.di, ptr %i.aa, align 8
  %i.dj = load i8, ptr %i.ag, align 4, !tbaa !231, !range !89, !noundef !90
  %i.dk = trunc nuw i8 %i.dj to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.dk, label %.critedge.i.i34.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.dl = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.dl, label %.critedge6.i.i33.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  store i64 65535, ptr %8, align 8
  store i64 0, ptr %i.ab, align 8
  %i.dm = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.dm, label %bb.x, label %._crit_edge.i28.i.i.i.i

._crit_edge.i28.i.i.i.i:                          ; preds = %.noexc17
  %.pre.i29.i.i.i.i = load i64, ptr %11, align 8, !tbaa !177
  br label %bb.aa

.critedge6.i.i33.i.i.i.i:                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i33.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.dn = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i31.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i31.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !88, !range !89, !noundef !90
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i:          ; preds = %bb.z, %bb.y, %.noexc18
  %i.dr = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dr, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i

.critedge.i.i34.i.i.i.i:                          ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i34.i.i.i.i, %._crit_edge.i28.i.i.i.i
  %i.ds = phi i64 [ %.pre.i29.i.i.i.i, %._crit_edge.i28.i.i.i.i ], [ %i.dh, %.critedge.i.i34.i.i.i.i ]
  %i.dt = trunc i64 %i.ds to i16
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i

_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i
  %.0.i.i30.i.i.i.i = phi i16 [ %i.dt, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i32.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i30.i.i.i.i, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dv = add nuw nsw i64 %.048.i.i.i.i, 1        ; 2 uses
  %i.dw = add nsw i64 %.347.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dv, %i.cp
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit61.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3946

.loopexit.loopexit61.i.i.i.i:                     ; preds = %bb.ab
  %i.dx = add i64 %.02459.i.i.i.i, %i.cp
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit61.i.i.i.i, %.lr.ph51.i.i.i.i, %.preheader41.i.i.i.i, %.preheader43.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader43.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep66.i.i.i.i, %.lr.ph51.i.i.i.i ], [ %.0, %.preheader41.i.i.i.i ], [ %i.du, %.loopexit.loopexit61.i.i.i.i ], [ %i.cl, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader43.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph51.i.i.i.i ], [ %.0.i.i.i, %.preheader41.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit61.i.i.i.i ], [ %i.cm, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02459.i.i.i.i, %.preheader43.i.i.i.i ], [ %.02459.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cv, %.lr.ph51.i.i.i.i ], [ %.02459.i.i.i.i, %.preheader41.i.i.i.i ], [ %i.dx, %.loopexit.loopexit61.i.i.i.i ], [ %i.al, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.dy = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.dy, label %bb.d, label %.loopexit28, !llvm.loop !3947

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph57.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.ax, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dz = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.dz, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !88, !range !89, !noundef !90
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal128TypeENS1_27SafeRescaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3957
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %3, align 8, !tbaa !213    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3953

.noexc8:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !159  ; 3 uses
  %i.q = sext i32 %i.n to i64                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !163  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.u, i64 noundef %i.p, i64 noundef %i.w)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph49.i.preheader.i.i.i, label %.loopexit25

.lr.ph49.i.preheader.i.i.i:                       ; preds = %.noexc9
  %i.y = mul nsw i64 %i.p, %i.q
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 %i.y
  br label %.lr.ph49.i.i.i.i

.lr.ph49.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i, %.lr.ph49.i.preheader.i.i.i
  %.0 = phi ptr [ %i.i, %.lr.ph49.i.preheader.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.z, %.lr.ph49.i.preheader.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i.i ] ; 6 uses
  %.02448.i.i.i.i = phi i64 [ 0, %.lr.ph49.i.preheader.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.aa = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc10:                                         ; preds = %.lr.ph49.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.aa to i16 ; 6 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.aa, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ab = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ab, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.ac = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ad = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ad, label %.lr.ph46.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph46.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc11
  %.3 = phi ptr [ %i.ag, %.noexc11 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.4.i.i.i = phi ptr [ %i.ah, %.noexc11 ], [ %.0.i.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %.02345.i.i.i.i = phi i64 [ %i.ai, %.noexc11 ], [ 0, %.preheader.i.i.i.i ]
  %.val1.i.i.i.i.i = load i64, ptr %.4.i.i.i, align 1
  %i.ae = getelementptr i8, ptr %.4.i.i.i, i64 8
  %.val2.i.i.i.i.i = load i64, ptr %i.ae, align 1
  %i.af = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, i64 %.val1.i.i.i.i.i, i64 %.val2.i.i.i.i.i, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %.lr.ph46.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.af, ptr %.3, align 2, !tbaa !164
  %i.ah = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ai = add nuw nsw i64 %.02345.i.i.i.i, 1      ; 2 uses
  %exitcond56.not.i.i.i.i = icmp eq i64 %i.ai, %i.ac
  br i1 %exitcond56.not.i.i.i.i, label %.loopexit.loopexit.i.i.i.i, label %.lr.ph46.i.i.i.i, !llvm.loop !3954

bb.d:                                             ; preds = %.noexc10
  %i.aj = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.aj, label %.preheader32.i.i.i.i, label %.preheader34.i.i.i.i

.preheader34.i.i.i.i:                             ; preds = %bb.d
  %i.ak = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.al = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader32.i.i.i.i:                             ; preds = %bb.d
  %i.am = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.am, label %.lr.ph40.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph40.i.i.i.i:                                 ; preds = %.preheader32.i.i.i.i
  %i.an = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.ao = shl nuw nsw i64 %i.an, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.ao, i1 false), !tbaa !164
  %i.ap = mul nsw i64 %i.an, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.ap
  %scevgep55.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.ao
  %i.aq = add i64 %.02448.i.i.i.i, %i.an
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader34.i.i.i.i, %.noexc12
  %.2 = phi ptr [ %i.bb, %.noexc12 ], [ %.0, %.preheader34.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %.noexc12 ], [ %.0.i.i.i, %.preheader34.i.i.i.i ] ; 3 uses
  %.037.i.i.i.i = phi i64 [ %i.bc, %.noexc12 ], [ 0, %.preheader34.i.i.i.i ]
  %.336.i.i.i.i = phi i64 [ %i.bd, %.noexc12 ], [ %.02448.i.i.i.i, %.preheader34.i.i.i.i ] ; 2 uses
  %i.ar = add nsw i64 %.336.i.i.i.i, %i.p         ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69
  %i.av = trunc i64 %i.ar to i8
  %i.aw = and i8 %i.av, 7
  %i.ax = lshr i8 %i.au, %i.aw
  %i.ay = trunc i8 %i.ax to i1
  br i1 %i.ay, label %bb.e, label %.noexc12

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %.val1.i26.i.i.i.i = load i64, ptr %.2.i.i.i, align 1
  %i.az = getelementptr i8, ptr %.2.i.i.i, i64 8
  %.val2.i27.i.i.i.i = load i64, ptr %i.az, align 1
  %i.ba = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, i64 %.val1.i26.i.i.i.i, i64 %.val2.i27.i.i.i.i, ptr noundef nonnull %0)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.ba, %bb.e ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.bc = add nuw nsw i64 %.037.i.i.i.i, 1        ; 2 uses
  %i.bd = add nsw i64 %.336.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bc, %i.ak
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit50.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3955

.loopexit.loopexit.i.i.i.i:                       ; preds = %.noexc11
  %i.be = add i64 %.02448.i.i.i.i, %i.ac
  br label %.loopexit.i.i.i.i

.loopexit.loopexit50.i.i.i.i:                     ; preds = %.noexc12
  %i.bf = add i64 %.02448.i.i.i.i, %i.ak
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.loopexit50.i.i.i.i, %.loopexit.loopexit.i.i.i.i, %.lr.ph40.i.i.i.i, %.preheader32.i.i.i.i, %.preheader34.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %i.ag, %.loopexit.loopexit.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep55.i.i.i.i, %.lr.ph40.i.i.i.i ], [ %.0, %.preheader32.i.i.i.i ], [ %i.bb, %.loopexit.loopexit50.i.i.i.i ], [ %.0, %.preheader34.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %i.ah, %.loopexit.loopexit.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph40.i.i.i.i ], [ %.0.i.i.i, %.preheader32.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit50.i.i.i.i ], [ %.0.i.i.i, %.preheader34.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %i.be, %.loopexit.loopexit.i.i.i.i ], [ %.02448.i.i.i.i, %.preheader.i.i.i.i ], [ %i.aq, %.lr.ph40.i.i.i.i ], [ %.02448.i.i.i.i, %.preheader32.i.i.i.i ], [ %i.bf, %.loopexit.loopexit50.i.i.i.i ], [ %.02448.i.i.i.i, %.preheader34.i.i.i.i ] ; 2 uses
  %i.bg = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.bg, label %.lr.ph49.i.i.i.i, label %.loopexit25, !llvm.loop !3956

.loopexit25:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %.lr.ph46.i.i.i.i, %.lr.ph49.i.i.i.i, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f, !prof !78

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f, %bb.g
  resume { ptr, i32 } %lpad.loopexit.split-lp56
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %0, ptr noundef %1, i64 %2, i64 %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %6 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.arrow::Decimal128", align 8 ; 6 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %10 = alloca %"class.arrow::Decimal128", align 8 ; 3 uses
  %11 = alloca %"class.arrow::Result.424", align 8 ; 13 uses
  store i64 %2, ptr %10, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %3, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.b = load i32, ptr %0, align 4, !tbaa !230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3960)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !3960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !3960
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !3960
  %i.c = call noundef i32 @_ZNK5arrow15BasicDecimal1287RescaleEiiPS0_(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %i.b, i32 noundef 0, ptr noundef nonnull %8), !noalias !3960
  call void @_ZN5arrow8internal13ToArrowStatusENS_13DecimalStatusE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i32 noundef %i.c), !noalias !3960
  %i.d = load ptr, ptr %9, align 8, !tbaa !77, !noalias !3960
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK5arrow10Decimal1287RescaleEii.exit.thread, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_10Decimal128EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(8) %9) #26
  %i.f = load ptr, ptr %9, align 8, !tbaa !77, !noalias !3960 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK5arrow10Decimal1287RescaleEii.exit, label %bb.c, !prof !78

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !88, !range !89, !noundef !90
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNK5arrow10Decimal1287RescaleEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #26
  br label %_ZNK5arrow10Decimal1287RescaleEii.exit

_ZNK5arrow10Decimal1287RescaleEii.exit.thread:    ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !3960
  store ptr null, ptr %11, align 8, !tbaa !77, !alias.scope !3960
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !3960
  br label %bb.j

_ZNK5arrow10Decimal1287RescaleEii.exit:           ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !3960
  %.pr = load ptr, ptr %11, align 8, !tbaa !77    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !3960
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %bb.j, label %bb.e, !prof !191

bb.e:                                             ; preds = %_ZNK5arrow10Decimal1287RescaleEii.exit
  %i.l = load ptr, ptr %4, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.l, %.pr
  br i1 %.not.i, label %_ZN5arrow6StatusaSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZN5arrow6StatusaSERKS0_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %11, align 8, !tbaa !77    ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i.i6, label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !88, !range !89, !noundef !90
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #26
  br label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit

_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit:      ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  resume { ptr, i32 } %i.m

bb.j:                                             ; preds = %_ZNK5arrow10Decimal1287RescaleEii.exit.thread, %_ZNK5arrow10Decimal1287RescaleEii.exit
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 4, !tbaa !231, !range !89, !noundef !90
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  br i1 %i.u, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.v = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc10 unwind label %bb.g

.noexc10:                                         ; preds = %bb.k
  br i1 %i.v, label %.critedge6.i, label %bb.l, !prof !92

bb.l:                                             ; preds = %.noexc10
  store i64 65535, ptr %6, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.w, align 8
  %i.x = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc11 unwind label %bb.g

.noexc11:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %i.x, label %bb.m, label %bb.p

.critedge6.i:                                     ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.m

bb.m:                                             ; preds = %.critedge6.i, %.noexc11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
end_hunk_15
begin_hunk_16_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_13Decimal32TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %i.an, label %.critedge6.i.i.i.i.i.i, label %bb.f, !prof !92

bb.f:                                             ; preds = %.noexc12
  store i32 65535, ptr %13, align 4, !tbaa !195
  %i.ao = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %16, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.ao, label %bb.g, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc13
  %.pre.i.i.i.i.i = load i32, ptr %16, align 4, !tbaa !195
  br label %bb.s

.critedge6.i.i.i.i.i.i:                           ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !3973
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !3974
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !175, !noalias !3974, !nonnull !90, !align !176
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !3974 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !3973

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3973
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3974
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3973
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3974
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.as = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3973 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ab
  br i1 %i.at, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.au = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !3973
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3973 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ab
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.az = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !3973
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3973
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3973
  %i.bb = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !88, !range !89, !noundef !90
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i35.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i35.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bh, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !44
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26, !inline_history !3968
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26, !inline_history !3968
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.p ], [ %i.bu, %bb.q ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !102 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !69
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i:            ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cc = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.cc, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.cd = phi i32 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ak, %.critedge.i.i.i.i.i.i ]
  %i.ce = trunc i32 %i.cd to i16
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i16 [ %i.ce, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.cf = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.cg = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ch = add nuw nsw i64 %.02355.i.i.i.i, 1      ; 2 uses
  %exitcond66.not.i.i.i.i = icmp eq i64 %i.ch, %i.af
  br i1 %exitcond66.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph56.i.i.i.i, !llvm.loop !3969

bb.t:                                             ; preds = %.noexc10
  %i.ci = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ci, label %.preheader40.i.i.i.i, label %.preheader42.i.i.i.i

.preheader42.i.i.i.i:                             ; preds = %bb.t
  %i.cj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ck = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ck, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader40.i.i.i.i:                             ; preds = %bb.t
  %i.cl = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cl, label %.lr.ph50.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph50.i.i.i.i:                                 ; preds = %.preheader40.i.i.i.i
  %i.cm = zext nneg i32 %i.ad to i64              ; 3 uses
  %i.cn = shl nuw nsw i64 %i.cm, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.cn, i1 false), !tbaa !164
  %i.co = mul nsw i64 %i.cm, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.co
  %scevgep65.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cn
  %i.cp = add i64 %.02458.i.i.i.i, %i.cm
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader42.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.dm, %bb.ab ], [ %.0, %.preheader42.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %.047.i.i.i.i = phi i64 [ %i.dn, %bb.ab ], [ 0, %.preheader42.i.i.i.i ]
  %.346.i.i.i.i = phi i64 [ %i.do, %bb.ab ], [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %i.cq = add nsw i64 %.346.i.i.i.i, %i.p         ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !69
  %i.cu = trunc i64 %i.cq to i8
  %i.cv = and i8 %i.cu, 7
  %i.cw = lshr i8 %i.ct, %i.cv
  %i.cx = trunc i8 %i.cw to i1
  br i1 %i.cx, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %.val1.i26.i.i.i.i = load i32, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i32 %.val1.i26.i.i.i.i, ptr %10, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cy = load i32, ptr %1, align 4, !tbaa !230
  %i.cz = sub nsw i32 0, %i.cy
  %i.da = invoke i32 @_ZNK5arrow14BasicDecimal3215IncreaseScaleByEi(ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %i.cz)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %bb.u
  store i32 %i.da, ptr %11, align 4
  %i.db = load i8, ptr %i.ac, align 4, !tbaa !231, !range !89, !noundef !90
  %i.dc = trunc nuw i8 %i.db to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.dc, label %.critedge.i.i33.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  store i32 0, ptr %7, align 4, !tbaa !195
  %i.dd = invoke noundef zeroext i1 @_ZN5arrowltERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.dd, label %.critedge6.i.i32.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  store i32 65535, ptr %8, align 4, !tbaa !195
  %i.de = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.de, label %bb.x, label %._crit_edge.i27.i.i.i.i

._crit_edge.i27.i.i.i.i:                          ; preds = %.noexc17
  %.pre.i28.i.i.i.i = load i32, ptr %11, align 4, !tbaa !195
  br label %bb.aa

.critedge6.i.i32.i.i.i.i:                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i32.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.df = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i30.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i30.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !88, !range !89, !noundef !90
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i:          ; preds = %bb.z, %bb.y, %.noexc18
  %i.dj = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dj, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

.critedge.i.i33.i.i.i.i:                          ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i33.i.i.i.i, %._crit_edge.i27.i.i.i.i
  %i.dk = phi i32 [ %.pre.i28.i.i.i.i, %._crit_edge.i27.i.i.i.i ], [ %i.da, %.critedge.i.i33.i.i.i.i ]
  %i.dl = trunc i32 %i.dk to i16
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i
  %.0.i.i29.i.i.i.i = phi i16 [ %i.dl, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i29.i.i.i.i, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dn = add nuw nsw i64 %.047.i.i.i.i, 1        ; 2 uses
  %i.do = add nsw i64 %.346.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dn, %i.cj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit60.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3970

.loopexit.loopexit60.i.i.i.i:                     ; preds = %bb.ab
  %i.dp = add i64 %.02458.i.i.i.i, %i.cj
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit60.i.i.i.i, %.lr.ph50.i.i.i.i, %.preheader40.i.i.i.i, %.preheader42.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader42.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep65.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0, %.preheader40.i.i.i.i ], [ %i.dm, %.loopexit.loopexit60.i.i.i.i ], [ %i.cf, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader42.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0.i.i.i, %.preheader40.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit60.i.i.i.i ], [ %i.cg, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cp, %.lr.ph50.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader40.i.i.i.i ], [ %i.dp, %.loopexit.loopexit60.i.i.i.i ], [ %i.ah, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.dq = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.dq, label %bb.d, label %.loopexit28, !llvm.loop !3971

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph56.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.ar, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dr = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.dr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !88, !range !89, !noundef !90
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_13Decimal32TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %8 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Decimal32", align 4 ; 4 uses
  %11 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %12 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %13 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::Decimal32", align 4 ; 4 uses
  %16 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3986
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
end_hunk_16
begin_hunk_17_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_13Decimal32TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %i.am, label %.critedge6.i.i.i.i.i.i, label %bb.f, !prof !92

bb.f:                                             ; preds = %.noexc12
  store i32 65535, ptr %13, align 4, !tbaa !195
  %i.an = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %16, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.an, label %bb.g, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc13
  %.pre.i.i.i.i.i = load i32, ptr %16, align 4, !tbaa !195
  br label %bb.s

.critedge6.i.i.i.i.i.i:                           ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !3987
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !3988
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !175, !noalias !3988, !nonnull !90, !align !176
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !3988 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !3987

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3987
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3988
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !3987
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !3988
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.ar = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3987 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ab
  br i1 %i.as, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.at = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !3987
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %6, align 8, !tbaa !102, !noalias !3987 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ab
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.ay = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !3987
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3987
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3987
  %i.ba = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i35.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i35.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bg, align 8, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !44
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !46
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26, !inline_history !3982
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26, !inline_history !3982
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.p ], [ %i.bt, %bb.q ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !102 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !69
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i:            ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cb = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.cb, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.cc = phi i32 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.aj, %.critedge.i.i.i.i.i.i ]
  %i.cd = trunc i32 %i.cc to i16
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i16 [ %i.cd, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.ce = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.cf = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.cg = add nuw nsw i64 %.02355.i.i.i.i, 1      ; 2 uses
  %exitcond66.not.i.i.i.i = icmp eq i64 %i.cg, %i.af
  br i1 %exitcond66.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph56.i.i.i.i, !llvm.loop !3983

bb.t:                                             ; preds = %.noexc10
  %i.ch = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ch, label %.preheader40.i.i.i.i, label %.preheader42.i.i.i.i

.preheader42.i.i.i.i:                             ; preds = %bb.t
  %i.ci = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cj = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader40.i.i.i.i:                             ; preds = %bb.t
  %i.ck = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ck, label %.lr.ph50.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph50.i.i.i.i:                                 ; preds = %.preheader40.i.i.i.i
  %i.cl = zext nneg i32 %i.ad to i64              ; 3 uses
  %i.cm = shl nuw nsw i64 %i.cl, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.cm, i1 false), !tbaa !164
  %i.cn = mul nsw i64 %i.cl, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cn
  %scevgep65.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cm
  %i.co = add i64 %.02458.i.i.i.i, %i.cl
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader42.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.dk, %bb.ab ], [ %.0, %.preheader42.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %.047.i.i.i.i = phi i64 [ %i.dl, %bb.ab ], [ 0, %.preheader42.i.i.i.i ]
  %.346.i.i.i.i = phi i64 [ %i.dm, %bb.ab ], [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %i.cp = add nsw i64 %.346.i.i.i.i, %i.p         ; 2 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !69
  %i.ct = trunc i64 %i.cp to i8
  %i.cu = and i8 %i.ct, 7
  %i.cv = lshr i8 %i.cs, %i.cu
  %i.cw = trunc i8 %i.cv to i1
  br i1 %i.cw, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %.val1.i26.i.i.i.i = load i32, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i32 %.val1.i26.i.i.i.i, ptr %10, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cx = load i32, ptr %1, align 4, !tbaa !230
  %i.cy = invoke i32 @_ZNK5arrow14BasicDecimal3213ReduceScaleByEib(ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %i.cx, i1 noundef zeroext false)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %bb.u
  store i32 %i.cy, ptr %11, align 4
  %i.cz = load i8, ptr %i.ac, align 4, !tbaa !231, !range !89, !noundef !90
  %i.da = trunc nuw i8 %i.cz to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.da, label %.critedge.i.i33.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  store i32 0, ptr %7, align 4, !tbaa !195
  %i.db = invoke noundef zeroext i1 @_ZN5arrowltERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.db, label %.critedge6.i.i32.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  store i32 65535, ptr %8, align 4, !tbaa !195
  %i.dc = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.dc, label %bb.x, label %._crit_edge.i27.i.i.i.i

._crit_edge.i27.i.i.i.i:                          ; preds = %.noexc17
  %.pre.i28.i.i.i.i = load i32, ptr %11, align 4, !tbaa !195
  br label %bb.aa

.critedge6.i.i32.i.i.i.i:                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i32.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.dd = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i30.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i30.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !88, !range !89, !noundef !90
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i:          ; preds = %bb.z, %bb.y, %.noexc18
  %i.dh = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dh, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

.critedge.i.i33.i.i.i.i:                          ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i33.i.i.i.i, %._crit_edge.i27.i.i.i.i
  %i.di = phi i32 [ %.pre.i28.i.i.i.i, %._crit_edge.i27.i.i.i.i ], [ %i.cy, %.critedge.i.i33.i.i.i.i ]
  %i.dj = trunc i32 %i.di to i16
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i
  %.0.i.i29.i.i.i.i = phi i16 [ %i.dj, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i29.i.i.i.i, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dl = add nuw nsw i64 %.047.i.i.i.i, 1        ; 2 uses
  %i.dm = add nsw i64 %.346.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dl, %i.ci
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit60.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3984

.loopexit.loopexit60.i.i.i.i:                     ; preds = %bb.ab
  %i.dn = add i64 %.02458.i.i.i.i, %i.ci
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit60.i.i.i.i, %.lr.ph50.i.i.i.i, %.preheader40.i.i.i.i, %.preheader42.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader42.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep65.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0, %.preheader40.i.i.i.i ], [ %i.dk, %.loopexit.loopexit60.i.i.i.i ], [ %i.ce, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader42.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0.i.i.i, %.preheader40.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit60.i.i.i.i ], [ %i.cf, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader.i.i.i.i ], [ %i.co, %.lr.ph50.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader40.i.i.i.i ], [ %i.dn, %.loopexit.loopexit60.i.i.i.i ], [ %i.ah, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.do = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.do, label %bb.d, label %.loopexit28, !llvm.loop !3985

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph56.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.aq, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dp = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !88, !range !89, !noundef !90
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_13Decimal32TypeENS1_27SafeRescaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !3995
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %3, align 8, !tbaa !213    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3991

.noexc8:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !159  ; 3 uses
  %i.q = sext i32 %i.n to i64                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !163  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.u, i64 noundef %i.p, i64 noundef %i.w)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph48.i.preheader.i.i.i, label %.loopexit25

.lr.ph48.i.preheader.i.i.i:                       ; preds = %.noexc9
  %i.y = mul nsw i64 %i.p, %i.q
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 %i.y
  br label %.lr.ph48.i.i.i.i

.lr.ph48.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i, %.lr.ph48.i.preheader.i.i.i
  %.0 = phi ptr [ %i.i, %.lr.ph48.i.preheader.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.z, %.lr.ph48.i.preheader.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i.i ] ; 6 uses
  %.02447.i.i.i.i = phi i64 [ 0, %.lr.ph48.i.preheader.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.aa = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc10:                                         ; preds = %.lr.ph48.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.aa to i16 ; 6 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.aa, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ab = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ab, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.ac = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ad = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ad, label %.lr.ph45.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc11
  %.3 = phi ptr [ %i.af, %.noexc11 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.4.i.i.i = phi ptr [ %i.ag, %.noexc11 ], [ %.0.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.02344.i.i.i.i = phi i64 [ %i.ah, %.noexc11 ], [ 0, %.preheader.i.i.i.i ]
  %.val1.i.i.i.i.i = load i32, ptr %.4.i.i.i, align 1
  %i.ae = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, i32 %.val1.i.i.i.i.i, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %.lr.ph45.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ae, ptr %.3, align 2, !tbaa !164
  %i.ag = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ah = add nuw nsw i64 %.02344.i.i.i.i, 1      ; 2 uses
  %exitcond55.not.i.i.i.i = icmp eq i64 %i.ah, %i.ac
  br i1 %exitcond55.not.i.i.i.i, label %.loopexit.loopexit.i.i.i.i, label %.lr.ph45.i.i.i.i, !llvm.loop !3992

bb.d:                                             ; preds = %.noexc10
  %i.ai = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ai, label %.preheader31.i.i.i.i, label %.preheader33.i.i.i.i

.preheader33.i.i.i.i:                             ; preds = %bb.d
  %i.aj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader31.i.i.i.i:                             ; preds = %bb.d
  %i.al = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.al, label %.lr.ph39.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph39.i.i.i.i:                                 ; preds = %.preheader31.i.i.i.i
  %i.am = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.an = shl nuw nsw i64 %i.am, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.an, i1 false), !tbaa !164
  %i.ao = mul nsw i64 %i.am, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.ao
  %scevgep54.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.an
  %i.ap = add i64 %.02447.i.i.i.i, %i.am
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader33.i.i.i.i, %.noexc12
  %.2 = phi ptr [ %i.az, %.noexc12 ], [ %.0, %.preheader33.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %.noexc12 ], [ %.0.i.i.i, %.preheader33.i.i.i.i ] ; 2 uses
  %.036.i.i.i.i = phi i64 [ %i.ba, %.noexc12 ], [ 0, %.preheader33.i.i.i.i ]
  %.335.i.i.i.i = phi i64 [ %i.bb, %.noexc12 ], [ %.02447.i.i.i.i, %.preheader33.i.i.i.i ] ; 2 uses
  %i.aq = add nsw i64 %.335.i.i.i.i, %i.p         ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !69
  %i.au = trunc i64 %i.aq to i8
  %i.av = and i8 %i.au, 7
  %i.aw = lshr i8 %i.at, %i.av
  %i.ax = trunc i8 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %.noexc12

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %.val1.i26.i.i.i.i = load i32, ptr %.2.i.i.i, align 1
  %i.ay = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, i32 %.val1.i26.i.i.i.i, ptr noundef nonnull %0)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.ay, %bb.e ]
  %i.az = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.ba = add nuw nsw i64 %.036.i.i.i.i, 1        ; 2 uses
  %i.bb = add nsw i64 %.335.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit49.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3993

.loopexit.loopexit.i.i.i.i:                       ; preds = %.noexc11
  %i.bc = add i64 %.02447.i.i.i.i, %i.ac
  br label %.loopexit.i.i.i.i

.loopexit.loopexit49.i.i.i.i:                     ; preds = %.noexc12
  %i.bd = add i64 %.02447.i.i.i.i, %i.aj
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.loopexit49.i.i.i.i, %.loopexit.loopexit.i.i.i.i, %.lr.ph39.i.i.i.i, %.preheader31.i.i.i.i, %.preheader33.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %i.af, %.loopexit.loopexit.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep54.i.i.i.i, %.lr.ph39.i.i.i.i ], [ %.0, %.preheader31.i.i.i.i ], [ %i.az, %.loopexit.loopexit49.i.i.i.i ], [ %.0, %.preheader33.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %i.ag, %.loopexit.loopexit.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph39.i.i.i.i ], [ %.0.i.i.i, %.preheader31.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit49.i.i.i.i ], [ %.0.i.i.i, %.preheader33.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %i.bc, %.loopexit.loopexit.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ap, %.lr.ph39.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader31.i.i.i.i ], [ %i.bd, %.loopexit.loopexit49.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader33.i.i.i.i ] ; 2 uses
  %i.be = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.be, label %.lr.ph48.i.i.i.i, label %.loopexit25, !llvm.loop !3994

.loopexit25:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %.lr.ph45.i.i.i.i, %.lr.ph48.i.i.i.i, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f, !prof !78

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f, %bb.g
  resume { ptr, i32 } %lpad.loopexit.split-lp56
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_9Decimal32EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %5 = alloca %"class.arrow::BasicDecimal32", align 4 ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Decimal32", align 4  ; 6 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Decimal32", align 4  ; 2 uses
  %10 = alloca %"class.arrow::Result.139", align 8 ; 13 uses
  store i32 %2, ptr %9, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.a = load i32, ptr %0, align 4, !tbaa !230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3998)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !3998
  store i32 0, ptr %7, align 4, !tbaa !195, !noalias !3998
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !3998
  %i.b = call noundef i32 @_ZNK5arrow14BasicDecimal327RescaleEiiPS0_(ptr noundef nonnull align 4 dereferenceable(4) %9, i32 noundef %i.a, i32 noundef 0, ptr noundef nonnull %7), !noalias !3998
  call void @_ZN5arrow8internal13ToArrowStatusENS_13DecimalStatusE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i32 noundef %i.b), !noalias !3998
  %i.c = load ptr, ptr %8, align 8, !tbaa !77, !noalias !3998
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK5arrow9Decimal327RescaleEii.exit.thread, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_9Decimal32EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  %i.e = load ptr, ptr %8, align 8, !tbaa !77, !noalias !3998 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK5arrow9Decimal327RescaleEii.exit, label %bb.c, !prof !78

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !88, !range !89, !noundef !90
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK5arrow9Decimal327RescaleEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br label %_ZNK5arrow9Decimal327RescaleEii.exit

_ZNK5arrow9Decimal327RescaleEii.exit.thread:      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !3998
  store ptr null, ptr %10, align 8, !tbaa !77, !alias.scope !3998
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.j = load i32, ptr %7, align 4, !noalias !3998
  store i32 %i.j, ptr %i.i, align 8, !alias.scope !3998
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !3998
  br label %bb.j

_ZNK5arrow9Decimal327RescaleEii.exit:             ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !3998
  %.pr = load ptr, ptr %10, align 8, !tbaa !77    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !3998
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %bb.j, label %bb.e, !prof !191

bb.e:                                             ; preds = %_ZNK5arrow9Decimal327RescaleEii.exit
  %i.l = load ptr, ptr %3, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.l, %.pr
  br i1 %.not.i, label %_ZN5arrow6StatusaSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6StatusaSERKS0_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %10, align 8, !tbaa !77    ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i.i6, label %_ZN5arrow6ResultINS_9Decimal32EED2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !88, !range !89, !noundef !90
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5arrow6ResultINS_9Decimal32EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %10) #26
  br label %_ZN5arrow6ResultINS_9Decimal32EED2Ev.exit

_ZN5arrow6ResultINS_9Decimal32EED2Ev.exit:        ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  resume { ptr, i32 } %i.m

bb.j:                                             ; preds = %_ZNK5arrow9Decimal327RescaleEii.exit.thread, %_ZNK5arrow9Decimal327RescaleEii.exit
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 4, !tbaa !231, !range !89, !noundef !90
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  br i1 %i.u, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %4, align 4, !tbaa !195
  %i.v = invoke noundef zeroext i1 @_ZN5arrowltERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc10 unwind label %bb.g

.noexc10:                                         ; preds = %bb.k
  br i1 %i.v, label %.critedge6.i, label %bb.l, !prof !92

bb.l:                                             ; preds = %.noexc10
  store i32 65535, ptr %5, align 4, !tbaa !195
  %i.w = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal32ES2_(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %.noexc11 unwind label %bb.g

.noexc11:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.w, label %bb.m, label %bb.p

.critedge6.i:                                     ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.m

bb.m:                                             ; preds = %.critedge6.i, %.noexc11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc12 unwind label %bb.g

.noexc12:                                         ; preds = %bb.m
  %i.x = load ptr, ptr %3, align 8, !tbaa !77     ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_13Decimal64TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %i.an, label %.critedge6.i.i.i.i.i.i, label %bb.f, !prof !92

bb.f:                                             ; preds = %.noexc12
  store i64 65535, ptr %13, align 8, !tbaa !223
  %i.ao = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.ao, label %bb.g, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc13
  %.pre.i.i.i.i.i = load i64, ptr %16, align 8, !tbaa !223
  br label %bb.s

.critedge6.i.i.i.i.i.i:                           ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !4011
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !4012
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !175, !noalias !4012, !nonnull !90, !align !176
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !4012 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !4011

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !4011
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !4012
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !4011
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !4012
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.as = load ptr, ptr %6, align 8, !tbaa !102, !noalias !4011 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ab
  br i1 %i.at, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.au = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !4011
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %6, align 8, !tbaa !102, !noalias !4011 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ab
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.az = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !4011
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !4011
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !4011
  %i.bb = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !88, !range !89, !noundef !90
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i35.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i35.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bh, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !44
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26, !inline_history !4006
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26, !inline_history !4006
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.p ], [ %i.bu, %bb.q ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !102 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !69
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i:            ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cc = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.cc, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.cd = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ak, %.critedge.i.i.i.i.i.i ]
  %i.ce = trunc i64 %i.cd to i16
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i16 [ %i.ce, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.cf = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.cg = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ch = add nuw nsw i64 %.02355.i.i.i.i, 1      ; 2 uses
  %exitcond66.not.i.i.i.i = icmp eq i64 %i.ch, %i.af
  br i1 %exitcond66.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph56.i.i.i.i, !llvm.loop !4007

bb.t:                                             ; preds = %.noexc10
  %i.ci = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ci, label %.preheader40.i.i.i.i, label %.preheader42.i.i.i.i

.preheader42.i.i.i.i:                             ; preds = %bb.t
  %i.cj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ck = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ck, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader40.i.i.i.i:                             ; preds = %bb.t
  %i.cl = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cl, label %.lr.ph50.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph50.i.i.i.i:                                 ; preds = %.preheader40.i.i.i.i
  %i.cm = zext nneg i32 %i.ad to i64              ; 3 uses
  %i.cn = shl nuw nsw i64 %i.cm, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.cn, i1 false), !tbaa !164
  %i.co = mul nsw i64 %i.cm, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.co
  %scevgep65.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cn
  %i.cp = add i64 %.02458.i.i.i.i, %i.cm
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader42.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.dm, %bb.ab ], [ %.0, %.preheader42.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %.047.i.i.i.i = phi i64 [ %i.dn, %bb.ab ], [ 0, %.preheader42.i.i.i.i ]
  %.346.i.i.i.i = phi i64 [ %i.do, %bb.ab ], [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %i.cq = add nsw i64 %.346.i.i.i.i, %i.p         ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !69
  %i.cu = trunc i64 %i.cq to i8
  %i.cv = and i8 %i.cu, 7
  %i.cw = lshr i8 %i.ct, %i.cv
  %i.cx = trunc i8 %i.cw to i1
  br i1 %i.cx, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %.val1.i26.i.i.i.i = load i64, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i64 %.val1.i26.i.i.i.i, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cy = load i32, ptr %1, align 4, !tbaa !230
  %i.cz = sub nsw i32 0, %i.cy
  %i.da = invoke i64 @_ZNK5arrow14BasicDecimal6415IncreaseScaleByEi(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %i.cz)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %bb.u
  store i64 %i.da, ptr %11, align 8
  %i.db = load i8, ptr %i.ac, align 4, !tbaa !231, !range !89, !noundef !90
  %i.dc = trunc nuw i8 %i.db to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.dc, label %.critedge.i.i33.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  store i64 0, ptr %7, align 8, !tbaa !223
  %i.dd = invoke noundef zeroext i1 @_ZN5arrowltERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.dd, label %.critedge6.i.i32.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  store i64 65535, ptr %8, align 8, !tbaa !223
  %i.de = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.de, label %bb.x, label %._crit_edge.i27.i.i.i.i

._crit_edge.i27.i.i.i.i:                          ; preds = %.noexc17
  %.pre.i28.i.i.i.i = load i64, ptr %11, align 8, !tbaa !223
  br label %bb.aa

.critedge6.i.i32.i.i.i.i:                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i32.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.df = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i30.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i30.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !88, !range !89, !noundef !90
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i:          ; preds = %bb.z, %bb.y, %.noexc18
  %i.dj = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dj, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

.critedge.i.i33.i.i.i.i:                          ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i33.i.i.i.i, %._crit_edge.i27.i.i.i.i
  %i.dk = phi i64 [ %.pre.i28.i.i.i.i, %._crit_edge.i27.i.i.i.i ], [ %i.da, %.critedge.i.i33.i.i.i.i ]
  %i.dl = trunc i64 %i.dk to i16
  br label %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i
  %.0.i.i29.i.i.i.i = phi i16 [ %i.dl, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i29.i.i.i.i, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dn = add nuw nsw i64 %.047.i.i.i.i, 1        ; 2 uses
  %i.do = add nsw i64 %.346.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dn, %i.cj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit60.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4008

.loopexit.loopexit60.i.i.i.i:                     ; preds = %bb.ab
  %i.dp = add i64 %.02458.i.i.i.i, %i.cj
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit60.i.i.i.i, %.lr.ph50.i.i.i.i, %.preheader40.i.i.i.i, %.preheader42.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader42.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep65.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0, %.preheader40.i.i.i.i ], [ %i.dm, %.loopexit.loopexit60.i.i.i.i ], [ %i.cf, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader42.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0.i.i.i, %.preheader40.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit60.i.i.i.i ], [ %i.cg, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cp, %.lr.ph50.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader40.i.i.i.i ], [ %i.dp, %.loopexit.loopexit60.i.i.i.i ], [ %i.ah, %_ZNK5arrow7compute8internal29UnsafeUpscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.dq = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.dq, label %bb.d, label %.loopexit28, !llvm.loop !4009

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph56.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.ar, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dr = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.dr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !88, !range !89, !noundef !90
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_13Decimal64TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %8 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Decimal64", align 8 ; 4 uses
  %11 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %12 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %13 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::Decimal64", align 8 ; 4 uses
  %16 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !4024
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
end_hunk_18
begin_hunk_19_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_13Decimal64TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %i.am, label %.critedge6.i.i.i.i.i.i, label %bb.f, !prof !92

bb.f:                                             ; preds = %.noexc12
  store i64 65535, ptr %13, align 8, !tbaa !223
  %i.an = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.an, label %bb.g, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc13
  %.pre.i.i.i.i.i = load i64, ptr %16, align 8, !tbaa !223
  br label %bb.s

.critedge6.i.i.i.i.i.i:                           ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !4025
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !4026
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !175, !noalias !4026, !nonnull !90, !align !176
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !4026 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !4025

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !4025
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !4026
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !4025
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !4026
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.ar = load ptr, ptr %6, align 8, !tbaa !102, !noalias !4025 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ab
  br i1 %i.as, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.at = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !4025
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %6, align 8, !tbaa !102, !noalias !4025 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ab
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.ay = load i64, ptr %i.ab, align 8, !tbaa !69, !noalias !4025
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !4025
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !4025
  %i.ba = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i35.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i35.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bg, align 8, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !44
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !46
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26, !inline_history !4020
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26, !inline_history !4020
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.p ], [ %i.bt, %bb.q ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !102 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !69
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i:            ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cb = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.cb, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.cc = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.aj, %.critedge.i.i.i.i.i.i ]
  %i.cd = trunc i64 %i.cc to i16
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i16 [ %i.cd, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.ce = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.cf = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.cg = add nuw nsw i64 %.02355.i.i.i.i, 1      ; 2 uses
  %exitcond66.not.i.i.i.i = icmp eq i64 %i.cg, %i.af
  br i1 %exitcond66.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph56.i.i.i.i, !llvm.loop !4021

bb.t:                                             ; preds = %.noexc10
  %i.ch = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ch, label %.preheader40.i.i.i.i, label %.preheader42.i.i.i.i

.preheader42.i.i.i.i:                             ; preds = %bb.t
  %i.ci = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cj = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader40.i.i.i.i:                             ; preds = %bb.t
  %i.ck = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ck, label %.lr.ph50.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph50.i.i.i.i:                                 ; preds = %.preheader40.i.i.i.i
  %i.cl = zext nneg i32 %i.ad to i64              ; 3 uses
  %i.cm = shl nuw nsw i64 %i.cl, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.cm, i1 false), !tbaa !164
  %i.cn = mul nsw i64 %i.cl, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cn
  %scevgep65.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cm
  %i.co = add i64 %.02458.i.i.i.i, %i.cl
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader42.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.dk, %bb.ab ], [ %.0, %.preheader42.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %.047.i.i.i.i = phi i64 [ %i.dl, %bb.ab ], [ 0, %.preheader42.i.i.i.i ]
  %.346.i.i.i.i = phi i64 [ %i.dm, %bb.ab ], [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ] ; 2 uses
  %i.cp = add nsw i64 %.346.i.i.i.i, %i.p         ; 2 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !69
  %i.ct = trunc i64 %i.cp to i8
  %i.cu = and i8 %i.ct, 7
  %i.cv = lshr i8 %i.cs, %i.cu
  %i.cw = trunc i8 %i.cv to i1
  br i1 %i.cw, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %.val1.i26.i.i.i.i = load i64, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i64 %.val1.i26.i.i.i.i, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cx = load i32, ptr %1, align 4, !tbaa !230
  %i.cy = invoke i64 @_ZNK5arrow14BasicDecimal6413ReduceScaleByEib(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %i.cx, i1 noundef zeroext false)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %bb.u
  store i64 %i.cy, ptr %11, align 8
  %i.cz = load i8, ptr %i.ac, align 4, !tbaa !231, !range !89, !noundef !90
  %i.da = trunc nuw i8 %i.cz to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.da, label %.critedge.i.i33.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  store i64 0, ptr %7, align 8, !tbaa !223
  %i.db = invoke noundef zeroext i1 @_ZN5arrowltERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.db, label %.critedge6.i.i32.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  store i64 65535, ptr %8, align 8, !tbaa !223
  %i.dc = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.dc, label %bb.x, label %._crit_edge.i27.i.i.i.i

._crit_edge.i27.i.i.i.i:                          ; preds = %.noexc17
  %.pre.i28.i.i.i.i = load i64, ptr %11, align 8, !tbaa !223
  br label %bb.aa

.critedge6.i.i32.i.i.i.i:                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i32.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.dd = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i30.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i30.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !88, !range !89, !noundef !90
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i:          ; preds = %bb.z, %bb.y, %.noexc18
  %i.dh = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dh, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

.critedge.i.i33.i.i.i.i:                          ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i33.i.i.i.i, %._crit_edge.i27.i.i.i.i
  %i.di = phi i64 [ %.pre.i28.i.i.i.i, %._crit_edge.i27.i.i.i.i ], [ %i.cy, %.critedge.i.i33.i.i.i.i ]
  %i.dj = trunc i64 %i.di to i16
  br label %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i

_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i
  %.0.i.i29.i.i.i.i = phi i16 [ %i.dj, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i31.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i29.i.i.i.i, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit34.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dl = add nuw nsw i64 %.047.i.i.i.i, 1        ; 2 uses
  %i.dm = add nsw i64 %.346.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dl, %i.ci
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit60.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4022

.loopexit.loopexit60.i.i.i.i:                     ; preds = %bb.ab
  %i.dn = add i64 %.02458.i.i.i.i, %i.ci
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit60.i.i.i.i, %.lr.ph50.i.i.i.i, %.preheader40.i.i.i.i, %.preheader42.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader42.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep65.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0, %.preheader40.i.i.i.i ], [ %i.dk, %.loopexit.loopexit60.i.i.i.i ], [ %i.ce, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader42.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph50.i.i.i.i ], [ %.0.i.i.i, %.preheader40.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit60.i.i.i.i ], [ %i.cf, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02458.i.i.i.i, %.preheader42.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader.i.i.i.i ], [ %i.co, %.lr.ph50.i.i.i.i ], [ %.02458.i.i.i.i, %.preheader40.i.i.i.i ], [ %i.dn, %.loopexit.loopexit60.i.i.i.i ], [ %i.ah, %_ZNK5arrow7compute8internal31UnsafeDownscaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.do = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.do, label %bb.d, label %.loopexit28, !llvm.loop !4023

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph56.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.aq, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dp = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !88, !range !89, !noundef !90
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_13Decimal64TypeENS1_27SafeRescaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !4033
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %3, align 8, !tbaa !213    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !4029

.noexc8:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !159  ; 3 uses
  %i.q = sext i32 %i.n to i64                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !163  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.u, i64 noundef %i.p, i64 noundef %i.w)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph48.i.preheader.i.i.i, label %.loopexit25

.lr.ph48.i.preheader.i.i.i:                       ; preds = %.noexc9
  %i.y = mul nsw i64 %i.p, %i.q
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 %i.y
  br label %.lr.ph48.i.i.i.i

.lr.ph48.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i, %.lr.ph48.i.preheader.i.i.i
  %.0 = phi ptr [ %i.i, %.lr.ph48.i.preheader.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.z, %.lr.ph48.i.preheader.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i.i ] ; 6 uses
  %.02447.i.i.i.i = phi i64 [ 0, %.lr.ph48.i.preheader.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.aa = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc10:                                         ; preds = %.lr.ph48.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.aa to i16 ; 6 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.aa, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ab = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ab, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.ac = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ad = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ad, label %.lr.ph45.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc11
  %.3 = phi ptr [ %i.af, %.noexc11 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.4.i.i.i = phi ptr [ %i.ag, %.noexc11 ], [ %.0.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.02344.i.i.i.i = phi i64 [ %i.ah, %.noexc11 ], [ 0, %.preheader.i.i.i.i ]
  %.val1.i.i.i.i.i = load i64, ptr %.4.i.i.i, align 1
  %i.ae = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, i64 %.val1.i.i.i.i.i, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %.lr.ph45.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ae, ptr %.3, align 2, !tbaa !164
  %i.ag = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ah = add nuw nsw i64 %.02344.i.i.i.i, 1      ; 2 uses
  %exitcond55.not.i.i.i.i = icmp eq i64 %i.ah, %i.ac
  br i1 %exitcond55.not.i.i.i.i, label %.loopexit.loopexit.i.i.i.i, label %.lr.ph45.i.i.i.i, !llvm.loop !4030

bb.d:                                             ; preds = %.noexc10
  %i.ai = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ai, label %.preheader31.i.i.i.i, label %.preheader33.i.i.i.i

.preheader33.i.i.i.i:                             ; preds = %bb.d
  %i.aj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader31.i.i.i.i:                             ; preds = %bb.d
  %i.al = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.al, label %.lr.ph39.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph39.i.i.i.i:                                 ; preds = %.preheader31.i.i.i.i
  %i.am = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.an = shl nuw nsw i64 %i.am, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.an, i1 false), !tbaa !164
  %i.ao = mul nsw i64 %i.am, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.ao
  %scevgep54.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.an
  %i.ap = add i64 %.02447.i.i.i.i, %i.am
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader33.i.i.i.i, %.noexc12
  %.2 = phi ptr [ %i.az, %.noexc12 ], [ %.0, %.preheader33.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %.noexc12 ], [ %.0.i.i.i, %.preheader33.i.i.i.i ] ; 2 uses
  %.036.i.i.i.i = phi i64 [ %i.ba, %.noexc12 ], [ 0, %.preheader33.i.i.i.i ]
  %.335.i.i.i.i = phi i64 [ %i.bb, %.noexc12 ], [ %.02447.i.i.i.i, %.preheader33.i.i.i.i ] ; 2 uses
  %i.aq = add nsw i64 %.335.i.i.i.i, %i.p         ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !69
  %i.au = trunc i64 %i.aq to i8
  %i.av = and i8 %i.au, 7
  %i.aw = lshr i8 %i.at, %i.av
  %i.ax = trunc i8 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %.noexc12

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %.val1.i26.i.i.i.i = load i64, ptr %.2.i.i.i, align 1
  %i.ay = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, i64 %.val1.i26.i.i.i.i, ptr noundef nonnull %0)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.ay, %bb.e ]
  %i.az = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.ba = add nuw nsw i64 %.036.i.i.i.i, 1        ; 2 uses
  %i.bb = add nsw i64 %.335.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit49.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4031

.loopexit.loopexit.i.i.i.i:                       ; preds = %.noexc11
  %i.bc = add i64 %.02447.i.i.i.i, %i.ac
  br label %.loopexit.i.i.i.i

.loopexit.loopexit49.i.i.i.i:                     ; preds = %.noexc12
  %i.bd = add i64 %.02447.i.i.i.i, %i.aj
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.loopexit49.i.i.i.i, %.loopexit.loopexit.i.i.i.i, %.lr.ph39.i.i.i.i, %.preheader31.i.i.i.i, %.preheader33.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %i.af, %.loopexit.loopexit.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep54.i.i.i.i, %.lr.ph39.i.i.i.i ], [ %.0, %.preheader31.i.i.i.i ], [ %i.az, %.loopexit.loopexit49.i.i.i.i ], [ %.0, %.preheader33.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %i.ag, %.loopexit.loopexit.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph39.i.i.i.i ], [ %.0.i.i.i, %.preheader31.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit49.i.i.i.i ], [ %.0.i.i.i, %.preheader33.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %i.bc, %.loopexit.loopexit.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ap, %.lr.ph39.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader31.i.i.i.i ], [ %i.bd, %.loopexit.loopexit49.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader33.i.i.i.i ] ; 2 uses
  %i.be = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.be, label %.lr.ph48.i.i.i.i, label %.loopexit25, !llvm.loop !4032

.loopexit25:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %.lr.ph45.i.i.i.i, %.lr.ph48.i.i.i.i, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f, !prof !78

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f, %bb.g
  resume { ptr, i32 } %lpad.loopexit.split-lp56
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_9Decimal64EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %0, ptr noundef %1, i64 %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %5 = alloca %"class.arrow::BasicDecimal64", align 8 ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Decimal64", align 8  ; 6 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Decimal64", align 8  ; 2 uses
  %10 = alloca %"class.arrow::Result.306", align 8 ; 13 uses
  store i64 %2, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.a = load i32, ptr %0, align 4, !tbaa !230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4036)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !4036
  store i64 0, ptr %7, align 8, !tbaa !223, !noalias !4036
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !4036
  %i.b = call noundef i32 @_ZNK5arrow14BasicDecimal647RescaleEiiPS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %i.a, i32 noundef 0, ptr noundef nonnull %7), !noalias !4036
  call void @_ZN5arrow8internal13ToArrowStatusENS_13DecimalStatusE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i32 noundef %i.b), !noalias !4036
  %i.c = load ptr, ptr %8, align 8, !tbaa !77, !noalias !4036
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK5arrow9Decimal647RescaleEii.exit.thread, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_9Decimal64EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  %i.e = load ptr, ptr %8, align 8, !tbaa !77, !noalias !4036 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK5arrow9Decimal647RescaleEii.exit, label %bb.c, !prof !78

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !88, !range !89, !noundef !90
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK5arrow9Decimal647RescaleEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br label %_ZNK5arrow9Decimal647RescaleEii.exit

_ZNK5arrow9Decimal647RescaleEii.exit.thread:      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !4036
  store ptr null, ptr %10, align 8, !tbaa !77, !alias.scope !4036
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.j = load i64, ptr %7, align 8, !noalias !4036
  store i64 %i.j, ptr %i.i, align 8, !alias.scope !4036
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !4036
  br label %bb.j

_ZNK5arrow9Decimal647RescaleEii.exit:             ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !4036
  %.pr = load ptr, ptr %10, align 8, !tbaa !77    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !4036
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %bb.j, label %bb.e, !prof !191

bb.e:                                             ; preds = %_ZNK5arrow9Decimal647RescaleEii.exit
  %i.l = load ptr, ptr %3, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.l, %.pr
  br i1 %.not.i, label %_ZN5arrow6StatusaSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6StatusaSERKS0_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %10, align 8, !tbaa !77    ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i.i6, label %_ZN5arrow6ResultINS_9Decimal64EED2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !88, !range !89, !noundef !90
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5arrow6ResultINS_9Decimal64EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #26
  br label %_ZN5arrow6ResultINS_9Decimal64EED2Ev.exit

_ZN5arrow6ResultINS_9Decimal64EED2Ev.exit:        ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  resume { ptr, i32 } %i.m

bb.j:                                             ; preds = %_ZNK5arrow9Decimal647RescaleEii.exit.thread, %_ZNK5arrow9Decimal647RescaleEii.exit
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 4, !tbaa !231, !range !89, !noundef !90
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  br i1 %i.u, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %4, align 8, !tbaa !223
  %i.v = invoke noundef zeroext i1 @_ZN5arrowltERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc10 unwind label %bb.g

.noexc10:                                         ; preds = %bb.k
  br i1 %i.v, label %.critedge6.i, label %bb.l, !prof !92

bb.l:                                             ; preds = %.noexc10
  store i64 65535, ptr %5, align 8, !tbaa !223
  %i.w = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal64ES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc11 unwind label %bb.g

.noexc11:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.w, label %bb.m, label %bb.p

.critedge6.i:                                     ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.m

bb.m:                                             ; preds = %.critedge6.i, %.noexc11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc12 unwind label %bb.g

.noexc12:                                         ; preds = %bb.m
  %i.x = load ptr, ptr %3, align 8, !tbaa !77     ; 2 uses
end_hunk_19
begin_hunk_20_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal256TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.e
  br i1 %i.ao, label %.critedge6.i.i.i.i.i.i.i.i.i, label %bb.f, !prof !92

bb.f:                                             ; preds = %.noexc12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !4053
  store i64 65535, ptr %13, align 8, !tbaa !177, !alias.scope !4053
  %i.ap = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.ap, label %bb.g, label %bb.s

.critedge6.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !4054
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !4055
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !175, !noalias !4055, !nonnull !90, !align !176
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !4055 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !4054

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !4054
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !4055
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !4054
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !4055
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.at = load ptr, ptr %6, align 8, !tbaa !102, !noalias !4054 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ad
  br i1 %i.au, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.av = load i64, ptr %i.ad, align 8, !tbaa !69, !noalias !4054
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %6, align 8, !tbaa !102, !noalias !4054 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ad
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.ba = load i64, ptr %i.ad, align 8, !tbaa !69, !noalias !4054
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !4054
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !4054
  %i.bc = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bi, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !44
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #26, !inline_history !4046
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !46
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #26, !inline_history !4046
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bl, %bb.p ], [ %i.bv, %bb.q ]
  %i.bw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bw, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !102 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !69
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i:      ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cd = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.cd, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i.i.i.i, %.noexc13
  %i.ce = load i64, ptr %15, align 8, !tbaa !177
  %i.cf = trunc i64 %i.ce to i16
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cf, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.cg = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.ch = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ci = add nuw nsw i64 %.02351.i.i.i.i, 1      ; 2 uses
  %exitcond62.not.i.i.i.i = icmp eq i64 %i.ci, %i.ah
  br i1 %exitcond62.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph52.i.i.i.i, !llvm.loop !4047

bb.t:                                             ; preds = %.noexc10
  %i.cj = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.cj, label %.preheader36.i.i.i.i, label %.preheader38.i.i.i.i

.preheader38.i.i.i.i:                             ; preds = %bb.t
  %i.ck = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cl = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader36.i.i.i.i:                             ; preds = %bb.t
  %i.cm = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cm, label %.lr.ph46.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph46.i.i.i.i:                                 ; preds = %.preheader36.i.i.i.i
  %i.cn = zext nneg i32 %i.af to i64              ; 3 uses
  %i.co = shl nuw nsw i64 %i.cn, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.co, i1 false), !tbaa !164
  %i.cp = mul nsw i64 %i.cn, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cp
  %scevgep61.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.co
  %i.cq = add i64 %.02454.i.i.i.i, %i.cn
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader38.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.dm, %bb.ab ], [ %.0, %.preheader38.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader38.i.i.i.i ] ; 2 uses
  %.043.i.i.i.i = phi i64 [ %i.dn, %bb.ab ], [ 0, %.preheader38.i.i.i.i ]
  %.342.i.i.i.i = phi i64 [ %i.do, %bb.ab ], [ %.02454.i.i.i.i, %.preheader38.i.i.i.i ] ; 2 uses
  %i.cr = add nsw i64 %.342.i.i.i.i, %i.p         ; 2 uses
  %i.cs = lshr i64 %i.cr, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !69
  %i.cv = trunc i64 %i.cr to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = lshr i8 %i.cu, %i.cw
  %i.cy = trunc i8 %i.cx to i1
  br i1 %i.cy, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull readonly align 1 dereferenceable(32) %.2.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.cz = load i32, ptr %1, align 4, !tbaa !230
  %i.da = sub nsw i32 0, %i.cz
  invoke void @_ZNK5arrow15BasicDecimal25615IncreaseScaleByEi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %i.da)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.u
  %i.db = load i8, ptr %i.ae, align 4, !tbaa !231, !range !89, !noundef !90
  %i.dc = trunc nuw i8 %i.db to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.dc, label %.critedge.i.i.i.i.i30.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.dd = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.dd, label %.critedge6.i.i.i.i.i29.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false), !alias.scope !4056
  store i64 65535, ptr %8, align 8, !tbaa !177, !alias.scope !4056
  %i.de = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.de, label %bb.x, label %bb.aa

.critedge6.i.i.i.i.i29.i.i.i.i:                   ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i.i.i.i29.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.df = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i.i.i.i27.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i.i.i27.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !88, !range !89, !noundef !90
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i:    ; preds = %bb.z, %bb.y, %.noexc18
  %i.dj = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dj, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i

.critedge.i.i.i.i.i30.i.i.i.i:                    ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i.i.i.i30.i.i.i.i, %.noexc17
  %i.dk = load i64, ptr %10, align 8, !tbaa !177
  %i.dl = trunc i64 %i.dk to i16
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i
  %.0.i.i.i.i.i26.i.i.i.i = phi i16 [ %i.dl, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i.i.i.i26.i.i.i.i, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dn = add nuw nsw i64 %.043.i.i.i.i, 1        ; 2 uses
  %i.do = add nsw i64 %.342.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dn, %i.ck
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit56.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4050

.loopexit.loopexit56.i.i.i.i:                     ; preds = %bb.ab
  %i.dp = add i64 %.02454.i.i.i.i, %i.ck
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i, %.loopexit.loopexit56.i.i.i.i, %.lr.ph46.i.i.i.i, %.preheader36.i.i.i.i, %.preheader38.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader38.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep61.i.i.i.i, %.lr.ph46.i.i.i.i ], [ %.0, %.preheader36.i.i.i.i ], [ %i.dm, %.loopexit.loopexit56.i.i.i.i ], [ %i.cg, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader38.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph46.i.i.i.i ], [ %.0.i.i.i, %.preheader36.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit56.i.i.i.i ], [ %i.ch, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02454.i.i.i.i, %.preheader38.i.i.i.i ], [ %.02454.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cq, %.lr.ph46.i.i.i.i ], [ %.02454.i.i.i.i, %.preheader36.i.i.i.i ], [ %i.dp, %.loopexit.loopexit56.i.i.i.i ], [ %i.aj, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i ] ; 2 uses
  %i.dq = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.dq, label %bb.d, label %.loopexit28, !llvm.loop !4051

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph52.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.as, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dr = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.dr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !88, !range !89, !noundef !90
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal256TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal256", align 8 ; 6 uses
  %8 = alloca %"class.arrow::BasicDecimal256", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::BasicDecimal256", align 8 ; 6 uses
  %11 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %12 = alloca %"class.arrow::BasicDecimal256", align 8 ; 6 uses
  %13 = alloca %"class.arrow::BasicDecimal256", align 8 ; 7 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::BasicDecimal256", align 8 ; 6 uses
  %16 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !4072
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %3, align 8, !tbaa !213    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
end_hunk_20
begin_hunk_21_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal256TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.e
  br i1 %i.an, label %.critedge6.i.i.i.i.i.i.i.i.i, label %bb.f, !prof !92

bb.f:                                             ; preds = %.noexc12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !4073
  store i64 65535, ptr %13, align 8, !tbaa !177, !alias.scope !4073
  %i.ao = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.ao, label %bb.g, label %bb.s

.critedge6.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.g

bb.g:                                             ; preds = %.critedge6.i.i.i.i.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !4074
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !4075
  invoke void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !175, !noalias !4075, !nonnull !90, !align !176
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 1 dereferenceable(28) @.str.39, i64 noundef 27)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !4075 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.h, !noalias !4074

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i, %.noexc14
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !4074
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !4075
  br label %.body

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i.i.i.i.i.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26, !noalias !4074
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !4075
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.as = load ptr, ptr %6, align 8, !tbaa !102, !noalias !4074 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ad
  br i1 %i.at, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.au = load i64, ptr %i.ad, align 8, !tbaa !69, !noalias !4074
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #28
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %6, align 8, !tbaa !102, !noalias !4074 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ad
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.j
  %i.az = load i64, ptr %i.ad, align 8, !tbaa !69, !noalias !4074
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !4074
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !4074
  %i.bb = load ptr, ptr %0, align 8, !tbaa !77    ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !88, !range !89, !noundef !90
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bh, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !44
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26, !inline_history !4066
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26, !inline_history !4066
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.p ], [ %i.bu, %bb.q ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !92

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !102 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !69
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #28
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 56) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i:      ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %bb.k, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cc = load ptr, ptr %14, align 8, !tbaa !77
  store ptr %i.cc, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i.i.i.i, %.noexc13
  %i.cd = load i64, ptr %15, align 8, !tbaa !177
  %i.ce = trunc i64 %i.cd to i16
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i: ; preds = %bb.s, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ce, %bb.s ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.cf = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i.i.i.i.i, ptr %.3, align 2, !tbaa !164
  %i.cg = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ch = add nuw nsw i64 %.02351.i.i.i.i, 1      ; 2 uses
  %exitcond62.not.i.i.i.i = icmp eq i64 %i.ch, %i.ah
  br i1 %exitcond62.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph52.i.i.i.i, !llvm.loop !4067

bb.t:                                             ; preds = %.noexc10
  %i.ci = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ci, label %.preheader36.i.i.i.i, label %.preheader38.i.i.i.i

.preheader38.i.i.i.i:                             ; preds = %bb.t
  %i.cj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ck = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ck, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader36.i.i.i.i:                             ; preds = %bb.t
  %i.cl = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cl, label %.lr.ph46.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph46.i.i.i.i:                                 ; preds = %.preheader36.i.i.i.i
  %i.cm = zext nneg i32 %i.af to i64              ; 3 uses
  %i.cn = shl nuw nsw i64 %i.cm, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.cn, i1 false), !tbaa !164
  %i.co = mul nsw i64 %i.cm, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.co
  %scevgep61.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cn
  %i.cp = add i64 %.02454.i.i.i.i, %i.cm
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader38.i.i.i.i, %bb.ab
  %.2 = phi ptr [ %i.dk, %bb.ab ], [ %.0, %.preheader38.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ab ], [ %.0.i.i.i, %.preheader38.i.i.i.i ] ; 2 uses
  %.043.i.i.i.i = phi i64 [ %i.dl, %bb.ab ], [ 0, %.preheader38.i.i.i.i ]
  %.342.i.i.i.i = phi i64 [ %i.dm, %bb.ab ], [ %.02454.i.i.i.i, %.preheader38.i.i.i.i ] ; 2 uses
  %i.cq = add nsw i64 %.342.i.i.i.i, %i.p         ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !69
  %i.cu = trunc i64 %i.cq to i8
  %i.cv = and i8 %i.cu, 7
  %i.cw = lshr i8 %i.ct, %i.cv
  %i.cx = trunc i8 %i.cw to i1
  br i1 %i.cx, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull readonly align 1 dereferenceable(32) %.2.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.cy = load i32, ptr %1, align 4, !tbaa !230
  invoke void @_ZNK5arrow15BasicDecimal25613ReduceScaleByEib(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %i.cy, i1 noundef zeroext false)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.u
  %i.cz = load i8, ptr %i.ae, align 4, !tbaa !231, !range !89, !noundef !90
  %i.da = trunc nuw i8 %i.cz to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  br i1 %i.da, label %.critedge.i.i.i.i.i30.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.db = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.v
  br i1 %i.db, label %.critedge6.i.i.i.i.i29.i.i.i.i, label %bb.w, !prof !92

bb.w:                                             ; preds = %.noexc16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false), !alias.scope !4076
  store i64 65535, ptr %8, align 8, !tbaa !177, !alias.scope !4076
  %i.dc = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.dc, label %bb.x, label %bb.aa

.critedge6.i.i.i.i.i29.i.i.i.i:                   ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.x:                                             ; preds = %.critedge6.i.i.i.i.i29.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.39)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.x
  %i.dd = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i.i.i.i.i.i.i27.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i.i27.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i, label %bb.y, !prof !78

bb.y:                                             ; preds = %.noexc18
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !88, !range !89, !noundef !90
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i:    ; preds = %bb.z, %bb.y, %.noexc18
  %i.dh = load ptr, ptr %9, align 8, !tbaa !77
  store ptr %i.dh, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i

.critedge.i.i.i.i.i30.i.i.i.i:                    ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i.i.i.i.i30.i.i.i.i, %.noexc17
  %i.di = load i64, ptr %10, align 8, !tbaa !177
  %i.dj = trunc i64 %i.di to i16
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i: ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i
  %.0.i.i.i.i.i26.i.i.i.i = phi i16 [ %i.dj, %bb.aa ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i28.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i, %.lr.ph.i.i.i.i
  %.sink.i.i.i = phi i16 [ %.0.i.i.i.i.i26.i.i.i.i, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit31.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !164
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.dl = add nuw nsw i64 %.043.i.i.i.i, 1        ; 2 uses
  %i.dm = add nsw i64 %.342.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dl, %i.cj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit56.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4070

.loopexit.loopexit56.i.i.i.i:                     ; preds = %bb.ab
  %i.dn = add i64 %.02454.i.i.i.i, %i.cj
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i, %.loopexit.loopexit56.i.i.i.i, %.lr.ph46.i.i.i.i, %.preheader36.i.i.i.i, %.preheader38.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader38.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep61.i.i.i.i, %.lr.ph46.i.i.i.i ], [ %.0, %.preheader36.i.i.i.i ], [ %i.dk, %.loopexit.loopexit56.i.i.i.i ], [ %i.cf, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader38.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph46.i.i.i.i ], [ %.0.i.i.i, %.preheader36.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit56.i.i.i.i ], [ %i.cg, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02454.i.i.i.i, %.preheader38.i.i.i.i ], [ %.02454.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cp, %.lr.ph46.i.i.i.i ], [ %.02454.i.i.i.i, %.preheader36.i.i.i.i ], [ %i.dn, %.loopexit.loopexit56.i.i.i.i ], [ %i.aj, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14Decimal256TypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlNS_10Decimal256EE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSS_OT1_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_SQ_EEvSL_OT_SW_ENKUllE_clEl.exit.i.i.i.i ] ; 2 uses
  %i.do = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.do, label %bb.d, label %.loopexit28, !llvm.loop !4071

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %.lr.ph52.i.i.i.i, %bb.e, %bb.f, %bb.g, %bb.d, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i ], [ %i.ar, %bb.h ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dp = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %.body
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !88, !range !89, !noundef !90
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal256TypeENS1_27SafeRescaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %6 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %7 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !77, !alias.scope !4083
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !156

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.16.sink = phi ptr [ @.str.17, %bb.b ], [ @.str.16, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.16.sink, ptr %i.d, align 8, !tbaa !132
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %3, align 8, !tbaa !213    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !4079

.noexc8:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !159  ; 3 uses
  %i.q = sext i32 %i.n to i64                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !163  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.u, i64 noundef %i.p, i64 noundef %i.w)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph47.i.preheader.i.i.i, label %.loopexit27

.lr.ph47.i.preheader.i.i.i:                       ; preds = %.noexc9
  %i.y = mul nsw i64 %i.p, %i.q
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 %i.y
  br label %.lr.ph47.i.i.i.i

.lr.ph47.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i, %.lr.ph47.i.preheader.i.i.i
  %.0 = phi ptr [ %i.i, %.lr.ph47.i.preheader.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.z, %.lr.ph47.i.preheader.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i.i ] ; 6 uses
  %.02446.i.i.i.i = phi i64 [ 0, %.lr.ph47.i.preheader.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.aa = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc10:                                         ; preds = %.lr.ph47.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.aa to i16 ; 6 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.aa, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ab = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ab, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.ac = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ad = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ad, label %.lr.ph44.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph44.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc11
  %.4 = phi ptr [ %i.af, %.noexc11 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.4.i.i.i = phi ptr [ %i.ag, %.noexc11 ], [ %.0.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.02343.i.i.i.i = phi i64 [ %i.ah, %.noexc11 ], [ 0, %.preheader.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 1 dereferenceable(32) %.4.i.i.i, i64 32, i1 false)
  %i.ae = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_10Decimal256EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, ptr noundef nonnull byval(%"class.arrow::Decimal256") align 8 %6, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %.lr.ph44.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.4, i64 2 ; 2 uses
  store i16 %i.ae, ptr %.4, align 2, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ag = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.ah = add nuw nsw i64 %.02343.i.i.i.i, 1      ; 2 uses
  %exitcond54.not.i.i.i.i = icmp eq i64 %i.ah, %i.ac
  br i1 %exitcond54.not.i.i.i.i, label %.loopexit.loopexit.i.i.i.i, label %.lr.ph44.i.i.i.i, !llvm.loop !4080

bb.d:                                             ; preds = %.noexc10
  %i.ai = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ai, label %.preheader30.i.i.i.i, label %.preheader32.i.i.i.i

.preheader32.i.i.i.i:                             ; preds = %bb.d
  %i.aj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader30.i.i.i.i:                             ; preds = %bb.d
  %i.al = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.al, label %.lr.ph38.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader30.i.i.i.i
  %i.am = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.an = shl nuw nsw i64 %i.am, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 %i.an, i1 false), !tbaa !164
  %i.ao = mul nsw i64 %i.am, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.ao
  %scevgep53.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.an
  %i.ap = add i64 %.02446.i.i.i.i, %i.am
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader32.i.i.i.i, %bb.g
  %.2 = phi ptr [ %.3, %bb.g ], [ %.0, %.preheader32.i.i.i.i ] ; 3 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.g ], [ %.0.i.i.i, %.preheader32.i.i.i.i ] ; 2 uses
  %.035.i.i.i.i = phi i64 [ %i.az, %bb.g ], [ 0, %.preheader32.i.i.i.i ]
  %.334.i.i.i.i = phi i64 [ %i.ba, %bb.g ], [ %.02446.i.i.i.i, %.preheader32.i.i.i.i ] ; 2 uses
  %i.aq = add nsw i64 %.334.i.i.i.i, %i.p         ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !69
  %i.au = trunc i64 %i.aq to i8
  %i.av = and i8 %i.au, 7
  %i.aw = lshr i8 %i.at, %i.av
  %i.ax = trunc i8 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 1 dereferenceable(32) %.2.i.i.i, i64 32, i1 false)
  %i.ay = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_10Decimal256EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef %2, ptr noundef nonnull byval(%"class.arrow::Decimal256") align 8 %5, ptr noundef nonnull %0)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.e
  store i16 %i.ay, ptr %.2, align 2, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  store i16 0, ptr %.2, align 2, !tbaa !164
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc12
  %.3 = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.q ; 2 uses
  %i.az = add nuw nsw i64 %.035.i.i.i.i, 1        ; 2 uses
  %i.ba = add nsw i64 %.334.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.az, %i.aj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit48.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4081

.loopexit.loopexit.i.i.i.i:                       ; preds = %.noexc11
  %i.bb = add i64 %.02446.i.i.i.i, %i.ac
  br label %.loopexit.i.i.i.i

.loopexit.loopexit48.i.i.i.i:                     ; preds = %bb.g
  %i.bc = add i64 %.02446.i.i.i.i, %i.aj
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.loopexit48.i.i.i.i, %.loopexit.loopexit.i.i.i.i, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %i.af, %.loopexit.loopexit.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep53.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %.3, %.loopexit.loopexit48.i.i.i.i ], [ %.0, %.preheader32.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %i.ag, %.loopexit.loopexit.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0.i.i.i, %.preheader30.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit48.i.i.i.i ], [ %.0.i.i.i, %.preheader32.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %i.bb, %.loopexit.loopexit.i.i.i.i ], [ %.02446.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ap, %.lr.ph38.i.i.i.i ], [ %.02446.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.bc, %.loopexit.loopexit48.i.i.i.i ], [ %.02446.i.i.i.i, %.preheader32.i.i.i.i ] ; 2 uses
  %i.bd = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.bd, label %.lr.ph47.i.i.i.i, label %.loopexit27, !llvm.loop !4082

.loopexit27:                                      ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %.lr.ph44.i.i.i.i, %.lr.ph47.i.i.i.i, %.invoke, %.noexc8, %bb.c
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %0, align 8, !tbaa !77    ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !88, !range !89, !noundef !90
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h, %bb.i
  resume { ptr, i32 } %lpad.loopexit.split-lp54
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i16 @_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_10Decimal256EEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 4 dereferenceable(5) %0, ptr noundef %1, ptr noundef byval(%"class.arrow::Decimal256") align 8 %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::BasicDecimal256", align 8 ; 6 uses
  %5 = alloca %"class.arrow::BasicDecimal256", align 8 ; 7 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Decimal256", align 8 ; 6 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Result.446", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.a = load i32, ptr %0, align 4, !tbaa !230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4088)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !4088
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false), !noalias !4088
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !4088
  %i.b = call noundef i32 @_ZNK5arrow15BasicDecimal2567RescaleEiiPS0_(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.a, i32 noundef 0, ptr noundef nonnull %7), !noalias !4088
  call void @_ZN5arrow8internal13ToArrowStatusENS_13DecimalStatusE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i32 noundef %i.b), !noalias !4088
  %i.c = load ptr, ptr %8, align 8, !tbaa !77, !noalias !4088
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK5arrow10Decimal2567RescaleEii.exit.thread, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_10Decimal256EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  %i.e = load ptr, ptr %8, align 8, !tbaa !77, !noalias !4088 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK5arrow10Decimal2567RescaleEii.exit, label %bb.c, !prof !78

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !88, !range !89, !noundef !90
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK5arrow10Decimal2567RescaleEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br label %_ZNK5arrow10Decimal2567RescaleEii.exit

_ZNK5arrow10Decimal2567RescaleEii.exit.thread:    ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !4088
  store ptr null, ptr %9, align 8, !tbaa !77, !alias.scope !4088
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !4088
  br label %bb.j

_ZNK5arrow10Decimal2567RescaleEii.exit:           ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !4088
  %.pr = load ptr, ptr %9, align 8, !tbaa !77     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !4088
  %i.j = icmp eq ptr %.pr, null
  br i1 %i.j, label %bb.j, label %bb.e, !prof !191

bb.e:                                             ; preds = %_ZNK5arrow10Decimal2567RescaleEii.exit
  %i.k = load ptr, ptr %3, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.k, %.pr
  br i1 %.not.i, label %_ZN5arrow6StatusaSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN5arrow6StatusaSERKS0_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %9, align 8, !tbaa !77     ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.m, null
  br i1 %.not.i.i6, label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit, label %bb.h, !prof !78

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !88, !range !89, !noundef !90
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #26
  br label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit

_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit:      ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  resume { ptr, i32 } %i.l

bb.j:                                             ; preds = %_ZNK5arrow10Decimal2567RescaleEii.exit.thread, %_ZNK5arrow10Decimal2567RescaleEii.exit
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i8, ptr %i.r, align 4, !tbaa !231, !range !89, !noundef !90
  %i.t = trunc nuw i8 %i.s to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  br i1 %i.t, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.u = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc10 unwind label %bb.g

.noexc10:                                         ; preds = %bb.k
  br i1 %i.u, label %.critedge6.i, label %bb.l, !prof !92

bb.l:                                             ; preds = %.noexc10
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false), !alias.scope !4089
  store i64 65535, ptr %5, align 8, !tbaa !177, !alias.scope !4089
  %i.w = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %.noexc11 unwind label %bb.g

.noexc11:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.w, label %bb.m, label %bb.p

.critedge6.i:                                     ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.m

end_hunk_21
