inline.NumInlined: 8266
inline.NumDeleted: 2332
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int64TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_9Int64TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.g:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph42.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.e
  %lpad.loopexit19 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph45.i.i.i.i
  %lpad.loopexit23 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit23, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bp = load ptr, ptr %0, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !205

bb.h:                                             ; preds = %.loopexit.split-lp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5arrow7compute8internal11ParseStringINS_9Int64TypeEE4CallIlSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::internal::StringConverter.562", align 1 ; 3 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  store i64 %2, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !293
  %i.c = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, !prof !444

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow9Int64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !33
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  br label %_ZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit

_ZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.g = call noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int64TypeEE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr noundef %3, i64 noundef %2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.g, label %bb.j, label %bb.d, !prof !205

bb.d:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %9)
  %i.h = load ptr, ptr %9, align 8, !tbaa !199    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #23 ; 0 uses
  %i.m = load ptr, ptr %7, align 8, !tbaa !46
  %.not.i4 = icmp eq ptr %i.m, null
  br i1 %.not.i4, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g, !prof !205

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.f, %bb.g
  %i.n = load ptr, ptr %8, align 8, !tbaa !227    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !119
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
  %i.u = load ptr, ptr %8, align 8, !tbaa !227    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !119
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

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  %i.z = load i64, ptr %i.a, align 8, !tbaa !293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int64TypeEE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !293
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %bb.b, !prof !136

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %3, 2
  %i.d = load i8, ptr %2, align 1, !tbaa !119     ; 2 uses
  %i.e = icmp eq i8 %i.d, 48
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !119
  switch i8 %i.g, label %.thread [
    i8 120, label %bb.d
    i8 88, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = add i64 %3, -3                           ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  br i1 %i.j, label %.lr.ph.i, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !205

.lr.ph.i:                                         ; preds = %bb.d, %bb.i
  %.03049.i = phi i64 [ %i.q, %bb.i ], [ 0, %bb.d ] ; 3 uses
  %.03148.i = phi i64 [ %.1.i, %bb.i ], [ 0, %bb.d ]
  %i.k = shl i64 %.03148.i, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.03049.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !119   ; 5 uses
  %i.n = add i8 %i.m, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.n, 10
  br i1 %or.cond.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = add i8 %i.m, -65
  %or.cond42.i = icmp ult i8 %i.o, 6
  br i1 %or.cond42.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %narrow40.i = add nuw nsw i8 %i.m, 9
  %5 = and i8 %narrow40.i, 31
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.p = add i8 %i.m, -97
  %or.cond43.i = icmp ult i8 %i.p, 6
  br i1 %or.cond43.i, label %bb.h, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !1756

bb.h:                                             ; preds = %bb.g
  %narrow.i = add nuw nsw i8 %i.m, 9
  %6 = and i8 %narrow.i, 31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %.lr.ph.i
  %.pn.in.i = phi i8 [ %6, %bb.h ], [ %5, %bb.f ], [ %i.n, %.lr.ph.i ]
  %.pn.i = zext nneg i8 %.pn.in.i to i64
  %.1.i = or i64 %i.k, %.pn.i                     ; 2 uses
  %i.q = add nuw nsw i64 %.03049.i, 1
  %exitcond.not.i = icmp eq i64 %.03049.i, %i.i
  br i1 %exitcond.not.i, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, label %.lr.ph.i, !llvm.loop !2359

thread-pre-split:                                 ; preds = %bb.b
  %i.r = icmp eq i8 %i.d, 45
  br i1 %i.r, label %bb.j, label %.thread

bb.j:                                             ; preds = %thread-pre-split
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.t = add i64 %3, -1                           ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %.thread

.thread:                                          ; preds = %bb.c, %bb.j, %thread-pre-split
  %i.v = phi i1 [ true, %bb.j ], [ false, %thread-pre-split ], [ false, %bb.c ]
  %.024 = phi ptr [ %i.s, %bb.j ], [ %2, %thread-pre-split ], [ %2, %bb.c ] ; 2 uses
  %.023 = phi i64 [ %i.t, %bb.j ], [ %3, %thread-pre-split ], [ %3, %bb.c ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.024, i64 %.023
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.l
  %.133 = phi i64 [ %.023, %.thread ], [ %i.y, %bb.l ] ; 2 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.z, %bb.l ] ; 3 uses
  %i.w = load i8, ptr %.12532, align 1, !tbaa !119
  %i.x = icmp eq i8 %i.w, 48
  br i1 %i.x, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.y = add i64 %.133, -1                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.12532, i64 1
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %.critedge, label %bb.k, !llvm.loop !2360

.critedge:                                        ; preds = %bb.l, %bb.k
  %.125.lcssa = phi ptr [ %scevgep, %bb.l ], [ %.12532, %bb.k ]
  %.1.lcssa = phi i64 [ 0, %bb.l ], [ %.133, %bb.k ]
  %i.aa = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.aa, label %bb.m, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !205

bb.m:                                             ; preds = %.critedge
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !293 ; 4 uses
  br i1 %i.v, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ac = icmp ugt i64 %i.ab, -9223372036854775808
  br i1 %i.ac, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %bb.o, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.ad = sub i64 0, %i.ab
  br label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split

bb.p:                                             ; preds = %bb.m
  %i.ae = icmp slt i64 %i.ab, 0
  br i1 %i.ae, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, !prof !136

_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split: ; preds = %bb.i, %bb.o, %bb.p
  %storemerge.sink = phi i64 [ %i.ab, %bb.p ], [ %i.ad, %bb.o ], [ %.1.i, %bb.i ]
  store i64 %storemerge.sink, ptr %4, align 8, !tbaa !293
  br label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread

_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread: ; preds = %bb.g, %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, %bb.d, %bb.p, %bb.n, %.critedge, %bb.j, %bb.a
  %.022 = phi i1 [ false, %bb.j ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.p ], [ false, %.critedge ], [ true, %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split ], [ false, %bb.n ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.022
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !119
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext nneg i8 %i.c to i64                 ; 2 uses
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not247 = icmp eq i64 %1, 1
  br i1 %.not247, label %bb.aq, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !119
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %i.i = mul nuw nsw i64 %i.e, 10
  %i.j = icmp ult i8 %i.h, 10
  %i.k = zext nneg i8 %i.h to i64
  %i.l = add nuw nsw i64 %i.i, %i.k               ; 2 uses
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.not248 = icmp eq i64 %1, 2
  br i1 %.not248, label %bb.aq, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !119
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = mul nuw nsw i64 %i.l, 10
  %i.q = icmp ult i8 %i.o, 10
  %i.r = zext nneg i8 %i.o to i64
  %i.s = add nuw nsw i64 %i.p, %i.r               ; 2 uses
  br i1 %i.q, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %.not249 = icmp eq i64 %1, 3
  br i1 %.not249, label %bb.aq, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !119
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i64 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext nneg i8 %i.v to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 2 uses
  br i1 %i.x, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not250 = icmp eq i64 %1, 4
  br i1 %.not250, label %bb.aq, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !119
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i64 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext nneg i8 %i.ac to i64
  %i.ag = add nuw nsw i64 %i.ad, %i.af            ; 2 uses
  br i1 %i.ae, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %.not251 = icmp eq i64 %1, 5
  br i1 %.not251, label %bb.aq, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !119
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = mul nuw nsw i64 %i.ag, 10
  %i.al = icmp ult i8 %i.aj, 10
  %i.am = zext nneg i8 %i.aj to i64
  %i.an = add nuw nsw i64 %i.ak, %i.am            ; 2 uses
  br i1 %i.al, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %.not252 = icmp eq i64 %1, 6
  br i1 %.not252, label %bb.aq, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !119
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = mul nuw nsw i64 %i.an, 10
  %i.as = icmp ult i8 %i.aq, 10
  %i.at = zext nneg i8 %i.aq to i64
  %i.au = add nuw nsw i64 %i.ar, %i.at            ; 2 uses
  br i1 %i.as, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %.not253 = icmp eq i64 %1, 7
  br i1 %.not253, label %bb.aq, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !119
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = mul nuw nsw i64 %i.au, 10
  %i.az = icmp ult i8 %i.ax, 10
  %i.ba = zext nneg i8 %i.ax to i64
  %i.bb = add nuw nsw i64 %i.ay, %i.ba            ; 2 uses
  br i1 %i.az, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %.not254 = icmp eq i64 %1, 8
  br i1 %.not254, label %bb.aq, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !119
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %i.bf = mul nuw nsw i64 %i.bb, 10
  %i.bg = icmp ult i8 %i.be, 10
  %i.bh = zext nneg i8 %i.be to i64
  %i.bi = add nuw nsw i64 %i.bf, %i.bh            ; 2 uses
  br i1 %i.bg, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %.not255 = icmp eq i64 %1, 9
  br i1 %.not255, label %bb.aq, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !119
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal11CastFunctorINS_10UInt64TypeENS_11BooleanTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  store ptr null, ptr %0, align 8, !tbaa !46, !alias.scope !3112
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_10UInt64TypeENS_10BinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.781", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !3119
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27, !noalias !3122
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !3119
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_10UInt64TypeENS_15LargeBinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.791", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !3125
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27, !noalias !3128
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !3125
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %15 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !46, !alias.scope !3131
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.e = load i8, ptr %i.d, align 8, !tbaa !30
  switch i8 %i.e, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %bb.b
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !81

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.12.sink = phi ptr [ @.str.11, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.12, %bb.a ]
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.str.12.sink, ptr %i.g, align 8, !tbaa !35
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.cc

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !426
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !427
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 0, ptr %i.c, align 1, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !430  ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.cb, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !426  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !427
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !427  ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %storemerge.i.i.i = select i1 %i.x, ptr %i.c, ptr %i.w ; 2 uses
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !427  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.y, i64 noundef %i.q, i64 noundef %i.n)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.c
  %i.z = icmp sgt i64 %i.n, 0
  br i1 %i.z, label %.lr.ph119.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph119.i.i.i.i:                                ; preds = %.noexc8
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph119.i.i.i.i
  %.0 = phi ptr [ %i.l, %.lr.ph119.i.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.024118.i.i.i.i = phi i64 [ 0, %.lr.ph119.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.ai = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc9:                                          ; preds = %bb.d
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.ai to i16 ; 3 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.ai, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.aj = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.aj, label %.preheader.i.i.i.i, label %bb.ao

.preheader.i.i.i.i:                               ; preds = %.noexc9
  %i.al = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  br i1 %i.ak, label %.lr.ph116.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph116.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i
  %.3 = phi ptr [ %i.eq, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.023115.i.i.i.i = phi i64 [ %i.er, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %.1114.i.i.i.i = phi i64 [ %i.es, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ %.024118.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.1114.i.i.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !120 ; 3 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ao ; 6 uses
  %i.aq = getelementptr i8, ptr %i.am, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !120 ; 2 uses
  %i.as = sub nsw i32 %i.ar, %i.an                ; 2 uses
  %i.at = sext i32 %i.as to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %i.at, ptr %11, align 8
  store ptr %i.ap, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !293
  %i.au = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.e, label %bb.g, !prof !444

bb.e:                                             ; preds = %.lr.ph116.i.i.i.i
  %i.aw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  %.not.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !33
  %i.ax = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #23 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph116.i.i.i.i
  %i.ay = icmp eq i32 %i.ar, %i.an
  br i1 %i.ay, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, label %bb.h, !prof !136

bb.h:                                             ; preds = %bb.g
  %i.az = icmp ugt i32 %i.as, 2
  br i1 %i.az, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ba = load i8, ptr %i.ap, align 1, !tbaa !119
  %i.bb = icmp eq i8 %i.ba, 48
  br i1 %i.bb, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !119
  switch i8 %i.bd, label %bb.q [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.bf = add nsw i64 %i.at, -3                   ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 16
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !205

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %bb.p
  %.03049.i.i.i.i.i.i.i = phi i64 [ %i.bn, %bb.p ], [ 0, %bb.k ] ; 3 uses
  %.03148.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i, %bb.p ], [ 0, %bb.k ]
  %i.bh = shl i64 %.03148.i.i.i.i.i.i.i, 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %.03049.i.i.i.i.i.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !119 ; 5 uses
  %i.bk = add i8 %i.bj, -48                       ; 2 uses
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.bk, 10
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bl = add i8 %i.bj, -65
  %or.cond42.i.i.i.i.i.i.i = icmp ult i8 %i.bl, 6
  br i1 %or.cond42.i.i.i.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %narrow40.i.i.i.i.i.i.i = add nuw nsw i8 %i.bj, 9
  %16 = and i8 %narrow40.i.i.i.i.i.i.i, 31
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bm = add i8 %i.bj, -97
  %or.cond43.i.i.i.i.i.i.i = icmp ult i8 %i.bm, 6
  br i1 %or.cond43.i.i.i.i.i.i.i, label %bb.o, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !1756

bb.o:                                             ; preds = %bb.n
  %narrow.i.i.i.i.i.i.i = add nuw nsw i8 %i.bj, 9
  %17 = and i8 %narrow.i.i.i.i.i.i.i, 31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %.lr.ph.i.i.i.i.i.i.i
  %.pn.in.i.i.i.i.i.i.i = phi i8 [ %17, %bb.o ], [ %16, %bb.m ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i ]
  %.pn.i.i.i.i.i.i.i = zext nneg i8 %.pn.in.i.i.i.i.i.i.i to i64
  %.1.i.i.i.i.i.i.i = or i64 %i.bh, %.pn.i.i.i.i.i.i.i ; 2 uses
  %i.bn = add nuw nsw i64 %.03049.i.i.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %.03049.i.i.i.i.i.i.i, %i.bf
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread93.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2359

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread93.i.i.i.i: ; preds = %bb.p
  store i64 %.1.i.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !293
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

bb.q:                                             ; preds = %bb.j, %bb.i, %bb.h
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ap, i64 %i.at
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.01722.i.i.i.i.i.i = phi i64 [ %i.at, %bb.q ], [ %i.bq, %bb.s ] ; 2 uses
  %.01821.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.q ], [ %i.br, %bb.s ] ; 3 uses
  %i.bo = load i8, ptr %.01821.i.i.i.i.i.i, align 1, !tbaa !119
  %i.bp = icmp eq i8 %i.bo, 48
  br i1 %i.bp, label %bb.s, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bq = add i64 %.01722.i.i.i.i.i.i, -1         ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i, i64 1
  %.not.i.i38.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i38.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, label %bb.r, !llvm.loop !3134

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.018.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %bb.s ], [ %.01821.i.i.i.i.i.i, %bb.r ]
  %.017.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.s ], [ %.01722.i.i.i.i.i.i, %bb.r ]
  %i.bs = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i.i.i.i.i, i64 noundef %.017.lcssa.i.i.i.i.i.i, ptr noundef nonnull %i.b)
  br i1 %i.bs, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !3135

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i: ; preds = %bb.n, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, %bb.k, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !3136)
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc10 unwind label %.loopexit ; 2 uses

.noexc10:                                         ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !199, !noalias !3136 ; 3 uses
  store ptr %i.bu, ptr %14, align 8, !tbaa !199, !alias.scope !3136
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !117, !noalias !3136 ; 3 uses
  store ptr %i.bw, ptr %i.af, align 8, !tbaa !117, !alias.scope !3136
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119, !noalias !3136
  %.not.i.i.i.i.i37.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i37.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !120, !noalias !3136
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !120, !noalias !3136
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.cb = atomicrmw volatile add ptr %i.bx, i32 1 acq_rel, align 4, !noalias !3136 ; 0 uses
  %.pre125.i.i.i.i = load ptr, ptr %14, align 8, !tbaa !199
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i

_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i: ; preds = %bb.v, %bb.u, %.noexc10
  %i.cc = phi ptr [ %i.bu, %.noexc10 ], [ %i.bu, %bb.u ], [ %.pre125.i.i.i.i, %bb.v ] ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !33
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %i.cc, i1 noundef zeroext false)
          to label %bb.w unwind label %bb.am

bb.w:                                             ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !3139
  invoke void @_ZN5arrow4util13StringBuilderIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc.i.i.i.i unwind label %bb.an

.noexc.i.i.i.i:                                   ; preds = %bb.w
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc.i.i.i.i
  %i.cg = load ptr, ptr %6, align 8, !tbaa !227, !noalias !3139 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ag
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.ci = load i64, ptr %i.ag, align 8, !tbaa !119, !noalias !3139
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.noexc.i.i.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %6, align 8, !tbaa !227, !noalias !3139 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ag
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i: ; preds = %bb.y
  %i.cn = load i64, ptr %i.ag, align 8, !tbaa !119, !noalias !3139
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !3139
  br label %.body.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !3139
  %i.cp = load ptr, ptr %0, align 8, !tbaa !46    ; 5 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !117 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ct, align 8, !tbaa !132
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !134
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !33
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #23, !inline_history !3144
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !33
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #23, !inline_history !3144
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cw, %bb.ad ], [ %i.dg, %bb.ae ]
  %i.dh = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.dh, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i, !prof !136

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.ab, %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !227 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !119
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i:      ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.do = load ptr, ptr %12, align 8, !tbaa !46
  store ptr %i.do, ptr %0, align 8, !tbaa !46
  store ptr null, ptr %12, align 8, !tbaa !46
  %i.dp = load ptr, ptr %13, align 8, !tbaa !227  ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.ah
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.dr = load i64, ptr %i.ah, align 8, !tbaa !119
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.dt = load ptr, ptr %i.af, align 8, !tbaa !117 ; 8 uses
  %.not.i.i36.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i36.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  %i.dv = load atomic i64, ptr %i.du acquire, align 8 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 4294967297
  %i.dx = trunc i64 %i.dv to i32                  ; 2 uses
  br i1 %i.dw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.du, align 8, !tbaa !132
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 0, ptr %i.dy, align 4, !tbaa !134
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !33
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #23, !inline_history !3145
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !33
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #23, !inline_history !3145
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ef = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eg = add nsw i32 %i.dx, -1
  store i32 %i.eg, ptr %i.du, align 8, !tbaa !120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.eh = atomicrmw volatile add ptr %i.du, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dx, %bb.aj ], [ %i.eh, %bb.ak ]
  %i.ei = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ei, label %bb.al, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !136

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #23
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

bb.am:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i

bb.an:                                            ; preds = %bb.w
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ek, %bb.an ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i ] ; 2 uses
  %i.el = load ptr, ptr %13, align 8, !tbaa !227  ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ah
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i: ; preds = %.body.i.i.i.i
  %i.en = load i64, ptr %i.ah, align 8, !tbaa !119
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i: ; preds = %.body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i, %bb.am
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ej, %bb.am ], [ %eh.lpad-body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.body

_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread93.i.i.i.i
  %i.ep = load i64, ptr %i.b, align 8, !tbaa !293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.eq = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 2 uses
  store i64 %i.ep, ptr %.3, align 8, !tbaa !293
  %i.er = add nuw nsw i64 %.023115.i.i.i.i, 1     ; 2 uses
  %i.es = add nsw i64 %.1114.i.i.i.i, 1           ; 2 uses
  %exitcond124.not.i.i.i.i = icmp eq i64 %i.er, %i.al
  br i1 %exitcond124.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph116.i.i.i.i, !llvm.loop !3146

bb.ao:                                            ; preds = %.noexc9
  %i.et = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.et, label %.preheader98.i.i.i.i, label %.preheader100.i.i.i.i

.preheader100.i.i.i.i:                            ; preds = %bb.ao
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader100.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.ai, 32767
  %i.eu = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.ev = add i64 %.024118.i.i.i.i, %i.eu         ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader98.i.i.i.i:                             ; preds = %bb.ao
  br i1 %i.ak, label %.lr.ph112.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph112.i.i.i.i:                                ; preds = %.preheader98.i.i.i.i
  %i.ew = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ex = shl nuw nsw i64 %i.ew, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.0, i8 0, i64 %i.ex, i1 false), !tbaa !293
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.ex
  %i.ey = add i64 %.024118.i.i.i.i, %i.ew
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ca, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.jl, %bb.ca ] ; 2 uses
  %.3108.i.i.i.i = phi i64 [ %.024118.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.jm, %bb.ca ] ; 3 uses
  %i.ez = add nsw i64 %.3108.i.i.i.i, %i.q        ; 2 uses
  %i.fa = lshr i64 %i.ez, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !119
  %i.fd = trunc i64 %i.ez to i8
  %i.fe = and i8 %i.fd, 7
  %i.ff = lshr i8 %i.fc, %i.fe
  %i.fg = trunc i8 %i.ff to i1
  br i1 %i.fg, label %bb.ap, label %bb.ca

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.3108.i.i.i.i ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !120 ; 3 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.fj ; 6 uses
  %i.fl = getelementptr i8, ptr %i.fh, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !120 ; 2 uses
  %i.fn = sub nsw i32 %i.fm, %i.fi                ; 2 uses
  %i.fo = sext i32 %i.fn to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %i.fo, ptr %7, align 8
  store ptr %i.fk, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !293
  %i.fp = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %bb.aq, label %bb.as, !prof !444

bb.aq:                                            ; preds = %bb.ap
  %i.fr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  %.not.i86.i.i.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i86.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !33
  %i.fs = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #23 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.ft = icmp eq i32 %i.fm, %i.fi
  br i1 %i.ft, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread.i.i.i.i, label %bb.at, !prof !136

bb.at:                                            ; preds = %bb.as
  %i.fu = icmp ugt i32 %i.fn, 2
  br i1 %i.fu, label %bb.au, label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.fv = load i8, ptr %i.fk, align 1, !tbaa !119
  %i.fw = icmp eq i8 %i.fv, 48
  br i1 %i.fw, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !119
  switch i8 %i.fy, label %bb.bc [
    i8 120, label %bb.aw
    i8 88, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %i.ga = add nsw i64 %i.fo, -3                   ; 2 uses
  %i.gb = icmp ult i64 %i.ga, 16
  br i1 %i.gb, label %.lr.ph.i.i.i73.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread.i.i.i.i, !prof !205

.lr.ph.i.i.i73.i.i.i.i:                           ; preds = %bb.aw, %bb.bb
  %.03049.i.i.i74.i.i.i.i = phi i64 [ %i.gi, %bb.bb ], [ 0, %bb.aw ] ; 3 uses
  %.03148.i.i.i75.i.i.i.i = phi i64 [ %.1.i.i.i82.i.i.i.i, %bb.bb ], [ 0, %bb.aw ]
  %i.gc = shl i64 %.03148.i.i.i75.i.i.i.i, 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.03049.i.i.i74.i.i.i.i
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !119 ; 5 uses
  %i.gf = add i8 %i.ge, -48                       ; 2 uses
  %or.cond.i.i.i76.i.i.i.i = icmp ult i8 %i.gf, 10
  br i1 %or.cond.i.i.i76.i.i.i.i, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i73.i.i.i.i
  %i.gg = add i8 %i.ge, -65
  %or.cond42.i.i.i77.i.i.i.i = icmp ult i8 %i.gg, 6
  br i1 %or.cond42.i.i.i77.i.i.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %narrow40.i.i.i85.i.i.i.i = add nuw nsw i8 %i.ge, 9
  %18 = and i8 %narrow40.i.i.i85.i.i.i.i, 31
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.gh = add i8 %i.ge, -97
  %or.cond43.i.i.i78.i.i.i.i = icmp ult i8 %i.gh, 6
  br i1 %or.cond43.i.i.i78.i.i.i.i, label %bb.ba, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread.i.i.i.i, !prof !1756

bb.ba:                                            ; preds = %bb.az
  %narrow.i.i.i79.i.i.i.i = add nuw nsw i8 %i.ge, 9
  %19 = and i8 %narrow.i.i.i79.i.i.i.i, 31
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay, %.lr.ph.i.i.i73.i.i.i.i
  %.pn.in.i.i.i80.i.i.i.i = phi i8 [ %19, %bb.ba ], [ %18, %bb.ay ], [ %i.gf, %.lr.ph.i.i.i73.i.i.i.i ]
  %.pn.i.i.i81.i.i.i.i = zext nneg i8 %.pn.in.i.i.i80.i.i.i.i to i64
  %.1.i.i.i82.i.i.i.i = or i64 %i.gc, %.pn.i.i.i81.i.i.i.i ; 2 uses
  %i.gi = add nuw nsw i64 %.03049.i.i.i74.i.i.i.i, 1
  %exitcond.not.i.i.i83.i.i.i.i = icmp eq i64 %.03049.i.i.i74.i.i.i.i, %i.ga
  br i1 %exitcond.not.i.i.i83.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread96.i.i.i.i, label %.lr.ph.i.i.i73.i.i.i.i, !llvm.loop !2359

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread96.i.i.i.i: ; preds = %bb.bb
  store i64 %.1.i.i.i82.i.i.i.i, ptr %i.a, align 8, !tbaa !293
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i

bb.bc:                                            ; preds = %bb.av, %bb.au, %bb.at
  %scevgep.i.i65.i.i.i.i = getelementptr i8, ptr %i.fk, i64 %i.fo
  br label %bb.bd

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %.01722.i.i66.i.i.i.i = phi i64 [ %i.fo, %bb.bc ], [ %i.gl, %bb.be ] ; 2 uses
  %.01821.i.i67.i.i.i.i = phi ptr [ %i.fk, %bb.bc ], [ %i.gm, %bb.be ] ; 3 uses
  %i.gj = load i8, ptr %.01821.i.i67.i.i.i.i, align 1, !tbaa !119
  %i.gk = icmp eq i8 %i.gj, 48
  br i1 %i.gk, label %bb.be, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.gl = add i64 %.01722.i.i66.i.i.i.i, -1       ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.01821.i.i67.i.i.i.i, i64 1
  %.not.i.i72.i.i.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not.i.i72.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.i.i.i.i, label %bb.bd, !llvm.loop !3134

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.i.i.i.i: ; preds = %bb.be, %bb.bd
  %.018.lcssa.i.i69.i.i.i.i = phi ptr [ %scevgep.i.i65.i.i.i.i, %bb.be ], [ %.01821.i.i67.i.i.i.i, %bb.bd ]
  %.017.lcssa.i.i70.i.i.i.i = phi i64 [ 0, %bb.be ], [ %.01722.i.i66.i.i.i.i, %bb.bd ]
  %i.gn = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i69.i.i.i.i, i64 noundef %.017.lcssa.i.i70.i.i.i.i, ptr noundef nonnull %i.a)
  br i1 %i.gn, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread.i.i.i.i, !prof !3135

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread.i.i.i.i: ; preds = %bb.az, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.i.i.i.i, %bb.aw, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !3147)
  %i.go = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc11:                                         ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread.i.i.i.i
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !199, !noalias !3147 ; 3 uses
  store ptr %i.gp, ptr %10, align 8, !tbaa !199, !alias.scope !3147
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !117, !noalias !3147 ; 3 uses
  store ptr %i.gr, ptr %i.ab, align 8, !tbaa !117, !alias.scope !3147
  %.not.i.i.i.i62.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i62.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit64.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.noexc11
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 3 uses
  %i.gt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119, !noalias !3147
  %.not.i.i.i.i.i63.i.i.i.i = icmp eq i8 %i.gt, 0
  br i1 %.not.i.i.i.i.i63.i.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gu = load i32, ptr %i.gs, align 4, !tbaa !120, !noalias !3147
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gs, align 4, !tbaa !120, !noalias !3147
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit64.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.gw = atomicrmw volatile add ptr %i.gs, i32 1 acq_rel, align 4, !noalias !3147 ; 0 uses
  %.pre.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !199
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit64.i.i.i.i

_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit64.i.i.i.i: ; preds = %bb.bh, %bb.bg, %.noexc11
  %i.gx = phi ptr [ %i.gp, %.noexc11 ], [ %i.gp, %bb.bg ], [ %.pre.i.i.i.i, %bb.bh ] ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !33
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8
  invoke void %i.ha(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.gx, i1 noundef zeroext false)
          to label %bb.bi unwind label %bb.by

bb.bi:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit64.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !3150
  invoke void @_ZN5arrow4util13StringBuilderIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc58.i.i.i.i unwind label %bb.bz

.noexc58.i.i.i.i:                                 ; preds = %bb.bi
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %.noexc58.i.i.i.i
  %i.hb = load ptr, ptr %5, align 8, !tbaa !227, !noalias !3150 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.ac
  br i1 %i.hc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i57.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i.i.i.i: ; preds = %bb.bj
  %i.hd = load i64, ptr %i.ac, align 8, !tbaa !119, !noalias !3150
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i57.i.i.i.i

bb.bk:                                            ; preds = %.noexc58.i.i.i.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  %i.hg = load ptr, ptr %5, align 8, !tbaa !227, !noalias !3150 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.ac
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i54.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i53.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i53.i.i.i.i: ; preds = %bb.bk
  %i.hi = load i64, ptr %i.ac, align 8, !tbaa !119, !noalias !3150
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i54.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i54.i.i.i.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i53.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !3150
  br label %.body59.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i57.i.i.i.i: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !3150
  %i.hk = load ptr, ptr %0, align 8, !tbaa !46    ; 5 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i57.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !117 ; 8 uses
  %.not.i.i.i.i.i44.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i.i44.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i48.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 4 uses
  %i.hp = load atomic i64, ptr %i.ho acquire, align 8 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 4294967297
  %i.hr = trunc i64 %i.hp to i32                  ; 2 uses
  br i1 %i.hq, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.ho, align 8, !tbaa !132
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store i32 0, ptr %i.hs, align 4, !tbaa !134
  %i.ht = load ptr, ptr %i.hn, align 8, !tbaa !33
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #23, !inline_history !3144
  %i.hw = load ptr, ptr %i.hn, align 8, !tbaa !33
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #23, !inline_history !3144
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i48.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.hz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i.i45.i.i.i.i = icmp eq i8 %i.hz, 0
  br i1 %.not.i.i.i.i.i.i45.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ia = add nsw i32 %i.hr, -1
  store i32 %i.ia, ptr %i.ho, align 8, !tbaa !120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i46.i.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.ib = atomicrmw volatile add ptr %i.ho, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i46.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i46.i.i.i.i: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i.i.i.i47.i.i.i.i = phi i32 [ %i.hr, %bb.bp ], [ %i.ib, %bb.bq ]
  %i.ic = icmp eq i32 %.0.i.i.i.i.i.i.i47.i.i.i.i, 1
  br i1 %i.ic, label %bb.br, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i48.i.i.i.i, !prof !136

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i46.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i48.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i48.i.i.i.i: ; preds = %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i46.i.i.i.i, %bb.bn, %bb.bl
  %i.id = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !227 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hk, i64 24 ; 2 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZN5arrow6Status5StateD2Ev.exit.i.i50.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i48.i.i.i.i
  %i.ih = load i64, ptr %i.if, align 8, !tbaa !119
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ii) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i50.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i50.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i48.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i:            ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i50.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i57.i.i.i.i
  %i.ij = load ptr, ptr %8, align 8, !tbaa !46
  store ptr %i.ij, ptr %0, align 8, !tbaa !46
  store ptr null, ptr %8, align 8, !tbaa !46
  %i.ik = load ptr, ptr %9, align 8, !tbaa !227   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.ad
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i
  %i.im = load i64, ptr %i.ad, align 8, !tbaa !119
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i.i.i.i
  %i.io = load ptr, ptr %i.ab, align 8, !tbaa !117 ; 8 uses
  %.not.i.i39.i.i.i.i = icmp eq ptr %i.io, null
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.d
  %lpad.loopexit19 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i26.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i, %bb.cc
  %.pn = phi { ptr, i32 } [ %i.jo, %bb.cc ], [ %.pn.i27.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i26.i.i.i.i ], [ %.pn.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit15, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.jp = load ptr, ptr %0, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.jp, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.cd, !prof !205

bb.cd:                                            ; preds = %.body
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.cd
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare void @_ZN5arrow11IntegerTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %15 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !46, !alias.scope !3157
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.e = load i8, ptr %i.d, align 8, !tbaa !30
  switch i8 %i.e, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %bb.b
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !81

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.12.sink = phi ptr [ @.str.11, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.12, %bb.a ]
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.str.12.sink, ptr %i.g, align 8, !tbaa !35
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.cc

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !426
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !427
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 0, ptr %i.c, align 1, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !430  ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.cb, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !426  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !427
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !427  ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %storemerge.i.i.i = select i1 %i.x, ptr %i.c, ptr %i.w ; 4 uses
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !427  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.y, i64 noundef %i.q, i64 noundef %i.n)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.c
  %i.z = icmp sgt i64 %i.n, 0
  br i1 %i.z, label %.lr.ph119.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph119.i.i.i.i:                                ; preds = %.noexc8
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph119.i.i.i.i
  %.0 = phi ptr [ %i.l, %.lr.ph119.i.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.024118.i.i.i.i = phi i64 [ 0, %.lr.ph119.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.ai = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc9:                                          ; preds = %bb.d
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.ai to i16 ; 3 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.ai, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.aj = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.aj, label %.preheader.i.i.i.i, label %bb.ao

.preheader.i.i.i.i:                               ; preds = %.noexc9
  %i.al = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  br i1 %i.ak, label %.lr.ph116.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph116.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i
  %.3 = phi ptr [ %i.eo, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.023115.i.i.i.i = phi i64 [ %i.ep, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %.1114.i.i.i.i = phi i64 [ %i.eq, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ %.024118.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.1114.i.i.i.i ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !293 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.an ; 5 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !293 ; 2 uses
  %i.ar = sub nsw i64 %i.aq, %i.an                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %i.ar, ptr %11, align 8
  store ptr %i.ao, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !293
  %i.as = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.e, label %bb.g, !prof !444

bb.e:                                             ; preds = %.lr.ph116.i.i.i.i
  %i.au = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  %.not.i.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !33
  %i.av = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #23 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph116.i.i.i.i
  %i.aw = icmp eq i64 %i.ar, 0
  br i1 %i.aw, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, label %bb.h, !prof !136

bb.h:                                             ; preds = %bb.g
  %i.ax = icmp ugt i64 %i.ar, 2
  br i1 %i.ax, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ay = load i8, ptr %i.ao, align 1, !tbaa !119
  %i.az = icmp eq i8 %i.ay, 48
  br i1 %i.az, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !119
  switch i8 %i.bb, label %bb.q [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.bd = add i64 %i.ar, -3                       ; 2 uses
  %i.be = icmp ult i64 %i.bd, 16
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !205

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %bb.p
  %.03049.i.i.i.i.i.i.i = phi i64 [ %i.bl, %bb.p ], [ 0, %bb.k ] ; 3 uses
  %.03148.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i, %bb.p ], [ 0, %bb.k ]
  %i.bf = shl i64 %.03148.i.i.i.i.i.i.i, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.03049.i.i.i.i.i.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !119 ; 5 uses
  %i.bi = add i8 %i.bh, -48                       ; 2 uses
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.bi, 10
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bj = add i8 %i.bh, -65
  %or.cond42.i.i.i.i.i.i.i = icmp ult i8 %i.bj, 6
  br i1 %or.cond42.i.i.i.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %narrow40.i.i.i.i.i.i.i = add nuw nsw i8 %i.bh, 9
  %16 = and i8 %narrow40.i.i.i.i.i.i.i, 31
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bk = add i8 %i.bh, -97
  %or.cond43.i.i.i.i.i.i.i = icmp ult i8 %i.bk, 6
  br i1 %or.cond43.i.i.i.i.i.i.i, label %bb.o, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !1756

bb.o:                                             ; preds = %bb.n
  %narrow.i.i.i.i.i.i.i = add nuw nsw i8 %i.bh, 9
  %17 = and i8 %narrow.i.i.i.i.i.i.i, 31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %.lr.ph.i.i.i.i.i.i.i
  %.pn.in.i.i.i.i.i.i.i = phi i8 [ %17, %bb.o ], [ %16, %bb.m ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ]
  %.pn.i.i.i.i.i.i.i = zext nneg i8 %.pn.in.i.i.i.i.i.i.i to i64
  %.1.i.i.i.i.i.i.i = or i64 %i.bf, %.pn.i.i.i.i.i.i.i ; 2 uses
  %i.bl = add nuw nsw i64 %.03049.i.i.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %.03049.i.i.i.i.i.i.i, %i.bd
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread93.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2359

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread93.i.i.i.i: ; preds = %bb.p
  store i64 %.1.i.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !293
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

bb.q:                                             ; preds = %bb.j, %bb.i, %bb.h
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %storemerge.i.i.i, i64 %i.aq
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.01722.i.i.i.i.i.i = phi i64 [ %i.ar, %bb.q ], [ %i.bo, %bb.s ] ; 2 uses
  %.01821.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.q ], [ %i.bp, %bb.s ] ; 3 uses
  %i.bm = load i8, ptr %.01821.i.i.i.i.i.i, align 1, !tbaa !119
  %i.bn = icmp eq i8 %i.bm, 48
  br i1 %i.bn, label %bb.s, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bo = add i64 %.01722.i.i.i.i.i.i, -1         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i, i64 1
  %.not.i.i38.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i38.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, label %bb.r, !llvm.loop !3134

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.018.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %bb.s ], [ %.01821.i.i.i.i.i.i, %bb.r ]
  %.017.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.s ], [ %.01722.i.i.i.i.i.i, %bb.r ]
  %i.bq = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i.i.i.i.i, i64 noundef %.017.lcssa.i.i.i.i.i.i, ptr noundef nonnull %i.b)
  br i1 %i.bq, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !3135

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i: ; preds = %bb.n, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, %bb.k, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !3160)
  %i.br = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc10 unwind label %.loopexit ; 2 uses

.noexc10:                                         ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !199, !noalias !3160 ; 3 uses
  store ptr %i.bs, ptr %14, align 8, !tbaa !199, !alias.scope !3160
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !117, !noalias !3160 ; 3 uses
  store ptr %i.bu, ptr %i.af, align 8, !tbaa !117, !alias.scope !3160
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119, !noalias !3160
  %.not.i.i.i.i.i37.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i37.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !120, !noalias !3160
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !120, !noalias !3160
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bz = atomicrmw volatile add ptr %i.bv, i32 1 acq_rel, align 4, !noalias !3160 ; 0 uses
  %.pre125.i.i.i.i = load ptr, ptr %14, align 8, !tbaa !199
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i

_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i: ; preds = %bb.v, %bb.u, %.noexc10
  %i.ca = phi ptr [ %i.bs, %.noexc10 ], [ %i.bs, %bb.u ], [ %.pre125.i.i.i.i, %bb.v ] ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %i.ca, i1 noundef zeroext false)
          to label %bb.w unwind label %bb.am

bb.w:                                             ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !3163
  invoke void @_ZN5arrow4util13StringBuilderIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc.i.i.i.i unwind label %bb.an

.noexc.i.i.i.i:                                   ; preds = %bb.w
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc.i.i.i.i
  %i.ce = load ptr, ptr %6, align 8, !tbaa !227, !noalias !3163 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ag
  br i1 %i.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.cg = load i64, ptr %i.ag, align 8, !tbaa !119, !noalias !3163
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.noexc.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %6, align 8, !tbaa !227, !noalias !3163 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ag
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i: ; preds = %bb.y
  %i.cl = load i64, ptr %i.ag, align 8, !tbaa !119, !noalias !3163
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !3163
  br label %.body.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !3163
  %i.cn = load ptr, ptr %0, align 8, !tbaa !46    ; 5 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !117 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 4294967297
  %i.cu = trunc i64 %i.cs to i32                  ; 2 uses
  br i1 %i.ct, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cr, align 8, !tbaa !132
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.cv, align 4, !tbaa !134
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !33
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #23, !inline_history !3168
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !33
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #23, !inline_history !3168
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = add nsw i32 %i.cu, -1
  store i32 %i.dd, ptr %i.cr, align 8, !tbaa !120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.de = atomicrmw volatile add ptr %i.cr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cu, %bb.ad ], [ %i.de, %bb.ae ]
  %i.df = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.df, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i, !prof !136

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.ab, %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !227 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !119
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i:      ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.dm = load ptr, ptr %12, align 8, !tbaa !46
  store ptr %i.dm, ptr %0, align 8, !tbaa !46
  store ptr null, ptr %12, align 8, !tbaa !46
  %i.dn = load ptr, ptr %13, align 8, !tbaa !227  ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.ah
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.dp = load i64, ptr %i.ah, align 8, !tbaa !119
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.dr = load ptr, ptr %i.af, align 8, !tbaa !117 ; 8 uses
  %.not.i.i36.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i36.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4294967297
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  br i1 %i.du, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.ds, align 8, !tbaa !132
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !134
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !33
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #23, !inline_history !3169
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !33
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #23, !inline_history !3169
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ee = add nsw i32 %i.dv, -1
  store i32 %i.ee, ptr %i.ds, align 8, !tbaa !120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.ef = atomicrmw volatile add ptr %i.ds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dv, %bb.aj ], [ %i.ef, %bb.ak ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.eg, label %bb.al, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !136

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #23
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

bb.am:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i

bb.an:                                            ; preds = %bb.w
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ei, %bb.an ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i ] ; 2 uses
  %i.ej = load ptr, ptr %13, align 8, !tbaa !227  ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ah
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i: ; preds = %.body.i.i.i.i
  %i.el = load i64, ptr %i.ah, align 8, !tbaa !119
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i: ; preds = %.body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i, %bb.am
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.eh, %bb.am ], [ %eh.lpad-body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.body

_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread93.i.i.i.i
  %i.en = load i64, ptr %i.b, align 8, !tbaa !293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.eo = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 2 uses
  store i64 %i.en, ptr %.3, align 8, !tbaa !293
  %i.ep = add nuw nsw i64 %.023115.i.i.i.i, 1     ; 2 uses
  %i.eq = add nsw i64 %.1114.i.i.i.i, 1           ; 2 uses
  %exitcond124.not.i.i.i.i = icmp eq i64 %i.ep, %i.al
  br i1 %exitcond124.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph116.i.i.i.i, !llvm.loop !3170

bb.ao:                                            ; preds = %.noexc9
  %i.er = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.er, label %.preheader98.i.i.i.i, label %.preheader100.i.i.i.i

.preheader100.i.i.i.i:                            ; preds = %bb.ao
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader100.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.ai, 32767
  %i.es = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.et = add i64 %.024118.i.i.i.i, %i.es         ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader98.i.i.i.i:                             ; preds = %bb.ao
  br i1 %i.ak, label %.lr.ph112.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph112.i.i.i.i:                                ; preds = %.preheader98.i.i.i.i
  %i.eu = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ev = shl nuw nsw i64 %i.eu, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.0, i8 0, i64 %i.ev, i1 false), !tbaa !293
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.ev
  %i.ew = add i64 %.024118.i.i.i.i, %i.eu
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ca, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.jh, %bb.ca ] ; 2 uses
  %.3108.i.i.i.i = phi i64 [ %.024118.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.ji, %bb.ca ] ; 3 uses
  %i.ex = add nsw i64 %.3108.i.i.i.i, %i.q        ; 2 uses
  %i.ey = lshr i64 %i.ex, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !119
  %i.fb = trunc i64 %i.ex to i8
  %i.fc = and i8 %i.fb, 7
  %i.fd = lshr i8 %i.fa, %i.fc
  %i.fe = trunc i8 %i.fd to i1
  br i1 %i.fe, label %bb.ap, label %bb.ca

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.3108.i.i.i.i ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !293 ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.fg ; 5 uses
  %i.fi = getelementptr i8, ptr %i.ff, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !293 ; 2 uses
  %i.fk = sub nsw i64 %i.fj, %i.fg                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %i.fk, ptr %7, align 8
  store ptr %i.fh, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !293
  %i.fl = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.fm = icmp eq i8 %i.fl, 0
  br i1 %i.fm, label %bb.aq, label %bb.as, !prof !444

bb.aq:                                            ; preds = %bb.ap
  %i.fn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  %.not.i86.i.i.i.i = icmp eq i32 %i.fn, 0
  br i1 %.not.i86.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !33
  %i.fo = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #23 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.fp = icmp eq i64 %i.fk, 0
  br i1 %i.fp, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread.i.i.i.i, label %bb.at, !prof !136

bb.at:                                            ; preds = %bb.as
  %i.fq = icmp ugt i64 %i.fk, 2
  br i1 %i.fq, label %bb.au, label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.fr = load i8, ptr %i.fh, align 1, !tbaa !119
  %i.fs = icmp eq i8 %i.fr, 48
  br i1 %i.fs, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !119
  switch i8 %i.fu, label %bb.bc [
    i8 120, label %bb.aw
    i8 88, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fw = add i64 %i.fk, -3                       ; 2 uses
  %i.fx = icmp ult i64 %i.fw, 16
  br i1 %i.fx, label %.lr.ph.i.i.i73.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread.i.i.i.i, !prof !205

.lr.ph.i.i.i73.i.i.i.i:                           ; preds = %bb.aw, %bb.bb
  %.03049.i.i.i74.i.i.i.i = phi i64 [ %i.ge, %bb.bb ], [ 0, %bb.aw ] ; 3 uses
  %.03148.i.i.i75.i.i.i.i = phi i64 [ %.1.i.i.i82.i.i.i.i, %bb.bb ], [ 0, %bb.aw ]
  %i.fy = shl i64 %.03148.i.i.i75.i.i.i.i, 4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.03049.i.i.i74.i.i.i.i
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !119 ; 5 uses
  %i.gb = add i8 %i.ga, -48                       ; 2 uses
  %or.cond.i.i.i76.i.i.i.i = icmp ult i8 %i.gb, 10
  br i1 %or.cond.i.i.i76.i.i.i.i, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i73.i.i.i.i
  %i.gc = add i8 %i.ga, -65
  %or.cond42.i.i.i77.i.i.i.i = icmp ult i8 %i.gc, 6
  br i1 %or.cond42.i.i.i77.i.i.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %narrow40.i.i.i85.i.i.i.i = add nuw nsw i8 %i.ga, 9
  %18 = and i8 %narrow40.i.i.i85.i.i.i.i, 31
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.gd = add i8 %i.ga, -97
  %or.cond43.i.i.i78.i.i.i.i = icmp ult i8 %i.gd, 6
  br i1 %or.cond43.i.i.i78.i.i.i.i, label %bb.ba, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread.i.i.i.i, !prof !1756

bb.ba:                                            ; preds = %bb.az
  %narrow.i.i.i79.i.i.i.i = add nuw nsw i8 %i.ga, 9
  %19 = and i8 %narrow.i.i.i79.i.i.i.i, 31
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay, %.lr.ph.i.i.i73.i.i.i.i
  %.pn.in.i.i.i80.i.i.i.i = phi i8 [ %19, %bb.ba ], [ %18, %bb.ay ], [ %i.gb, %.lr.ph.i.i.i73.i.i.i.i ]
  %.pn.i.i.i81.i.i.i.i = zext nneg i8 %.pn.in.i.i.i80.i.i.i.i to i64
  %.1.i.i.i82.i.i.i.i = or i64 %i.fy, %.pn.i.i.i81.i.i.i.i ; 2 uses
  %i.ge = add nuw nsw i64 %.03049.i.i.i74.i.i.i.i, 1
  %exitcond.not.i.i.i83.i.i.i.i = icmp eq i64 %.03049.i.i.i74.i.i.i.i, %i.fw
  br i1 %exitcond.not.i.i.i83.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread96.i.i.i.i, label %.lr.ph.i.i.i73.i.i.i.i, !llvm.loop !2359

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread96.i.i.i.i: ; preds = %bb.bb
  store i64 %.1.i.i.i82.i.i.i.i, ptr %i.a, align 8, !tbaa !293
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i

bb.bc:                                            ; preds = %bb.av, %bb.au, %bb.at
  %scevgep.i.i65.i.i.i.i = getelementptr i8, ptr %storemerge.i.i.i, i64 %i.fj
  br label %bb.bd

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %.01722.i.i66.i.i.i.i = phi i64 [ %i.fk, %bb.bc ], [ %i.gh, %bb.be ] ; 2 uses
  %.01821.i.i67.i.i.i.i = phi ptr [ %i.fh, %bb.bc ], [ %i.gi, %bb.be ] ; 3 uses
  %i.gf = load i8, ptr %.01821.i.i67.i.i.i.i, align 1, !tbaa !119
  %i.gg = icmp eq i8 %i.gf, 48
  br i1 %i.gg, label %bb.be, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.gh = add i64 %.01722.i.i66.i.i.i.i, -1       ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.01821.i.i67.i.i.i.i, i64 1
  %.not.i.i72.i.i.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not.i.i72.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.i.i.i.i, label %bb.bd, !llvm.loop !3134

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.i.i.i.i: ; preds = %bb.be, %bb.bd
  %.018.lcssa.i.i69.i.i.i.i = phi ptr [ %scevgep.i.i65.i.i.i.i, %bb.be ], [ %.01821.i.i67.i.i.i.i, %bb.bd ]
  %.017.lcssa.i.i70.i.i.i.i = phi i64 [ 0, %bb.be ], [ %.01722.i.i66.i.i.i.i, %bb.bd ]
  %i.gj = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i69.i.i.i.i, i64 noundef %.017.lcssa.i.i70.i.i.i.i, ptr noundef nonnull %i.a)
  br i1 %i.gj, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread.i.i.i.i, !prof !3135

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread.i.i.i.i: ; preds = %bb.az, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.i.i.i.i, %bb.aw, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !3171)
  %i.gk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc11:                                         ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit87.thread.i.i.i.i
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !199, !noalias !3171 ; 3 uses
  store ptr %i.gl, ptr %10, align 8, !tbaa !199, !alias.scope !3171
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !117, !noalias !3171 ; 3 uses
  store ptr %i.gn, ptr %i.ab, align 8, !tbaa !117, !alias.scope !3171
  %.not.i.i.i.i62.i.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i62.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit64.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.noexc11
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 3 uses
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119, !noalias !3171
  %.not.i.i.i.i.i63.i.i.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not.i.i.i.i.i63.i.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !120, !noalias !3171
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.go, align 4, !tbaa !120, !noalias !3171
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit64.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.gs = atomicrmw volatile add ptr %i.go, i32 1 acq_rel, align 4, !noalias !3171 ; 0 uses
  %.pre.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !199
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit64.i.i.i.i

_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit64.i.i.i.i: ; preds = %bb.bh, %bb.bg, %.noexc11
  %i.gt = phi ptr [ %i.gl, %.noexc11 ], [ %i.gl, %bb.bg ], [ %.pre.i.i.i.i, %bb.bh ] ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !33
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8
  invoke void %i.gw(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.gt, i1 noundef zeroext false)
          to label %bb.bi unwind label %bb.by

bb.bi:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit64.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !3174
  invoke void @_ZN5arrow4util13StringBuilderIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc58.i.i.i.i unwind label %bb.bz

.noexc58.i.i.i.i:                                 ; preds = %bb.bi
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %.noexc58.i.i.i.i
  %i.gx = load ptr, ptr %5, align 8, !tbaa !227, !noalias !3174 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.ac
  br i1 %i.gy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i57.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i.i.i.i: ; preds = %bb.bj
  %i.gz = load i64, ptr %i.ac, align 8, !tbaa !119, !noalias !3174
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i57.i.i.i.i

bb.bk:                                            ; preds = %.noexc58.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = load ptr, ptr %5, align 8, !tbaa !227, !noalias !3174 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.ac
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i54.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i53.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i53.i.i.i.i: ; preds = %bb.bk
  %i.he = load i64, ptr %i.ac, align 8, !tbaa !119, !noalias !3174
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i54.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i54.i.i.i.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i53.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !3174
  br label %.body59.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i57.i.i.i.i: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !3174
  %i.hg = load ptr, ptr %0, align 8, !tbaa !46    ; 5 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i57.i.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !117 ; 8 uses
  %.not.i.i.i.i.i44.i.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i.i44.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i48.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 4 uses
  %i.hl = load atomic i64, ptr %i.hk acquire, align 8 ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 4294967297
  %i.hn = trunc i64 %i.hl to i32                  ; 2 uses
  br i1 %i.hm, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.hk, align 8, !tbaa !132
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  store i32 0, ptr %i.ho, align 4, !tbaa !134
  %i.hp = load ptr, ptr %i.hj, align 8, !tbaa !33
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #23, !inline_history !3168
  %i.hs = load ptr, ptr %i.hj, align 8, !tbaa !33
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #23, !inline_history !3168
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i48.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.hv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i.i45.i.i.i.i = icmp eq i8 %i.hv, 0
  br i1 %.not.i.i.i.i.i.i45.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hw = add nsw i32 %i.hn, -1
  store i32 %i.hw, ptr %i.hk, align 8, !tbaa !120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i46.i.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.hx = atomicrmw volatile add ptr %i.hk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i46.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i46.i.i.i.i: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i.i.i.i47.i.i.i.i = phi i32 [ %i.hn, %bb.bp ], [ %i.hx, %bb.bq ]
  %i.hy = icmp eq i32 %.0.i.i.i.i.i.i.i47.i.i.i.i, 1
  br i1 %i.hy, label %bb.br, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i48.i.i.i.i, !prof !136

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i46.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i48.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i48.i.i.i.i: ; preds = %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i46.i.i.i.i, %bb.bn, %bb.bl
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !227 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hg, i64 24 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZN5arrow6Status5StateD2Ev.exit.i.i50.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i48.i.i.i.i
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !119
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i50.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i50.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i48.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i:            ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i50.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i57.i.i.i.i
  %i.if = load ptr, ptr %8, align 8, !tbaa !46
  store ptr %i.if, ptr %0, align 8, !tbaa !46
  store ptr null, ptr %8, align 8, !tbaa !46
  %i.ig = load ptr, ptr %9, align 8, !tbaa !227   ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.ad
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i
  %i.ii = load i64, ptr %i.ad, align 8, !tbaa !119
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i.i.i.i
  %i.ik = load ptr, ptr %i.ab, align 8, !tbaa !117 ; 8 uses
  %.not.i.i39.i.i.i.i = icmp eq ptr %i.ik, null
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal11CastFunctorINS_10UInt64TypeENS_14BinaryViewTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27, !noalias !3184
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !3181
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %15 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !46, !alias.scope !3187
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.d = load i8, ptr %i.c, align 8, !tbaa !30
  switch i8 %i.d, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %bb.b
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !81

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.12.sink = phi ptr [ @.str.11, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.12, %bb.a ]
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.str.12.sink, ptr %i.f, align 8, !tbaa !35
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.cf

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !426
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !427
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !430
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES3_NS1_11ParseStringIS6_EEE9ArrayExecIS6_vE4ExecERKS9_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSB_4ExecESD_SF_SI_SK_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESI_OSS_OT1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !426
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !427
  %i.s = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.p ; 2 uses
  %i.t = invoke { ptr, i64 } @_ZNK5arrow9ArraySpan18GetVariadicBuffersEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.v = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !427  ; 2 uses
  %i.x = load i64, ptr %i.o, align 8, !tbaa !426  ; 2 uses
  %i.y = load i64, ptr %i.l, align 8, !tbaa !430  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.w, i64 noundef %i.x, i64 noundef %i.y)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph120.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph120.i.i.i.i:                                ; preds = %.noexc9
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph120.i.i.i.i
  %.0 = phi ptr [ %i.k, %.lr.ph120.i.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.024119.i.i.i.i = phi i64 [ 0, %.lr.ph120.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.ai = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc10:                                         ; preds = %bb.d
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.ai to i16 ; 3 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.ai, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.aj = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.aj, label %.preheader.i.i.i.i, label %bb.aq

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.al = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  br i1 %i.ak, label %.lr.ph117.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph117.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i
  %.3 = phi ptr [ %i.fd, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.023116.i.i.i.i = phi i64 [ %i.fe, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %.1115.i.i.i.i = phi i64 [ %i.ff, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ %.024119.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds [16 x i8], ptr %i.s, i64 %.1115.i.i.i.i ; 4 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !119 ; 4 uses
  %i.ao = icmp slt i32 %i.an, 13
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph117.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph117.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !119
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !784 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 9
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !787, !range !25, !noundef !26
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = select i1 %i.ax, ptr %i.az, ptr null, !prof !205
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !119
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.bf = phi ptr [ %i.ap, %bb.e ], [ %i.be, %bb.f ] ; 6 uses
  %i.bg = sext i32 %i.an to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %i.bg, ptr %11, align 8
  store ptr %i.bf, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !293
  %i.bh = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.g, label %bb.i, !prof !444

bb.g:                                             ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i
  %i.bj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  %.not.i.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !33
  %i.bk = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #23 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i
  %i.bl = icmp eq i32 %i.an, 0
  br i1 %i.bl, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, label %bb.j, !prof !136

bb.j:                                             ; preds = %bb.i
  %i.bm = icmp ugt i32 %i.an, 2
  br i1 %i.bm, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.bn = load i8, ptr %i.bf, align 1, !tbaa !119
  %i.bo = icmp eq i8 %i.bn, 48
  br i1 %i.bo, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !119
  switch i8 %i.bq, label %bb.s [
    i8 120, label %bb.m
    i8 88, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bs = add nsw i64 %i.bg, -3                   ; 2 uses
  %i.bt = icmp ult i64 %i.bs, 16
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !205

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.m, %bb.r
  %.03049.i.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.r ], [ 0, %bb.m ] ; 3 uses
  %.03148.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i, %bb.r ], [ 0, %bb.m ]
  %i.bu = shl i64 %.03148.i.i.i.i.i.i.i, 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %.03049.i.i.i.i.i.i.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !119 ; 5 uses
  %i.bx = add i8 %i.bw, -48                       ; 2 uses
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.bx, 10
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.by = add i8 %i.bw, -65
  %or.cond42.i.i.i.i.i.i.i = icmp ult i8 %i.by, 6
  br i1 %or.cond42.i.i.i.i.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %narrow40.i.i.i.i.i.i.i = add nuw nsw i8 %i.bw, 9
  %16 = and i8 %narrow40.i.i.i.i.i.i.i, 31
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bz = add i8 %i.bw, -97
  %or.cond43.i.i.i.i.i.i.i = icmp ult i8 %i.bz, 6
  br i1 %or.cond43.i.i.i.i.i.i.i, label %bb.q, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !1756

bb.q:                                             ; preds = %bb.p
  %narrow.i.i.i.i.i.i.i = add nuw nsw i8 %i.bw, 9
  %17 = and i8 %narrow.i.i.i.i.i.i.i, 31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %.lr.ph.i.i.i.i.i.i.i
  %.pn.in.i.i.i.i.i.i.i = phi i8 [ %17, %bb.q ], [ %16, %bb.o ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.i ]
  %.pn.i.i.i.i.i.i.i = zext nneg i8 %.pn.in.i.i.i.i.i.i.i to i64
  %.1.i.i.i.i.i.i.i = or i64 %i.bu, %.pn.i.i.i.i.i.i.i ; 2 uses
  %i.ca = add nuw nsw i64 %.03049.i.i.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %.03049.i.i.i.i.i.i.i, %i.bs
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread94.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2359

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread94.i.i.i.i: ; preds = %bb.r
  store i64 %.1.i.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !293
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

bb.s:                                             ; preds = %bb.l, %bb.k, %bb.j
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.bf, i64 %i.bg
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.01722.i.i.i.i.i.i = phi i64 [ %i.bg, %bb.s ], [ %i.cd, %bb.u ] ; 2 uses
  %.01821.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.s ], [ %i.ce, %bb.u ] ; 3 uses
  %i.cb = load i8, ptr %.01821.i.i.i.i.i.i, align 1, !tbaa !119
  %i.cc = icmp eq i8 %i.cb, 48
  br i1 %i.cc, label %bb.u, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.cd = add i64 %.01722.i.i.i.i.i.i, -1         ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i, i64 1
  %.not.i.i39.i.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i39.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, label %bb.t, !llvm.loop !3134

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  %.018.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %bb.u ], [ %.01821.i.i.i.i.i.i, %bb.t ]
  %.017.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.u ], [ %.01722.i.i.i.i.i.i, %bb.t ]
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i.i.i.i.i, i64 noundef %.017.lcssa.i.i.i.i.i.i, ptr noundef nonnull %i.b)
  br i1 %i.cf, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !3135

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i: ; preds = %bb.p, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, %bb.m, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !3190)
  %i.cg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc11 unwind label %.loopexit ; 2 uses

.noexc11:                                         ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !199, !noalias !3190 ; 3 uses
  store ptr %i.ch, ptr %14, align 8, !tbaa !199, !alias.scope !3190
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !117, !noalias !3190 ; 3 uses
  store ptr %i.cj, ptr %i.af, align 8, !tbaa !117, !alias.scope !3190
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.cl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119, !noalias !3190
  %.not.i.i.i.i.i38.i.i.i.i = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.i.i.i38.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !120, !noalias !3190
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !120, !noalias !3190
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.co = atomicrmw volatile add ptr %i.ck, i32 1 acq_rel, align 4, !noalias !3190 ; 0 uses
  %.pre126.i.i.i.i = load ptr, ptr %14, align 8, !tbaa !199
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i

_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i: ; preds = %bb.x, %bb.w, %.noexc11
  %i.cp = phi ptr [ %i.ch, %.noexc11 ], [ %i.ch, %bb.w ], [ %.pre126.i.i.i.i, %bb.x ] ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !33
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %i.cp, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.ao

bb.y:                                             ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !3193
  invoke void @_ZN5arrow4util13StringBuilderIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc.i.i.i.i unwind label %bb.ap

.noexc.i.i.i.i:                                   ; preds = %bb.y
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %.noexc.i.i.i.i
  %i.ct = load ptr, ptr %6, align 8, !tbaa !227, !noalias !3193 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.ag
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z
  %i.cv = load i64, ptr %i.ag, align 8, !tbaa !119, !noalias !3193
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %.noexc.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %6, align 8, !tbaa !227, !noalias !3193 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ag
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i: ; preds = %bb.aa
  %i.da = load i64, ptr %i.ag, align 8, !tbaa !119, !noalias !3193
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !3193
  br label %.body.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !3193
  %i.dc = load ptr, ptr %0, align 8, !tbaa !46    ; 5 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !117 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.dg, align 8, !tbaa !132
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !134
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !33
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #23, !inline_history !3198
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !33
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #23, !inline_history !3198
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dj, %bb.af ], [ %i.dt, %bb.ag ]
  %i.du = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.du, label %bb.ah, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i, !prof !136

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.ad, %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !227 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !119
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i:      ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.eb = load ptr, ptr %12, align 8, !tbaa !46
  store ptr %i.eb, ptr %0, align 8, !tbaa !46
  store ptr null, ptr %12, align 8, !tbaa !46
  %i.ec = load ptr, ptr %13, align 8, !tbaa !227  ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.ah
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.ee = load i64, ptr %i.ah, align 8, !tbaa !119
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.eg = load ptr, ptr %i.af, align 8, !tbaa !117 ; 8 uses
  %.not.i.i37.i.i.i.i = icmp eq ptr %i.eg, null
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #23, !inline_history !3199
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.et = add nsw i32 %i.ek, -1
  store i32 %i.et, ptr %i.eh, align 8, !tbaa !120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.eu = atomicrmw volatile add ptr %i.eh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ek, %bb.al ], [ %i.eu, %bb.am ]
  %i.ev = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ev, label %bb.an, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !136

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #23
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

bb.ao:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i

bb.ap:                                            ; preds = %bb.y
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ex, %bb.ap ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i ] ; 2 uses
  %i.ey = load ptr, ptr %13, align 8, !tbaa !227  ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ah
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i: ; preds = %.body.i.i.i.i
  %i.fa = load i64, ptr %i.ah, align 8, !tbaa !119
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i: ; preds = %.body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i, %bb.ao
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ew, %bb.ao ], [ %eh.lpad-body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.body

_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread94.i.i.i.i
  %i.fc = load i64, ptr %i.b, align 8, !tbaa !293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.fd = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 2 uses
  store i64 %i.fc, ptr %.3, align 8, !tbaa !293
  %i.fe = add nuw nsw i64 %.023116.i.i.i.i, 1     ; 2 uses
  %i.ff = add nsw i64 %.1115.i.i.i.i, 1           ; 2 uses
  %exitcond125.not.i.i.i.i = icmp eq i64 %i.fe, %i.al
  br i1 %exitcond125.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph117.i.i.i.i, !llvm.loop !3200

bb.aq:                                            ; preds = %.noexc10
  %i.fg = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.fg, label %.preheader99.i.i.i.i, label %.preheader101.i.i.i.i

.preheader101.i.i.i.i:                            ; preds = %bb.aq
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader101.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.ai, 32767
  %i.fh = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.fi = add i64 %.024119.i.i.i.i, %i.fh         ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader99.i.i.i.i:                             ; preds = %bb.aq
  br i1 %i.ak, label %.lr.ph113.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph113.i.i.i.i:                                ; preds = %.preheader99.i.i.i.i
  %i.fj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.fk = shl nuw nsw i64 %i.fj, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.0, i8 0, i64 %i.fk, i1 false), !tbaa !293
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.fk
  %i.fl = add i64 %.024119.i.i.i.i, %i.fj
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ce, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.kl, %bb.ce ] ; 2 uses
  %.3109.i.i.i.i = phi i64 [ %.024119.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.km, %bb.ce ] ; 3 uses
  %i.fm = add nsw i64 %.3109.i.i.i.i, %i.x        ; 2 uses
  %i.fn = lshr i64 %i.fm, 3
  %i.fo = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !119
  %i.fq = trunc i64 %i.fm to i8
  %i.fr = and i8 %i.fq, 7
  %i.fs = lshr i8 %i.fp, %i.fr
  %i.ft = trunc i8 %i.fs to i1
  br i1 %i.ft, label %bb.ar, label %bb.ce

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fu = getelementptr inbounds [16 x i8], ptr %i.s, i64 %.3109.i.i.i.i ; 4 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !119 ; 4 uses
  %i.fw = icmp slt i32 %i.fv, 13
  br i1 %i.fw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !119
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !784 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 9
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !787, !range !25, !noundef !26
  %i.gf = trunc nuw i8 %i.ge to i1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = select i1 %i.gf, ptr %i.gh, ptr null, !prof !205
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !119
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds i8, ptr %i.gi, i64 %i.gl
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i: ; preds = %bb.at, %bb.as
  %i.gn = phi ptr [ %i.fx, %bb.as ], [ %i.gm, %bb.at ] ; 6 uses
  %i.go = sext i32 %i.fv to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %i.go, ptr %7, align 8
  store ptr %i.gn, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !293
  %i.gp = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.au, label %bb.aw, !prof !444

bb.au:                                            ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i
  %i.gr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  %.not.i87.i.i.i.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i87.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !33
  %i.gs = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #23 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #23
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i
  %i.gt = icmp eq i32 %i.fv, 0
  br i1 %i.gt, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit88.thread.i.i.i.i, label %bb.ax, !prof !136

bb.ax:                                            ; preds = %bb.aw
  %i.gu = icmp ugt i32 %i.fv, 2
  br i1 %i.gu, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.gv = load i8, ptr %i.gn, align 1, !tbaa !119
  %i.gw = icmp eq i8 %i.gv, 48
  br i1 %i.gw, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !119
  switch i8 %i.gy, label %bb.bg [
    i8 120, label %bb.ba
    i8 88, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  %i.ha = add nsw i64 %i.go, -3                   ; 2 uses
  %i.hb = icmp ult i64 %i.ha, 16
  br i1 %i.hb, label %.lr.ph.i.i.i74.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit88.thread.i.i.i.i, !prof !205

.lr.ph.i.i.i74.i.i.i.i:                           ; preds = %bb.ba, %bb.bf
  %.03049.i.i.i75.i.i.i.i = phi i64 [ %i.hi, %bb.bf ], [ 0, %bb.ba ] ; 3 uses
  %.03148.i.i.i76.i.i.i.i = phi i64 [ %.1.i.i.i83.i.i.i.i, %bb.bf ], [ 0, %bb.ba ]
  %i.hc = shl i64 %.03148.i.i.i76.i.i.i.i, 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.03049.i.i.i75.i.i.i.i
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !119 ; 5 uses
  %i.hf = add i8 %i.he, -48                       ; 2 uses
  %or.cond.i.i.i77.i.i.i.i = icmp ult i8 %i.hf, 10
  br i1 %or.cond.i.i.i77.i.i.i.i, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i74.i.i.i.i
  %i.hg = add i8 %i.he, -65
  %or.cond42.i.i.i78.i.i.i.i = icmp ult i8 %i.hg, 6
  br i1 %or.cond42.i.i.i78.i.i.i.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %narrow40.i.i.i86.i.i.i.i = add nuw nsw i8 %i.he, 9
  %18 = and i8 %narrow40.i.i.i86.i.i.i.i, 31
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  %i.hh = add i8 %i.he, -97
  %or.cond43.i.i.i79.i.i.i.i = icmp ult i8 %i.hh, 6
  br i1 %or.cond43.i.i.i79.i.i.i.i, label %bb.be, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit88.thread.i.i.i.i, !prof !1756

bb.be:                                            ; preds = %bb.bd
  %narrow.i.i.i80.i.i.i.i = add nuw nsw i8 %i.he, 9
  %19 = and i8 %narrow.i.i.i80.i.i.i.i, 31
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc, %.lr.ph.i.i.i74.i.i.i.i
  %.pn.in.i.i.i81.i.i.i.i = phi i8 [ %19, %bb.be ], [ %18, %bb.bc ], [ %i.hf, %.lr.ph.i.i.i74.i.i.i.i ]
  %.pn.i.i.i82.i.i.i.i = zext nneg i8 %.pn.in.i.i.i81.i.i.i.i to i64
  %.1.i.i.i83.i.i.i.i = or i64 %i.hc, %.pn.i.i.i82.i.i.i.i ; 2 uses
  %i.hi = add nuw nsw i64 %.03049.i.i.i75.i.i.i.i, 1
  %exitcond.not.i.i.i84.i.i.i.i = icmp eq i64 %.03049.i.i.i75.i.i.i.i, %i.ha
  br i1 %exitcond.not.i.i.i84.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit88.thread97.i.i.i.i, label %.lr.ph.i.i.i74.i.i.i.i, !llvm.loop !2359

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit88.thread97.i.i.i.i: ; preds = %bb.bf
  store i64 %.1.i.i.i83.i.i.i.i, ptr %i.a, align 8, !tbaa !293
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit36.i.i.i.i

bb.bg:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %scevgep.i.i66.i.i.i.i = getelementptr i8, ptr %i.gn, i64 %i.go
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  %.01722.i.i67.i.i.i.i = phi i64 [ %i.go, %bb.bg ], [ %i.hl, %bb.bi ] ; 2 uses
  %.01821.i.i68.i.i.i.i = phi ptr [ %i.gn, %bb.bg ], [ %i.hm, %bb.bi ] ; 3 uses
  %i.hj = load i8, ptr %.01821.i.i68.i.i.i.i, align 1, !tbaa !119
  %i.hk = icmp eq i8 %i.hj, 48
  br i1 %i.hk, label %bb.bi, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit88.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.hl = add i64 %.01722.i.i67.i.i.i.i, -1       ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.01821.i.i68.i.i.i.i, i64 1
  %.not.i.i73.i.i.i.i = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i73.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit88.i.i.i.i, label %bb.bh, !llvm.loop !3134

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit88.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.018.lcssa.i.i70.i.i.i.i = phi ptr [ %scevgep.i.i66.i.i.i.i, %bb.bi ], [ %.01821.i.i68.i.i.i.i, %bb.bh ]
  %.017.lcssa.i.i71.i.i.i.i = phi i64 [ 0, %bb.bi ], [ %.01722.i.i67.i.i.i.i, %bb.bh ]
  %i.hn = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i70.i.i.i.i, i64 noundef %.017.lcssa.i.i71.i.i.i.i, ptr noundef nonnull %i.a)
  br i1 %i.hn, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit36.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit88.thread.i.i.i.i, !prof !3135

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit88.thread.i.i.i.i: ; preds = %bb.bd, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit88.i.i.i.i, %bb.ba, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !3201)
  %i.ho = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc12:                                         ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit88.thread.i.i.i.i
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !199, !noalias !3201 ; 3 uses
  store ptr %i.hp, ptr %10, align 8, !tbaa !199, !alias.scope !3201
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !117, !noalias !3201 ; 3 uses
  store ptr %i.hr, ptr %i.ab, align 8, !tbaa !117, !alias.scope !3201
  %.not.i.i.i.i63.i.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i63.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit65.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.noexc12
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 3 uses
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119, !noalias !3201
  %.not.i.i.i.i.i64.i.i.i.i = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i.i.i64.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hu = load i32, ptr %i.hs, align 4, !tbaa !120, !noalias !3201
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.hs, align 4, !tbaa !120, !noalias !3201
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit65.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.hw = atomicrmw volatile add ptr %i.hs, i32 1 acq_rel, align 4, !noalias !3201 ; 0 uses
  %.pre.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !199
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit65.i.i.i.i

_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit65.i.i.i.i: ; preds = %bb.bl, %bb.bk, %.noexc12
  %i.hx = phi ptr [ %i.hp, %.noexc12 ], [ %i.hp, %bb.bk ], [ %.pre.i.i.i.i, %bb.bl ] ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !33
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8
  invoke void %i.ia(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.hx, i1 noundef zeroext false)
          to label %bb.bm unwind label %bb.cc

bb.bm:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit65.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !3204
  invoke void @_ZN5arrow4util13StringBuilderIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc59.i.i.i.i unwind label %bb.cd

.noexc59.i.i.i.i:                                 ; preds = %bb.bm
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %.noexc59.i.i.i.i
  %i.ib = load ptr, ptr %5, align 8, !tbaa !227, !noalias !3204 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.ac
  br i1 %i.ic, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i58.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i57.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i57.i.i.i.i: ; preds = %bb.bn
  %i.id = load i64, ptr %i.ac, align 8, !tbaa !119, !noalias !3204
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i58.i.i.i.i

bb.bo:                                            ; preds = %.noexc59.i.i.i.i
  %i.if = landingpad { ptr, i32 }
          cleanup
  %i.ig = load ptr, ptr %5, align 8, !tbaa !227, !noalias !3204 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.ac
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i55.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i54.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i54.i.i.i.i: ; preds = %bb.bo
  %i.ii = load i64, ptr %i.ac, align 8, !tbaa !119, !noalias !3204
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i55.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i55.i.i.i.i: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i54.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !3204
  br label %.body60.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i58.i.i.i.i: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i57.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !3204
  %i.ik = load ptr, ptr %0, align 8, !tbaa !46    ; 5 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %_ZN5arrow6StatusD2Ev.exit.i32.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i58.i.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !117 ; 8 uses
  %.not.i.i.i.i.i45.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i.i45.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i49.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 4 uses
  %i.ip = load atomic i64, ptr %i.io acquire, align 8 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 4294967297
  %i.ir = trunc i64 %i.ip to i32                  ; 2 uses
  br i1 %i.iq, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.io, align 8, !tbaa !132
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  store i32 0, ptr %i.is, align 4, !tbaa !134
  %i.it = load ptr, ptr %i.in, align 8, !tbaa !33
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #23, !inline_history !3198
  %i.iw = load ptr, ptr %i.in, align 8, !tbaa !33
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #23, !inline_history !3198
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i49.i.i.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.iz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i.i46.i.i.i.i = icmp eq i8 %i.iz, 0
  br i1 %.not.i.i.i.i.i.i46.i.i.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ja = add nsw i32 %i.ir, -1
  store i32 %i.ja, ptr %i.io, align 8, !tbaa !120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i47.i.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.jb = atomicrmw volatile add ptr %i.io, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i47.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i47.i.i.i.i: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i.i.i48.i.i.i.i = phi i32 [ %i.ir, %bb.bt ], [ %i.jb, %bb.bu ]
  %i.jc = icmp eq i32 %.0.i.i.i.i.i.i.i48.i.i.i.i, 1
  br i1 %i.jc, label %bb.bv, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i49.i.i.i.i, !prof !136

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i47.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i49.i.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i49.i.i.i.i: ; preds = %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i47.i.i.i.i, %bb.br, %bb.bp
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !227 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ik, i64 24 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZN5arrow6Status5StateD2Ev.exit.i.i51.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i49.i.i.i.i
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !119
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i51.i.i.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i51.i.i.i.i:    ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i49.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef 56) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i32.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i32.i.i.i.i:            ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i51.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i58.i.i.i.i
  %i.jj = load ptr, ptr %8, align 8, !tbaa !46
  store ptr %i.jj, ptr %0, align 8, !tbaa !46
  store ptr null, ptr %8, align 8, !tbaa !46
  %i.jk = load ptr, ptr %9, align 8, !tbaa !227   ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.ad
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i32.i.i.i.i
  %i.jm = load i64, ptr %i.ad, align 8, !tbaa !119
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i32.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33.i.i.i.i
  %i.jo = load ptr, ptr %i.ab, align 8, !tbaa !117 ; 8 uses
  %.not.i.i40.i.i.i.i = icmp eq ptr %i.jo, null
end_hunk_4
