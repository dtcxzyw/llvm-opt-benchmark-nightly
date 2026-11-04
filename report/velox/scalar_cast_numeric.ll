Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/scalar_cast_numeric?download=true
inline.NumInlined: 8266
inline.NumDeleted: 2332
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZSt10_ConstructIN5arrow7compute8internal12CastFunctionEJRA5_KcNS0_4Type4typeEEEvPT_DpOT0_:bb.a
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !143
  %i.k = load ptr, ptr %3, align 8, !tbaa !144
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.m = load i32, ptr %2, align 4, !tbaa !111
  invoke void @_ZN5arrow7compute8internal12CastFunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4Type4typeE(ptr noundef nonnull align 8 dereferenceable(252) %0, ptr noundef nonnull align 8 %3, i32 noundef %i.m)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %3, align 8, !tbaa !144    ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.b, align 8, !tbaa !93
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %3, align 8, !tbaa !144    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.u = load i64, ptr %i.b, align 8, !tbaa !93
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  resume { ptr, i32 } %i.r
}

declare void @_ZN5arrow7compute8internal12CastFunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4Type4typeE(ptr noundef nonnull align 8 dereferenceable(252), ptr noundef align 8, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_13HalfFloatTypeENS_10BinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !503
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !504
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !503
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_13HalfFloatTypeENS_15LargeBinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.102", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !509
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !510
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !509
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !516
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !88

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.11.sink = phi ptr [ @.str.12, %bb.b ], [ @.str.11, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.11.sink, ptr %i.e, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155
  %i.j = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !156  ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !152  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !155
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !155  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %storemerge.i.i.i = select i1 %i.v, ptr %i.a, ptr %i.u ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !155  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
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
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !94 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.ac, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !94
  %i.ai = sub nsw i32 %i.ah, %i.ad
  %i.aj = sext i32 %i.ai to i64
  %i.ak = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_13HalfFloatTypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.aj, ptr nonnull %i.af, ptr noundef nonnull %0)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.lr.ph42.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ak, ptr %.3, align 2, !tbaa !158
  %i.am = add nuw nsw i64 %.02341.i.i.i.i, 1      ; 2 uses
  %i.an = add nsw i64 %.140.i.i.i.i, 1            ; 2 uses
  %exitcond50.not.i.i.i.i = icmp eq i64 %i.am, %i.ab
  br i1 %exitcond50.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph42.i.i.i.i, !llvm.loop !513

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
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.as, i1 false), !tbaa !158
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.as
  %i.at = add i64 %.02444.i.i.i.i, %i.ar
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.bl, %.noexc11 ] ; 2 uses
  %.334.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.bm, %.noexc11 ] ; 3 uses
  %i.au = add nsw i64 %.334.i.i.i.i, %i.o         ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !93
  %i.ay = trunc i64 %i.au to i8
  %i.az = and i8 %i.ay, 7
  %i.ba = lshr i8 %i.ax, %i.az
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %bb.f, label %.noexc11

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.334.i.i.i.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !94 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !94
  %i.bi = sub nsw i32 %i.bh, %i.bd
  %i.bj = sext i32 %i.bi to i64
  %i.bk = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_13HalfFloatTypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.bj, ptr nonnull %i.bf, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.f ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !158
  %i.bm = add i64 %.334.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bm, %i.aq
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !514

.loopexit.i.i.i.i:                                ; preds = %.noexc11, %.noexc10, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader32.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %i.al, %.noexc10 ], [ %i.bl, %.noexc11 ]
  %.4.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.preheader32.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ], [ %i.at, %.lr.ph38.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.an, %.noexc10 ], [ %i.aq, %.noexc11 ] ; 2 uses
  %i.bn = icmp slt i64 %.4.i.i.i.i, %i.l
  br i1 %i.bn, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !515

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.lr.ph42.i.i.i.i, %.lr.ph45.i.i.i.i, %.invoke, %bb.d
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %0, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !131

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  resume { ptr, i32 } %lpad.loopexit.split-lp57
}

declare void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !519, !range !41, !noundef !42
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !520  ; 4 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !521  ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %i.e, 64
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #23 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.j, 16
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !522  ; 2 uses
  %.0.copyload.i.i.i = load i64, ptr %i.k, align 1
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.l = sub nsw i64 128, %i.g
  %i.m = icmp slt i64 %i.e, %i.l
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #23 ; 2 uses
  %.sroa.5.0.extract.shift2.i = lshr i32 %i.n, 16
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !522  ; 3 uses
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
  store ptr %i.s, ptr %i.c, align 8, !tbaa !522
  %i.t = add nsw i64 %i.e, -64
  store i64 %i.t, ptr %i.d, align 8, !tbaa !520
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !523
  %i.ab = add nsw i64 %i.y, %i.aa
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !523
  %.pre = and i32 %.sroa.0.0.insert.insert.i, 65535
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !524
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !523 ; 2 uses
  %i.ag = sub nsw i64 %i.ad, %i.af
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ag, i64 32767) ; 2 uses
  %i.ah = trunc i64 %.sroa.speculated to i32
  %sext = shl i64 %.sroa.speculated, 48
  %i.ai = ashr exact i64 %sext, 48
  %i.aj = add nsw i64 %i.ai, %i.af
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !523
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
declare i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_13HalfFloatTypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.a = alloca i16, align 2                      ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  store i64 %2, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i16 0, ptr %i.a, align 2, !tbaa !158
  %i.c = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_13HalfFloatTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5arrow8internal10ParseValueINS_13HalfFloatTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, !prof !159

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_13HalfFloatTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
end_hunk_0
begin_hunk_1_@_ZN5arrow6StatusaSEOS0_:bb.a
  store ptr null, ptr %1, align 8, !tbaa !61
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

declare noundef zeroext i1 @_ZN5arrow8internal13StringToFloatEPKcmcPt(ptr noundef, i64 noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169, !nonnull !42, !align !170 ; 4 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #23
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !147
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !529
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %.sroa.2.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i)
          to label %.noexc5 unwind label %bb.c    ; 0 uses

.noexc5:                                          ; preds = %.noexc
  %i.f = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(23) %3) #23
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(23) %3, i64 noundef %i.f)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %.noexc5
  %i.h = load ptr, ptr %4, align 8, !tbaa !144
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !143
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit: ; preds = %.noexc6
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.c:                                             ; preds = %.noexc6, %.noexc5, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.l
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !535
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !88

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.11.sink = phi ptr [ @.str.12, %bb.b ], [ @.str.11, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.11.sink, ptr %i.e, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155
  %i.j = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !156  ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !152  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !155
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !155  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %storemerge.i.i.i = select i1 %i.v, ptr %i.a, ptr %i.u ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !155  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
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
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !147 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !147
  %i.ah = sub nsw i64 %i.ag, %i.ad
  %i.ai = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_13HalfFloatTypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.ah, ptr nonnull %i.ae, ptr noundef nonnull %0)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.lr.ph42.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ai, ptr %.3, align 2, !tbaa !158
  %i.ak = add nuw nsw i64 %.02341.i.i.i.i, 1      ; 2 uses
  %i.al = add nsw i64 %.140.i.i.i.i, 1            ; 2 uses
  %exitcond50.not.i.i.i.i = icmp eq i64 %i.ak, %i.ab
  br i1 %exitcond50.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph42.i.i.i.i, !llvm.loop !532

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
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.aq, i1 false), !tbaa !158
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.aq
  %i.ar = add i64 %.02444.i.i.i.i, %i.ap
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.bh, %.noexc11 ] ; 2 uses
  %.334.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.bi, %.noexc11 ] ; 3 uses
  %i.as = add nsw i64 %.334.i.i.i.i, %i.o         ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !93
  %i.aw = trunc i64 %i.as to i8
  %i.ax = and i8 %i.aw, 7
  %i.ay = lshr i8 %i.av, %i.ax
  %i.az = trunc i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %.noexc11

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.334.i.i.i.i ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !147 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !147
  %i.bf = sub nsw i64 %i.be, %i.bb
  %i.bg = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_13HalfFloatTypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.bf, ptr nonnull %i.bc, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.bg, %bb.f ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !158
  %i.bi = add i64 %.334.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bi, %i.ao
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !533

.loopexit.i.i.i.i:                                ; preds = %.noexc11, %.noexc10, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader32.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %i.aj, %.noexc10 ], [ %i.bh, %.noexc11 ]
  %.4.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.preheader32.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ar, %.lr.ph38.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.al, %.noexc10 ], [ %i.ao, %.noexc11 ] ; 2 uses
  %i.bj = icmp slt i64 %.4.i.i.i.i, %i.l
  br i1 %i.bj, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !534

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13HalfFloatTypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.lr.ph42.i.i.i.i, %.lr.ph45.i.i.i.i, %.invoke, %bb.d
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %0, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !131

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  resume { ptr, i32 } %lpad.loopexit.split-lp57
}

declare void @_ZN5arrow7compute8internal24ResolveOutputFromOptionsEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS5_EE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.c = load i32, ptr %1, align 8, !tbaa !130
  store i32 %i.c, ptr %0, align 8, !tbaa !130
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125
  store ptr %i.e, ptr %i.a, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !94
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !94
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !91 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !102
  %i.r = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !103
  %i.s = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #23, !inline_history !10
  %i.v = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #23, !inline_history !10
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i9.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !104

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.h, ptr %i.f, align 8, !tbaa !91
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !132 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 2)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !92
  br label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %i.ac, align 16, !tbaa !132 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i5, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %.body unwind label %bb.m      ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #27
  unreachable

_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i: ; preds = %bb.j, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.an = phi <2 x ptr> [ splat (ptr null), %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit ], [ %i.ah, %bb.j ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !536
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.b, align 8, !tbaa !93
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !92
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !92 ; 2 uses
  store <2 x ptr> %i.ap, ptr %i.ac, align 16, !tbaa !92
  store <2 x ptr> %i.an, ptr %i.ao, align 8, !tbaa !92
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal11CastFunctorINS_9Int16TypeENS_11BooleanTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.as = add nsw i64 %i.al, 1                    ; 2 uses
  %i.at = add nuw nsw i64 %i.ab, 2                ; 2 uses
  %i.au = icmp eq i64 %i.as, 8
  br i1 %i.au, label %bb.g, label %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1, !prof !104

bb.g:                                             ; preds = %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i
  %i.av = add nsw i64 %.sroa.1419.1.i, 1          ; 3 uses
  %i.aw = icmp slt i64 %i.at, %i.h
  br i1 %i.aw, label %bb.h, label %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1, !prof !131

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds i8, ptr %i.d, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !93, !noalias !1959
  br label %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1

_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1: ; preds = %bb.h, %bb.g, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i
  %.sroa.1419.1.i.1 = phi i64 [ %i.av, %bb.h ], [ %i.av, %bb.g ], [ %.sroa.1419.1.i, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i ]
  %i.az = phi i8 [ %i.ay, %bb.h ], [ %i.ak, %bb.g ], [ %i.ak, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i ] ; 2 uses
  %i.ba = phi i64 [ 0, %bb.h ], [ 0, %bb.g ], [ %i.as, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i ] ; 2 uses
  %i.bb = trunc nsw i64 %i.al to i32
  %i.bc = zext i8 %i.ak to i32
  %i.bd = lshr i32 %i.bc, %i.bb
  %i.be = trunc nuw nsw i32 %i.bd to i16
  %i.bf = and i16 %i.be, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.056.i.i, i64 4 ; 2 uses
  store i16 %i.bf, ptr %i.ar, align 2, !tbaa !158, !noalias !1959
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1957

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
  store i16 %i.bm, ptr %.056.i.i.epil.init, align 2, !tbaa !158, !noalias !1959
  br label %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit: ; preds = %.epil.preheader, %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_9Int16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa, %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit.i
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !1958
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_9Int16TypeENS_10BinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.440", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !1964
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !1965
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1964
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_9Int16TypeENS_15LargeBinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.450", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !1970
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !1971
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1970
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !1977
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !88

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.11.sink = phi ptr [ @.str.12, %bb.b ], [ @.str.11, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.11.sink, ptr %i.e, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155
  %i.j = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !156  ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !152  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !155
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !155  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %storemerge.i.i.i = select i1 %i.v, ptr %i.a, ptr %i.u ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !155  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
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
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !94 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.ac, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !94
  %i.ai = sub nsw i32 %i.ah, %i.ad
  %i.aj = sext i32 %i.ai to i64
  %i.ak = invoke noundef signext i16 @_ZNK5arrow7compute8internal11ParseStringINS_9Int16TypeEE4CallIsSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.aj, ptr nonnull %i.af, ptr noundef nonnull %0)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.lr.ph42.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ak, ptr %.3, align 2, !tbaa !158
  %i.am = add nuw nsw i64 %.02341.i.i.i.i, 1      ; 2 uses
  %i.an = add nsw i64 %.140.i.i.i.i, 1            ; 2 uses
  %exitcond50.not.i.i.i.i = icmp eq i64 %i.am, %i.ab
  br i1 %exitcond50.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph42.i.i.i.i, !llvm.loop !1974

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
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.as, i1 false), !tbaa !158
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.as
  %i.at = add i64 %.02444.i.i.i.i, %i.ar
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.bl, %.noexc11 ] ; 2 uses
  %.334.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.bm, %.noexc11 ] ; 3 uses
  %i.au = add nsw i64 %.334.i.i.i.i, %i.o         ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !93
  %i.ay = trunc i64 %i.au to i8
  %i.az = and i8 %i.ay, 7
  %i.ba = lshr i8 %i.ax, %i.az
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %bb.f, label %.noexc11

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.334.i.i.i.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !94 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !94
  %i.bi = sub nsw i32 %i.bh, %i.bd
  %i.bj = sext i32 %i.bi to i64
  %i.bk = invoke noundef signext i16 @_ZNK5arrow7compute8internal11ParseStringINS_9Int16TypeEE4CallIsSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.bj, ptr nonnull %i.bf, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.f ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !158
  %i.bm = add i64 %.334.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bm, %i.aq
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1975

.loopexit.i.i.i.i:                                ; preds = %.noexc11, %.noexc10, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader32.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %i.al, %.noexc10 ], [ %i.bl, %.noexc11 ]
  %.4.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.preheader32.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ], [ %i.at, %.lr.ph38.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.an, %.noexc10 ], [ %i.aq, %.noexc11 ] ; 2 uses
  %i.bn = icmp slt i64 %.4.i.i.i.i, %i.l
  br i1 %i.bn, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !1976

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.lr.ph42.i.i.i.i, %.lr.ph45.i.i.i.i, %.invoke, %bb.d
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %0, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !131

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  resume { ptr, i32 } %lpad.loopexit.split-lp57
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef signext i16 @_ZNK5arrow7compute8internal11ParseStringINS_9Int16TypeEE4CallIsSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::internal::StringConverter.448", align 1 ; 3 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.a = alloca i16, align 2                      ; 6 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  store i64 %2, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i16 0, ptr %i.a, align 2, !tbaa !158
  %i.c = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, !prof !159

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow9Int16TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !50
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  br label %_ZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit

_ZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.g = call noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int16TypeEE7ConvertERKS2_PKcmPs(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr noundef %3, i64 noundef %2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.g, label %bb.j, label %bb.d, !prof !131

bb.d:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN5arrow10TypeTraitsINS_9Int16TypeEE14type_singletonEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %9)
  %i.h = load ptr, ptr %9, align 8, !tbaa !125    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #23 ; 0 uses
  %i.m = load ptr, ptr %7, align 8, !tbaa !61
  %.not.i4 = icmp eq ptr %i.m, null
  br i1 %.not.i4, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g, !prof !131

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.f, %bb.g
  %i.n = load ptr, ptr %8, align 8, !tbaa !144    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !93
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

bb.i:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %8, align 8, !tbaa !144    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !93
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.h
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ], [ %i.t, %bb.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5arrow8internal10ParseValueINS_9Int16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  %i.z = load i16, ptr %i.a, align 2, !tbaa !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i16 %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int16TypeEE7ConvertERKS2_PKcmPs(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, label %bb.b, !prof !104

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %3, 2
  %i.c = load i8, ptr %2, align 1, !tbaa !93      ; 2 uses
  %i.d = icmp eq i8 %i.c, 48
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !93
  switch i8 %i.f, label %.thread [
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int16TypeEE7ConvertERKS2_PKcmPs:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.cb = getelementptr inbounds nuw i8, ptr %.12549, i64 3
  %i.cc = load i8, ptr %i.bv, align 1, !tbaa !93
  %i.cd = add i8 %i.cc, -48                       ; 2 uses
  %i.ce = mul nuw nsw i16 %i.ca, 10
  %i.cf = icmp ult i8 %i.cd, 10
  %i.cg = zext nneg i8 %i.cd to i16
  %i.ch = add nuw nsw i16 %i.ce, %i.cg            ; 2 uses
  br i1 %i.cf, label %bb.ai, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, !prof !222

bb.ai:                                            ; preds = %bb.ah
  %.not73.i = icmp eq i64 %.150, 3
  br i1 %.not73.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ci = getelementptr inbounds nuw i8, ptr %.12549, i64 4
  %i.cj = load i8, ptr %i.cb, align 1, !tbaa !93
  %i.ck = add i8 %i.cj, -48                       ; 2 uses
  %i.cl = mul nuw nsw i16 %i.ch, 10
  %i.cm = add i64 %.150, -4                       ; 2 uses
  %i.cn = icmp ult i8 %i.ck, 10
  %i.co = zext nneg i8 %i.ck to i16
  %i.cp = add nuw i16 %i.cl, %i.co                ; 3 uses
  br i1 %i.cn, label %bb.ak, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, !prof !222

bb.ak:                                            ; preds = %bb.aj
  %.not74.i = icmp eq i64 %i.cm, 0
  br i1 %.not74.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cq = icmp ugt i16 %i.cp, 6553
  br i1 %i.cq, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, label %bb.am, !prof !104

bb.am:                                            ; preds = %bb.al
  %i.cr = load i8, ptr %i.ci, align 1, !tbaa !93
  %i.cs = add i8 %i.cr, -48                       ; 2 uses
  %.not75.i = icmp ne i64 %i.cm, 1
  %i.ct = icmp ugt i8 %i.cs, 9
  %or.cond.i30 = or i1 %.not75.i, %i.ct
  br i1 %or.cond.i30, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, label %bb.an, !prof !223

bb.an:                                            ; preds = %bb.am
  %i.cu = mul nuw i16 %i.cp, 10                   ; 3 uses
  %i.cv = zext nneg i8 %i.cs to i16
  %i.cw = add i16 %i.cu, %i.cv                    ; 2 uses
  %.not77.i = icmp ult i16 %i.cw, %i.cu
  %..i = tail call i16 @llvm.umax.i16(i16 %i.cw, i16 %i.cu)
  br i1 %.not77.i, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit, !prof !224

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit:    ; preds = %bb.an, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %.133 = phi i16 [ %i.bu, %bb.ae ], [ %i.cp, %bb.ak ], [ %i.ch, %bb.ai ], [ %i.ca, %bb.ag ], [ %..i, %bb.an ] ; 4 uses
  br i1 %i.bm, label %bb.ao, label %bb.ap

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.thread38: ; preds = %bb.ad
  br i1 %i.bm, label %.thread42, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread.sink.split

bb.ao:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit
  %i.cx = icmp ugt i16 %.133, -32768
  br i1 %i.cx, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, label %.thread42, !prof !225

.thread42:                                        ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.thread38, %bb.ao
  %.1334044 = phi i16 [ %.133, %bb.ao ], [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.thread38 ]
  %i.cy = sub i16 0, %.1334044
  br label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread.sink.split

bb.ap:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit
  %i.cz = icmp slt i16 %.133, 0
  br i1 %i.cz, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread.sink.split, !prof !225

_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread.sink.split: ; preds = %bb.j, %bb.p, %bb.v, %bb.aa, %bb.z, %bb.y, %.thread42, %bb.ap, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.thread38
  %storemerge.sink = phi i16 [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.thread38 ], [ %i.cy, %.thread42 ], [ %.133, %bb.ap ], [ %.1.i, %bb.j ], [ %.1.i.1, %bb.p ], [ %.1.i.2, %bb.v ], [ %i.bh, %bb.aa ], [ %i.bf, %bb.z ], [ %i.bc, %bb.y ]
  store i16 %storemerge.sink, ptr %4, align 2, !tbaa !158
  br label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread

_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread: ; preds = %bb.h, %bb.l, %bb.r, %bb.x, %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread.sink.split, %bb.al, %bb.af, %bb.ah, %bb.aj, %bb.an, %bb.am, %.critedge, %bb.d, %bb.ap, %bb.ao, %bb.ab, %bb.a
  %.022 = phi i1 [ false, %bb.ab ], [ false, %bb.af ], [ false, %bb.a ], [ false, %bb.ap ], [ false, %bb.al ], [ true, %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.thread.sink.split ], [ false, %bb.ao ], [ false, %bb.d ], [ false, %.critedge ], [ false, %bb.am ], [ false, %bb.an ], [ false, %bb.aj ], [ false, %bb.ah ], [ false, %bb.x ], [ false, %bb.r ], [ false, %bb.l ], [ false, %bb.h ]
  ret i1 %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !1984
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !88

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.11.sink = phi ptr [ @.str.12, %bb.b ], [ @.str.11, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.11.sink, ptr %i.e, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155
  %i.j = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !156  ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !152  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !155
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !155  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %storemerge.i.i.i = select i1 %i.v, ptr %i.a, ptr %i.u ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !155  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
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
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !147 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !147
  %i.ah = sub nsw i64 %i.ag, %i.ad
  %i.ai = invoke noundef signext i16 @_ZNK5arrow7compute8internal11ParseStringINS_9Int16TypeEE4CallIsSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.ah, ptr nonnull %i.ae, ptr noundef nonnull %0)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.lr.ph42.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ai, ptr %.3, align 2, !tbaa !158
  %i.ak = add nuw nsw i64 %.02341.i.i.i.i, 1      ; 2 uses
  %i.al = add nsw i64 %.140.i.i.i.i, 1            ; 2 uses
  %exitcond50.not.i.i.i.i = icmp eq i64 %i.ak, %i.ab
  br i1 %exitcond50.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph42.i.i.i.i, !llvm.loop !1981

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
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.aq, i1 false), !tbaa !158
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.aq
  %i.ar = add i64 %.02444.i.i.i.i, %i.ap
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.bh, %.noexc11 ] ; 2 uses
  %.334.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.bi, %.noexc11 ] ; 3 uses
  %i.as = add nsw i64 %.334.i.i.i.i, %i.o         ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !93
  %i.aw = trunc i64 %i.as to i8
  %i.ax = and i8 %i.aw, 7
  %i.ay = lshr i8 %i.av, %i.ax
  %i.az = trunc i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %.noexc11

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.334.i.i.i.i ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !147 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !147
  %i.bf = sub nsw i64 %i.be, %i.bb
  %i.bg = invoke noundef signext i16 @_ZNK5arrow7compute8internal11ParseStringINS_9Int16TypeEE4CallIsSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.bf, ptr nonnull %i.bc, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.bg, %bb.f ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !158
  %i.bi = add i64 %.334.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bi, %i.ao
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1982

.loopexit.i.i.i.i:                                ; preds = %.noexc11, %.noexc10, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader32.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %i.aj, %.noexc10 ], [ %i.bh, %.noexc11 ]
  %.4.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.preheader32.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ar, %.lr.ph38.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.al, %.noexc10 ], [ %i.ao, %.noexc11 ] ; 2 uses
  %i.bj = icmp slt i64 %.4.i.i.i.i, %i.l
  br i1 %i.bj, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !1983

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.lr.ph42.i.i.i.i, %.lr.ph45.i.i.i.i, %.invoke, %bb.d
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %0, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !131

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  resume { ptr, i32 } %lpad.loopexit.split-lp57
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_9Int16TypeENS_14BinaryViewTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.455", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !1989
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !1990
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1989
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !1996
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !47
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !88

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.11.sink = phi ptr [ @.str.12, %bb.b ], [ @.str.11, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.11.sink, ptr %i.d, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !155
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !156
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS1_11ParseStringIS6_EEE9ArrayExecIS6_vE4ExecERKS9_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSB_4ExecESD_SF_SI_SK_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESI_OSS_OT1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !152
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !155
  %i.q = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.n ; 2 uses
  %i.r = invoke { ptr, i64 } @_ZNK5arrow9ArraySpan18GetVariadicBuffersEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !155  ; 2 uses
  %i.v = load i64, ptr %i.m, align 8, !tbaa !152  ; 2 uses
  %i.w = load i64, ptr %i.j, align 8, !tbaa !156  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
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
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !93 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 13
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph43.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph43.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !93
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !202 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  %i.am = load i8, ptr %i.al, align 1, !tbaa !209, !range !41, !noundef !42
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = select i1 %i.an, ptr %i.ap, ptr null, !prof !131
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !93
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
  store i16 %i.ax, ptr %.3, align 2, !tbaa !158
  %i.az = add nuw nsw i64 %.02342.i.i.i.i, 1      ; 2 uses
  %i.ba = add nsw i64 %.141.i.i.i.i, 1            ; 2 uses
  %exitcond51.not.i.i.i.i = icmp eq i64 %i.az, %i.ab
  br i1 %exitcond51.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph43.i.i.i.i, !llvm.loop !1993

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
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.bf, i1 false), !tbaa !158
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.bf
  %i.bg = add i64 %.02445.i.i.i.i, %i.be
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc12, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.cl, %.noexc12 ] ; 2 uses
  %.335.i.i.i.i = phi i64 [ %.02445.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.cm, %.noexc12 ] ; 3 uses
  %i.bh = add nsw i64 %.335.i.i.i.i, %i.v         ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !93
  %i.bl = trunc i64 %i.bh to i8
  %i.bm = and i8 %i.bl, 7
  %i.bn = lshr i8 %i.bk, %i.bm
  %i.bo = trunc i8 %i.bn to i1
  br i1 %i.bo, label %bb.h, label %.noexc12

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.q, i64 %.335.i.i.i.i ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !93 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 13
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !93
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !202 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 9
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !209, !range !41, !noundef !42
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = select i1 %i.ca, ptr %i.cc, ptr null, !prof !131
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !93
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
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !158
  %i.cm = add i64 %.335.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cm, %i.bd
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1994

.loopexit.i.i.i.i:                                ; preds = %.noexc12, %.noexc11, %.lr.ph39.i.i.i.i, %.preheader31.i.i.i.i, %.preheader33.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader33.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph39.i.i.i.i ], [ %.0, %.preheader31.i.i.i.i ], [ %i.ay, %.noexc11 ], [ %i.cl, %.noexc12 ]
  %.4.i.i.i.i = phi i64 [ %.02445.i.i.i.i, %.preheader33.i.i.i.i ], [ %.02445.i.i.i.i, %.preheader.i.i.i.i ], [ %i.bg, %.lr.ph39.i.i.i.i ], [ %.02445.i.i.i.i, %.preheader31.i.i.i.i ], [ %i.ba, %.noexc11 ], [ %i.bd, %.noexc12 ] ; 2 uses
  %i.cn = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.cn, label %.lr.ph46.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !1995

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS1_11ParseStringIS6_EEE9ArrayExecIS6_vE4ExecERKS9_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSB_4ExecESD_SF_SI_SK_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESI_OSS_OT1_.exit

_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS1_11ParseStringIS6_EEE9ArrayExecIS6_vE4ExecERKS9_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSB_4ExecESD_SF_SI_SK_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESI_OSS_OT1_.exit: ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i, %.lr.ph46.i.i.i.i, %.invoke, %.noexc8, %bb.d
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %0, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.k, !prof !131

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  resume { ptr, i32 } %lpad.loopexit.split-lp58
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal128TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %8 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %11 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %13 = alloca %"class.arrow::Decimal128", align 16 ; 4 uses
  %14 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %15 = alloca %"class.arrow::Decimal128", align 16 ; 4 uses
  %16 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !2008
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !47
  switch i8 %i.b, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %.noexc8
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !88

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.12.sink = phi ptr [ @.str.11, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.12, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.12.sink, ptr %i.d, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

.noexc8:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !155
  %i.i = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(72) %i.i), !inline_history !1999
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !152  ; 3 uses
  %i.p = sext i32 %i.m to i64                     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !155
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !155  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !156  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.t, i64 noundef %i.o, i64 noundef %i.v)
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph64.i.i.i.i, label %.loopexit28

.lr.ph64.i.i.i.i:                                 ; preds = %.noexc8
  %i.x = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.y = mul nsw i64 %i.o, %i.p
  %i.z = getelementptr inbounds i8, ptr %i.s, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph64.i.i.i.i
  %i.aj = phi ptr [ null, %.lr.ph64.i.i.i.i ], [ %i.ez, %.loopexit.i.i.i.i ] ; 7 uses
  %.0 = phi ptr [ %i.x, %.lr.ph64.i.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.z, %.lr.ph64.i.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i.i ] ; 6 uses
  %.02463.i.i.i.i = phi i64 [ 0, %.lr.ph64.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.ak = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc10:                                         ; preds = %bb.b
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.ak to i16 ; 6 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.ak, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.al = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.al, label %.preheader.i.i.i.i, label %bb.q

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.am = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.an = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.an, label %.lr.ph61.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph61.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.ao = add i64 %.02463.i.i.i.i, %i.am
  br label %.lr.ph61.i.i.i.i

.lr.ph61.i.i.i.i:                                 ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i, %.lr.ph61.preheader.i.i.i.i
  %i.ap = phi ptr [ %i.aj, %.lr.ph61.preheader.i.i.i.i ], [ %i.cn, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ] ; 9 uses
  %.3 = phi ptr [ %.0, %.lr.ph61.preheader.i.i.i.i ], [ %i.co, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %.4.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph61.preheader.i.i.i.i ], [ %i.cp, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %.02360.i.i.i.i = phi i64 [ 0, %.lr.ph61.preheader.i.i.i.i ], [ %i.cq, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %i.aq = load <2 x i64>, ptr %.4.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store <2 x i64> %i.aq, ptr %15, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ar = load i32, ptr %1, align 4, !tbaa !227
  %i.as = sub nsw i32 0, %i.ar
  %i.at = invoke { i64, i64 } @_ZNK5arrow15BasicDecimal12815IncreaseScaleByEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %i.as)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal128TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  store i64 -1, ptr %i.ae, align 8
  %i.ay = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.c
  br i1 %i.ay, label %.critedge6.i.i.i.i.i, label %bb.d, !prof !104

bb.d:                                             ; preds = %.noexc12
  store i64 32767, ptr %11, align 8
  store i64 0, ptr %i.af, align 8
  %i.az = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.az, label %bb.e, label %._crit_edge75.i.i.i.i

._crit_edge75.i.i.i.i:                            ; preds = %.noexc13
  %.pre76.i.i.i.i = load i64, ptr %16, align 8, !tbaa !147
  br label %bb.p

.critedge6.i.i.i.i.i:                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.e

bb.e:                                             ; preds = %.critedge6.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !2009
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !2010
  invoke void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %bb.e
  %i.ba = load ptr, ptr %i.ag, align 8, !tbaa !169, !noalias !2010, !nonnull !42, !align !170
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 1 dereferenceable(28) @.str.34, i64 noundef 27)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i unwind label %bb.f, !noalias !2010 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.f, !noalias !2009

bb.f:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i, %.noexc14
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2009
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2010
  br label %.body

_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2009
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2010
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.bd = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2009 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ah
  br i1 %i.be, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.bf = load i64, ptr %i.ah, align 8, !tbaa !93, !noalias !2009
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #26
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.h:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2009 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ah
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.h
  %i.bk = load i64, ptr %i.ah, align 8, !tbaa !93, !noalias !2009
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2009
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2009
  %i.bm = icmp eq ptr %i.ap, null
  br i1 %i.bm, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bp, align 8, !tbaa !102
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !103
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #23, !inline_history !2004
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #23, !inline_history !2004
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bs, %bb.m ], [ %i.cc, %bb.n ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cd, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, !prof !104

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !144 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !93
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.ck = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  store ptr %i.ck, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i.i, %._crit_edge75.i.i.i.i
  %i.cl = phi i64 [ %.pre76.i.i.i.i, %._crit_edge75.i.i.i.i ], [ %i.au, %.critedge.i.i.i.i.i ]
  %i.cm = trunc i64 %i.cl to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.p, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.cn = phi ptr [ %i.ap, %bb.p ], [ %i.ck, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i16 [ %i.cm, %bb.p ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.co = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i, ptr %.3, align 2, !tbaa !158
  %i.cp = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.p ; 2 uses
  %i.cq = add nuw nsw i64 %.02360.i.i.i.i, 1      ; 2 uses
  %exitcond71.not.i.i.i.i = icmp eq i64 %i.cq, %i.am
  br i1 %exitcond71.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph61.i.i.i.i, !llvm.loop !2005

bb.q:                                             ; preds = %.noexc10
  %i.cr = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.cr, label %.preheader45.i.i.i.i, label %.preheader47.i.i.i.i

.preheader47.i.i.i.i:                             ; preds = %bb.q
  %i.cs = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ct = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ct, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader45.i.i.i.i:                             ; preds = %bb.q
  %i.cu = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cu, label %.lr.ph55.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph55.i.i.i.i:                                 ; preds = %.preheader45.i.i.i.i
  %i.cv = zext nneg i32 %i.ak to i64              ; 3 uses
  %i.cw = shl nuw nsw i64 %i.cv, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.cw, i1 false), !tbaa !158
  %i.cx = mul nsw i64 %i.cv, %i.p
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cx
  %scevgep70.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cw
  %i.cy = add i64 %.02463.i.i.i.i, %i.cv
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader47.i.i.i.i, %bb.ad
  %i.cz = phi ptr [ %i.eu, %bb.ad ], [ %i.aj, %.preheader47.i.i.i.i ] ; 8 uses
  %.2 = phi ptr [ %i.ev, %bb.ad ], [ %.0, %.preheader47.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ad ], [ %.0.i.i.i, %.preheader47.i.i.i.i ] ; 2 uses
  %.052.i.i.i.i = phi i64 [ %i.ew, %bb.ad ], [ 0, %.preheader47.i.i.i.i ]
  %.351.i.i.i.i = phi i64 [ %i.ex, %bb.ad ], [ %.02463.i.i.i.i, %.preheader47.i.i.i.i ] ; 2 uses
  %i.da = add nsw i64 %.351.i.i.i.i, %i.o         ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !93
  %i.de = trunc i64 %i.da to i8
  %i.df = and i8 %i.de, 7
  %i.dg = lshr i8 %i.dd, %i.df
  %i.dh = trunc i8 %i.dg to i1
  br i1 %i.dh, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.di = load <2 x i64>, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store <2 x i64> %i.di, ptr %13, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.dj = load i32, ptr %1, align 4, !tbaa !227
  %i.dk = sub nsw i32 0, %i.dj
  %i.dl = invoke { i64, i64 } @_ZNK5arrow15BasicDecimal12815IncreaseScaleByEi(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %i.dk)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc15:                                         ; preds = %bb.r
  %i.dm = extractvalue { i64, i64 } %i.dl, 0      ; 2 uses
  store i64 %i.dm, ptr %14, align 8
  %i.dn = extractvalue { i64, i64 } %i.dl, 1
  store i64 %i.dn, ptr %i.aa, align 8
  %i.do = load i8, ptr %i.ai, align 4, !tbaa !228, !range !41, !noundef !42
  %i.dp = trunc nuw i8 %i.do to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.dp, label %.critedge.i39.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc15
  store i64 -32768, ptr %7, align 8
  store i64 -1, ptr %i.ab, align 8
  %i.dq = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc16:                                         ; preds = %bb.s
  br i1 %i.dq, label %.critedge6.i38.i.i.i.i, label %bb.t, !prof !104

bb.t:                                             ; preds = %.noexc16
  store i64 32767, ptr %8, align 8
  store i64 0, ptr %i.ac, align 8
  %i.dr = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.dr, label %bb.u, label %._crit_edge72.i.i.i.i

._crit_edge72.i.i.i.i:                            ; preds = %.noexc17
  %.pre.i.i.i.i = load i64, ptr %14, align 8, !tbaa !147
  br label %bb.ac

.critedge6.i38.i.i.i.i:                           ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

bb.u:                                             ; preds = %.critedge6.i38.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.34)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %bb.u
  %i.ds = icmp eq ptr %i.cz, null
  br i1 %i.ds, label %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i29.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i29.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.dv, align 8, !tbaa !102
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !103
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !50
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #23, !inline_history !2004
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !50
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #23, !inline_history !2004
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i30.i.i.i.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i.i.i.i30.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i32.i.i.i.i = phi i32 [ %i.dy, %bb.z ], [ %i.ei, %bb.aa ]
  %i.ej = icmp eq i32 %.0.i.i.i.i.i.i.i.i32.i.i.i.i, 1
  br i1 %i.ej, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i, !prof !104

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i, %bb.x, %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !144 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !93
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i:  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i:            ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i, %.noexc18
  %i.eq = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  store ptr %i.eq, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i

.critedge.i39.i.i.i.i:                            ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.i39.i.i.i.i, %._crit_edge72.i.i.i.i
  %i.er = phi i64 [ %.pre.i.i.i.i, %._crit_edge72.i.i.i.i ], [ %i.dm, %.critedge.i39.i.i.i.i ]
  %i.es = trunc i64 %i.er to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i: ; preds = %bb.ac, %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i
  %i.et = phi ptr [ %i.cz, %bb.ac ], [ %i.eq, %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i ]
  %.0.i28.i.i.i.i = phi i16 [ %i.es, %bb.ac ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i, %.lr.ph.i.i.i.i
  %i.eu = phi ptr [ %i.et, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i ], [ %i.cz, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sink.i.i.i = phi i16 [ %.0.i28.i.i.i.i, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !158
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.p ; 2 uses
  %i.ew = add nuw nsw i64 %.052.i.i.i.i, 1        ; 2 uses
  %i.ex = add nsw i64 %.351.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ew, %i.cs
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit65.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2006

.loopexit.loopexit65.i.i.i.i:                     ; preds = %bb.ad
  %i.ey = add i64 %.02463.i.i.i.i, %i.cs
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit65.i.i.i.i, %.lr.ph55.i.i.i.i, %.preheader45.i.i.i.i, %.preheader47.i.i.i.i, %.preheader.i.i.i.i
  %i.ez = phi ptr [ %i.aj, %.preheader47.i.i.i.i ], [ %i.aj, %.preheader.i.i.i.i ], [ %i.aj, %.lr.ph55.i.i.i.i ], [ %i.aj, %.preheader45.i.i.i.i ], [ %i.eu, %.loopexit.loopexit65.i.i.i.i ], [ %i.cn, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1 = phi ptr [ %.0, %.preheader47.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep70.i.i.i.i, %.lr.ph55.i.i.i.i ], [ %.0, %.preheader45.i.i.i.i ], [ %i.ev, %.loopexit.loopexit65.i.i.i.i ], [ %i.co, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader47.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph55.i.i.i.i ], [ %.0.i.i.i, %.preheader45.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit65.i.i.i.i ], [ %i.cp, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02463.i.i.i.i, %.preheader47.i.i.i.i ], [ %.02463.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cy, %.lr.ph55.i.i.i.i ], [ %.02463.i.i.i.i, %.preheader45.i.i.i.i ], [ %i.ey, %.loopexit.loopexit65.i.i.i.i ], [ %i.ao, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.fa = icmp slt i64 %.4.i.i.i.i, %i.v
  br i1 %i.fa, label %bb.b, label %.loopexit28, !llvm.loop !2007

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph61.i.i.i.i, %bb.c, %bb.d, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal128TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  store i64 -1, ptr %i.ae, align 8
  %i.ax = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.c
  br i1 %i.ax, label %.critedge6.i.i.i.i.i, label %bb.d, !prof !104

bb.d:                                             ; preds = %.noexc12
  store i64 32767, ptr %11, align 8
  store i64 0, ptr %i.af, align 8
  %i.ay = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.ay, label %bb.e, label %._crit_edge75.i.i.i.i

._crit_edge75.i.i.i.i:                            ; preds = %.noexc13
  %.pre76.i.i.i.i = load i64, ptr %16, align 8, !tbaa !147
  br label %bb.p

.critedge6.i.i.i.i.i:                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.e

bb.e:                                             ; preds = %.critedge6.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !2023
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !2024
  invoke void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %bb.e
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !169, !noalias !2024, !nonnull !42, !align !170
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 1 dereferenceable(28) @.str.34, i64 noundef 27)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i unwind label %bb.f, !noalias !2024 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.f, !noalias !2023

bb.f:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i, %.noexc14
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2023
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2024
  br label %.body

_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2023
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2024
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.bc = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2023 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ah
  br i1 %i.bd, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.be = load i64, ptr %i.ah, align 8, !tbaa !93, !noalias !2023
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #26
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.h:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2023 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ah
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.h
  %i.bj = load i64, ptr %i.ah, align 8, !tbaa !93, !noalias !2023
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2023
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2023
  %i.bl = icmp eq ptr %i.ap, null
  br i1 %i.bl, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bo, align 8, !tbaa !102
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !103
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !50
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #23, !inline_history !2018
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #23, !inline_history !2018
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.br, %bb.m ], [ %i.cb, %bb.n ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, !prof !104

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !144 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !93
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cj = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  store ptr %i.cj, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i.i, %._crit_edge75.i.i.i.i
  %i.ck = phi i64 [ %.pre76.i.i.i.i, %._crit_edge75.i.i.i.i ], [ %i.at, %.critedge.i.i.i.i.i ]
  %i.cl = trunc i64 %i.ck to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.p, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.cm = phi ptr [ %i.ap, %bb.p ], [ %i.cj, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i16 [ %i.cl, %bb.p ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.cn = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i, ptr %.3, align 2, !tbaa !158
  %i.co = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.p ; 2 uses
  %i.cp = add nuw nsw i64 %.02360.i.i.i.i, 1      ; 2 uses
  %exitcond71.not.i.i.i.i = icmp eq i64 %i.cp, %i.am
  br i1 %exitcond71.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph61.i.i.i.i, !llvm.loop !2019

bb.q:                                             ; preds = %.noexc10
  %i.cq = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.cq, label %.preheader45.i.i.i.i, label %.preheader47.i.i.i.i

.preheader47.i.i.i.i:                             ; preds = %bb.q
  %i.cr = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cs = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader45.i.i.i.i:                             ; preds = %bb.q
  %i.ct = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ct, label %.lr.ph55.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph55.i.i.i.i:                                 ; preds = %.preheader45.i.i.i.i
  %i.cu = zext nneg i32 %i.ak to i64              ; 3 uses
  %i.cv = shl nuw nsw i64 %i.cu, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.cv, i1 false), !tbaa !158
  %i.cw = mul nsw i64 %i.cu, %i.p
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cw
  %scevgep70.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cv
  %i.cx = add i64 %.02463.i.i.i.i, %i.cu
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader47.i.i.i.i, %bb.ad
  %i.cy = phi ptr [ %i.es, %bb.ad ], [ %i.aj, %.preheader47.i.i.i.i ] ; 8 uses
  %.2 = phi ptr [ %i.et, %bb.ad ], [ %.0, %.preheader47.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ad ], [ %.0.i.i.i, %.preheader47.i.i.i.i ] ; 2 uses
  %.052.i.i.i.i = phi i64 [ %i.eu, %bb.ad ], [ 0, %.preheader47.i.i.i.i ]
  %.351.i.i.i.i = phi i64 [ %i.ev, %bb.ad ], [ %.02463.i.i.i.i, %.preheader47.i.i.i.i ] ; 2 uses
  %i.cz = add nsw i64 %.351.i.i.i.i, %i.o         ; 2 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !93
  %i.dd = trunc i64 %i.cz to i8
  %i.de = and i8 %i.dd, 7
  %i.df = lshr i8 %i.dc, %i.de
  %i.dg = trunc i8 %i.df to i1
  br i1 %i.dg, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dh = load <2 x i64>, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store <2 x i64> %i.dh, ptr %13, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.di = load i32, ptr %1, align 4, !tbaa !227
  %i.dj = invoke { i64, i64 } @_ZNK5arrow15BasicDecimal12813ReduceScaleByEib(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %i.di, i1 noundef zeroext false)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc15:                                         ; preds = %bb.r
  %i.dk = extractvalue { i64, i64 } %i.dj, 0      ; 2 uses
  store i64 %i.dk, ptr %14, align 8
  %i.dl = extractvalue { i64, i64 } %i.dj, 1
  store i64 %i.dl, ptr %i.aa, align 8
  %i.dm = load i8, ptr %i.ai, align 4, !tbaa !228, !range !41, !noundef !42
  %i.dn = trunc nuw i8 %i.dm to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.dn, label %.critedge.i39.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc15
  store i64 -32768, ptr %7, align 8
  store i64 -1, ptr %i.ab, align 8
  %i.do = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc16:                                         ; preds = %bb.s
  br i1 %i.do, label %.critedge6.i38.i.i.i.i, label %bb.t, !prof !104

bb.t:                                             ; preds = %.noexc16
  store i64 32767, ptr %8, align 8
  store i64 0, ptr %i.ac, align 8
  %i.dp = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.dp, label %bb.u, label %._crit_edge72.i.i.i.i

._crit_edge72.i.i.i.i:                            ; preds = %.noexc17
  %.pre.i.i.i.i = load i64, ptr %14, align 8, !tbaa !147
  br label %bb.ac

.critedge6.i38.i.i.i.i:                           ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

bb.u:                                             ; preds = %.critedge6.i38.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.34)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %bb.u
  %i.dq = icmp eq ptr %i.cy, null
  br i1 %i.dq, label %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc18
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i29.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i.i29.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.dt, align 8, !tbaa !102
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !103
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #23, !inline_history !2018
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !50
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #23, !inline_history !2018
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i30.i.i.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i.i.i30.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i32.i.i.i.i = phi i32 [ %i.dw, %bb.z ], [ %i.eg, %bb.aa ]
  %i.eh = icmp eq i32 %.0.i.i.i.i.i.i.i.i32.i.i.i.i, 1
  br i1 %i.eh, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i, !prof !104

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i, %bb.x, %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !144 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !93
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i:  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i:            ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i, %.noexc18
  %i.eo = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  store ptr %i.eo, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i

.critedge.i39.i.i.i.i:                            ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.i39.i.i.i.i, %._crit_edge72.i.i.i.i
  %i.ep = phi i64 [ %.pre.i.i.i.i, %._crit_edge72.i.i.i.i ], [ %i.dk, %.critedge.i39.i.i.i.i ]
  %i.eq = trunc i64 %i.ep to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i: ; preds = %bb.ac, %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i
  %i.er = phi ptr [ %i.cy, %bb.ac ], [ %i.eo, %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i ]
  %.0.i28.i.i.i.i = phi i16 [ %i.eq, %bb.ac ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i, %.lr.ph.i.i.i.i
  %i.es = phi ptr [ %i.er, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i ], [ %i.cy, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sink.i.i.i = phi i16 [ %.0.i28.i.i.i.i, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.et = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !158
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.p ; 2 uses
  %i.eu = add nuw nsw i64 %.052.i.i.i.i, 1        ; 2 uses
  %i.ev = add nsw i64 %.351.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.eu, %i.cr
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit65.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2020

.loopexit.loopexit65.i.i.i.i:                     ; preds = %bb.ad
  %i.ew = add i64 %.02463.i.i.i.i, %i.cr
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit65.i.i.i.i, %.lr.ph55.i.i.i.i, %.preheader45.i.i.i.i, %.preheader47.i.i.i.i, %.preheader.i.i.i.i
  %i.ex = phi ptr [ %i.aj, %.preheader47.i.i.i.i ], [ %i.aj, %.preheader.i.i.i.i ], [ %i.aj, %.lr.ph55.i.i.i.i ], [ %i.aj, %.preheader45.i.i.i.i ], [ %i.es, %.loopexit.loopexit65.i.i.i.i ], [ %i.cm, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1 = phi ptr [ %.0, %.preheader47.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep70.i.i.i.i, %.lr.ph55.i.i.i.i ], [ %.0, %.preheader45.i.i.i.i ], [ %i.et, %.loopexit.loopexit65.i.i.i.i ], [ %i.cn, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader47.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph55.i.i.i.i ], [ %.0.i.i.i, %.preheader45.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit65.i.i.i.i ], [ %i.co, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02463.i.i.i.i, %.preheader47.i.i.i.i ], [ %.02463.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cx, %.lr.ph55.i.i.i.i ], [ %.02463.i.i.i.i, %.preheader45.i.i.i.i ], [ %i.ew, %.loopexit.loopexit65.i.i.i.i ], [ %i.ao, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.ey = icmp slt i64 %.4.i.i.i.i, %i.v
  br i1 %i.ey, label %bb.b, label %.loopexit28, !llvm.loop !2021

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph61.i.i.i.i, %bb.c, %bb.d, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal128TypeENS1_27SafeRescaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2049
  br label %.body.i.i.i.i

.noexc41.i.i.i.i:                                 ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2049
  %i.bo = load ptr, ptr %0, align 8, !tbaa !61    ; 5 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.noexc41.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bs, align 8, !tbaa !102
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !103
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #23, !inline_history !2036
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !50
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #23, !inline_history !2036
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bv, %bb.v ], [ %i.cf, %bb.w ]
  %i.cg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cg, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, !prof !104

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.t, %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !144 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !93
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, %.noexc41.i.i.i.i
  %i.cn = load ptr, ptr %12, align 8, !tbaa !61
  store ptr %i.cn, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.y

bb.y:                                             ; preds = %.critedge.i.i.i.i.i, %.noexc40.i.i.i.i
  %i.co = load i64, ptr %i.ad, align 8, !tbaa !147
  %i.cp = trunc i64 %i.co to i16
  br label %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i

_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i:          ; preds = %bb.y, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.cp, %bb.y ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ]
  %i.cq = load ptr, ptr %22, align 8, !tbaa !61   ; 5 uses
  %.not.i.i7.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i7.i.i.i.i.i, label %_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, label %bb.z, !prof !131

bb.z:                                             ; preds = %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ct, align 8, !tbaa !102
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !103
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !50
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #23, !inline_history !2037
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !50
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #23, !inline_history !2037
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cw, %bb.ad ], [ %i.dg, %bb.ae ]
  %i.dh = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.dh, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !104

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.ab, %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !144 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !93
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #26
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 56) #26
  br label %_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.do = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i, ptr %.3, align 2, !tbaa !158
  %i.dp = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.dq = add nuw nsw i64 %.02389.i.i.i.i, 1      ; 2 uses
  %exitcond100.not.i.i.i.i = icmp eq i64 %i.dq, %i.al
  br i1 %exitcond100.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph90.i.i.i.i, !llvm.loop !2038

bb.ag:                                            ; preds = %.noexc10
  %i.dr = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.dr, label %.preheader72.i.i.i.i, label %.preheader74.i.i.i.i

.preheader74.i.i.i.i:                             ; preds = %bb.ag
  %i.ds = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.dt = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.dt, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader74.i.i.i.i
  %i.du = add i64 %.02492.i.i.i.i, %i.ds
  br label %.lr.ph.i.i.i.i

.preheader72.i.i.i.i:                             ; preds = %bb.ag
  %i.dv = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.dv, label %.lr.ph84.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.preheader72.i.i.i.i
  %i.dw = zext nneg i32 %i.aj to i64              ; 3 uses
  %i.dx = shl nuw nsw i64 %i.dw, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.dx, i1 false), !tbaa !158
  %i.dy = mul nsw i64 %i.dw, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.dy
  %scevgep99.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.dx
  %i.dz = add i64 %.02492.i.i.i.i, %i.dw
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bh, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.gw, %bb.bh ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %.3.i.i.i, %bb.bh ] ; 2 uses
  %.081.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %i.gx, %bb.bh ]
  %.380.i.i.i.i = phi i64 [ %.02492.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.gy, %bb.bh ] ; 2 uses
  %i.ea = add nsw i64 %.380.i.i.i.i, %i.p         ; 2 uses
  %i.eb = lshr i64 %i.ea, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !93
  %i.ee = trunc i64 %i.ea to i8
  %i.ef = and i8 %i.ee, 7
  %i.eg = lshr i8 %i.ed, %i.ef
  %i.eh = trunc i8 %i.eg to i1
  br i1 %i.eh, label %bb.ah, label %bb.bh

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ei = load <2 x i64>, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store <2 x i64> %i.ei, ptr %16, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ej = load i32, ptr %1, align 4, !tbaa !227
  call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !2051
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false), !noalias !2051
  %i.ek = invoke noundef i32 @_ZNK5arrow15BasicDecimal1287RescaleEiiPS0_(ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %i.ej, i32 noundef 0, ptr noundef nonnull %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23, !noalias !2051
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23, !noalias !2051
  invoke void @_ZNK5arrow10Decimal12813ToArrowStatusENS_13DecimalStatusE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %i.ek)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %.noexc13
  call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  %i.el = load ptr, ptr %15, align 8, !tbaa !61, !noalias !2053 ; 2 uses
  store ptr %i.el, ptr %14, align 8, !tbaa !61, !alias.scope !2052, !noalias !2051
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !2051
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %_ZNK5arrow10Decimal1287RescaleEii.exit.thread.i37.i.i.i.i, label %bb.ai, !prof !131

bb.ai:                                            ; preds = %.noexc14
  call void @_ZN5arrow6ResultINS_10Decimal128EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(8) %14) #23
  %i.en = load ptr, ptr %14, align 8, !tbaa !61, !noalias !2051
  %.not.i4.i.i28.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i4.i.i28.i.i.i.i, label %_ZNK5arrow10Decimal1287RescaleEii.exit.i29.i.i.i.i, label %bb.aj, !prof !131

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
  br label %_ZNK5arrow10Decimal1287RescaleEii.exit.i29.i.i.i.i

_ZNK5arrow10Decimal1287RescaleEii.exit.thread.i37.i.i.i.i: ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !2051
  store ptr null, ptr %17, align 8, !tbaa !61, !alias.scope !2051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !2051
  br label %bb.ao

_ZNK5arrow10Decimal1287RescaleEii.exit.i29.i.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !2051
  %.pr.i30.i.i.i.i = load ptr, ptr %17, align 8, !tbaa !61 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !2051
  %i.eo = icmp eq ptr %.pr.i30.i.i.i.i, null
  br i1 %i.eo, label %bb.ao, label %bb.ak, !prof !185

bb.ak:                                            ; preds = %_ZNK5arrow10Decimal1287RescaleEii.exit.i29.i.i.i.i
  %i.ep = load ptr, ptr %0, align 8, !tbaa !61
  %.not.i.i31.i.i.i.i = icmp eq ptr %i.ep, %.pr.i30.i.i.i.i
  br i1 %.not.i.i31.i.i.i.i, label %_ZN5arrow6StatusaSERKS0_.exit.i34.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %_ZN5arrow6StatusaSERKS0_.exit.i34.i.i.i.i unwind label %bb.am

bb.am:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.al
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load ptr, ptr %17, align 8, !tbaa !61
  %.not.i.i.i32.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i32.i.i.i.i, label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit.i33.i.i.i.i, label %bb.an, !prof !131

bb.an:                                            ; preds = %bb.am
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %17)
  br label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit.i33.i.i.i.i

_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit.i33.i.i.i.i: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.body

bb.ao:                                            ; preds = %_ZNK5arrow10Decimal1287RescaleEii.exit.i29.i.i.i.i, %_ZNK5arrow10Decimal1287RescaleEii.exit.thread.i37.i.i.i.i
  %i.es = load i8, ptr %i.ai, align 4, !tbaa !228, !range !41, !noundef !42
  %i.et = trunc nuw i8 %i.es to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.et, label %.critedge.i62.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 -32768, ptr %7, align 8
  store i64 -1, ptr %i.ab, align 8
  %i.eu = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc63.i.i.i.i unwind label %bb.am

.noexc63.i.i.i.i:                                 ; preds = %bb.ap
  br i1 %i.eu, label %.critedge6.i61.i.i.i.i, label %bb.aq, !prof !104

bb.aq:                                            ; preds = %.noexc63.i.i.i.i
  store i64 32767, ptr %8, align 8
  store i64 0, ptr %i.ac, align 8
  %i.ev = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc64.i.i.i.i unwind label %bb.am

.noexc64.i.i.i.i:                                 ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.ev, label %bb.ar, label %bb.az

.critedge6.i61.i.i.i.i:                           ; preds = %.noexc63.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge6.i61.i.i.i.i, %.noexc64.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.34)
          to label %.noexc65.i.i.i.i unwind label %bb.am

.noexc65.i.i.i.i:                                 ; preds = %bb.ar
  %i.ew = load ptr, ptr %0, align 8, !tbaa !61    ; 5 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZN5arrow6StatusD2Ev.exit.i59.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.noexc65.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i52.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i.i52.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i56.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = load atomic i64, ptr %i.fa acquire, align 8 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 4294967297
  %i.fd = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %i.fc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.fa, align 8, !tbaa !102
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.fe, align 4, !tbaa !103
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #23, !inline_history !2036
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #23, !inline_history !2036
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i56.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i53.i.i.i.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i.i.i.i53.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fm = add nsw i32 %i.fd, -1
  store i32 %i.fm, ptr %i.fa, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i54.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.fn = atomicrmw volatile add ptr %i.fa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i54.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i54.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i.i.i.i55.i.i.i.i = phi i32 [ %i.fd, %bb.aw ], [ %i.fn, %bb.ax ]
  %i.fo = icmp eq i32 %.0.i.i.i.i.i.i.i.i55.i.i.i.i, 1
  br i1 %i.fo, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i56.i.i.i.i, !prof !104

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i54.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i56.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i56.i.i.i.i: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i54.i.i.i.i, %bb.au, %bb.as
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !144 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ew, i64 24 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i58.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i56.i.i.i.i
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !93
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i58.i.i.i.i

end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal256TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %i.ar, label %.critedge.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 -1, i64 24, i1 false), !tbaa !147, !alias.scope !2074
  store i64 -32768, ptr %10, align 8, !tbaa !147, !alias.scope !2074
  %i.as = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.c
  br i1 %i.as, label %.critedge6.i.i.i.i.i, label %bb.d, !prof !104

bb.d:                                             ; preds = %.noexc12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !alias.scope !2075
  store i64 32767, ptr %11, align 8, !tbaa !147, !alias.scope !2075
  %i.at = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.at, label %bb.e, label %bb.p

.critedge6.i.i.i.i.i:                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.e

bb.e:                                             ; preds = %.critedge6.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !2076
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !2077
  invoke void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %bb.e
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !169, !noalias !2077, !nonnull !42, !align !170
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 1 dereferenceable(28) @.str.34, i64 noundef 27)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i unwind label %bb.f, !noalias !2077 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.f, !noalias !2076

bb.f:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i, %.noexc14
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2076
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2077
  br label %.body

_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2076
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2077
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.ax = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2076 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.af
  br i1 %i.ay, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.az = load i64, ptr %i.af, align 8, !tbaa !93, !noalias !2076
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #26
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.h:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2076 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.af
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.h
  %i.be = load i64, ptr %i.af, align 8, !tbaa !93, !noalias !2076
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2076
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2076
  %i.bg = icmp eq ptr %i.an, null
  br i1 %i.bg, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bj, align 8, !tbaa !102
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !103
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !50
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #23, !inline_history !2065
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #23, !inline_history !2065
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bm, %bb.m ], [ %i.bw, %bb.n ]
  %i.bx = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bx, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, !prof !104

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !144 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !93
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.ce = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  store ptr %i.ce, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i.i, %.noexc13
  %i.cf = load i64, ptr %15, align 8, !tbaa !147
  %i.cg = trunc i64 %i.cf to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.p, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.ch = phi ptr [ %i.an, %bb.p ], [ %i.ce, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i16 [ %i.cg, %bb.p ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.ci = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i, ptr %.3, align 2, !tbaa !158
  %i.cj = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.p ; 2 uses
  %i.ck = add nuw nsw i64 %.02358.i.i.i.i, 1      ; 2 uses
  %exitcond69.not.i.i.i.i = icmp eq i64 %i.ck, %i.ak
  br i1 %exitcond69.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph59.i.i.i.i, !llvm.loop !2066

bb.q:                                             ; preds = %.noexc10
  %i.cl = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.cl, label %.preheader43.i.i.i.i, label %.preheader45.i.i.i.i

.preheader45.i.i.i.i:                             ; preds = %bb.q
  %i.cm = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cn = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cn, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader43.i.i.i.i:                             ; preds = %bb.q
  %i.co = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.co, label %.lr.ph53.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph53.i.i.i.i:                                 ; preds = %.preheader43.i.i.i.i
  %i.cp = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.cq = shl nuw nsw i64 %i.cp, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.cq, i1 false), !tbaa !158
  %i.cr = mul nsw i64 %i.cp, %i.p
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cr
  %scevgep68.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cq
  %i.cs = add i64 %.02461.i.i.i.i, %i.cp
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader45.i.i.i.i, %bb.ad
  %i.ct = phi ptr [ %i.ek, %bb.ad ], [ %i.ah, %.preheader45.i.i.i.i ] ; 8 uses
  %.2 = phi ptr [ %i.el, %bb.ad ], [ %.0, %.preheader45.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ad ], [ %.0.i.i.i, %.preheader45.i.i.i.i ] ; 2 uses
  %.050.i.i.i.i = phi i64 [ %i.em, %bb.ad ], [ 0, %.preheader45.i.i.i.i ]
  %.349.i.i.i.i = phi i64 [ %i.en, %bb.ad ], [ %.02461.i.i.i.i, %.preheader45.i.i.i.i ] ; 2 uses
  %i.cu = add nsw i64 %.349.i.i.i.i, %i.o         ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !93
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = lshr i8 %i.cx, %i.cz
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull readonly align 1 dereferenceable(32) %.2.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.dc = load i32, ptr %1, align 4, !tbaa !227
  %i.dd = sub nsw i32 0, %i.dc
  invoke void @_ZNK5arrow15BasicDecimal25615IncreaseScaleByEi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.dd)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc15:                                         ; preds = %bb.r
  %i.de = load i8, ptr %i.ag, align 4, !tbaa !228, !range !41, !noundef !42
  %i.df = trunc nuw i8 %i.de to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.df, label %.critedge.i37.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 -1, i64 24, i1 false), !tbaa !147, !alias.scope !2078
  store i64 -32768, ptr %7, align 8, !tbaa !147, !alias.scope !2078
  %i.dg = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc16:                                         ; preds = %bb.s
  br i1 %i.dg, label %.critedge6.i36.i.i.i.i, label %bb.t, !prof !104

bb.t:                                             ; preds = %.noexc16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !2079
  store i64 32767, ptr %8, align 8, !tbaa !147, !alias.scope !2079
  %i.dh = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.dh, label %bb.u, label %bb.ac

.critedge6.i36.i.i.i.i:                           ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

bb.u:                                             ; preds = %.critedge6.i36.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.34)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %bb.u
  %i.di = icmp eq ptr %i.ct, null
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc18
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i27.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i.i27.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.dl, align 8, !tbaa !102
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !103
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !50
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #23, !inline_history !2065
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !50
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #23, !inline_history !2065
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i28.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i.i28.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i30.i.i.i.i = phi i32 [ %i.do, %bb.z ], [ %i.dy, %bb.aa ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i.i.i.i30.i.i.i.i, 1
  br i1 %i.dz, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i, !prof !104

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i, %bb.x, %bb.v
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !144 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !93
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i:  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i:            ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i, %.noexc18
  %i.eg = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  store ptr %i.eg, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i

.critedge.i37.i.i.i.i:                            ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.i37.i.i.i.i, %.noexc17
  %i.eh = load i64, ptr %13, align 8, !tbaa !147
  %i.ei = trunc i64 %i.eh to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i: ; preds = %bb.ac, %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i
  %i.ej = phi ptr [ %i.ct, %bb.ac ], [ %i.eg, %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i ]
  %.0.i26.i.i.i.i = phi i16 [ %i.ei, %bb.ac ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ek = phi ptr [ %i.ej, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i ], [ %i.ct, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sink.i.i.i = phi i16 [ %.0.i26.i.i.i.i, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !158
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.p ; 2 uses
  %i.em = add nuw nsw i64 %.050.i.i.i.i, 1        ; 2 uses
  %i.en = add nsw i64 %.349.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.em, %i.cm
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit63.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2071

.loopexit.loopexit63.i.i.i.i:                     ; preds = %bb.ad
  %i.eo = add i64 %.02461.i.i.i.i, %i.cm
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit63.i.i.i.i, %.lr.ph53.i.i.i.i, %.preheader43.i.i.i.i, %.preheader45.i.i.i.i, %.preheader.i.i.i.i
  %i.ep = phi ptr [ %i.ah, %.preheader45.i.i.i.i ], [ %i.ah, %.preheader.i.i.i.i ], [ %i.ah, %.lr.ph53.i.i.i.i ], [ %i.ah, %.preheader43.i.i.i.i ], [ %i.ek, %.loopexit.loopexit63.i.i.i.i ], [ %i.ch, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1 = phi ptr [ %.0, %.preheader45.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep68.i.i.i.i, %.lr.ph53.i.i.i.i ], [ %.0, %.preheader43.i.i.i.i ], [ %i.el, %.loopexit.loopexit63.i.i.i.i ], [ %i.ci, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader45.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph53.i.i.i.i ], [ %.0.i.i.i, %.preheader43.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit63.i.i.i.i ], [ %i.cj, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02461.i.i.i.i, %.preheader45.i.i.i.i ], [ %.02461.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cs, %.lr.ph53.i.i.i.i ], [ %.02461.i.i.i.i, %.preheader43.i.i.i.i ], [ %i.eo, %.loopexit.loopexit63.i.i.i.i ], [ %i.am, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.eq = icmp slt i64 %.4.i.i.i.i, %i.v
  br i1 %i.eq, label %bb.b, label %.loopexit28, !llvm.loop !2072

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph59.i.i.i.i, %bb.c, %bb.d, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %lpad.loopexit32 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.b
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal256TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br i1 %i.aq, label %.critedge.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 -1, i64 24, i1 false), !tbaa !147, !alias.scope !2100
  store i64 -32768, ptr %10, align 8, !tbaa !147, !alias.scope !2100
  %i.ar = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.c
  br i1 %i.ar, label %.critedge6.i.i.i.i.i, label %bb.d, !prof !104

bb.d:                                             ; preds = %.noexc12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !alias.scope !2101
  store i64 32767, ptr %11, align 8, !tbaa !147, !alias.scope !2101
  %i.as = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.as, label %bb.e, label %bb.p

.critedge6.i.i.i.i.i:                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.e

bb.e:                                             ; preds = %.critedge6.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !2102
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !2103
  invoke void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %bb.e
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !169, !noalias !2103, !nonnull !42, !align !170
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 1 dereferenceable(28) @.str.34, i64 noundef 27)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i unwind label %bb.f, !noalias !2103 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.f, !noalias !2102

bb.f:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i, %.noexc14
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2102
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2103
  br label %.body

_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2102
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2103
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.aw = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2102 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.af
  br i1 %i.ax, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ay = load i64, ptr %i.af, align 8, !tbaa !93, !noalias !2102
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #26
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.h:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2102 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.af
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.h
  %i.bd = load i64, ptr %i.af, align 8, !tbaa !93, !noalias !2102
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2102
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2102
  %i.bf = icmp eq ptr %i.an, null
  br i1 %i.bf, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bi, align 8, !tbaa !102
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !103
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #23, !inline_history !2091
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #23, !inline_history !2091
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bl, %bb.m ], [ %i.bv, %bb.n ]
  %i.bw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bw, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, !prof !104

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !144 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !93
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cd = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  store ptr %i.cd, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i.i, %.noexc13
  %i.ce = load i64, ptr %15, align 8, !tbaa !147
  %i.cf = trunc i64 %i.ce to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.p, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.cg = phi ptr [ %i.an, %bb.p ], [ %i.cd, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i16 [ %i.cf, %bb.p ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.ch = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i, ptr %.3, align 2, !tbaa !158
  %i.ci = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.p ; 2 uses
  %i.cj = add nuw nsw i64 %.02358.i.i.i.i, 1      ; 2 uses
  %exitcond69.not.i.i.i.i = icmp eq i64 %i.cj, %i.ak
  br i1 %exitcond69.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph59.i.i.i.i, !llvm.loop !2092

bb.q:                                             ; preds = %.noexc10
  %i.ck = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ck, label %.preheader43.i.i.i.i, label %.preheader45.i.i.i.i

.preheader45.i.i.i.i:                             ; preds = %bb.q
  %i.cl = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cm = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cm, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader43.i.i.i.i:                             ; preds = %bb.q
  %i.cn = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cn, label %.lr.ph53.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph53.i.i.i.i:                                 ; preds = %.preheader43.i.i.i.i
  %i.co = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.cp = shl nuw nsw i64 %i.co, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.cp, i1 false), !tbaa !158
  %i.cq = mul nsw i64 %i.co, %i.p
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cq
  %scevgep68.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cp
  %i.cr = add i64 %.02461.i.i.i.i, %i.co
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader45.i.i.i.i, %bb.ad
  %i.cs = phi ptr [ %i.ei, %bb.ad ], [ %i.ah, %.preheader45.i.i.i.i ] ; 8 uses
  %.2 = phi ptr [ %i.ej, %bb.ad ], [ %.0, %.preheader45.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ad ], [ %.0.i.i.i, %.preheader45.i.i.i.i ] ; 2 uses
  %.050.i.i.i.i = phi i64 [ %i.ek, %bb.ad ], [ 0, %.preheader45.i.i.i.i ]
  %.349.i.i.i.i = phi i64 [ %i.el, %bb.ad ], [ %.02461.i.i.i.i, %.preheader45.i.i.i.i ] ; 2 uses
  %i.ct = add nsw i64 %.349.i.i.i.i, %i.o         ; 2 uses
  %i.cu = lshr i64 %i.ct, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !93
  %i.cx = trunc i64 %i.ct to i8
  %i.cy = and i8 %i.cx, 7
  %i.cz = lshr i8 %i.cw, %i.cy
  %i.da = trunc i8 %i.cz to i1
  br i1 %i.da, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull readonly align 1 dereferenceable(32) %.2.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.db = load i32, ptr %1, align 4, !tbaa !227
  invoke void @_ZNK5arrow15BasicDecimal25613ReduceScaleByEib(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.db, i1 noundef zeroext false)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc15:                                         ; preds = %bb.r
  %i.dc = load i8, ptr %i.ag, align 4, !tbaa !228, !range !41, !noundef !42
  %i.dd = trunc nuw i8 %i.dc to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.dd, label %.critedge.i37.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 -1, i64 24, i1 false), !tbaa !147, !alias.scope !2104
  store i64 -32768, ptr %7, align 8, !tbaa !147, !alias.scope !2104
  %i.de = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc16:                                         ; preds = %bb.s
  br i1 %i.de, label %.critedge6.i36.i.i.i.i, label %bb.t, !prof !104

bb.t:                                             ; preds = %.noexc16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !2105
  store i64 32767, ptr %8, align 8, !tbaa !147, !alias.scope !2105
  %i.df = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.df, label %bb.u, label %bb.ac

.critedge6.i36.i.i.i.i:                           ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

bb.u:                                             ; preds = %.critedge6.i36.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.34)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %bb.u
  %i.dg = icmp eq ptr %i.cs, null
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i27.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i27.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.dj, align 8, !tbaa !102
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !103
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #23, !inline_history !2091
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #23, !inline_history !2091
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i28.i.i.i.i = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i.i.i.i.i28.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dv = add nsw i32 %i.dm, -1
  store i32 %i.dv, ptr %i.dj, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dw = atomicrmw volatile add ptr %i.dj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i30.i.i.i.i = phi i32 [ %i.dm, %bb.z ], [ %i.dw, %bb.aa ]
  %i.dx = icmp eq i32 %.0.i.i.i.i.i.i.i.i30.i.i.i.i, 1
  br i1 %i.dx, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i, !prof !104

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i, %bb.x, %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !144 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !93
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i:  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i:            ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i, %.noexc18
  %i.ee = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  store ptr %i.ee, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i

.critedge.i37.i.i.i.i:                            ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.i37.i.i.i.i, %.noexc17
  %i.ef = load i64, ptr %13, align 8, !tbaa !147
  %i.eg = trunc i64 %i.ef to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i: ; preds = %bb.ac, %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i
  %i.eh = phi ptr [ %i.cs, %bb.ac ], [ %i.ee, %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i ]
  %.0.i26.i.i.i.i = phi i16 [ %i.eg, %bb.ac ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ei = phi ptr [ %i.eh, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i ], [ %i.cs, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sink.i.i.i = phi i16 [ %.0.i26.i.i.i.i, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !158
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.p ; 2 uses
  %i.ek = add nuw nsw i64 %.050.i.i.i.i, 1        ; 2 uses
  %i.el = add nsw i64 %.349.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ek, %i.cl
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit63.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2097

.loopexit.loopexit63.i.i.i.i:                     ; preds = %bb.ad
  %i.em = add i64 %.02461.i.i.i.i, %i.cl
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit63.i.i.i.i, %.lr.ph53.i.i.i.i, %.preheader43.i.i.i.i, %.preheader45.i.i.i.i, %.preheader.i.i.i.i
  %i.en = phi ptr [ %i.ah, %.preheader45.i.i.i.i ], [ %i.ah, %.preheader.i.i.i.i ], [ %i.ah, %.lr.ph53.i.i.i.i ], [ %i.ah, %.preheader43.i.i.i.i ], [ %i.ei, %.loopexit.loopexit63.i.i.i.i ], [ %i.cg, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1 = phi ptr [ %.0, %.preheader45.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep68.i.i.i.i, %.lr.ph53.i.i.i.i ], [ %.0, %.preheader43.i.i.i.i ], [ %i.ej, %.loopexit.loopexit63.i.i.i.i ], [ %i.ch, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader45.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph53.i.i.i.i ], [ %.0.i.i.i, %.preheader43.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit63.i.i.i.i ], [ %i.ci, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02461.i.i.i.i, %.preheader45.i.i.i.i ], [ %.02461.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cr, %.lr.ph53.i.i.i.i ], [ %.02461.i.i.i.i, %.preheader43.i.i.i.i ], [ %i.em, %.loopexit.loopexit63.i.i.i.i ], [ %i.am, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerIsNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.eo = icmp slt i64 %.4.i.i.i.i, %i.v
  br i1 %i.eo, label %bb.b, label %.loopexit28, !llvm.loop !2098

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph59.i.i.i.i, %bb.c, %bb.d, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %lpad.loopexit32 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.b
  %lpad.loopexit34 = landingpad { ptr, i32 }
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int16TypeENS_14Decimal256TypeENS1_27SafeRescaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2140
  br label %.body.i.i.i.i

.noexc39.i.i.i.i:                                 ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2140
  %i.bn = load ptr, ptr %0, align 8, !tbaa !61    ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.noexc39.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.br, align 8, !tbaa !102
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !103
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #23, !inline_history !2121
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !50
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #23, !inline_history !2121
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.v ], [ %i.ce, %bb.w ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cf, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, !prof !104

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.t, %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !144 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !93
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, %.noexc39.i.i.i.i
  %i.cm = load ptr, ptr %12, align 8, !tbaa !61
  store ptr %i.cm, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.y

bb.y:                                             ; preds = %.critedge.i.i.i.i.i, %.noexc38.i.i.i.i
  %i.cn = load i64, ptr %i.ad, align 8, !tbaa !147
  %i.co = trunc i64 %i.cn to i16
  br label %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i

_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i:          ; preds = %bb.y, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.co, %bb.y ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ]
  %i.cp = load ptr, ptr %21, align 8, !tbaa !61   ; 5 uses
  %.not.i.i7.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i7.i.i.i.i.i, label %_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_10Decimal256EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, label %bb.z, !prof !131

bb.z:                                             ; preds = %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cs, align 8, !tbaa !102
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !103
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !50
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #23, !inline_history !2122
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !50
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #23, !inline_history !2122
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cv, %bb.ad ], [ %i.df, %bb.ae ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.dg, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !104

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.ab, %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !144 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !93
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #26
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 56) #26
  br label %_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_10Decimal256EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallIsNS_10Decimal256EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.dn = getelementptr inbounds nuw i8, ptr %.4, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i, ptr %.4, align 2, !tbaa !158
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.070.i.i.i.i)
  %i.do = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.dp = add nuw nsw i64 %.02389.i.i.i.i, 1      ; 2 uses
  %exitcond100.not.i.i.i.i = icmp eq i64 %i.dp, %i.al
  br i1 %exitcond100.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph90.i.i.i.i, !llvm.loop !2123

bb.ag:                                            ; preds = %.noexc10
  %i.dq = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.dq, label %.preheader72.i.i.i.i, label %.preheader74.i.i.i.i

.preheader74.i.i.i.i:                             ; preds = %bb.ag
  %i.dr = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ds = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ds, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader74.i.i.i.i
  %i.dt = add i64 %.02492.i.i.i.i, %i.dr
  br label %.lr.ph.i.i.i.i

.preheader72.i.i.i.i:                             ; preds = %bb.ag
  %i.du = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.du, label %.lr.ph84.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.preheader72.i.i.i.i
  %i.dv = zext nneg i32 %i.aj to i64              ; 3 uses
  %i.dw = shl nuw nsw i64 %i.dv, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.dw, i1 false), !tbaa !158
  %i.dx = mul nsw i64 %i.dv, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.dx
  %scevgep99.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.dw
  %i.dy = add i64 %.02492.i.i.i.i, %i.dv
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bi, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %.3, %bb.bi ] ; 3 uses
  %.2.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %.3.i.i.i, %bb.bi ] ; 2 uses
  %.081.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %i.gu, %bb.bi ]
  %.380.i.i.i.i = phi i64 [ %.02492.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.gv, %bb.bi ] ; 2 uses
  %i.dz = add nsw i64 %.380.i.i.i.i, %i.p         ; 2 uses
  %i.ea = lshr i64 %i.dz, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !93
  %i.ed = trunc i64 %i.dz to i8
  %i.ee = and i8 %i.ed, 7
  %i.ef = lshr i8 %i.ec, %i.ee
  %i.eg = trunc i8 %i.ef to i1
  br i1 %i.eg, label %bb.ah, label %bb.bh

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.071.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.071.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(32) %.2.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.071.i.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.eh = load i32, ptr %1, align 4, !tbaa !227
  call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !2142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false), !noalias !2142
  %i.ei = invoke noundef i32 @_ZNK5arrow15BasicDecimal2567RescaleEiiPS0_(ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef %i.eh, i32 noundef 0, ptr noundef nonnull %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23, !noalias !2142
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23, !noalias !2142
  invoke void @_ZNK5arrow10Decimal25613ToArrowStatusENS_13DecimalStatusE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef %i.ei)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %.noexc13
  call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  %i.ej = load ptr, ptr %15, align 8, !tbaa !61, !noalias !2144 ; 2 uses
  store ptr %i.ej, ptr %14, align 8, !tbaa !61, !alias.scope !2143, !noalias !2142
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !2142
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_ZNK5arrow10Decimal2567RescaleEii.exit.thread.i35.i.i.i.i, label %bb.ai, !prof !131

bb.ai:                                            ; preds = %.noexc14
  call void @_ZN5arrow6ResultINS_10Decimal256EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(8) %14) #23
  %i.el = load ptr, ptr %14, align 8, !tbaa !61, !noalias !2142
  %.not.i4.i.i26.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i4.i.i26.i.i.i.i, label %_ZNK5arrow10Decimal2567RescaleEii.exit.i27.i.i.i.i, label %bb.aj, !prof !131

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
  br label %_ZNK5arrow10Decimal2567RescaleEii.exit.i27.i.i.i.i

_ZNK5arrow10Decimal2567RescaleEii.exit.thread.i35.i.i.i.i: ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !2142
  store ptr null, ptr %16, align 8, !tbaa !61, !alias.scope !2142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !2142
  br label %bb.ao

_ZNK5arrow10Decimal2567RescaleEii.exit.i27.i.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !2142
  %.pr.i28.i.i.i.i = load ptr, ptr %16, align 8, !tbaa !61 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !2142
  %i.em = icmp eq ptr %.pr.i28.i.i.i.i, null
  br i1 %i.em, label %bb.ao, label %bb.ak, !prof !185

bb.ak:                                            ; preds = %_ZNK5arrow10Decimal2567RescaleEii.exit.i27.i.i.i.i
  %i.en = load ptr, ptr %0, align 8, !tbaa !61
  %.not.i.i29.i.i.i.i = icmp eq ptr %i.en, %.pr.i28.i.i.i.i
  br i1 %.not.i.i29.i.i.i.i, label %_ZN5arrow6StatusaSERKS0_.exit.i32.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %_ZN5arrow6StatusaSERKS0_.exit.i32.i.i.i.i unwind label %bb.am

bb.am:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.al
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %i.ep = load ptr, ptr %16, align 8, !tbaa !61
  %.not.i.i.i30.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i30.i.i.i.i, label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit.i31.i.i.i.i, label %bb.an, !prof !131

bb.an:                                            ; preds = %bb.am
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %16)
  br label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit.i31.i.i.i.i

_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit.i31.i.i.i.i: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.body

bb.ao:                                            ; preds = %_ZNK5arrow10Decimal2567RescaleEii.exit.i27.i.i.i.i, %_ZNK5arrow10Decimal2567RescaleEii.exit.thread.i35.i.i.i.i
  %i.eq = load i8, ptr %i.ai, align 4, !tbaa !228, !range !41, !noundef !42
  %i.er = trunc nuw i8 %i.eq to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.er, label %.critedge.i60.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 -1, i64 24, i1 false), !tbaa !147, !alias.scope !2145
  store i64 -32768, ptr %7, align 8, !tbaa !147, !alias.scope !2145
  %i.es = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc61.i.i.i.i unwind label %bb.am

.noexc61.i.i.i.i:                                 ; preds = %bb.ap
  br i1 %i.es, label %.critedge6.i59.i.i.i.i, label %bb.aq, !prof !104

bb.aq:                                            ; preds = %.noexc61.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false), !alias.scope !2146
  store i64 32767, ptr %8, align 8, !tbaa !147, !alias.scope !2146
  %i.et = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %.noexc62.i.i.i.i unwind label %bb.am

.noexc62.i.i.i.i:                                 ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.et, label %bb.ar, label %bb.az

.critedge6.i59.i.i.i.i:                           ; preds = %.noexc61.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge6.i59.i.i.i.i, %.noexc62.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.34)
          to label %.noexc63.i.i.i.i unwind label %bb.am

.noexc63.i.i.i.i:                                 ; preds = %bb.ar
  %i.eu = load ptr, ptr %0, align 8, !tbaa !61    ; 5 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_ZN5arrow6StatusD2Ev.exit.i57.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.noexc63.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i50.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i.i50.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i54.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 4294967297
  %i.fb = trunc i64 %i.ez to i32                  ; 2 uses
  br i1 %i.fa, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.ey, align 8, !tbaa !102
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !103
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !50
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #23, !inline_history !2121
  %i.fg = load ptr, ptr %i.ex, align 8, !tbaa !50
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #23, !inline_history !2121
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i54.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i51.i.i.i.i = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i.i.i.i.i51.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fk = add nsw i32 %i.fb, -1
  store i32 %i.fk, ptr %i.ey, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i52.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.fl = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i52.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i52.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i.i.i.i53.i.i.i.i = phi i32 [ %i.fb, %bb.aw ], [ %i.fl, %bb.ax ]
  %i.fm = icmp eq i32 %.0.i.i.i.i.i.i.i.i53.i.i.i.i, 1
  br i1 %i.fm, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i54.i.i.i.i, !prof !104

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i52.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i54.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i54.i.i.i.i: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i52.i.i.i.i, %bb.au, %bb.as
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !144 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i56.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i55.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i55.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i54.i.i.i.i
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !93
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i56.i.i.i.i
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal11CastFunctorINS_10UInt16TypeENS_11BooleanTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.as = add nsw i64 %i.al, 1                    ; 2 uses
  %i.at = add nuw nsw i64 %i.ab, 2                ; 2 uses
  %i.au = icmp eq i64 %i.as, 8
  br i1 %i.au, label %bb.g, label %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1, !prof !104

bb.g:                                             ; preds = %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i
  %i.av = add nsw i64 %.sroa.1419.1.i, 1          ; 3 uses
  %i.aw = icmp slt i64 %i.at, %i.h
  br i1 %i.aw, label %bb.h, label %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1, !prof !131

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds i8, ptr %i.d, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !93, !noalias !2717
  br label %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1

_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.1: ; preds = %bb.h, %bb.g, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i
  %.sroa.1419.1.i.1 = phi i64 [ %i.av, %bb.h ], [ %i.av, %bb.g ], [ %.sroa.1419.1.i, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i ]
  %i.az = phi i8 [ %i.ay, %bb.h ], [ %i.ak, %bb.g ], [ %i.ak, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i ] ; 2 uses
  %i.ba = phi i64 [ 0, %bb.h ], [ 0, %bb.g ], [ %i.as, %_ZZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i ] ; 2 uses
  %i.bb = trunc nsw i64 %i.al to i32
  %i.bc = zext i8 %i.ak to i32
  %i.bd = lshr i32 %i.bc, %i.bb
  %i.be = trunc nuw nsw i32 %i.bd to i16
  %i.bf = and i16 %i.be, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.056.i.i, i64 4 ; 2 uses
  store i16 %i.bf, ptr %i.ar, align 2, !tbaa !158, !noalias !2717
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !2715

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
  store i16 %i.bm, ptr %.056.i.i.epil.init, align 2, !tbaa !158, !noalias !2717
  br label %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit: ; preds = %.epil.preheader, %_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_10UInt16TypeENS_11BooleanTypeENS1_15BooleanToNumberEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit.loopexit.unr-lcssa, %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit.i
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !2716
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_10UInt16TypeENS_10BinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.667", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !2722
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !2723
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2722
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_10UInt16TypeENS_15LargeBinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.677", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !2728
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !2729
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2728
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !2735
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !88

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.11.sink = phi ptr [ @.str.12, %bb.b ], [ @.str.11, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.11.sink, ptr %i.e, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155
  %i.j = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !156  ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !152  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !155
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !155  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %storemerge.i.i.i = select i1 %i.v, ptr %i.a, ptr %i.u ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !155  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
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
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !94 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.ac, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !94
  %i.ai = sub nsw i32 %i.ah, %i.ad
  %i.aj = sext i32 %i.ai to i64
  %i.ak = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_10UInt16TypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.aj, ptr nonnull %i.af, ptr noundef nonnull %0)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.lr.ph42.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ak, ptr %.3, align 2, !tbaa !158
  %i.am = add nuw nsw i64 %.02341.i.i.i.i, 1      ; 2 uses
  %i.an = add nsw i64 %.140.i.i.i.i, 1            ; 2 uses
  %exitcond50.not.i.i.i.i = icmp eq i64 %i.am, %i.ab
  br i1 %exitcond50.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph42.i.i.i.i, !llvm.loop !2732

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
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.as, i1 false), !tbaa !158
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.as
  %i.at = add i64 %.02444.i.i.i.i, %i.ar
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.bl, %.noexc11 ] ; 2 uses
  %.334.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.bm, %.noexc11 ] ; 3 uses
  %i.au = add nsw i64 %.334.i.i.i.i, %i.o         ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !93
  %i.ay = trunc i64 %i.au to i8
  %i.az = and i8 %i.ay, 7
  %i.ba = lshr i8 %i.ax, %i.az
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %bb.f, label %.noexc11

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.334.i.i.i.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !94 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !94
  %i.bi = sub nsw i32 %i.bh, %i.bd
  %i.bj = sext i32 %i.bi to i64
  %i.bk = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_10UInt16TypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.bj, ptr nonnull %i.bf, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.f ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !158
  %i.bm = add i64 %.334.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bm, %i.aq
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2733

.loopexit.i.i.i.i:                                ; preds = %.noexc11, %.noexc10, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader32.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %i.al, %.noexc10 ], [ %i.bl, %.noexc11 ]
  %.4.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.preheader32.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ], [ %i.at, %.lr.ph38.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.an, %.noexc10 ], [ %i.aq, %.noexc11 ] ; 2 uses
  %i.bn = icmp slt i64 %.4.i.i.i.i, %i.l
  br i1 %i.bn, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !2734

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.lr.ph42.i.i.i.i, %.lr.ph45.i.i.i.i, %.invoke, %bb.d
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %0, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !131

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  resume { ptr, i32 } %lpad.loopexit.split-lp57
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_10UInt16TypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::internal::StringConverter.675", align 1 ; 3 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.a = alloca i16, align 2                      ; 6 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  store i64 %2, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i16 0, ptr %i.a, align 2, !tbaa !158
  %i.c = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, !prof !159

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt16TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !50
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  br label %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit

_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.g = call noundef zeroext i1 @_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt16TypeEE7ConvertERKS2_PKcmPt(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr noundef %3, i64 noundef %2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.g, label %bb.j, label %bb.d, !prof !131

bb.d:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN5arrow10TypeTraitsINS_10UInt16TypeEE14type_singletonEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %9)
  %i.h = load ptr, ptr %9, align 8, !tbaa !125    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #23 ; 0 uses
  %i.m = load ptr, ptr %7, align 8, !tbaa !61
  %.not.i4 = icmp eq ptr %i.m, null
  br i1 %.not.i4, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g, !prof !131

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.f, %bb.g
  %i.n = load ptr, ptr %8, align 8, !tbaa !144    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !93
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

bb.i:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %8, align 8, !tbaa !144    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !93
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.h
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ], [ %i.t, %bb.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5arrow8internal10ParseValueINS_10UInt16TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  %i.z = load i16, ptr %i.a, align 2, !tbaa !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i16 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt16TypeEE7ConvertERKS2_PKcmPt(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit, label %bb.b, !prof !104

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %3, 2
  br i1 %i.b, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.c, %bb.b
  br label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %2, align 1, !tbaa !93
  %i.d = icmp eq i8 %i.c, 48
  br i1 %i.d, label %bb.d, label %.preheader
end_hunk_10
begin_hunk_11_@_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt16TypeEE7ConvertERKS2_PKcmPt:bb.a
  %i.bp = zext nneg i8 %i.bn to i16               ; 2 uses
  br i1 %i.bo, label %bb.ae, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit

bb.ae:                                            ; preds = %.critedge
  %.not71.i = icmp eq i64 %.01725, 1
  br i1 %.not71.i, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bq = getelementptr inbounds nuw i8, ptr %.01824, i64 2
  %i.br = load i8, ptr %i.bm, align 1, !tbaa !93
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
  %i.bx = load i8, ptr %i.bq, align 1, !tbaa !93
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
  %i.ce = load i8, ptr %i.bw, align 1, !tbaa !93
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
  br i1 %i.cl, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit, label %bb.am, !prof !104

bb.am:                                            ; preds = %bb.al
  %i.cm = load i8, ptr %i.cd, align 1, !tbaa !93
  %i.cn = add i8 %i.cm, -48                       ; 2 uses
  %.not75.i = icmp ne i64 %i.ch, 1
  %i.co = icmp ugt i8 %i.cn, 9
  %or.cond.i21 = or i1 %.not75.i, %i.co
  br i1 %or.cond.i21, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit, label %bb.an, !prof !223

bb.an:                                            ; preds = %bb.am
  %i.cp = mul nuw i16 %i.ck, 10                   ; 3 uses
  %i.cq = zext nneg i8 %i.cn to i16
  %i.cr = add i16 %i.cp, %i.cq                    ; 2 uses
  %.not77.i = icmp ult i16 %i.cr, %i.cp
  %..i = tail call i16 @llvm.umax.i16(i16 %i.cr, i16 %i.cp)
  br i1 %.not77.i, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit, label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split

_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split: ; preds = %bb.k, %bb.q, %bb.w, %bb.ab, %bb.aa, %bb.z, %bb.ad, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.an
  %.5.i.sink = phi i16 [ 0, %bb.ad ], [ %..i, %bb.an ], [ %i.ck, %bb.ak ], [ %i.cc, %bb.ai ], [ %i.bv, %bb.ag ], [ %i.bp, %bb.ae ], [ %.1.i, %bb.k ], [ %.1.i.1, %bb.q ], [ %.1.i.2, %bb.w ], [ %i.bh, %bb.ab ], [ %i.bf, %bb.aa ], [ %i.bc, %bb.z ]
  store i16 %.5.i.sink, ptr %4, align 2, !tbaa !158
  br label %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit

_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit:     ; preds = %bb.i, %bb.m, %bb.s, %bb.y, %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split, %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ah, %bb.af, %.critedge, %bb.e, %bb.a
  %.0 = phi i1 [ false, %bb.am ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.al ], [ false, %.critedge ], [ true, %_ZN5arrow8internal8ParseHexItEEbPKcmPT_.exit.sink.split ], [ false, %bb.an ], [ false, %bb.aj ], [ false, %bb.ah ], [ false, %bb.af ], [ false, %bb.y ], [ false, %bb.s ], [ false, %bb.m ], [ false, %bb.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !2742
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !88

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.11.sink = phi ptr [ @.str.12, %bb.b ], [ @.str.11, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.11.sink, ptr %i.e, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155
  %i.j = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !156  ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !152  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !155
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !155  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %storemerge.i.i.i = select i1 %i.v, ptr %i.a, ptr %i.u ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !155  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
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
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !147 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !147
  %i.ah = sub nsw i64 %i.ag, %i.ad
  %i.ai = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_10UInt16TypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.ah, ptr nonnull %i.ae, ptr noundef nonnull %0)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.lr.ph42.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %i.ai, ptr %.3, align 2, !tbaa !158
  %i.ak = add nuw nsw i64 %.02341.i.i.i.i, 1      ; 2 uses
  %i.al = add nsw i64 %.140.i.i.i.i, 1            ; 2 uses
  %exitcond50.not.i.i.i.i = icmp eq i64 %i.ak, %i.ab
  br i1 %exitcond50.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph42.i.i.i.i, !llvm.loop !2739

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
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.aq, i1 false), !tbaa !158
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.aq
  %i.ar = add i64 %.02444.i.i.i.i, %i.ap
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.bh, %.noexc11 ] ; 2 uses
  %.334.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.bi, %.noexc11 ] ; 3 uses
  %i.as = add nsw i64 %.334.i.i.i.i, %i.o         ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !93
  %i.aw = trunc i64 %i.as to i8
  %i.ax = and i8 %i.aw, 7
  %i.ay = lshr i8 %i.av, %i.ax
  %i.az = trunc i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %.noexc11

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.334.i.i.i.i ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !147 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !147
  %i.bf = sub nsw i64 %i.be, %i.bb
  %i.bg = invoke noundef zeroext i16 @_ZNK5arrow7compute8internal11ParseStringINS_10UInt16TypeEE4CallItSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.bf, ptr nonnull %i.bc, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i.i ], [ %i.bg, %bb.f ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !158
  %i.bi = add i64 %.334.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bi, %i.ao
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2740

.loopexit.i.i.i.i:                                ; preds = %.noexc11, %.noexc10, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader32.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %i.aj, %.noexc10 ], [ %i.bh, %.noexc11 ]
  %.4.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.preheader32.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ar, %.lr.ph38.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.al, %.noexc10 ], [ %i.ao, %.noexc11 ] ; 2 uses
  %i.bj = icmp slt i64 %.4.i.i.i.i, %i.l
  br i1 %i.bj, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !2741

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.lr.ph42.i.i.i.i, %.lr.ph45.i.i.i.i, %.invoke, %bb.d
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %0, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !131

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  resume { ptr, i32 } %lpad.loopexit.split-lp57
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_10UInt16TypeENS_14BinaryViewTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.682", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !2747
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45, !noalias !2748
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2747
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !2754
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !47
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 -1, label %.invoke
  ], !prof !88

bb.b:                                             ; preds = %bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.b
  %.str.11.sink = phi ptr [ @.str.12, %bb.b ], [ @.str.11, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.11.sink, ptr %i.d, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !155
  %i.i = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !156
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS1_11ParseStringIS6_EEE9ArrayExecIS6_vE4ExecERKS9_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSB_4ExecESD_SF_SI_SK_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESI_OSS_OT1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !152
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !155
  %i.q = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.n ; 2 uses
  %i.r = invoke { ptr, i64 } @_ZNK5arrow9ArraySpan18GetVariadicBuffersEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !155  ; 2 uses
  %i.v = load i64, ptr %i.m, align 8, !tbaa !152  ; 2 uses
  %i.w = load i64, ptr %i.j, align 8, !tbaa !156  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
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
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !93 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 13
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph43.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph43.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !93
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !202 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  %i.am = load i8, ptr %i.al, align 1, !tbaa !209, !range !41, !noundef !42
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = select i1 %i.an, ptr %i.ap, ptr null, !prof !131
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !93
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
  store i16 %i.ax, ptr %.3, align 2, !tbaa !158
  %i.az = add nuw nsw i64 %.02342.i.i.i.i, 1      ; 2 uses
  %i.ba = add nsw i64 %.141.i.i.i.i, 1            ; 2 uses
  %exitcond51.not.i.i.i.i = icmp eq i64 %i.az, %i.ab
  br i1 %exitcond51.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph43.i.i.i.i, !llvm.loop !2751

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
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.bf, i1 false), !tbaa !158
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.bf
  %i.bg = add i64 %.02445.i.i.i.i, %i.be
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc12, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.cl, %.noexc12 ] ; 2 uses
  %.335.i.i.i.i = phi i64 [ %.02445.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.cm, %.noexc12 ] ; 3 uses
  %i.bh = add nsw i64 %.335.i.i.i.i, %i.v         ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !93
  %i.bl = trunc i64 %i.bh to i8
  %i.bm = and i8 %i.bl, 7
  %i.bn = lshr i8 %i.bk, %i.bm
  %i.bo = trunc i8 %i.bn to i1
  br i1 %i.bo, label %bb.h, label %.noexc12

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.q, i64 %.335.i.i.i.i ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !93 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 13
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !93
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !202 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 9
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !209, !range !41, !noundef !42
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = select i1 %i.ca, ptr %i.cc, ptr null, !prof !131
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !93
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
  store i16 %.sink.i.i.i.i, ptr %.2, align 2, !tbaa !158
  %i.cm = add i64 %.335.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cm, %i.bd
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2752

.loopexit.i.i.i.i:                                ; preds = %.noexc12, %.noexc11, %.lr.ph39.i.i.i.i, %.preheader31.i.i.i.i, %.preheader33.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader33.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph39.i.i.i.i ], [ %.0, %.preheader31.i.i.i.i ], [ %i.ay, %.noexc11 ], [ %i.cl, %.noexc12 ]
  %.4.i.i.i.i = phi i64 [ %.02445.i.i.i.i, %.preheader33.i.i.i.i ], [ %.02445.i.i.i.i, %.preheader.i.i.i.i ], [ %i.bg, %.lr.ph39.i.i.i.i ], [ %.02445.i.i.i.i, %.preheader31.i.i.i.i ], [ %i.ba, %.noexc11 ], [ %i.bd, %.noexc12 ] ; 2 uses
  %i.cn = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.cn, label %.lr.ph46.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, !llvm.loop !2753

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS1_11ParseStringIS6_EEE9ArrayExecIS6_vE4ExecERKS9_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSB_4ExecESD_SF_SI_SK_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESI_OSS_OT1_.exit

_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS1_11ParseStringIS6_EEE9ArrayExecIS6_vE4ExecERKS9_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSB_4ExecESD_SF_SI_SK_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESI_OSS_OT1_.exit: ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.c
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i, %.lr.ph46.i.i.i.i, %.invoke, %.noexc8, %bb.d
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %0, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.k, !prof !131

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  resume { ptr, i32 } %lpad.loopexit.split-lp58
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal128TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %8 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::BasicDecimal128", align 8 ; 6 uses
  %11 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %13 = alloca %"class.arrow::Decimal128", align 16 ; 4 uses
  %14 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %15 = alloca %"class.arrow::Decimal128", align 16 ; 4 uses
  %16 = alloca %"class.arrow::BasicDecimal128", align 8 ; 7 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !2766
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !47
  switch i8 %i.b, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %.noexc8
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !88

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.12.sink = phi ptr [ @.str.11, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.12, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.12.sink, ptr %i.d, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

.noexc8:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !155
  %i.i = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(72) %i.i), !inline_history !2757
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !152  ; 3 uses
  %i.p = sext i32 %i.m to i64                     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !155
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !155  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !156  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.t, i64 noundef %i.o, i64 noundef %i.v)
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph64.i.i.i.i, label %.loopexit28

.lr.ph64.i.i.i.i:                                 ; preds = %.noexc8
  %i.x = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.f
  %i.y = mul nsw i64 %i.o, %i.p
  %i.z = getelementptr inbounds i8, ptr %i.s, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph64.i.i.i.i
  %i.ah = phi ptr [ null, %.lr.ph64.i.i.i.i ], [ %i.ex, %.loopexit.i.i.i.i ] ; 7 uses
  %.0 = phi ptr [ %i.x, %.lr.ph64.i.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.0.i.i.i = phi ptr [ %i.z, %.lr.ph64.i.i.i.i ], [ %.1.i.i.i, %.loopexit.i.i.i.i ] ; 6 uses
  %.02463.i.i.i.i = phi i64 [ 0, %.lr.ph64.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.ai = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc10:                                         ; preds = %bb.b
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.ai to i16 ; 6 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.ai, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.aj = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.aj, label %.preheader.i.i.i.i, label %bb.q

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.ak = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.al = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.al, label %.lr.ph61.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph61.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.am = add i64 %.02463.i.i.i.i, %i.ak
  br label %.lr.ph61.i.i.i.i

.lr.ph61.i.i.i.i:                                 ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i, %.lr.ph61.preheader.i.i.i.i
  %i.an = phi ptr [ %i.ah, %.lr.ph61.preheader.i.i.i.i ], [ %i.cl, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ] ; 9 uses
  %.3 = phi ptr [ %.0, %.lr.ph61.preheader.i.i.i.i ], [ %i.cm, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %.4.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph61.preheader.i.i.i.i ], [ %i.cn, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %.02360.i.i.i.i = phi i64 [ 0, %.lr.ph61.preheader.i.i.i.i ], [ %i.co, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %i.ao = load <2 x i64>, ptr %.4.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store <2 x i64> %i.ao, ptr %15, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ap = load i32, ptr %1, align 4, !tbaa !227
  %i.aq = sub nsw i32 0, %i.ap
  %i.ar = invoke { i64, i64 } @_ZNK5arrow15BasicDecimal12815IncreaseScaleByEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %i.aq)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc11:                                         ; preds = %.lr.ph61.i.i.i.i
  %i.as = extractvalue { i64, i64 } %i.ar, 0      ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal128TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.aw = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.c
  br i1 %i.aw, label %.critedge6.i.i.i.i.i, label %bb.d, !prof !104

bb.d:                                             ; preds = %.noexc12
  store i64 65535, ptr %11, align 8
  store i64 0, ptr %i.ad, align 8
  %i.ax = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.ax, label %bb.e, label %._crit_edge75.i.i.i.i

._crit_edge75.i.i.i.i:                            ; preds = %.noexc13
  %.pre76.i.i.i.i = load i64, ptr %16, align 8, !tbaa !147
  br label %bb.p

.critedge6.i.i.i.i.i:                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.e

bb.e:                                             ; preds = %.critedge6.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !2767
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !2768
  invoke void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %bb.e
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !169, !noalias !2768, !nonnull !42, !align !170
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 1 dereferenceable(28) @.str.34, i64 noundef 27)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i unwind label %bb.f, !noalias !2768 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.f, !noalias !2767

bb.f:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i, %.noexc14
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2767
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2768
  br label %.body

_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2767
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2768
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.bb = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2767 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.af
  br i1 %i.bc, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.bd = load i64, ptr %i.af, align 8, !tbaa !93, !noalias !2767
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #26
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.h:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2767 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.af
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.h
  %i.bi = load i64, ptr %i.af, align 8, !tbaa !93, !noalias !2767
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2767
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2767
  %i.bk = icmp eq ptr %i.an, null
  br i1 %i.bk, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bn, align 8, !tbaa !102
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !103
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #23, !inline_history !2762
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #23, !inline_history !2762
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.m ], [ %i.ca, %bb.n ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, !prof !104

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !144 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !93
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.ci = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  store ptr %i.ci, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i.i, %._crit_edge75.i.i.i.i
  %i.cj = phi i64 [ %.pre76.i.i.i.i, %._crit_edge75.i.i.i.i ], [ %i.as, %.critedge.i.i.i.i.i ]
  %i.ck = trunc i64 %i.cj to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.p, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.cl = phi ptr [ %i.an, %bb.p ], [ %i.ci, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i16 [ %i.ck, %bb.p ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.cm = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i, ptr %.3, align 2, !tbaa !158
  %i.cn = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.p ; 2 uses
  %i.co = add nuw nsw i64 %.02360.i.i.i.i, 1      ; 2 uses
  %exitcond71.not.i.i.i.i = icmp eq i64 %i.co, %i.ak
  br i1 %exitcond71.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph61.i.i.i.i, !llvm.loop !2763

bb.q:                                             ; preds = %.noexc10
  %i.cp = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.cp, label %.preheader45.i.i.i.i, label %.preheader47.i.i.i.i

.preheader47.i.i.i.i:                             ; preds = %bb.q
  %i.cq = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cr = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cr, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader45.i.i.i.i:                             ; preds = %bb.q
  %i.cs = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cs, label %.lr.ph55.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph55.i.i.i.i:                                 ; preds = %.preheader45.i.i.i.i
  %i.ct = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.cu = shl nuw nsw i64 %i.ct, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.cu, i1 false), !tbaa !158
  %i.cv = mul nsw i64 %i.ct, %i.p
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cv
  %scevgep70.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cu
  %i.cw = add i64 %.02463.i.i.i.i, %i.ct
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader47.i.i.i.i, %bb.ad
  %i.cx = phi ptr [ %i.es, %bb.ad ], [ %i.ah, %.preheader47.i.i.i.i ] ; 8 uses
  %.2 = phi ptr [ %i.et, %bb.ad ], [ %.0, %.preheader47.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ad ], [ %.0.i.i.i, %.preheader47.i.i.i.i ] ; 2 uses
  %.052.i.i.i.i = phi i64 [ %i.eu, %bb.ad ], [ 0, %.preheader47.i.i.i.i ]
  %.351.i.i.i.i = phi i64 [ %i.ev, %bb.ad ], [ %.02463.i.i.i.i, %.preheader47.i.i.i.i ] ; 2 uses
  %i.cy = add nsw i64 %.351.i.i.i.i, %i.o         ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !93
  %i.dc = trunc i64 %i.cy to i8
  %i.dd = and i8 %i.dc, 7
  %i.de = lshr i8 %i.db, %i.dd
  %i.df = trunc i8 %i.de to i1
  br i1 %i.df, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dg = load <2 x i64>, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store <2 x i64> %i.dg, ptr %13, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.dh = load i32, ptr %1, align 4, !tbaa !227
  %i.di = sub nsw i32 0, %i.dh
  %i.dj = invoke { i64, i64 } @_ZNK5arrow15BasicDecimal12815IncreaseScaleByEi(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %i.di)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc15:                                         ; preds = %bb.r
  %i.dk = extractvalue { i64, i64 } %i.dj, 0      ; 2 uses
  store i64 %i.dk, ptr %14, align 8
  %i.dl = extractvalue { i64, i64 } %i.dj, 1
  store i64 %i.dl, ptr %i.aa, align 8
  %i.dm = load i8, ptr %i.ag, align 4, !tbaa !228, !range !41, !noundef !42
  %i.dn = trunc nuw i8 %i.dm to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.dn, label %.critedge.i39.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.do = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc16:                                         ; preds = %bb.s
  br i1 %i.do, label %.critedge6.i38.i.i.i.i, label %bb.t, !prof !104

bb.t:                                             ; preds = %.noexc16
  store i64 65535, ptr %8, align 8
  store i64 0, ptr %i.ab, align 8
  %i.dp = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.dp, label %bb.u, label %._crit_edge72.i.i.i.i

._crit_edge72.i.i.i.i:                            ; preds = %.noexc17
  %.pre.i.i.i.i = load i64, ptr %14, align 8, !tbaa !147
  br label %bb.ac

.critedge6.i38.i.i.i.i:                           ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

bb.u:                                             ; preds = %.critedge6.i38.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.34)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %bb.u
  %i.dq = icmp eq ptr %i.cx, null
  br i1 %i.dq, label %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc18
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i29.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i.i29.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.dt, align 8, !tbaa !102
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !103
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #23, !inline_history !2762
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !50
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #23, !inline_history !2762
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i30.i.i.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i.i.i30.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i32.i.i.i.i = phi i32 [ %i.dw, %bb.z ], [ %i.eg, %bb.aa ]
  %i.eh = icmp eq i32 %.0.i.i.i.i.i.i.i.i32.i.i.i.i, 1
  br i1 %i.eh, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i, !prof !104

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i, %bb.x, %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !144 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !93
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i:  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i:            ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i, %.noexc18
  %i.eo = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  store ptr %i.eo, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i

.critedge.i39.i.i.i.i:                            ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.i39.i.i.i.i, %._crit_edge72.i.i.i.i
  %i.ep = phi i64 [ %.pre.i.i.i.i, %._crit_edge72.i.i.i.i ], [ %i.dk, %.critedge.i39.i.i.i.i ]
  %i.eq = trunc i64 %i.ep to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i: ; preds = %bb.ac, %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i
  %i.er = phi ptr [ %i.cx, %bb.ac ], [ %i.eo, %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i ]
  %.0.i28.i.i.i.i = phi i16 [ %i.eq, %bb.ac ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i, %.lr.ph.i.i.i.i
  %i.es = phi ptr [ %i.er, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i ], [ %i.cx, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sink.i.i.i = phi i16 [ %.0.i28.i.i.i.i, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.et = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !158
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.p ; 2 uses
  %i.eu = add nuw nsw i64 %.052.i.i.i.i, 1        ; 2 uses
  %i.ev = add nsw i64 %.351.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.eu, %i.cq
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit65.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2764

.loopexit.loopexit65.i.i.i.i:                     ; preds = %bb.ad
  %i.ew = add i64 %.02463.i.i.i.i, %i.cq
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit65.i.i.i.i, %.lr.ph55.i.i.i.i, %.preheader45.i.i.i.i, %.preheader47.i.i.i.i, %.preheader.i.i.i.i
  %i.ex = phi ptr [ %i.ah, %.preheader47.i.i.i.i ], [ %i.ah, %.preheader.i.i.i.i ], [ %i.ah, %.lr.ph55.i.i.i.i ], [ %i.ah, %.preheader45.i.i.i.i ], [ %i.es, %.loopexit.loopexit65.i.i.i.i ], [ %i.cl, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1 = phi ptr [ %.0, %.preheader47.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep70.i.i.i.i, %.lr.ph55.i.i.i.i ], [ %.0, %.preheader45.i.i.i.i ], [ %i.et, %.loopexit.loopexit65.i.i.i.i ], [ %i.cm, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader47.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph55.i.i.i.i ], [ %.0.i.i.i, %.preheader45.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit65.i.i.i.i ], [ %i.cn, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02463.i.i.i.i, %.preheader47.i.i.i.i ], [ %.02463.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cw, %.lr.ph55.i.i.i.i ], [ %.02463.i.i.i.i, %.preheader45.i.i.i.i ], [ %i.ew, %.loopexit.loopexit65.i.i.i.i ], [ %i.am, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.ey = icmp slt i64 %.4.i.i.i.i, %i.v
  br i1 %i.ey, label %bb.b, label %.loopexit28, !llvm.loop !2765

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph61.i.i.i.i, %bb.c, %bb.d, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
end_hunk_12
begin_hunk_13_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal128TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.av = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.c
  br i1 %i.av, label %.critedge6.i.i.i.i.i, label %bb.d, !prof !104

bb.d:                                             ; preds = %.noexc12
  store i64 65535, ptr %11, align 8
  store i64 0, ptr %i.ad, align 8
  %i.aw = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.aw, label %bb.e, label %._crit_edge75.i.i.i.i

._crit_edge75.i.i.i.i:                            ; preds = %.noexc13
  %.pre76.i.i.i.i = load i64, ptr %16, align 8, !tbaa !147
  br label %bb.p

.critedge6.i.i.i.i.i:                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.e

bb.e:                                             ; preds = %.critedge6.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !2781
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !2782
  invoke void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %bb.e
  %i.ax = load ptr, ptr %i.ae, align 8, !tbaa !169, !noalias !2782, !nonnull !42, !align !170
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 1 dereferenceable(28) @.str.34, i64 noundef 27)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i unwind label %bb.f, !noalias !2782 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.f, !noalias !2781

bb.f:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i, %.noexc14
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2781
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2782
  br label %.body

_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2781
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2782
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.ba = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2781 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.af
  br i1 %i.bb, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.bc = load i64, ptr %i.af, align 8, !tbaa !93, !noalias !2781
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #26
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.h:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2781 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.af
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.h
  %i.bh = load i64, ptr %i.af, align 8, !tbaa !93, !noalias !2781
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2781
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2781
  %i.bj = icmp eq ptr %i.an, null
  br i1 %i.bj, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bm, align 8, !tbaa !102
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !103
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #23, !inline_history !2776
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #23, !inline_history !2776
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bp, %bb.m ], [ %i.bz, %bb.n ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ca, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, !prof !104

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !144 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !93
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.ch = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  store ptr %i.ch, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i.i, %._crit_edge75.i.i.i.i
  %i.ci = phi i64 [ %.pre76.i.i.i.i, %._crit_edge75.i.i.i.i ], [ %i.ar, %.critedge.i.i.i.i.i ]
  %i.cj = trunc i64 %i.ci to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.p, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.ck = phi ptr [ %i.an, %bb.p ], [ %i.ch, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i16 [ %i.cj, %bb.p ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.cl = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i, ptr %.3, align 2, !tbaa !158
  %i.cm = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.p ; 2 uses
  %i.cn = add nuw nsw i64 %.02360.i.i.i.i, 1      ; 2 uses
  %exitcond71.not.i.i.i.i = icmp eq i64 %i.cn, %i.ak
  br i1 %exitcond71.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph61.i.i.i.i, !llvm.loop !2777

bb.q:                                             ; preds = %.noexc10
  %i.co = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.co, label %.preheader45.i.i.i.i, label %.preheader47.i.i.i.i

.preheader47.i.i.i.i:                             ; preds = %bb.q
  %i.cp = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cq = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cq, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader45.i.i.i.i:                             ; preds = %bb.q
  %i.cr = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cr, label %.lr.ph55.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph55.i.i.i.i:                                 ; preds = %.preheader45.i.i.i.i
  %i.cs = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.ct = shl nuw nsw i64 %i.cs, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.ct, i1 false), !tbaa !158
  %i.cu = mul nsw i64 %i.cs, %i.p
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cu
  %scevgep70.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.ct
  %i.cv = add i64 %.02463.i.i.i.i, %i.cs
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader47.i.i.i.i, %bb.ad
  %i.cw = phi ptr [ %i.eq, %bb.ad ], [ %i.ah, %.preheader47.i.i.i.i ] ; 8 uses
  %.2 = phi ptr [ %i.er, %bb.ad ], [ %.0, %.preheader47.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ad ], [ %.0.i.i.i, %.preheader47.i.i.i.i ] ; 2 uses
  %.052.i.i.i.i = phi i64 [ %i.es, %bb.ad ], [ 0, %.preheader47.i.i.i.i ]
  %.351.i.i.i.i = phi i64 [ %i.et, %bb.ad ], [ %.02463.i.i.i.i, %.preheader47.i.i.i.i ] ; 2 uses
  %i.cx = add nsw i64 %.351.i.i.i.i, %i.o         ; 2 uses
  %i.cy = lshr i64 %i.cx, 3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !93
  %i.db = trunc i64 %i.cx to i8
  %i.dc = and i8 %i.db, 7
  %i.dd = lshr i8 %i.da, %i.dc
  %i.de = trunc i8 %i.dd to i1
  br i1 %i.de, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.df = load <2 x i64>, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store <2 x i64> %i.df, ptr %13, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.dg = load i32, ptr %1, align 4, !tbaa !227
  %i.dh = invoke { i64, i64 } @_ZNK5arrow15BasicDecimal12813ReduceScaleByEib(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %i.dg, i1 noundef zeroext false)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc15:                                         ; preds = %bb.r
  %i.di = extractvalue { i64, i64 } %i.dh, 0      ; 2 uses
  store i64 %i.di, ptr %14, align 8
  %i.dj = extractvalue { i64, i64 } %i.dh, 1
  store i64 %i.dj, ptr %i.aa, align 8
  %i.dk = load i8, ptr %i.ag, align 4, !tbaa !228, !range !41, !noundef !42
  %i.dl = trunc nuw i8 %i.dk to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.dl, label %.critedge.i39.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.dm = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc16:                                         ; preds = %bb.s
  br i1 %i.dm, label %.critedge6.i38.i.i.i.i, label %bb.t, !prof !104

bb.t:                                             ; preds = %.noexc16
  store i64 65535, ptr %8, align 8
  store i64 0, ptr %i.ab, align 8
  %i.dn = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.dn, label %bb.u, label %._crit_edge72.i.i.i.i

._crit_edge72.i.i.i.i:                            ; preds = %.noexc17
  %.pre.i.i.i.i = load i64, ptr %14, align 8, !tbaa !147
  br label %bb.ac

.critedge6.i38.i.i.i.i:                           ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

bb.u:                                             ; preds = %.critedge6.i38.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.34)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %bb.u
  %i.do = icmp eq ptr %i.cw, null
  br i1 %i.do, label %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i29.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i.i.i29.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.dr, align 8, !tbaa !102
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !103
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !50
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #23, !inline_history !2776
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !50
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #23, !inline_history !2776
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i30.i.i.i.i = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i.i.i.i30.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i32.i.i.i.i = phi i32 [ %i.du, %bb.z ], [ %i.ee, %bb.aa ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i.i.i.i32.i.i.i.i, 1
  br i1 %i.ef, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i, !prof !104

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31.i.i.i.i, %bb.x, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !144 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !93
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i:  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i33.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i:            ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i35.i.i.i.i, %.noexc18
  %i.em = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  store ptr %i.em, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i

.critedge.i39.i.i.i.i:                            ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.i39.i.i.i.i, %._crit_edge72.i.i.i.i
  %i.en = phi i64 [ %.pre.i.i.i.i, %._crit_edge72.i.i.i.i ], [ %i.di, %.critedge.i39.i.i.i.i ]
  %i.eo = trunc i64 %i.en to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i: ; preds = %bb.ac, %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i
  %i.ep = phi ptr [ %i.cw, %bb.ac ], [ %i.em, %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i ]
  %.0.i28.i.i.i.i = phi i16 [ %i.eo, %bb.ac ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i36.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i, %.lr.ph.i.i.i.i
  %i.eq = phi ptr [ %i.ep, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i ], [ %i.cw, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sink.i.i.i = phi i16 [ %.0.i28.i.i.i.i, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit40.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !158
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.p ; 2 uses
  %i.es = add nuw nsw i64 %.052.i.i.i.i, 1        ; 2 uses
  %i.et = add nsw i64 %.351.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.es, %i.cp
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit65.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2778

.loopexit.loopexit65.i.i.i.i:                     ; preds = %bb.ad
  %i.eu = add i64 %.02463.i.i.i.i, %i.cp
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit65.i.i.i.i, %.lr.ph55.i.i.i.i, %.preheader45.i.i.i.i, %.preheader47.i.i.i.i, %.preheader.i.i.i.i
  %i.ev = phi ptr [ %i.ah, %.preheader47.i.i.i.i ], [ %i.ah, %.preheader.i.i.i.i ], [ %i.ah, %.lr.ph55.i.i.i.i ], [ %i.ah, %.preheader45.i.i.i.i ], [ %i.eq, %.loopexit.loopexit65.i.i.i.i ], [ %i.ck, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1 = phi ptr [ %.0, %.preheader47.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep70.i.i.i.i, %.lr.ph55.i.i.i.i ], [ %.0, %.preheader45.i.i.i.i ], [ %i.er, %.loopexit.loopexit65.i.i.i.i ], [ %i.cl, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader47.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph55.i.i.i.i ], [ %.0.i.i.i, %.preheader45.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit65.i.i.i.i ], [ %i.cm, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02463.i.i.i.i, %.preheader47.i.i.i.i ], [ %.02463.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cv, %.lr.ph55.i.i.i.i ], [ %.02463.i.i.i.i, %.preheader45.i.i.i.i ], [ %i.eu, %.loopexit.loopexit65.i.i.i.i ], [ %i.am, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal128EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.ew = icmp slt i64 %.4.i.i.i.i, %i.v
  br i1 %i.ew, label %bb.b, label %.loopexit28, !llvm.loop !2779

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph61.i.i.i.i, %bb.c, %bb.d, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_13
begin_hunk_14_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal128TypeENS1_27SafeRescaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2807
  br label %.body.i.i.i.i

.noexc41.i.i.i.i:                                 ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2807
  %i.bm = load ptr, ptr %0, align 8, !tbaa !61    ; 5 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.noexc41.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bq, align 8, !tbaa !102
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !103
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #23, !inline_history !2794
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !50
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #23, !inline_history !2794
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bt, %bb.v ], [ %i.cd, %bb.w ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ce, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, !prof !104

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.t, %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !144 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !93
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, %.noexc41.i.i.i.i
  %i.cl = load ptr, ptr %12, align 8, !tbaa !61
  store ptr %i.cl, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.y

bb.y:                                             ; preds = %.critedge.i.i.i.i.i, %.noexc40.i.i.i.i
  %i.cm = load i64, ptr %i.ac, align 8, !tbaa !147
  %i.cn = trunc i64 %i.cm to i16
  br label %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i

_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i:          ; preds = %bb.y, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.cn, %bb.y ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ]
  %i.co = load ptr, ptr %22, align 8, !tbaa !61   ; 5 uses
  %.not.i.i7.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i7.i.i.i.i.i, label %_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, label %bb.z, !prof !131

bb.z:                                             ; preds = %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 4294967297
  %i.cu = trunc i64 %i.cs to i32                  ; 2 uses
  br i1 %i.ct, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cr, align 8, !tbaa !102
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.cv, align 4, !tbaa !103
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !50
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #23, !inline_history !2795
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !50
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #23, !inline_history !2795
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = add nsw i32 %i.cu, -1
  store i32 %i.dd, ptr %i.cr, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.de = atomicrmw volatile add ptr %i.cr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cu, %bb.ad ], [ %i.de, %bb.ae ]
  %i.df = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.df, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !104

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.ab, %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !144 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !93
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #26
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 56) #26
  br label %_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_10Decimal128EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.dm = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i, ptr %.3, align 2, !tbaa !158
  %i.dn = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.do = add nuw nsw i64 %.02389.i.i.i.i, 1      ; 2 uses
  %exitcond100.not.i.i.i.i = icmp eq i64 %i.do, %i.aj
  br i1 %exitcond100.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph90.i.i.i.i, !llvm.loop !2796

bb.ag:                                            ; preds = %.noexc10
  %i.dp = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.dp, label %.preheader72.i.i.i.i, label %.preheader74.i.i.i.i

.preheader74.i.i.i.i:                             ; preds = %bb.ag
  %i.dq = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.dr = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.dr, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader74.i.i.i.i
  %i.ds = add i64 %.02492.i.i.i.i, %i.dq
  br label %.lr.ph.i.i.i.i

.preheader72.i.i.i.i:                             ; preds = %bb.ag
  %i.dt = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.dt, label %.lr.ph84.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.preheader72.i.i.i.i
  %i.du = zext nneg i32 %i.ah to i64              ; 3 uses
  %i.dv = shl nuw nsw i64 %i.du, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.dv, i1 false), !tbaa !158
  %i.dw = mul nsw i64 %i.du, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.dw
  %scevgep99.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.dv
  %i.dx = add i64 %.02492.i.i.i.i, %i.du
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bh, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.gu, %bb.bh ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %.3.i.i.i, %bb.bh ] ; 2 uses
  %.081.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %i.gv, %bb.bh ]
  %.380.i.i.i.i = phi i64 [ %.02492.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.gw, %bb.bh ] ; 2 uses
  %i.dy = add nsw i64 %.380.i.i.i.i, %i.p         ; 2 uses
  %i.dz = lshr i64 %i.dy, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !93
  %i.ec = trunc i64 %i.dy to i8
  %i.ed = and i8 %i.ec, 7
  %i.ee = lshr i8 %i.eb, %i.ed
  %i.ef = trunc i8 %i.ee to i1
  br i1 %i.ef, label %bb.ah, label %bb.bh

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eg = load <2 x i64>, ptr %.2.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store <2 x i64> %i.eg, ptr %16, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.eh = load i32, ptr %1, align 4, !tbaa !227
  call void @llvm.experimental.noalias.scope.decl(metadata !2809)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !2809
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false), !noalias !2809
  %i.ei = invoke noundef i32 @_ZNK5arrow15BasicDecimal1287RescaleEiiPS0_(ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %i.eh, i32 noundef 0, ptr noundef nonnull %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23, !noalias !2809
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23, !noalias !2809
  invoke void @_ZNK5arrow10Decimal12813ToArrowStatusENS_13DecimalStatusE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %i.ei)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %.noexc13
  call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  %i.ej = load ptr, ptr %15, align 8, !tbaa !61, !noalias !2811 ; 2 uses
  store ptr %i.ej, ptr %14, align 8, !tbaa !61, !alias.scope !2810, !noalias !2809
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !2809
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_ZNK5arrow10Decimal1287RescaleEii.exit.thread.i37.i.i.i.i, label %bb.ai, !prof !131

bb.ai:                                            ; preds = %.noexc14
  call void @_ZN5arrow6ResultINS_10Decimal128EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(8) %14) #23
  %i.el = load ptr, ptr %14, align 8, !tbaa !61, !noalias !2809
  %.not.i4.i.i28.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i4.i.i28.i.i.i.i, label %_ZNK5arrow10Decimal1287RescaleEii.exit.i29.i.i.i.i, label %bb.aj, !prof !131

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
  br label %_ZNK5arrow10Decimal1287RescaleEii.exit.i29.i.i.i.i

_ZNK5arrow10Decimal1287RescaleEii.exit.thread.i37.i.i.i.i: ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !2809
  store ptr null, ptr %17, align 8, !tbaa !61, !alias.scope !2809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !2809
  br label %bb.ao

_ZNK5arrow10Decimal1287RescaleEii.exit.i29.i.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !2809
  %.pr.i30.i.i.i.i = load ptr, ptr %17, align 8, !tbaa !61 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !2809
  %i.em = icmp eq ptr %.pr.i30.i.i.i.i, null
  br i1 %i.em, label %bb.ao, label %bb.ak, !prof !185

bb.ak:                                            ; preds = %_ZNK5arrow10Decimal1287RescaleEii.exit.i29.i.i.i.i
  %i.en = load ptr, ptr %0, align 8, !tbaa !61
  %.not.i.i31.i.i.i.i = icmp eq ptr %i.en, %.pr.i30.i.i.i.i
  br i1 %.not.i.i31.i.i.i.i, label %_ZN5arrow6StatusaSERKS0_.exit.i34.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %_ZN5arrow6StatusaSERKS0_.exit.i34.i.i.i.i unwind label %bb.am

bb.am:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.al
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %i.ep = load ptr, ptr %17, align 8, !tbaa !61
  %.not.i.i.i32.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i32.i.i.i.i, label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit.i33.i.i.i.i, label %bb.an, !prof !131

bb.an:                                            ; preds = %bb.am
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %17)
  br label %_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit.i33.i.i.i.i

_ZN5arrow6ResultINS_10Decimal128EED2Ev.exit.i33.i.i.i.i: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.body

bb.ao:                                            ; preds = %_ZNK5arrow10Decimal1287RescaleEii.exit.i29.i.i.i.i, %_ZNK5arrow10Decimal1287RescaleEii.exit.thread.i37.i.i.i.i
  %i.eq = load i8, ptr %i.ag, align 4, !tbaa !228, !range !41, !noundef !42
  %i.er = trunc nuw i8 %i.eq to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.er, label %.critedge.i62.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.es = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc63.i.i.i.i unwind label %bb.am

.noexc63.i.i.i.i:                                 ; preds = %bb.ap
  br i1 %i.es, label %.critedge6.i61.i.i.i.i, label %bb.aq, !prof !104

bb.aq:                                            ; preds = %.noexc63.i.i.i.i
  store i64 65535, ptr %8, align 8
  store i64 0, ptr %i.ab, align 8
  %i.et = invoke noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc64.i.i.i.i unwind label %bb.am

.noexc64.i.i.i.i:                                 ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.et, label %bb.ar, label %bb.az

.critedge6.i61.i.i.i.i:                           ; preds = %.noexc63.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge6.i61.i.i.i.i, %.noexc64.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.34)
          to label %.noexc65.i.i.i.i unwind label %bb.am

.noexc65.i.i.i.i:                                 ; preds = %bb.ar
  %i.eu = load ptr, ptr %0, align 8, !tbaa !61    ; 5 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_ZN5arrow6StatusD2Ev.exit.i59.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.noexc65.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i52.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i.i52.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i56.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 4294967297
  %i.fb = trunc i64 %i.ez to i32                  ; 2 uses
  br i1 %i.fa, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.ey, align 8, !tbaa !102
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !103
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !50
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #23, !inline_history !2794
  %i.fg = load ptr, ptr %i.ex, align 8, !tbaa !50
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #23, !inline_history !2794
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i56.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i53.i.i.i.i = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i.i.i.i.i53.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fk = add nsw i32 %i.fb, -1
  store i32 %i.fk, ptr %i.ey, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i54.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.fl = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i54.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i54.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i.i.i.i55.i.i.i.i = phi i32 [ %i.fb, %bb.aw ], [ %i.fl, %bb.ax ]
  %i.fm = icmp eq i32 %.0.i.i.i.i.i.i.i.i55.i.i.i.i, 1
  br i1 %i.fm, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i56.i.i.i.i, !prof !104

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i54.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i56.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i56.i.i.i.i: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i54.i.i.i.i, %bb.au, %bb.as
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !144 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i58.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i56.i.i.i.i
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !93
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i58.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i58.i.i.i.i:  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i56.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i57.i.i.i.i
end_hunk_14
begin_hunk_15_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal256TypeENS1_29UnsafeUpscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  br i1 %i.ap, label %.critedge.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.aq = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.c
  br i1 %i.aq, label %.critedge6.i.i.i.i.i, label %bb.d, !prof !104

bb.d:                                             ; preds = %.noexc12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !2828
  store i64 65535, ptr %11, align 8, !tbaa !147, !alias.scope !2828
  %i.ar = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.ar, label %bb.e, label %bb.p

.critedge6.i.i.i.i.i:                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.e

bb.e:                                             ; preds = %.critedge6.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !2829
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !2830
  invoke void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !169, !noalias !2830, !nonnull !42, !align !170
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 1 dereferenceable(28) @.str.34, i64 noundef 27)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i unwind label %bb.f, !noalias !2830 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.f, !noalias !2829

bb.f:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i, %.noexc14
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2829
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2830
  br label %.body

_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2829
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2830
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.av = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2829 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ad
  br i1 %i.aw, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ax = load i64, ptr %i.ad, align 8, !tbaa !93, !noalias !2829
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #26
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.h:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2829 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ad
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.h
  %i.bc = load i64, ptr %i.ad, align 8, !tbaa !93, !noalias !2829
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2829
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2829
  %i.be = icmp eq ptr %i.al, null
  br i1 %i.be, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bh, align 8, !tbaa !102
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !103
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #23, !inline_history !2821
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #23, !inline_history !2821
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.m ], [ %i.bu, %bb.n ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, !prof !104

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !144 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !93
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cc = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  store ptr %i.cc, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i.i, %.noexc13
  %i.cd = load i64, ptr %15, align 8, !tbaa !147
  %i.ce = trunc i64 %i.cd to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.p, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.cf = phi ptr [ %i.al, %bb.p ], [ %i.cc, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i16 [ %i.ce, %bb.p ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.cg = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i, ptr %.3, align 2, !tbaa !158
  %i.ch = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.p ; 2 uses
  %i.ci = add nuw nsw i64 %.02358.i.i.i.i, 1      ; 2 uses
  %exitcond69.not.i.i.i.i = icmp eq i64 %i.ci, %i.ai
  br i1 %exitcond69.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph59.i.i.i.i, !llvm.loop !2822

bb.q:                                             ; preds = %.noexc10
  %i.cj = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.cj, label %.preheader43.i.i.i.i, label %.preheader45.i.i.i.i

.preheader45.i.i.i.i:                             ; preds = %bb.q
  %i.ck = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.cl = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader43.i.i.i.i:                             ; preds = %bb.q
  %i.cm = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cm, label %.lr.ph53.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph53.i.i.i.i:                                 ; preds = %.preheader43.i.i.i.i
  %i.cn = zext nneg i32 %i.ag to i64              ; 3 uses
  %i.co = shl nuw nsw i64 %i.cn, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.co, i1 false), !tbaa !158
  %i.cp = mul nsw i64 %i.cn, %i.p
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.cp
  %scevgep68.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.co
  %i.cq = add i64 %.02461.i.i.i.i, %i.cn
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader45.i.i.i.i, %bb.ad
  %i.cr = phi ptr [ %i.ei, %bb.ad ], [ %i.af, %.preheader45.i.i.i.i ] ; 8 uses
  %.2 = phi ptr [ %i.ej, %bb.ad ], [ %.0, %.preheader45.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ad ], [ %.0.i.i.i, %.preheader45.i.i.i.i ] ; 2 uses
  %.050.i.i.i.i = phi i64 [ %i.ek, %bb.ad ], [ 0, %.preheader45.i.i.i.i ]
  %.349.i.i.i.i = phi i64 [ %i.el, %bb.ad ], [ %.02461.i.i.i.i, %.preheader45.i.i.i.i ] ; 2 uses
  %i.cs = add nsw i64 %.349.i.i.i.i, %i.o         ; 2 uses
  %i.ct = lshr i64 %i.cs, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !93
  %i.cw = trunc i64 %i.cs to i8
  %i.cx = and i8 %i.cw, 7
  %i.cy = lshr i8 %i.cv, %i.cx
  %i.cz = trunc i8 %i.cy to i1
  br i1 %i.cz, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull readonly align 1 dereferenceable(32) %.2.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.da = load i32, ptr %1, align 4, !tbaa !227
  %i.db = sub nsw i32 0, %i.da
  invoke void @_ZNK5arrow15BasicDecimal25615IncreaseScaleByEi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.db)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc15:                                         ; preds = %bb.r
  %i.dc = load i8, ptr %i.ae, align 4, !tbaa !228, !range !41, !noundef !42
  %i.dd = trunc nuw i8 %i.dc to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.dd, label %.critedge.i37.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.de = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc16:                                         ; preds = %bb.s
  br i1 %i.de, label %.critedge6.i36.i.i.i.i, label %bb.t, !prof !104

bb.t:                                             ; preds = %.noexc16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false), !alias.scope !2831
  store i64 65535, ptr %8, align 8, !tbaa !147, !alias.scope !2831
  %i.df = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.df, label %bb.u, label %bb.ac

.critedge6.i36.i.i.i.i:                           ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

bb.u:                                             ; preds = %.critedge6.i36.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.34)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %bb.u
  %i.dg = icmp eq ptr %i.cr, null
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i27.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i27.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.dj, align 8, !tbaa !102
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !103
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #23, !inline_history !2821
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #23, !inline_history !2821
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i28.i.i.i.i = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i.i.i.i.i28.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dv = add nsw i32 %i.dm, -1
  store i32 %i.dv, ptr %i.dj, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dw = atomicrmw volatile add ptr %i.dj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i30.i.i.i.i = phi i32 [ %i.dm, %bb.z ], [ %i.dw, %bb.aa ]
  %i.dx = icmp eq i32 %.0.i.i.i.i.i.i.i.i30.i.i.i.i, 1
  br i1 %i.dx, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i, !prof !104

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i, %bb.x, %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !144 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !93
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i:  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i:            ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i, %.noexc18
  %i.ee = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  store ptr %i.ee, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i

.critedge.i37.i.i.i.i:                            ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.i37.i.i.i.i, %.noexc17
  %i.ef = load i64, ptr %13, align 8, !tbaa !147
  %i.eg = trunc i64 %i.ef to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i: ; preds = %bb.ac, %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i
  %i.eh = phi ptr [ %i.cr, %bb.ac ], [ %i.ee, %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i ]
  %.0.i26.i.i.i.i = phi i16 [ %i.eg, %bb.ac ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ei = phi ptr [ %i.eh, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i ], [ %i.cr, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sink.i.i.i = phi i16 [ %.0.i26.i.i.i.i, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !158
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.p ; 2 uses
  %i.ek = add nuw nsw i64 %.050.i.i.i.i, 1        ; 2 uses
  %i.el = add nsw i64 %.349.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ek, %i.ck
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit63.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2825

.loopexit.loopexit63.i.i.i.i:                     ; preds = %bb.ad
  %i.em = add i64 %.02461.i.i.i.i, %i.ck
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit63.i.i.i.i, %.lr.ph53.i.i.i.i, %.preheader43.i.i.i.i, %.preheader45.i.i.i.i, %.preheader.i.i.i.i
  %i.en = phi ptr [ %i.af, %.preheader45.i.i.i.i ], [ %i.af, %.preheader.i.i.i.i ], [ %i.af, %.lr.ph53.i.i.i.i ], [ %i.af, %.preheader43.i.i.i.i ], [ %i.ei, %.loopexit.loopexit63.i.i.i.i ], [ %i.cf, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1 = phi ptr [ %.0, %.preheader45.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep68.i.i.i.i, %.lr.ph53.i.i.i.i ], [ %.0, %.preheader43.i.i.i.i ], [ %i.ej, %.loopexit.loopexit63.i.i.i.i ], [ %i.cg, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader45.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph53.i.i.i.i ], [ %.0.i.i.i, %.preheader43.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit63.i.i.i.i ], [ %i.ch, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02461.i.i.i.i, %.preheader45.i.i.i.i ], [ %.02461.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cq, %.lr.ph53.i.i.i.i ], [ %.02461.i.i.i.i, %.preheader43.i.i.i.i ], [ %i.em, %.loopexit.loopexit63.i.i.i.i ], [ %i.ak, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.eo = icmp slt i64 %.4.i.i.i.i, %i.v
  br i1 %i.eo, label %bb.b, label %.loopexit28, !llvm.loop !2826

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph59.i.i.i.i, %bb.c, %bb.d, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %lpad.loopexit32 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.b
  %lpad.loopexit34 = landingpad { ptr, i32 }
end_hunk_15
begin_hunk_16_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal256TypeENS1_31UnsafeDownscaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  br i1 %i.ao, label %.critedge.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.ap = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.c
  br i1 %i.ap, label %.critedge6.i.i.i.i.i, label %bb.d, !prof !104

bb.d:                                             ; preds = %.noexc12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !2848
  store i64 65535, ptr %11, align 8, !tbaa !147, !alias.scope !2848
  %i.aq = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.aq, label %bb.e, label %bb.p

.critedge6.i.i.i.i.i:                             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.e

bb.e:                                             ; preds = %.critedge6.i.i.i.i.i, %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !2849
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !2850
  invoke void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !169, !noalias !2850, !nonnull !42, !align !170
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 1 dereferenceable(28) @.str.34, i64 noundef 27)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i unwind label %bb.f, !noalias !2850 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i: ; preds = %.noexc14
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i unwind label %bb.f, !noalias !2849

bb.f:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i, %.noexc14
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2849
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2850
  br label %.body

_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA28_KcEEvRSoOT_.exit.i.i.i.i.i.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23, !noalias !2849
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2850
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.au = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2849 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ad
  br i1 %i.av, label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.aw = load i64, ptr %i.ad, align 8, !tbaa !93, !noalias !2849
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #26
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i

bb.h:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit.i.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %6, align 8, !tbaa !144, !noalias !2849 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ad
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %bb.h
  %i.bb = load i64, ptr %i.ad, align 8, !tbaa !93, !noalias !2849
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2849
  br label %.body

_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2849
  %i.bd = icmp eq ptr %i.al, null
  br i1 %i.bd, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bg, align 8, !tbaa !102
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !103
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #23, !inline_history !2841
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !50
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #23, !inline_history !2841
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.m ], [ %i.bt, %bb.n ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, !prof !104

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !144 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !93
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, %_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_.exit.i.i.i.i
  %i.cb = load ptr, ptr %12, align 8, !tbaa !61   ; 2 uses
  store ptr %i.cb, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i.i, %.noexc13
  %i.cc = load i64, ptr %15, align 8, !tbaa !147
  %i.cd = trunc i64 %i.cc to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i: ; preds = %bb.p, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.ce = phi ptr [ %i.al, %bb.p ], [ %i.cb, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i16 [ %i.cd, %bb.p ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.cf = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i, ptr %.3, align 2, !tbaa !158
  %i.cg = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.p ; 2 uses
  %i.ch = add nuw nsw i64 %.02358.i.i.i.i, 1      ; 2 uses
  %exitcond69.not.i.i.i.i = icmp eq i64 %i.ch, %i.ai
  br i1 %exitcond69.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph59.i.i.i.i, !llvm.loop !2842

bb.q:                                             ; preds = %.noexc10
  %i.ci = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ci, label %.preheader43.i.i.i.i, label %.preheader45.i.i.i.i

.preheader45.i.i.i.i:                             ; preds = %bb.q
  %i.cj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ck = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ck, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.preheader43.i.i.i.i:                             ; preds = %bb.q
  %i.cl = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.cl, label %.lr.ph53.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph53.i.i.i.i:                                 ; preds = %.preheader43.i.i.i.i
  %i.cm = zext nneg i32 %i.ag to i64              ; 3 uses
  %i.cn = shl nuw nsw i64 %i.cm, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.cn, i1 false), !tbaa !158
  %i.co = mul nsw i64 %i.cm, %i.p
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.co
  %scevgep68.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.cn
  %i.cp = add i64 %.02461.i.i.i.i, %i.cm
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader45.i.i.i.i, %bb.ad
  %i.cq = phi ptr [ %i.eg, %bb.ad ], [ %i.af, %.preheader45.i.i.i.i ] ; 8 uses
  %.2 = phi ptr [ %i.eh, %bb.ad ], [ %.0, %.preheader45.i.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %.3.i.i.i, %bb.ad ], [ %.0.i.i.i, %.preheader45.i.i.i.i ] ; 2 uses
  %.050.i.i.i.i = phi i64 [ %i.ei, %bb.ad ], [ 0, %.preheader45.i.i.i.i ]
  %.349.i.i.i.i = phi i64 [ %i.ej, %bb.ad ], [ %.02461.i.i.i.i, %.preheader45.i.i.i.i ] ; 2 uses
  %i.cr = add nsw i64 %.349.i.i.i.i, %i.o         ; 2 uses
  %i.cs = lshr i64 %i.cr, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !93
  %i.cv = trunc i64 %i.cr to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = lshr i8 %i.cu, %i.cw
  %i.cy = trunc i8 %i.cx to i1
  br i1 %i.cy, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull readonly align 1 dereferenceable(32) %.2.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.cz = load i32, ptr %1, align 4, !tbaa !227
  invoke void @_ZNK5arrow15BasicDecimal25613ReduceScaleByEib(ptr dead_on_unwind nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.cz, i1 noundef zeroext false)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc15:                                         ; preds = %bb.r
  %i.da = load i8, ptr %i.ae, align 4, !tbaa !228, !range !41, !noundef !42
  %i.db = trunc nuw i8 %i.da to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.db, label %.critedge.i37.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.dc = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc16:                                         ; preds = %bb.s
  br i1 %i.dc, label %.critedge6.i36.i.i.i.i, label %bb.t, !prof !104

bb.t:                                             ; preds = %.noexc16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false), !alias.scope !2851
  store i64 65535, ptr %8, align 8, !tbaa !147, !alias.scope !2851
  %i.dd = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.dd, label %bb.u, label %bb.ac

.critedge6.i36.i.i.i.i:                           ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

bb.u:                                             ; preds = %.critedge6.i36.i.i.i.i, %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.34)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %bb.u
  %i.de = icmp eq ptr %i.cq, null
  br i1 %i.de, label %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc18
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i27.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i.i27.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 4 uses
  %i.di = load atomic i64, ptr %i.dh acquire, align 8 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 4294967297
  %i.dk = trunc i64 %i.di to i32                  ; 2 uses
  br i1 %i.dj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.dh, align 8, !tbaa !102
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i32 0, ptr %i.dl, align 4, !tbaa !103
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !50
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #23, !inline_history !2841
  %i.dp = load ptr, ptr %i.dg, align 8, !tbaa !50
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #23, !inline_history !2841
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i28.i.i.i.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i.i.i.i28.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = add nsw i32 %i.dk, -1
  store i32 %i.dt, ptr %i.dh, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.du = atomicrmw volatile add ptr %i.dh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i30.i.i.i.i = phi i32 [ %i.dk, %bb.z ], [ %i.du, %bb.aa ]
  %i.dv = icmp eq i32 %.0.i.i.i.i.i.i.i.i30.i.i.i.i, 1
  br i1 %i.dv, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i, !prof !104

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i29.i.i.i.i, %bb.x, %bb.v
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !144 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !93
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i:  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i31.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i:            ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i33.i.i.i.i, %.noexc18
  %i.ec = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  store ptr %i.ec, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i

.critedge.i37.i.i.i.i:                            ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.i37.i.i.i.i, %.noexc17
  %i.ed = load i64, ptr %13, align 8, !tbaa !147
  %i.ee = trunc i64 %i.ed to i16
  br label %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i

_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i: ; preds = %bb.ac, %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i
  %i.ef = phi ptr [ %i.cq, %bb.ac ], [ %i.ec, %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i ]
  %.0.i26.i.i.i.i = phi i16 [ %i.ee, %bb.ac ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i34.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i, %.lr.ph.i.i.i.i
  %i.eg = phi ptr [ %i.ef, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i ], [ %i.cq, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sink.i.i.i = phi i16 [ %.0.i26.i.i.i.i, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit38.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %.sink.i.i.i, ptr %.2, align 2, !tbaa !158
  %.3.i.i.i = getelementptr inbounds i8, ptr %.2.i.i.i, i64 %i.p ; 2 uses
  %i.ei = add nuw nsw i64 %.050.i.i.i.i, 1        ; 2 uses
  %i.ej = add nsw i64 %.349.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ei, %i.cj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit63.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2845

.loopexit.loopexit63.i.i.i.i:                     ; preds = %bb.ad
  %i.ek = add i64 %.02461.i.i.i.i, %i.cj
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i, %.loopexit.loopexit63.i.i.i.i, %.lr.ph53.i.i.i.i, %.preheader43.i.i.i.i, %.preheader45.i.i.i.i, %.preheader.i.i.i.i
  %i.el = phi ptr [ %i.af, %.preheader45.i.i.i.i ], [ %i.af, %.preheader.i.i.i.i ], [ %i.af, %.lr.ph53.i.i.i.i ], [ %i.af, %.preheader43.i.i.i.i ], [ %i.eg, %.loopexit.loopexit63.i.i.i.i ], [ %i.ce, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1 = phi ptr [ %.0, %.preheader45.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep68.i.i.i.i, %.lr.ph53.i.i.i.i ], [ %.0, %.preheader43.i.i.i.i ], [ %i.eh, %.loopexit.loopexit63.i.i.i.i ], [ %i.cf, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.preheader45.i.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph53.i.i.i.i ], [ %.0.i.i.i, %.preheader43.i.i.i.i ], [ %.3.i.i.i, %.loopexit.loopexit63.i.i.i.i ], [ %i.cg, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ]
  %.4.i.i.i.i = phi i64 [ %.02461.i.i.i.i, %.preheader45.i.i.i.i ], [ %.02461.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cp, %.lr.ph53.i.i.i.i ], [ %.02461.i.i.i.i, %.preheader43.i.i.i.i ], [ %i.ek, %.loopexit.loopexit63.i.i.i.i ], [ %i.ak, %_ZNK5arrow7compute8internal21DecimalToIntegerMixin9ToIntegerItNS_15BasicDecimal256EEET_PNS0_13KernelContextERKT0_PNS_6StatusE.exit.i.i.i.i ] ; 2 uses
  %i.em = icmp slt i64 %.4.i.i.i.i, %i.v
  br i1 %i.em, label %bb.b, label %.loopexit28, !llvm.loop !2846

.loopexit28:                                      ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph59.i.i.i.i, %bb.c, %bb.d, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %lpad.loopexit32 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.b
  %lpad.loopexit34 = landingpad { ptr, i32 }
          cleanup
end_hunk_16
begin_hunk_17_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt16TypeENS_14Decimal256TypeENS1_27SafeRescaleDecimalToIntegerEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2881
  br label %.body.i.i.i.i

.noexc39.i.i.i.i:                                 ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !2881
  %i.bl = load ptr, ptr %0, align 8, !tbaa !61    ; 5 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.noexc39.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bp, align 8, !tbaa !102
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !103
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #23, !inline_history !2865
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #23, !inline_history !2865
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bs, %bb.v ], [ %i.cc, %bb.w ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cd, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, !prof !104

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.t, %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !144 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !93
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i.i, %.noexc39.i.i.i.i
  %i.ck = load ptr, ptr %12, align 8, !tbaa !61
  store ptr %i.ck, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.y

bb.y:                                             ; preds = %.critedge.i.i.i.i.i, %.noexc38.i.i.i.i
  %i.cl = load i64, ptr %i.ac, align 8, !tbaa !147
  %i.cm = trunc i64 %i.cl to i16
  br label %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i

_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i:          ; preds = %bb.y, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.cm, %bb.y ], [ 0, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ]
  %i.cn = load ptr, ptr %21, align 8, !tbaa !61   ; 5 uses
  %.not.i.i7.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i7.i.i.i.i.i, label %_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_10Decimal256EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, label %bb.z, !prof !131

bb.z:                                             ; preds = %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
  %i.cr = load atomic i64, ptr %i.cq acquire, align 8 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 4294967297
  %i.ct = trunc i64 %i.cr to i32                  ; 2 uses
  br i1 %i.cs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cq, align 8, !tbaa !102
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 0, ptr %i.cu, align 4, !tbaa !103
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #23, !inline_history !2866
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !50
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #23, !inline_history !2866
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dc = add nsw i32 %i.ct, -1
  store i32 %i.dc, ptr %i.cq, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dd = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ct, %bb.ad ], [ %i.dd, %bb.ae ]
  %i.de = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.de, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !104

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.ab, %bb.z
  %i.df = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !144 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !93
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #26
  br label %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i

_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i:     ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef 56) #26
  br label %_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_10Decimal256EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

_ZNK5arrow7compute8internal27SafeRescaleDecimalToInteger4CallItNS_10Decimal256EEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %_ZN5arrow6Status11DeleteStateEv.exit.i.i.i.i, %_ZN5arrow6StatusaSERKS0_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.dl = getelementptr inbounds nuw i8, ptr %.4, i64 2 ; 2 uses
  store i16 %.0.i.i.i.i.i, ptr %.4, align 2, !tbaa !158
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.070.i.i.i.i)
  %i.dm = getelementptr inbounds i8, ptr %.4.i.i.i, i64 %i.q ; 2 uses
  %i.dn = add nuw nsw i64 %.02389.i.i.i.i, 1      ; 2 uses
  %exitcond100.not.i.i.i.i = icmp eq i64 %i.dn, %i.aj
  br i1 %exitcond100.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph90.i.i.i.i, !llvm.loop !2867

bb.ag:                                            ; preds = %.noexc10
  %i.do = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.do, label %.preheader72.i.i.i.i, label %.preheader74.i.i.i.i

.preheader74.i.i.i.i:                             ; preds = %bb.ag
  %i.dp = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.dq = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.dq, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader74.i.i.i.i
  %i.dr = add i64 %.02492.i.i.i.i, %i.dp
  br label %.lr.ph.i.i.i.i

.preheader72.i.i.i.i:                             ; preds = %bb.ag
  %i.ds = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ds, label %.lr.ph84.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.preheader72.i.i.i.i
  %i.dt = zext nneg i32 %i.ah to i64              ; 3 uses
  %i.du = shl nuw nsw i64 %i.dt, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %.0, i8 0, i64 range(i64 0, 65535) %i.du, i1 false), !tbaa !158
  %i.dv = mul nsw i64 %i.dt, %i.q
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i, i64 %i.dv
  %scevgep99.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.du
  %i.dw = add i64 %.02492.i.i.i.i, %i.dt
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bi, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %.3, %bb.bi ] ; 3 uses
  %.2.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %.3.i.i.i, %bb.bi ] ; 2 uses
  %.081.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %i.gs, %bb.bi ]
  %.380.i.i.i.i = phi i64 [ %.02492.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.gt, %bb.bi ] ; 2 uses
  %i.dx = add nsw i64 %.380.i.i.i.i, %i.p         ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !93
  %i.eb = trunc i64 %i.dx to i8
  %i.ec = and i8 %i.eb, 7
  %i.ed = lshr i8 %i.ea, %i.ec
  %i.ee = trunc i8 %i.ed to i1
  br i1 %i.ee, label %bb.ah, label %bb.bh

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.071.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.071.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(32) %.2.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.071.i.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ef = load i32, ptr %1, align 4, !tbaa !227
  call void @llvm.experimental.noalias.scope.decl(metadata !2883)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !2883
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false), !noalias !2883
  %i.eg = invoke noundef i32 @_ZNK5arrow15BasicDecimal2567RescaleEiiPS0_(ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef %i.ef, i32 noundef 0, ptr noundef nonnull %13)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23, !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23, !noalias !2883
  invoke void @_ZNK5arrow10Decimal25613ToArrowStatusENS_13DecimalStatusE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef %i.eg)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %.noexc13
  call void @llvm.experimental.noalias.scope.decl(metadata !2884)
  %i.eh = load ptr, ptr %15, align 8, !tbaa !61, !noalias !2885 ; 2 uses
  store ptr %i.eh, ptr %14, align 8, !tbaa !61, !alias.scope !2884, !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !2883
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_ZNK5arrow10Decimal2567RescaleEii.exit.thread.i35.i.i.i.i, label %bb.ai, !prof !131

bb.ai:                                            ; preds = %.noexc14
  call void @_ZN5arrow6ResultINS_10Decimal256EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(8) %14) #23
  %i.ej = load ptr, ptr %14, align 8, !tbaa !61, !noalias !2883
  %.not.i4.i.i26.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i4.i.i26.i.i.i.i, label %_ZNK5arrow10Decimal2567RescaleEii.exit.i27.i.i.i.i, label %bb.aj, !prof !131

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
  br label %_ZNK5arrow10Decimal2567RescaleEii.exit.i27.i.i.i.i

_ZNK5arrow10Decimal2567RescaleEii.exit.thread.i35.i.i.i.i: ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !2883
  store ptr null, ptr %16, align 8, !tbaa !61, !alias.scope !2883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !2883
  br label %bb.ao

_ZNK5arrow10Decimal2567RescaleEii.exit.i27.i.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !2883
  %.pr.i28.i.i.i.i = load ptr, ptr %16, align 8, !tbaa !61 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !2883
  %i.ek = icmp eq ptr %.pr.i28.i.i.i.i, null
  br i1 %i.ek, label %bb.ao, label %bb.ak, !prof !185

bb.ak:                                            ; preds = %_ZNK5arrow10Decimal2567RescaleEii.exit.i27.i.i.i.i
  %i.el = load ptr, ptr %0, align 8, !tbaa !61
  %.not.i.i29.i.i.i.i = icmp eq ptr %i.el, %.pr.i28.i.i.i.i
  br i1 %.not.i.i29.i.i.i.i, label %_ZN5arrow6StatusaSERKS0_.exit.i32.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %_ZN5arrow6StatusaSERKS0_.exit.i32.i.i.i.i unwind label %bb.am

bb.am:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.al
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = load ptr, ptr %16, align 8, !tbaa !61
  %.not.i.i.i30.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i30.i.i.i.i, label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit.i31.i.i.i.i, label %bb.an, !prof !131

bb.an:                                            ; preds = %bb.am
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %16)
  br label %_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit.i31.i.i.i.i

_ZN5arrow6ResultINS_10Decimal256EED2Ev.exit.i31.i.i.i.i: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.body

bb.ao:                                            ; preds = %_ZNK5arrow10Decimal2567RescaleEii.exit.i27.i.i.i.i, %_ZNK5arrow10Decimal2567RescaleEii.exit.thread.i35.i.i.i.i
  %i.eo = load i8, ptr %i.ag, align 4, !tbaa !228, !range !41, !noundef !42
  %i.ep = trunc nuw i8 %i.eo to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.ep, label %.critedge.i60.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.eq = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc61.i.i.i.i unwind label %bb.am

.noexc61.i.i.i.i:                                 ; preds = %bb.ap
  br i1 %i.eq, label %.critedge6.i59.i.i.i.i, label %bb.aq, !prof !104

bb.aq:                                            ; preds = %.noexc61.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !2886
  store i64 65535, ptr %8, align 8, !tbaa !147, !alias.scope !2886
  %i.er = invoke noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %.noexc62.i.i.i.i unwind label %bb.am

.noexc62.i.i.i.i:                                 ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.er, label %bb.ar, label %bb.az

.critedge6.i59.i.i.i.i:                           ; preds = %.noexc61.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge6.i59.i.i.i.i, %.noexc62.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(28) @.str.34)
          to label %.noexc63.i.i.i.i unwind label %bb.am

.noexc63.i.i.i.i:                                 ; preds = %bb.ar
  %i.es = load ptr, ptr %0, align 8, !tbaa !61    ; 5 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %_ZN5arrow6StatusD2Ev.exit.i57.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.noexc63.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i50.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i.i.i50.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i54.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 4 uses
  %i.ex = load atomic i64, ptr %i.ew acquire, align 8 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 4294967297
  %i.ez = trunc i64 %i.ex to i32                  ; 2 uses
  br i1 %i.ey, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.ew, align 8, !tbaa !102
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 0, ptr %i.fa, align 4, !tbaa !103
  %i.fb = load ptr, ptr %i.ev, align 8, !tbaa !50
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #23, !inline_history !2865
  %i.fe = load ptr, ptr %i.ev, align 8, !tbaa !50
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #23, !inline_history !2865
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i54.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.fh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i51.i.i.i.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i.i.i.i.i.i51.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fi = add nsw i32 %i.ez, -1
  store i32 %i.fi, ptr %i.ew, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i52.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.fj = atomicrmw volatile add ptr %i.ew, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i52.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i52.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i.i.i.i53.i.i.i.i = phi i32 [ %i.ez, %bb.aw ], [ %i.fj, %bb.ax ]
  %i.fk = icmp eq i32 %.0.i.i.i.i.i.i.i.i53.i.i.i.i, 1
  br i1 %i.fk, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i54.i.i.i.i, !prof !104

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i52.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i54.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i54.i.i.i.i: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i52.i.i.i.i, %bb.au, %bb.as
  %i.fl = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !144 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.es, i64 24 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i56.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i55.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i55.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i54.i.i.i.i
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !93
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i56.i.i.i.i

end_hunk_17
