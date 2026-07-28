inline.NumInlined: 12989
inline.NumDeleted: 3863
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_9Int64TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
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
  %i.bp = load ptr, ptr %0, align 8, !tbaa !71    ; 2 uses
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !74

bb.h:                                             ; preds = %.loopexit.split-lp
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !75, !range !85, !noundef !86
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp, %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5arrow7compute8internal11ParseStringINS_9Int64TypeEE4CallIlSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::internal::StringConverter.1056", align 1 ; 3 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  store i64 %2, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !549
  %i.c = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, !prof !534

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow9Int64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !41
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  br label %_ZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit

_ZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.g = call noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int64TypeEE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr noundef %3, i64 noundef %2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %i.g, label %bb.k, label %bb.d, !prof !74

bb.d:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.30") align 8 %9)
  %i.h = load ptr, ptr %9, align 8, !tbaa !64     ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(26) @.str.18, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(23) @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %4, align 8, !tbaa !71     ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g, !prof !74

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !75, !range !85, !noundef !86
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.h, %bb.g, %bb.f
  %i.p = load ptr, ptr %7, align 8, !tbaa !71
  store ptr %i.p, ptr %4, align 8, !tbaa !71
  store ptr null, ptr %7, align 8, !tbaa !71
  %i.q = load ptr, ptr %8, align 8, !tbaa !107    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !65
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
  %i.x = load ptr, ptr %8, align 8, !tbaa !107    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.j
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !65
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

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5arrow8internal10ParseValueINS_9Int64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int64TypeEE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !549
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %bb.b, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %3, 2
  %i.d = load i8, ptr %2, align 1, !tbaa !65      ; 2 uses
  %i.e = icmp eq i8 %i.d, 48
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !65
  switch i8 %i.g, label %.thread [
    i8 120, label %bb.d
    i8 88, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = add i64 %3, -3                           ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  br i1 %i.j, label %.lr.ph.i, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !74

.lr.ph.i:                                         ; preds = %bb.d, %bb.i
  %.03049.i = phi i64 [ %i.q, %bb.i ], [ 0, %bb.d ] ; 3 uses
  %.03148.i = phi i64 [ %.1.i, %bb.i ], [ 0, %bb.d ]
  %i.k = shl i64 %.03148.i, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.03049.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !65    ; 5 uses
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
  br i1 %or.cond43.i, label %bb.h, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !2676

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
  br i1 %exitcond.not.i, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, label %.lr.ph.i, !llvm.loop !3364

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
  %i.w = load i8, ptr %.12532, align 1, !tbaa !65
  %i.x = icmp eq i8 %i.w, 48
  br i1 %i.x, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.y = add i64 %.133, -1                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.12532, i64 1
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %.critedge, label %bb.k, !llvm.loop !3365

.critedge:                                        ; preds = %bb.l, %bb.k
  %.125.lcssa = phi ptr [ %scevgep, %bb.l ], [ %.12532, %bb.k ]
  %.1.lcssa = phi i64 [ 0, %bb.l ], [ %.133, %bb.k ]
  %i.aa = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.aa, label %bb.m, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !74

bb.m:                                             ; preds = %.critedge
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !549 ; 4 uses
  br i1 %i.v, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ac = icmp ugt i64 %i.ab, -9223372036854775808
  br i1 %i.ac, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %bb.o, !prof !89

bb.o:                                             ; preds = %bb.n
  %i.ad = sub i64 0, %i.ab
  br label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split

bb.p:                                             ; preds = %bb.m
  %i.ae = icmp slt i64 %i.ab, 0
  br i1 %i.ae, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, !prof !89

_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split: ; preds = %bb.i, %bb.o, %bb.p
  %storemerge.sink = phi i64 [ %i.ab, %bb.p ], [ %i.ad, %bb.o ], [ %.1.i, %bb.i ]
  store i64 %storemerge.sink, ptr %4, align 8, !tbaa !549
  br label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread

_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread: ; preds = %bb.g, %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, %bb.d, %bb.p, %bb.n, %.critedge, %bb.j, %bb.a
  %.022 = phi i1 [ false, %bb.j ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.p ], [ false, %.critedge ], [ true, %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split ], [ false, %bb.n ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i1 %.022
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !65
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext nneg i8 %i.c to i64                 ; 2 uses
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not247 = icmp eq i64 %1, 1
  br i1 %.not247, label %bb.aq, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !65
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
  %i.n = load i8, ptr %i.f, align 1, !tbaa !65
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
  %i.u = load i8, ptr %i.m, align 1, !tbaa !65
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
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !65
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
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !65
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
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !65
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
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !65
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
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !65
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
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !65
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal11CastFunctorINS_10UInt64TypeENS_11BooleanTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  store ptr null, ptr %0, align 8, !tbaa !71, !alias.scope !4251
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_10UInt64TypeENS_10BinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.1419", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !4258
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !374, !noalias !4261
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !4258
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_10UInt64TypeENS_15LargeBinaryTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.1429", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !4264
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !374, !noalias !4267
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !4264
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  %15 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !71, !alias.scope !4270
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.e = load i8, ptr %i.d, align 8, !tbaa !359
  switch i8 %i.e, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %bb.b
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !489

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.17.sink = phi ptr [ @.str.16, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.17, %bb.a ]
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.f, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.str.17.sink, ptr %i.g, align 8, !tbaa !362
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.bs

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !517
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !518
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i8 0, ptr %i.c, align 1, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !521  ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.br, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !517  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !518
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !518  ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %storemerge.i.i.i = select i1 %i.x, ptr %i.c, ptr %i.w ; 2 uses
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !518  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.y, i64 noundef %i.q, i64 noundef %i.n)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.c
  %i.z = icmp sgt i64 %i.n, 0
  br i1 %i.z, label %.lr.ph109.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph109.i.i.i.i:                                ; preds = %.noexc8
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph109.i.i.i.i
  %.0 = phi ptr [ %i.l, %.lr.ph109.i.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.024108.i.i.i.i = phi i64 [ 0, %.lr.ph109.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.ai = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc9:                                          ; preds = %bb.d
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.ai to i16 ; 3 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.ai, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.aj = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.aj, label %.preheader.i.i.i.i, label %bb.aj

.preheader.i.i.i.i:                               ; preds = %.noexc9
  %i.al = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  br i1 %i.ak, label %.lr.ph106.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph106.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i
  %.3 = phi ptr [ %i.dv, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.023105.i.i.i.i = phi i64 [ %i.dw, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %.1104.i.i.i.i = phi i64 [ %i.dx, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ %.024108.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.1104.i.i.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 3 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ao ; 6 uses
  %i.aq = getelementptr i8, ptr %i.am, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3  ; 2 uses
  %i.as = sub nsw i32 %i.ar, %i.an                ; 2 uses
  %i.at = sext i32 %i.as to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %i.at, ptr %11, align 8
  store ptr %i.ap, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !549
  %i.au = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.e, label %bb.g, !prof !534

bb.e:                                             ; preds = %.lr.ph106.i.i.i.i
  %i.aw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  %.not.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !41
  %i.ax = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph106.i.i.i.i
  %i.ay = icmp eq i32 %i.ar, %i.an
  br i1 %i.ay, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, label %bb.h, !prof !89

bb.h:                                             ; preds = %bb.g
  %i.az = icmp ugt i32 %i.as, 2
  br i1 %i.az, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ba = load i8, ptr %i.ap, align 1, !tbaa !65
  %i.bb = icmp eq i8 %i.ba, 48
  br i1 %i.bb, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !65
  switch i8 %i.bd, label %bb.q [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.bf = add nsw i64 %i.at, -3                   ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 16
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !74

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %bb.p
  %.03049.i.i.i.i.i.i.i = phi i64 [ %i.bn, %bb.p ], [ 0, %bb.k ] ; 3 uses
  %.03148.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i, %bb.p ], [ 0, %bb.k ]
  %i.bh = shl i64 %.03148.i.i.i.i.i.i.i, 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %.03049.i.i.i.i.i.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !65  ; 5 uses
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
  br i1 %or.cond43.i.i.i.i.i.i.i, label %bb.o, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !2676

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
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread83.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3364

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread83.i.i.i.i: ; preds = %bb.p
  store i64 %.1.i.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !549
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

bb.q:                                             ; preds = %bb.j, %bb.i, %bb.h
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ap, i64 %i.at
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.01722.i.i.i.i.i.i = phi i64 [ %i.at, %bb.q ], [ %i.bq, %bb.s ] ; 2 uses
  %.01821.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.q ], [ %i.br, %bb.s ] ; 3 uses
  %i.bo = load i8, ptr %.01821.i.i.i.i.i.i, align 1, !tbaa !65
  %i.bp = icmp eq i8 %i.bo, 48
  br i1 %i.bp, label %bb.s, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bq = add i64 %.01722.i.i.i.i.i.i, -1         ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i, i64 1
  %.not.i.i37.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i37.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, label %bb.r, !llvm.loop !4273

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.018.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %bb.s ], [ %.01821.i.i.i.i.i.i, %bb.r ]
  %.017.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.s ], [ %.01722.i.i.i.i.i.i, %bb.r ]
  %i.bs = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i.i.i.i.i, i64 noundef %.017.lcssa.i.i.i.i.i.i, ptr noundef nonnull %i.b)
  br i1 %i.bs, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !4274

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i: ; preds = %bb.n, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, %bb.k, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !4275)
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc10 unwind label %.loopexit ; 2 uses

.noexc10:                                         ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !64, !noalias !4275 ; 3 uses
  store ptr %i.bu, ptr %14, align 8, !tbaa !64, !alias.scope !4275
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !43, !noalias !4275 ; 3 uses
  store ptr %i.bw, ptr %i.af, align 8, !tbaa !43, !alias.scope !4275
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65, !noalias !4275
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !3, !noalias !4275
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !3, !noalias !4275
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.cb = atomicrmw volatile add ptr %i.bx, i32 1 acq_rel, align 4, !noalias !4275 ; 0 uses
  %.pre115.i.i.i.i = load ptr, ptr %14, align 8, !tbaa !64
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i

_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i: ; preds = %bb.v, %bb.u, %.noexc10
  %i.cc = phi ptr [ %i.bu, %.noexc10 ], [ %i.bu, %bb.u ], [ %.pre115.i.i.i.i, %bb.v ] ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !41
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %i.cc, i1 noundef zeroext false)
          to label %bb.w unwind label %bb.ah

bb.w:                                             ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !4278
  invoke void @_ZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(26) @.str.18, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(23) @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc.i.i.i.i unwind label %bb.ai

.noexc.i.i.i.i:                                   ; preds = %bb.w
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc.i.i.i.i
  %i.cg = load ptr, ptr %6, align 8, !tbaa !107, !noalias !4278 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ag
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.ci = load i64, ptr %i.ag, align 8, !tbaa !65, !noalias !4278
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.noexc.i.i.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %6, align 8, !tbaa !107, !noalias !4278 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ag
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i: ; preds = %bb.y
  %i.cn = load i64, ptr %i.ag, align 8, !tbaa !65, !noalias !4278
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !4278
  br label %.body.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !4278
  %i.cp = load ptr, ptr %0, align 8, !tbaa !71    ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.z, !prof !74

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !75, !range !85, !noundef !86
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %bb.aa, %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.ct = load ptr, ptr %12, align 8, !tbaa !71
  store ptr %i.ct, ptr %0, align 8, !tbaa !71
  store ptr null, ptr %12, align 8, !tbaa !71
  %i.cu = load ptr, ptr %13, align 8, !tbaa !107  ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ah
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.cw = load i64, ptr %i.ah, align 8, !tbaa !65
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cy = load ptr, ptr %i.af, align 8, !tbaa !43 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cz, align 8, !tbaa !38
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !40
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !41
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #26, !inline_history !4283
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #26, !inline_history !4283
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i36.i.i.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i36.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dc, %bb.ae ], [ %i.dm, %bb.af ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.dn, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !89

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

bb.ah:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i

bb.ai:                                            ; preds = %bb.w
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.dp, %bb.ai ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i ] ; 2 uses
  %i.dq = load ptr, ptr %13, align 8, !tbaa !107  ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.ah
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i: ; preds = %.body.i.i.i.i
  %i.ds = load i64, ptr %i.ah, align 8, !tbaa !65
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i: ; preds = %.body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i, %bb.ah
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.do, %bb.ah ], [ %eh.lpad-body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.body

_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread83.i.i.i.i
  %i.du = load i64, ptr %i.b, align 8, !tbaa !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.dv = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 2 uses
  store i64 %i.du, ptr %.3, align 8, !tbaa !549
  %i.dw = add nuw nsw i64 %.023105.i.i.i.i, 1     ; 2 uses
  %i.dx = add nsw i64 %.1104.i.i.i.i, 1           ; 2 uses
  %exitcond114.not.i.i.i.i = icmp eq i64 %i.dw, %i.al
  br i1 %exitcond114.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph106.i.i.i.i, !llvm.loop !4284

bb.aj:                                            ; preds = %.noexc9
  %i.dy = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.dy, label %.preheader88.i.i.i.i, label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %bb.aj
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader90.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.ai, 32767
  %i.dz = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.ea = add i64 %.024108.i.i.i.i, %i.dz         ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader88.i.i.i.i:                             ; preds = %bb.aj
  br i1 %i.ak, label %.lr.ph102.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph102.i.i.i.i:                                ; preds = %.preheader88.i.i.i.i
  %i.eb = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ec = shl nuw nsw i64 %i.eb, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.0, i8 0, i64 %i.ec, i1 false), !tbaa !549
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.ec
  %i.ed = add i64 %.024108.i.i.i.i, %i.eb
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bq, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.hv, %bb.bq ] ; 2 uses
  %.398.i.i.i.i = phi i64 [ %.024108.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.hw, %bb.bq ] ; 3 uses
  %i.ee = add nsw i64 %.398.i.i.i.i, %i.q         ; 2 uses
  %i.ef = lshr i64 %i.ee, 3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !65
  %i.ei = trunc i64 %i.ee to i8
  %i.ej = and i8 %i.ei, 7
  %i.ek = lshr i8 %i.eh, %i.ej
  %i.el = trunc i8 %i.ek to i1
  br i1 %i.el, label %bb.ak, label %bb.bq

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.em = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.398.i.i.i.i ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3  ; 3 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.eo ; 6 uses
  %i.eq = getelementptr i8, ptr %i.em, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3  ; 2 uses
  %i.es = sub nsw i32 %i.er, %i.en                ; 2 uses
  %i.et = sext i32 %i.es to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %i.et, ptr %7, align 8
  store ptr %i.ep, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !549
  %i.eu = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.ev = icmp eq i8 %i.eu, 0
  br i1 %i.ev, label %bb.al, label %bb.an, !prof !534

bb.al:                                            ; preds = %bb.ak
  %i.ew = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  %.not.i76.i.i.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i76.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !41
  %i.ex = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.ey = icmp eq i32 %i.er, %i.en
  br i1 %i.ey, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread.i.i.i.i, label %bb.ao, !prof !89

bb.ao:                                            ; preds = %bb.an
  %i.ez = icmp ugt i32 %i.es, 2
  br i1 %i.ez, label %bb.ap, label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  %i.fa = load i8, ptr %i.ep, align 1, !tbaa !65
  %i.fb = icmp eq i8 %i.fa, 48
  br i1 %i.fb, label %bb.aq, label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !65
  switch i8 %i.fd, label %bb.ax [
    i8 120, label %bb.ar
    i8 88, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.ff = add nsw i64 %i.et, -3                   ; 2 uses
  %i.fg = icmp ult i64 %i.ff, 16
  br i1 %i.fg, label %.lr.ph.i.i.i63.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread.i.i.i.i, !prof !74

.lr.ph.i.i.i63.i.i.i.i:                           ; preds = %bb.ar, %bb.aw
  %.03049.i.i.i64.i.i.i.i = phi i64 [ %i.fn, %bb.aw ], [ 0, %bb.ar ] ; 3 uses
  %.03148.i.i.i65.i.i.i.i = phi i64 [ %.1.i.i.i72.i.i.i.i, %bb.aw ], [ 0, %bb.ar ]
  %i.fh = shl i64 %.03148.i.i.i65.i.i.i.i, 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.03049.i.i.i64.i.i.i.i
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !65  ; 5 uses
  %i.fk = add i8 %i.fj, -48                       ; 2 uses
  %or.cond.i.i.i66.i.i.i.i = icmp ult i8 %i.fk, 10
  br i1 %or.cond.i.i.i66.i.i.i.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i63.i.i.i.i
  %i.fl = add i8 %i.fj, -65
  %or.cond42.i.i.i67.i.i.i.i = icmp ult i8 %i.fl, 6
  br i1 %or.cond42.i.i.i67.i.i.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %narrow40.i.i.i75.i.i.i.i = add nuw nsw i8 %i.fj, 9
  %18 = and i8 %narrow40.i.i.i75.i.i.i.i, 31
  br label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.fm = add i8 %i.fj, -97
  %or.cond43.i.i.i68.i.i.i.i = icmp ult i8 %i.fm, 6
  br i1 %or.cond43.i.i.i68.i.i.i.i, label %bb.av, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread.i.i.i.i, !prof !2676

bb.av:                                            ; preds = %bb.au
  %narrow.i.i.i69.i.i.i.i = add nuw nsw i8 %i.fj, 9
  %19 = and i8 %narrow.i.i.i69.i.i.i.i, 31
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at, %.lr.ph.i.i.i63.i.i.i.i
  %.pn.in.i.i.i70.i.i.i.i = phi i8 [ %19, %bb.av ], [ %18, %bb.at ], [ %i.fk, %.lr.ph.i.i.i63.i.i.i.i ]
  %.pn.i.i.i71.i.i.i.i = zext nneg i8 %.pn.in.i.i.i70.i.i.i.i to i64
  %.1.i.i.i72.i.i.i.i = or i64 %i.fh, %.pn.i.i.i71.i.i.i.i ; 2 uses
  %i.fn = add nuw nsw i64 %.03049.i.i.i64.i.i.i.i, 1
  %exitcond.not.i.i.i73.i.i.i.i = icmp eq i64 %.03049.i.i.i64.i.i.i.i, %i.ff
  br i1 %exitcond.not.i.i.i73.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread86.i.i.i.i, label %.lr.ph.i.i.i63.i.i.i.i, !llvm.loop !3364

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread86.i.i.i.i: ; preds = %bb.aw
  store i64 %.1.i.i.i72.i.i.i.i, ptr %i.a, align 8, !tbaa !549
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i

bb.ax:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %scevgep.i.i55.i.i.i.i = getelementptr i8, ptr %i.ep, i64 %i.et
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.01722.i.i56.i.i.i.i = phi i64 [ %i.et, %bb.ax ], [ %i.fq, %bb.az ] ; 2 uses
  %.01821.i.i57.i.i.i.i = phi ptr [ %i.ep, %bb.ax ], [ %i.fr, %bb.az ] ; 3 uses
  %i.fo = load i8, ptr %.01821.i.i57.i.i.i.i, align 1, !tbaa !65
  %i.fp = icmp eq i8 %i.fo, 48
  br i1 %i.fp, label %bb.az, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.fq = add i64 %.01722.i.i56.i.i.i.i, -1       ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.01821.i.i57.i.i.i.i, i64 1
  %.not.i.i62.i.i.i.i = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i62.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i, label %bb.ay, !llvm.loop !4273

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.018.lcssa.i.i59.i.i.i.i = phi ptr [ %scevgep.i.i55.i.i.i.i, %bb.az ], [ %.01821.i.i57.i.i.i.i, %bb.ay ]
  %.017.lcssa.i.i60.i.i.i.i = phi i64 [ 0, %bb.az ], [ %.01722.i.i56.i.i.i.i, %bb.ay ]
  %i.fs = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i59.i.i.i.i, i64 noundef %.017.lcssa.i.i60.i.i.i.i, ptr noundef nonnull %i.a)
  br i1 %i.fs, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread.i.i.i.i, !prof !4274

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread.i.i.i.i: ; preds = %bb.au, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i, %bb.ar, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !4285)
  %i.ft = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc11:                                         ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread.i.i.i.i
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !64, !noalias !4285 ; 3 uses
  store ptr %i.fu, ptr %10, align 8, !tbaa !64, !alias.scope !4285
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !43, !noalias !4285 ; 3 uses
  store ptr %i.fw, ptr %i.ab, align 8, !tbaa !43, !alias.scope !4285
  %.not.i.i.i.i52.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i52.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit54.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.noexc11
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 3 uses
  %i.fy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65, !noalias !4285
  %.not.i.i.i.i.i53.i.i.i.i = icmp eq i8 %i.fy, 0
  br i1 %.not.i.i.i.i.i53.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !3, !noalias !4285
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fx, align 4, !tbaa !3, !noalias !4285
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit54.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.gb = atomicrmw volatile add ptr %i.fx, i32 1 acq_rel, align 4, !noalias !4285 ; 0 uses
  %.pre.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !64
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit54.i.i.i.i

_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit54.i.i.i.i: ; preds = %bb.bc, %bb.bb, %.noexc11
  %i.gc = phi ptr [ %i.fu, %.noexc11 ], [ %i.fu, %bb.bb ], [ %.pre.i.i.i.i, %bb.bc ] ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !41
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8
  invoke void %i.gf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.gc, i1 noundef zeroext false)
          to label %bb.bd unwind label %bb.bo

bb.bd:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit54.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !4288
  invoke void @_ZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(26) @.str.18, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(23) @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc48.i.i.i.i unwind label %bb.bp

.noexc48.i.i.i.i:                                 ; preds = %bb.bd
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %.noexc48.i.i.i.i
  %i.gg = load ptr, ptr %5, align 8, !tbaa !107, !noalias !4288 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.ac
  br i1 %i.gh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46.i.i.i.i: ; preds = %bb.be
  %i.gi = load i64, ptr %i.ac, align 8, !tbaa !65, !noalias !4288
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47.i.i.i.i

bb.bf:                                            ; preds = %.noexc48.i.i.i.i
  %i.gk = landingpad { ptr, i32 }
          cleanup
  %i.gl = load ptr, ptr %5, align 8, !tbaa !107, !noalias !4288 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.ac
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i44.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i43.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i43.i.i.i.i: ; preds = %bb.bf
  %i.gn = load i64, ptr %i.ac, align 8, !tbaa !65, !noalias !4288
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i44.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i44.i.i.i.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i43.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !4288
  br label %.body49.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47.i.i.i.i: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !4288
  %i.gp = load ptr, ptr %0, align 8, !tbaa !71    ; 2 uses
  %.not.i.i.i30.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i30.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i, label %bb.bg, !prof !74

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !75, !range !85, !noundef !86
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i:            ; preds = %bb.bh, %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47.i.i.i.i
  %i.gt = load ptr, ptr %8, align 8, !tbaa !71
  store ptr %i.gt, ptr %0, align 8, !tbaa !71
  store ptr null, ptr %8, align 8, !tbaa !71
  %i.gu = load ptr, ptr %9, align 8, !tbaa !107   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.ad
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i
  %i.gw = load i64, ptr %i.ad, align 8, !tbaa !65
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i.i.i.i
  %i.gy = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 8 uses
  %.not.i.i38.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i38.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 4 uses
  %i.ha = load atomic i64, ptr %i.gz acquire, align 8 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 4294967297
  %i.hc = trunc i64 %i.ha to i32                  ; 2 uses
  br i1 %i.hb, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.gz, align 8, !tbaa !38
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  store i32 0, ptr %i.hd, align 4, !tbaa !40
  %i.he = load ptr, ptr %i.gy, align 8, !tbaa !41
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %i.gy) #26, !inline_history !4283
  %i.hh = load ptr, ptr %i.gy, align 8, !tbaa !41
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %i.gy) #26, !inline_history !4283
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.hk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i39.i.i.i.i = icmp eq i8 %i.hk, 0
  br i1 %.not.i.i.i39.i.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hl = add nsw i32 %i.hc, -1
  store i32 %i.hl, ptr %i.gz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40.i.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.hm = atomicrmw volatile add ptr %i.gz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40.i.i.i.i: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i41.i.i.i.i = phi i32 [ %i.hc, %bb.bl ], [ %i.hm, %bb.bm ]
  %i.hn = icmp eq i32 %.0.i.i.i.i41.i.i.i.i, 1
  br i1 %i.hn, label %bb.bn, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42.i.i.i.i, !prof !89

bb.bn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gy) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42.i.i.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42.i.i.i.i: ; preds = %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40.i.i.i.i, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i

bb.bo:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit54.i.i.i.i
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i26.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_10BinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i26.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i, %bb.bs
  %.pn = phi { ptr, i32 } [ %i.hy, %bb.bs ], [ %.pn.i27.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i26.i.i.i.i ], [ %.pn.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit15, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.hz = load ptr, ptr %0, align 8, !tbaa !71    ; 2 uses
  %.not.i = icmp eq ptr %i.hz, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.bt, !prof !74

bb.bt:                                            ; preds = %.body
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !75, !range !85, !noundef !86
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %_ZN5arrow6StatusD2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.body, %bb.bt, %bb.bu
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare void @_ZN5arrow11IntegerTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_15LargeBinaryTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  %15 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !71, !alias.scope !4295
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.e = load i8, ptr %i.d, align 8, !tbaa !359
  switch i8 %i.e, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %bb.b
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !489

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.17.sink = phi ptr [ @.str.16, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.17, %bb.a ]
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.f, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.str.17.sink, ptr %i.g, align 8, !tbaa !362
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.bs

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !517
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !518
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i8 0, ptr %i.c, align 1, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !521  ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.br, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !517  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !518
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !518  ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %storemerge.i.i.i = select i1 %i.x, ptr %i.c, ptr %i.w ; 4 uses
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !518  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.y, i64 noundef %i.q, i64 noundef %i.n)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.c
  %i.z = icmp sgt i64 %i.n, 0
  br i1 %i.z, label %.lr.ph109.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph109.i.i.i.i:                                ; preds = %.noexc8
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph109.i.i.i.i
  %.0 = phi ptr [ %i.l, %.lr.ph109.i.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.024108.i.i.i.i = phi i64 [ 0, %.lr.ph109.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.ai = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc9:                                          ; preds = %bb.d
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.ai to i16 ; 3 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.ai, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.aj = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.aj, label %.preheader.i.i.i.i, label %bb.aj

.preheader.i.i.i.i:                               ; preds = %.noexc9
  %i.al = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  br i1 %i.ak, label %.lr.ph106.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph106.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i
  %.3 = phi ptr [ %i.dt, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.023105.i.i.i.i = phi i64 [ %i.du, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %.1104.i.i.i.i = phi i64 [ %i.dv, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ %.024108.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.1104.i.i.i.i ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !549 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.an ; 5 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !549 ; 2 uses
  %i.ar = sub nsw i64 %i.aq, %i.an                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %i.ar, ptr %11, align 8
  store ptr %i.ao, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !549
  %i.as = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.e, label %bb.g, !prof !534

bb.e:                                             ; preds = %.lr.ph106.i.i.i.i
  %i.au = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  %.not.i.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !41
  %i.av = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph106.i.i.i.i
  %i.aw = icmp eq i64 %i.ar, 0
  br i1 %i.aw, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, label %bb.h, !prof !89

bb.h:                                             ; preds = %bb.g
  %i.ax = icmp ugt i64 %i.ar, 2
  br i1 %i.ax, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ay = load i8, ptr %i.ao, align 1, !tbaa !65
  %i.az = icmp eq i8 %i.ay, 48
  br i1 %i.az, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !65
  switch i8 %i.bb, label %bb.q [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.bd = add i64 %i.ar, -3                       ; 2 uses
  %i.be = icmp ult i64 %i.bd, 16
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !74

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %bb.p
  %.03049.i.i.i.i.i.i.i = phi i64 [ %i.bl, %bb.p ], [ 0, %bb.k ] ; 3 uses
  %.03148.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i, %bb.p ], [ 0, %bb.k ]
  %i.bf = shl i64 %.03148.i.i.i.i.i.i.i, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.03049.i.i.i.i.i.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !65  ; 5 uses
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
  br i1 %or.cond43.i.i.i.i.i.i.i, label %bb.o, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !2676

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
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread83.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3364

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread83.i.i.i.i: ; preds = %bb.p
  store i64 %.1.i.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !549
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

bb.q:                                             ; preds = %bb.j, %bb.i, %bb.h
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %storemerge.i.i.i, i64 %i.aq
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.01722.i.i.i.i.i.i = phi i64 [ %i.ar, %bb.q ], [ %i.bo, %bb.s ] ; 2 uses
  %.01821.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.q ], [ %i.bp, %bb.s ] ; 3 uses
  %i.bm = load i8, ptr %.01821.i.i.i.i.i.i, align 1, !tbaa !65
  %i.bn = icmp eq i8 %i.bm, 48
  br i1 %i.bn, label %bb.s, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bo = add i64 %.01722.i.i.i.i.i.i, -1         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i, i64 1
  %.not.i.i37.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i37.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, label %bb.r, !llvm.loop !4273

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.018.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %bb.s ], [ %.01821.i.i.i.i.i.i, %bb.r ]
  %.017.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.s ], [ %.01722.i.i.i.i.i.i, %bb.r ]
  %i.bq = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i.i.i.i.i, i64 noundef %.017.lcssa.i.i.i.i.i.i, ptr noundef nonnull %i.b)
  br i1 %i.bq, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !4274

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i: ; preds = %bb.n, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, %bb.k, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !4298)
  %i.br = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc10 unwind label %.loopexit ; 2 uses

.noexc10:                                         ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !64, !noalias !4298 ; 3 uses
  store ptr %i.bs, ptr %14, align 8, !tbaa !64, !alias.scope !4298
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !43, !noalias !4298 ; 3 uses
  store ptr %i.bu, ptr %i.af, align 8, !tbaa !43, !alias.scope !4298
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65, !noalias !4298
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !4298
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !3, !noalias !4298
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bz = atomicrmw volatile add ptr %i.bv, i32 1 acq_rel, align 4, !noalias !4298 ; 0 uses
  %.pre115.i.i.i.i = load ptr, ptr %14, align 8, !tbaa !64
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i

_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i: ; preds = %bb.v, %bb.u, %.noexc10
  %i.ca = phi ptr [ %i.bs, %.noexc10 ], [ %i.bs, %bb.u ], [ %.pre115.i.i.i.i, %bb.v ] ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %i.ca, i1 noundef zeroext false)
          to label %bb.w unwind label %bb.ah

bb.w:                                             ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !4301
  invoke void @_ZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(26) @.str.18, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(23) @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc.i.i.i.i unwind label %bb.ai

.noexc.i.i.i.i:                                   ; preds = %bb.w
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc.i.i.i.i
  %i.ce = load ptr, ptr %6, align 8, !tbaa !107, !noalias !4301 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ag
  br i1 %i.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.cg = load i64, ptr %i.ag, align 8, !tbaa !65, !noalias !4301
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.noexc.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %6, align 8, !tbaa !107, !noalias !4301 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ag
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i: ; preds = %bb.y
  %i.cl = load i64, ptr %i.ag, align 8, !tbaa !65, !noalias !4301
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !4301
  br label %.body.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !4301
  %i.cn = load ptr, ptr %0, align 8, !tbaa !71    ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.z, !prof !74

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !75, !range !85, !noundef !86
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %bb.aa, %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.cr = load ptr, ptr %12, align 8, !tbaa !71
  store ptr %i.cr, ptr %0, align 8, !tbaa !71
  store ptr null, ptr %12, align 8, !tbaa !71
  %i.cs = load ptr, ptr %13, align 8, !tbaa !107  ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ah
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.cu = load i64, ptr %i.ah, align 8, !tbaa !65
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cw = load ptr, ptr %i.af, align 8, !tbaa !43 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.cy = load atomic i64, ptr %i.cx acquire, align 8 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 4294967297
  %i.da = trunc i64 %i.cy to i32                  ; 2 uses
  br i1 %i.cz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cx, align 8, !tbaa !38
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 0, ptr %i.db, align 4, !tbaa !40
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !41
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #26, !inline_history !4306
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !41
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #26, !inline_history !4306
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i36.i.i.i.i = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i36.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = add nsw i32 %i.da, -1
  store i32 %i.dj, ptr %i.cx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dk = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.da, %bb.ae ], [ %i.dk, %bb.af ]
  %i.dl = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.dl, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !89

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

bb.ah:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i

bb.ai:                                            ; preds = %bb.w
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.dn, %bb.ai ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i ] ; 2 uses
  %i.do = load ptr, ptr %13, align 8, !tbaa !107  ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ah
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i: ; preds = %.body.i.i.i.i
  %i.dq = load i64, ptr %i.ah, align 8, !tbaa !65
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i: ; preds = %.body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i, %bb.ah
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.dm, %bb.ah ], [ %eh.lpad-body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.body

_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread83.i.i.i.i
  %i.ds = load i64, ptr %i.b, align 8, !tbaa !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.dt = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 2 uses
  store i64 %i.ds, ptr %.3, align 8, !tbaa !549
  %i.du = add nuw nsw i64 %.023105.i.i.i.i, 1     ; 2 uses
  %i.dv = add nsw i64 %.1104.i.i.i.i, 1           ; 2 uses
  %exitcond114.not.i.i.i.i = icmp eq i64 %i.du, %i.al
  br i1 %exitcond114.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph106.i.i.i.i, !llvm.loop !4307

bb.aj:                                            ; preds = %.noexc9
  %i.dw = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.dw, label %.preheader88.i.i.i.i, label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %bb.aj
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader90.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.ai, 32767
  %i.dx = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.dy = add i64 %.024108.i.i.i.i, %i.dx         ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader88.i.i.i.i:                             ; preds = %bb.aj
  br i1 %i.ak, label %.lr.ph102.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph102.i.i.i.i:                                ; preds = %.preheader88.i.i.i.i
  %i.dz = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ea = shl nuw nsw i64 %i.dz, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.0, i8 0, i64 %i.ea, i1 false), !tbaa !549
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.ea
  %i.eb = add i64 %.024108.i.i.i.i, %i.dz
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bq, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.hr, %bb.bq ] ; 2 uses
  %.398.i.i.i.i = phi i64 [ %.024108.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.hs, %bb.bq ] ; 3 uses
  %i.ec = add nsw i64 %.398.i.i.i.i, %i.q         ; 2 uses
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !65
  %i.eg = trunc i64 %i.ec to i8
  %i.eh = and i8 %i.eg, 7
  %i.ei = lshr i8 %i.ef, %i.eh
  %i.ej = trunc i8 %i.ei to i1
  br i1 %i.ej, label %bb.ak, label %bb.bq

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.398.i.i.i.i ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !549 ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.el ; 5 uses
  %i.en = getelementptr i8, ptr %i.ek, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !549 ; 2 uses
  %i.ep = sub nsw i64 %i.eo, %i.el                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %i.ep, ptr %7, align 8
  store ptr %i.em, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !549
  %i.eq = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.er = icmp eq i8 %i.eq, 0
  br i1 %i.er, label %bb.al, label %bb.an, !prof !534

bb.al:                                            ; preds = %bb.ak
  %i.es = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  %.not.i76.i.i.i.i = icmp eq i32 %i.es, 0
  br i1 %.not.i76.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !41
  %i.et = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.eu = icmp eq i64 %i.ep, 0
  br i1 %i.eu, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread.i.i.i.i, label %bb.ao, !prof !89

bb.ao:                                            ; preds = %bb.an
  %i.ev = icmp ugt i64 %i.ep, 2
  br i1 %i.ev, label %bb.ap, label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  %i.ew = load i8, ptr %i.em, align 1, !tbaa !65
  %i.ex = icmp eq i8 %i.ew, 48
  br i1 %i.ex, label %bb.aq, label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !65
  switch i8 %i.ez, label %bb.ax [
    i8 120, label %bb.ar
    i8 88, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %i.fb = add i64 %i.ep, -3                       ; 2 uses
  %i.fc = icmp ult i64 %i.fb, 16
  br i1 %i.fc, label %.lr.ph.i.i.i63.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread.i.i.i.i, !prof !74

.lr.ph.i.i.i63.i.i.i.i:                           ; preds = %bb.ar, %bb.aw
  %.03049.i.i.i64.i.i.i.i = phi i64 [ %i.fj, %bb.aw ], [ 0, %bb.ar ] ; 3 uses
  %.03148.i.i.i65.i.i.i.i = phi i64 [ %.1.i.i.i72.i.i.i.i, %bb.aw ], [ 0, %bb.ar ]
  %i.fd = shl i64 %.03148.i.i.i65.i.i.i.i, 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.03049.i.i.i64.i.i.i.i
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !65  ; 5 uses
  %i.fg = add i8 %i.ff, -48                       ; 2 uses
  %or.cond.i.i.i66.i.i.i.i = icmp ult i8 %i.fg, 10
  br i1 %or.cond.i.i.i66.i.i.i.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i63.i.i.i.i
  %i.fh = add i8 %i.ff, -65
  %or.cond42.i.i.i67.i.i.i.i = icmp ult i8 %i.fh, 6
  br i1 %or.cond42.i.i.i67.i.i.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %narrow40.i.i.i75.i.i.i.i = add nuw nsw i8 %i.ff, 9
  %18 = and i8 %narrow40.i.i.i75.i.i.i.i, 31
  br label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.fi = add i8 %i.ff, -97
  %or.cond43.i.i.i68.i.i.i.i = icmp ult i8 %i.fi, 6
  br i1 %or.cond43.i.i.i68.i.i.i.i, label %bb.av, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread.i.i.i.i, !prof !2676

bb.av:                                            ; preds = %bb.au
  %narrow.i.i.i69.i.i.i.i = add nuw nsw i8 %i.ff, 9
  %19 = and i8 %narrow.i.i.i69.i.i.i.i, 31
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at, %.lr.ph.i.i.i63.i.i.i.i
  %.pn.in.i.i.i70.i.i.i.i = phi i8 [ %19, %bb.av ], [ %18, %bb.at ], [ %i.fg, %.lr.ph.i.i.i63.i.i.i.i ]
  %.pn.i.i.i71.i.i.i.i = zext nneg i8 %.pn.in.i.i.i70.i.i.i.i to i64
  %.1.i.i.i72.i.i.i.i = or i64 %i.fd, %.pn.i.i.i71.i.i.i.i ; 2 uses
  %i.fj = add nuw nsw i64 %.03049.i.i.i64.i.i.i.i, 1
  %exitcond.not.i.i.i73.i.i.i.i = icmp eq i64 %.03049.i.i.i64.i.i.i.i, %i.fb
  br i1 %exitcond.not.i.i.i73.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread86.i.i.i.i, label %.lr.ph.i.i.i63.i.i.i.i, !llvm.loop !3364

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread86.i.i.i.i: ; preds = %bb.aw
  store i64 %.1.i.i.i72.i.i.i.i, ptr %i.a, align 8, !tbaa !549
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i

bb.ax:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %scevgep.i.i55.i.i.i.i = getelementptr i8, ptr %storemerge.i.i.i, i64 %i.eo
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.01722.i.i56.i.i.i.i = phi i64 [ %i.ep, %bb.ax ], [ %i.fm, %bb.az ] ; 2 uses
  %.01821.i.i57.i.i.i.i = phi ptr [ %i.em, %bb.ax ], [ %i.fn, %bb.az ] ; 3 uses
  %i.fk = load i8, ptr %.01821.i.i57.i.i.i.i, align 1, !tbaa !65
  %i.fl = icmp eq i8 %i.fk, 48
  br i1 %i.fl, label %bb.az, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.fm = add i64 %.01722.i.i56.i.i.i.i, -1       ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.01821.i.i57.i.i.i.i, i64 1
  %.not.i.i62.i.i.i.i = icmp eq i64 %i.fm, 0
  br i1 %.not.i.i62.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i, label %bb.ay, !llvm.loop !4273

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.018.lcssa.i.i59.i.i.i.i = phi ptr [ %scevgep.i.i55.i.i.i.i, %bb.az ], [ %.01821.i.i57.i.i.i.i, %bb.ay ]
  %.017.lcssa.i.i60.i.i.i.i = phi i64 [ 0, %bb.az ], [ %.01722.i.i56.i.i.i.i, %bb.ay ]
  %i.fo = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i59.i.i.i.i, i64 noundef %.017.lcssa.i.i60.i.i.i.i, ptr noundef nonnull %i.a)
  br i1 %i.fo, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread.i.i.i.i, !prof !4274

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread.i.i.i.i: ; preds = %bb.au, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.i.i.i.i, %bb.ar, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !4308)
  %i.fp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc11:                                         ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit77.thread.i.i.i.i
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !64, !noalias !4308 ; 3 uses
  store ptr %i.fq, ptr %10, align 8, !tbaa !64, !alias.scope !4308
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !43, !noalias !4308 ; 3 uses
  store ptr %i.fs, ptr %i.ab, align 8, !tbaa !43, !alias.scope !4308
  %.not.i.i.i.i52.i.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i52.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit54.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.noexc11
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 3 uses
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65, !noalias !4308
  %.not.i.i.i.i.i53.i.i.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i.i.i53.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !3, !noalias !4308
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.ft, align 4, !tbaa !3, !noalias !4308
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit54.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.fx = atomicrmw volatile add ptr %i.ft, i32 1 acq_rel, align 4, !noalias !4308 ; 0 uses
  %.pre.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !64
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit54.i.i.i.i

_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit54.i.i.i.i: ; preds = %bb.bc, %bb.bb, %.noexc11
  %i.fy = phi ptr [ %i.fq, %.noexc11 ], [ %i.fq, %bb.bb ], [ %.pre.i.i.i.i, %bb.bc ] ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !41
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8
  invoke void %i.gb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.fy, i1 noundef zeroext false)
          to label %bb.bd unwind label %bb.bo

bb.bd:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit54.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !4311
  invoke void @_ZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(26) @.str.18, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(23) @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc48.i.i.i.i unwind label %bb.bp

.noexc48.i.i.i.i:                                 ; preds = %bb.bd
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %.noexc48.i.i.i.i
  %i.gc = load ptr, ptr %5, align 8, !tbaa !107, !noalias !4311 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ac
  br i1 %i.gd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46.i.i.i.i: ; preds = %bb.be
  %i.ge = load i64, ptr %i.ac, align 8, !tbaa !65, !noalias !4311
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47.i.i.i.i

bb.bf:                                            ; preds = %.noexc48.i.i.i.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  %i.gh = load ptr, ptr %5, align 8, !tbaa !107, !noalias !4311 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.ac
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i44.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i43.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i43.i.i.i.i: ; preds = %bb.bf
  %i.gj = load i64, ptr %i.ac, align 8, !tbaa !65, !noalias !4311
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i44.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i44.i.i.i.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i43.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !4311
  br label %.body49.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47.i.i.i.i: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i46.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !4311
  %i.gl = load ptr, ptr %0, align 8, !tbaa !71    ; 2 uses
  %.not.i.i.i30.i.i.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i30.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i, label %bb.bg, !prof !74

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !75, !range !85, !noundef !86
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i:            ; preds = %bb.bh, %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i47.i.i.i.i
  %i.gp = load ptr, ptr %8, align 8, !tbaa !71
  store ptr %i.gp, ptr %0, align 8, !tbaa !71
  store ptr null, ptr %8, align 8, !tbaa !71
  %i.gq = load ptr, ptr %9, align 8, !tbaa !107   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.ad
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i
  %i.gs = load i64, ptr %i.ad, align 8, !tbaa !65
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i31.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32.i.i.i.i
  %i.gu = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 8 uses
  %.not.i.i38.i.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i38.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.gv, align 8, !tbaa !38
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4, !tbaa !40
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !41
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #26, !inline_history !4306
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !41
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #26, !inline_history !4306
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i39.i.i.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i39.i.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40.i.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40.i.i.i.i: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i41.i.i.i.i = phi i32 [ %i.gy, %bb.bl ], [ %i.hi, %bb.bm ]
  %i.hj = icmp eq i32 %.0.i.i.i.i41.i.i.i.i, 1
  br i1 %i.hj, label %bb.bn, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42.i.i.i.i, !prof !89

bb.bn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42.i.i.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42.i.i.i.i: ; preds = %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40.i.i.i.i, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i33.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit35.i.i.i.i

bb.bo:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit54.i.i.i.i
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i26.i.i.i.i

end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal11CastFunctorINS_10UInt64TypeENS_14BinaryViewTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !374, !noalias !4321
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !4318
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeENS_14BinaryViewTypeENS1_11ParseStringIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  %15 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !71, !alias.scope !4324
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.d = load i8, ptr %i.c, align 8, !tbaa !359
  switch i8 %i.d, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %bb.b
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !489

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.17.sink = phi ptr [ @.str.16, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.17, %bb.a ]
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.str.17.sink, ptr %i.f, align 8, !tbaa !362
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.bv

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !517
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !518
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !521
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES3_NS1_11ParseStringIS6_EEE9ArrayExecIS6_vE4ExecERKS9_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSB_4ExecESD_SF_SI_SK_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESI_OSS_OT1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !517
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !518
  %i.s = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.p ; 2 uses
  %i.t = invoke { ptr, i64 } @_ZNK5arrow9ArraySpan18GetVariadicBuffersEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.v = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !518  ; 2 uses
  %i.x = load i64, ptr %i.o, align 8, !tbaa !517  ; 2 uses
  %i.y = load i64, ptr %i.l, align 8, !tbaa !521  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.w, i64 noundef %i.x, i64 noundef %i.y)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %.noexc8
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph110.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES3_NS7_11ParseStringISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph110.i.i.i.i:                                ; preds = %.noexc9
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph110.i.i.i.i
  %.0 = phi ptr [ %i.k, %.lr.ph110.i.i.i.i ], [ %.1, %.loopexit.i.i.i.i ] ; 7 uses
  %.024109.i.i.i.i = phi i64 [ 0, %.lr.ph110.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit.i.i.i.i ] ; 7 uses
  %i.ai = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc10:                                         ; preds = %bb.d
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.ai to i16 ; 3 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.ai, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.aj = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.aj, label %.preheader.i.i.i.i, label %bb.al

.preheader.i.i.i.i:                               ; preds = %.noexc10
  %i.al = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  br i1 %i.ak, label %.lr.ph107.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph107.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i
  %.3 = phi ptr [ %i.ei, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.023106.i.i.i.i = phi i64 [ %i.ej, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %.1105.i.i.i.i = phi i64 [ %i.ek, %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i ], [ %.024109.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds [16 x i8], ptr %i.s, i64 %.1105.i.i.i.i ; 4 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !65 ; 4 uses
  %i.ao = icmp slt i32 %i.an, 13
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph107.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph107.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !65
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !841 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 9
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !844, !range !85, !noundef !86
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = select i1 %i.ax, ptr %i.az, ptr null, !prof !74
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !65
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.bf = phi ptr [ %i.ap, %bb.e ], [ %i.be, %bb.f ] ; 6 uses
  %i.bg = sext i32 %i.an to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %i.bg, ptr %11, align 8
  store ptr %i.bf, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !549
  %i.bh = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.g, label %bb.i, !prof !534

bb.g:                                             ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i
  %i.bj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  %.not.i.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !41
  %i.bk = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit.i.i.i.i
  %i.bl = icmp eq i32 %i.an, 0
  br i1 %i.bl, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  %i.bm = icmp ugt i32 %i.an, 2
  br i1 %i.bm, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.bn = load i8, ptr %i.bf, align 1, !tbaa !65
  %i.bo = icmp eq i8 %i.bn, 48
  br i1 %i.bo, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !65
  switch i8 %i.bq, label %bb.s [
    i8 120, label %bb.m
    i8 88, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bs = add nsw i64 %i.bg, -3                   ; 2 uses
  %i.bt = icmp ult i64 %i.bs, 16
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !74

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.m, %bb.r
  %.03049.i.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.r ], [ 0, %bb.m ] ; 3 uses
  %.03148.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i, %bb.r ], [ 0, %bb.m ]
  %i.bu = shl i64 %.03148.i.i.i.i.i.i.i, 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %.03049.i.i.i.i.i.i.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !65  ; 5 uses
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
  br i1 %or.cond43.i.i.i.i.i.i.i, label %bb.q, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !2676

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
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread84.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3364

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread84.i.i.i.i: ; preds = %bb.r
  store i64 %.1.i.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !549
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

bb.s:                                             ; preds = %bb.l, %bb.k, %bb.j
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.bf, i64 %i.bg
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.01722.i.i.i.i.i.i = phi i64 [ %i.bg, %bb.s ], [ %i.cd, %bb.u ] ; 2 uses
  %.01821.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.s ], [ %i.ce, %bb.u ] ; 3 uses
  %i.cb = load i8, ptr %.01821.i.i.i.i.i.i, align 1, !tbaa !65
  %i.cc = icmp eq i8 %i.cb, 48
  br i1 %i.cc, label %bb.u, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.cd = add i64 %.01722.i.i.i.i.i.i, -1         ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i, i64 1
  %.not.i.i38.i.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i38.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, label %bb.t, !llvm.loop !4273

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  %.018.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %bb.u ], [ %.01821.i.i.i.i.i.i, %bb.t ]
  %.017.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.u ], [ %.01722.i.i.i.i.i.i, %bb.t ]
  %i.cf = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i.i.i.i.i, i64 noundef %.017.lcssa.i.i.i.i.i.i, ptr noundef nonnull %i.b)
  br i1 %i.cf, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i, !prof !4274

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i: ; preds = %bb.p, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, %bb.m, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !4327)
  %i.cg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc11 unwind label %.loopexit ; 2 uses

.noexc11:                                         ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread.i.i.i.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !64, !noalias !4327 ; 3 uses
  store ptr %i.ch, ptr %14, align 8, !tbaa !64, !alias.scope !4327
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !43, !noalias !4327 ; 3 uses
  store ptr %i.cj, ptr %i.af, align 8, !tbaa !43, !alias.scope !4327
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.cl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65, !noalias !4327
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !3, !noalias !4327
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !3, !noalias !4327
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.co = atomicrmw volatile add ptr %i.ck, i32 1 acq_rel, align 4, !noalias !4327 ; 0 uses
  %.pre116.i.i.i.i = load ptr, ptr %14, align 8, !tbaa !64
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i

_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i: ; preds = %bb.x, %bb.w, %.noexc11
  %i.cp = phi ptr [ %i.ch, %.noexc11 ], [ %i.ch, %bb.w ], [ %.pre116.i.i.i.i, %bb.x ] ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !41
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %i.cp, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.aj

bb.y:                                             ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !4330
  invoke void @_ZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(26) @.str.18, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(23) @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc.i.i.i.i unwind label %bb.ak

.noexc.i.i.i.i:                                   ; preds = %bb.y
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %.noexc.i.i.i.i
  %i.ct = load ptr, ptr %6, align 8, !tbaa !107, !noalias !4330 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.ag
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z
  %i.cv = load i64, ptr %i.ag, align 8, !tbaa !65, !noalias !4330
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %.noexc.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %6, align 8, !tbaa !107, !noalias !4330 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ag
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i: ; preds = %bb.aa
  %i.da = load i64, ptr %i.ag, align 8, !tbaa !65, !noalias !4330
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !4330
  br label %.body.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !4330
  %i.dc = load ptr, ptr %0, align 8, !tbaa !71    ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.ab, !prof !74

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !75, !range !85, !noundef !86
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %bb.ac, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.dg = load ptr, ptr %12, align 8, !tbaa !71
  store ptr %i.dg, ptr %0, align 8, !tbaa !71
  store ptr null, ptr %12, align 8, !tbaa !71
  %i.dh = load ptr, ptr %13, align 8, !tbaa !107  ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ah
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.dj = load i64, ptr %i.ah, align 8, !tbaa !65
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.dl = load ptr, ptr %i.af, align 8, !tbaa !43 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.dm, align 8, !tbaa !38
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !40
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #26, !inline_history !4335
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #26, !inline_history !4335
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i37.i.i.i.i = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i37.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dp, %bb.ag ], [ %i.dz, %bb.ah ]
  %i.ea = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ea, label %bb.ai, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !89

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i

bb.aj:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit.i.i.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i

bb.ak:                                            ; preds = %bb.y
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ec, %bb.ak ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i.i ] ; 2 uses
  %i.ed = load ptr, ptr %13, align 8, !tbaa !107  ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.ah
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i: ; preds = %.body.i.i.i.i
  %i.ef = load i64, ptr %i.ah, align 8, !tbaa !65
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i: ; preds = %.body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i, %bb.aj
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.eb, %bb.aj ], [ %eh.lpad-body.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.body

_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.i.i.i.i, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit.thread84.i.i.i.i
  %i.eh = load i64, ptr %i.b, align 8, !tbaa !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.ei = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 2 uses
  store i64 %i.eh, ptr %.3, align 8, !tbaa !549
  %i.ej = add nuw nsw i64 %.023106.i.i.i.i, 1     ; 2 uses
  %i.ek = add nsw i64 %.1105.i.i.i.i, 1           ; 2 uses
  %exitcond115.not.i.i.i.i = icmp eq i64 %i.ej, %i.al
  br i1 %exitcond115.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph107.i.i.i.i, !llvm.loop !4336

bb.al:                                            ; preds = %.noexc10
  %i.el = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.el, label %.preheader89.i.i.i.i, label %.preheader91.i.i.i.i

.preheader91.i.i.i.i:                             ; preds = %bb.al
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader91.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.ai, 32767
  %i.em = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.en = add i64 %.024109.i.i.i.i, %i.em         ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader89.i.i.i.i:                             ; preds = %bb.al
  br i1 %i.ak, label %.lr.ph103.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph103.i.i.i.i:                                ; preds = %.preheader89.i.i.i.i
  %i.eo = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ep = shl nuw nsw i64 %i.eo, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.0, i8 0, i64 %i.ep, i1 false), !tbaa !549
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.ep
  %i.eq = add i64 %.024109.i.i.i.i, %i.eo
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bu, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.iv, %bb.bu ] ; 2 uses
  %.399.i.i.i.i = phi i64 [ %.024109.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.iw, %bb.bu ] ; 3 uses
  %i.er = add nsw i64 %.399.i.i.i.i, %i.x         ; 2 uses
  %i.es = lshr i64 %i.er, 3
  %i.et = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !65
  %i.ev = trunc i64 %i.er to i8
  %i.ew = and i8 %i.ev, 7
  %i.ex = lshr i8 %i.eu, %i.ew
  %i.ey = trunc i8 %i.ex to i1
  br i1 %i.ey, label %bb.am, label %bb.bu

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ez = getelementptr inbounds [16 x i8], ptr %i.s, i64 %.399.i.i.i.i ; 4 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !65 ; 4 uses
  %i.fb = icmp slt i32 %i.fa, 13
  br i1 %i.fb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !65
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !841 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 9
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !844, !range !85, !noundef !86
  %i.fk = trunc nuw i8 %i.fj to i1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = select i1 %i.fk, ptr %i.fm, ptr null, !prof !74
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !65
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fn, i64 %i.fq
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i: ; preds = %bb.ao, %bb.an
  %i.fs = phi ptr [ %i.fc, %bb.an ], [ %i.fr, %bb.ao ] ; 6 uses
  %i.ft = sext i32 %i.fa to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %i.ft, ptr %7, align 8
  store ptr %i.fs, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !549
  %i.fu = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %bb.ap, label %bb.ar, !prof !534

bb.ap:                                            ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i
  %i.fw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  %.not.i77.i.i.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i77.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !41
  %i.fx = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_10UInt64TypeES2_NS6_11ParseStringISA_EEE9ArrayExecISA_vE4ExecERKSD_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_ENKUllE_clEl.exit26.i.i.i.i
  %i.fy = icmp eq i32 %i.fa, 0
  br i1 %i.fy, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.thread.i.i.i.i, label %bb.as, !prof !89

bb.as:                                            ; preds = %bb.ar
  %i.fz = icmp ugt i32 %i.fa, 2
  br i1 %i.fz, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %bb.as
  %i.ga = load i8, ptr %i.fs, align 1, !tbaa !65
  %i.gb = icmp eq i8 %i.ga, 48
  br i1 %i.gb, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !65
  switch i8 %i.gd, label %bb.bb [
    i8 120, label %bb.av
    i8 88, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  %i.gf = add nsw i64 %i.ft, -3                   ; 2 uses
  %i.gg = icmp ult i64 %i.gf, 16
  br i1 %i.gg, label %.lr.ph.i.i.i64.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.thread.i.i.i.i, !prof !74

.lr.ph.i.i.i64.i.i.i.i:                           ; preds = %bb.av, %bb.ba
  %.03049.i.i.i65.i.i.i.i = phi i64 [ %i.gn, %bb.ba ], [ 0, %bb.av ] ; 3 uses
  %.03148.i.i.i66.i.i.i.i = phi i64 [ %.1.i.i.i73.i.i.i.i, %bb.ba ], [ 0, %bb.av ]
  %i.gh = shl i64 %.03148.i.i.i66.i.i.i.i, 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.03049.i.i.i65.i.i.i.i
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !65  ; 5 uses
  %i.gk = add i8 %i.gj, -48                       ; 2 uses
  %or.cond.i.i.i67.i.i.i.i = icmp ult i8 %i.gk, 10
  br i1 %or.cond.i.i.i67.i.i.i.i, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i64.i.i.i.i
  %i.gl = add i8 %i.gj, -65
  %or.cond42.i.i.i68.i.i.i.i = icmp ult i8 %i.gl, 6
  br i1 %or.cond42.i.i.i68.i.i.i.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %narrow40.i.i.i76.i.i.i.i = add nuw nsw i8 %i.gj, 9
  %18 = and i8 %narrow40.i.i.i76.i.i.i.i, 31
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.gm = add i8 %i.gj, -97
  %or.cond43.i.i.i69.i.i.i.i = icmp ult i8 %i.gm, 6
  br i1 %or.cond43.i.i.i69.i.i.i.i, label %bb.az, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.thread.i.i.i.i, !prof !2676

bb.az:                                            ; preds = %bb.ay
  %narrow.i.i.i70.i.i.i.i = add nuw nsw i8 %i.gj, 9
  %19 = and i8 %narrow.i.i.i70.i.i.i.i, 31
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax, %.lr.ph.i.i.i64.i.i.i.i
  %.pn.in.i.i.i71.i.i.i.i = phi i8 [ %19, %bb.az ], [ %18, %bb.ax ], [ %i.gk, %.lr.ph.i.i.i64.i.i.i.i ]
  %.pn.i.i.i72.i.i.i.i = zext nneg i8 %.pn.in.i.i.i71.i.i.i.i to i64
  %.1.i.i.i73.i.i.i.i = or i64 %i.gh, %.pn.i.i.i72.i.i.i.i ; 2 uses
  %i.gn = add nuw nsw i64 %.03049.i.i.i65.i.i.i.i, 1
  %exitcond.not.i.i.i74.i.i.i.i = icmp eq i64 %.03049.i.i.i65.i.i.i.i, %i.gf
  br i1 %exitcond.not.i.i.i74.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.thread87.i.i.i.i, label %.lr.ph.i.i.i64.i.i.i.i, !llvm.loop !3364

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.thread87.i.i.i.i: ; preds = %bb.ba
  store i64 %.1.i.i.i73.i.i.i.i, ptr %i.a, align 8, !tbaa !549
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit36.i.i.i.i

bb.bb:                                            ; preds = %bb.au, %bb.at, %bb.as
  %scevgep.i.i56.i.i.i.i = getelementptr i8, ptr %i.fs, i64 %i.ft
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %.01722.i.i57.i.i.i.i = phi i64 [ %i.ft, %bb.bb ], [ %i.gq, %bb.bd ] ; 2 uses
  %.01821.i.i58.i.i.i.i = phi ptr [ %i.fs, %bb.bb ], [ %i.gr, %bb.bd ] ; 3 uses
  %i.go = load i8, ptr %.01821.i.i58.i.i.i.i, align 1, !tbaa !65
  %i.gp = icmp eq i8 %i.go, 48
  br i1 %i.gp, label %bb.bd, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.gq = add i64 %.01722.i.i57.i.i.i.i, -1       ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.01821.i.i58.i.i.i.i, i64 1
  %.not.i.i63.i.i.i.i = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i63.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.i, label %bb.bc, !llvm.loop !4273

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.018.lcssa.i.i60.i.i.i.i = phi ptr [ %scevgep.i.i56.i.i.i.i, %bb.bd ], [ %.01821.i.i58.i.i.i.i, %bb.bc ]
  %.017.lcssa.i.i61.i.i.i.i = phi i64 [ 0, %bb.bd ], [ %.01722.i.i57.i.i.i.i, %bb.bc ]
  %i.gs = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i60.i.i.i.i, i64 noundef %.017.lcssa.i.i61.i.i.i.i, ptr noundef nonnull %i.a)
  br i1 %i.gs, label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit36.i.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.thread.i.i.i.i, !prof !4274

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.thread.i.i.i.i: ; preds = %bb.ay, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.i.i.i.i, %bb.av, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !4337)
  %i.gt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc12:                                         ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit78.thread.i.i.i.i
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !64, !noalias !4337 ; 3 uses
  store ptr %i.gu, ptr %10, align 8, !tbaa !64, !alias.scope !4337
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !43, !noalias !4337 ; 3 uses
  store ptr %i.gw, ptr %i.ab, align 8, !tbaa !43, !alias.scope !4337
  %.not.i.i.i.i53.i.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i53.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit55.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %.noexc12
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 3 uses
  %i.gy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65, !noalias !4337
  %.not.i.i.i.i.i54.i.i.i.i = icmp eq i8 %i.gy, 0
  br i1 %.not.i.i.i.i.i54.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gz = load i32, ptr %i.gx, align 4, !tbaa !3, !noalias !4337
  %i.ha = add nsw i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gx, align 4, !tbaa !3, !noalias !4337
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit55.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.hb = atomicrmw volatile add ptr %i.gx, i32 1 acq_rel, align 4, !noalias !4337 ; 0 uses
  %.pre.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !64
  br label %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit55.i.i.i.i

_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit55.i.i.i.i: ; preds = %bb.bg, %bb.bf, %.noexc12
  %i.hc = phi ptr [ %i.gu, %.noexc12 ], [ %i.gu, %bb.bf ], [ %.pre.i.i.i.i, %bb.bg ] ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load ptr, ptr %i.he, align 8
  invoke void %i.hf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.hc, i1 noundef zeroext false)
          to label %bb.bh unwind label %bb.bs

bb.bh:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit55.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !4340
  invoke void @_ZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(26) @.str.18, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(23) @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc49.i.i.i.i unwind label %bb.bt

.noexc49.i.i.i.i:                                 ; preds = %bb.bh
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %.noexc49.i.i.i.i
  %i.hg = load ptr, ptr %5, align 8, !tbaa !107, !noalias !4340 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.ac
  br i1 %i.hh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i48.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i47.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i47.i.i.i.i: ; preds = %bb.bi
  %i.hi = load i64, ptr %i.ac, align 8, !tbaa !65, !noalias !4340
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i48.i.i.i.i

bb.bj:                                            ; preds = %.noexc49.i.i.i.i
  %i.hk = landingpad { ptr, i32 }
          cleanup
  %i.hl = load ptr, ptr %5, align 8, !tbaa !107, !noalias !4340 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.ac
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i45.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i44.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i44.i.i.i.i: ; preds = %bb.bj
  %i.hn = load i64, ptr %i.ac, align 8, !tbaa !65, !noalias !4340
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i45.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i45.i.i.i.i: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i44.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !4340
  br label %.body50.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i48.i.i.i.i: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i47.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !4340
  %i.hp = load ptr, ptr %0, align 8, !tbaa !71    ; 2 uses
  %.not.i.i.i31.i.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i31.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i32.i.i.i.i, label %bb.bk, !prof !74

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i48.i.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !75, !range !85, !noundef !86
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %_ZN5arrow6StatusD2Ev.exit.i32.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i32.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i32.i.i.i.i:            ; preds = %bb.bl, %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i48.i.i.i.i
  %i.ht = load ptr, ptr %8, align 8, !tbaa !71
  store ptr %i.ht, ptr %0, align 8, !tbaa !71
  store ptr null, ptr %8, align 8, !tbaa !71
  %i.hu = load ptr, ptr %9, align 8, !tbaa !107   ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.ad
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i32.i.i.i.i
  %i.hw = load i64, ptr %i.ad, align 8, !tbaa !65
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i32.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33.i.i.i.i
  %i.hy = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 8 uses
  %.not.i.i39.i.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i39.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34.i.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 4 uses
  %i.ia = load atomic i64, ptr %i.hz acquire, align 8 ; 2 uses
  %i.ib = icmp eq i64 %i.ia, 4294967297
  %i.ic = trunc i64 %i.ia to i32                  ; 2 uses
  br i1 %i.ib, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.hz, align 8, !tbaa !38
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  store i32 0, ptr %i.id, align 4, !tbaa !40
  %i.ie = load ptr, ptr %i.hy, align 8, !tbaa !41
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(16) %i.hy) #26, !inline_history !4335
  %i.ih = load ptr, ptr %i.hy, align 8, !tbaa !41
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(16) %i.hy) #26, !inline_history !4335
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.ik = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i40.i.i.i.i = icmp eq i8 %i.ik, 0
  br i1 %.not.i.i.i40.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.il = add nsw i32 %i.ic, -1
  store i32 %i.il, ptr %i.hz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41.i.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.im = atomicrmw volatile add ptr %i.hz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41.i.i.i.i: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i42.i.i.i.i = phi i32 [ %i.ic, %bb.bp ], [ %i.im, %bb.bq ]
  %i.in = icmp eq i32 %.0.i.i.i.i42.i.i.i.i, 1
  br i1 %i.in, label %bb.br, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43.i.i.i.i, !prof !89

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hy) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43.i.i.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43.i.i.i.i: ; preds = %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41.i.i.i.i, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZNK5arrow7compute8internal11ParseStringINS_10UInt64TypeEE4CallImSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE.exit36.i.i.i.i

bb.bs:                                            ; preds = %_ZN5arrow10TypeTraitsINS_10UInt64TypeEE14type_singletonEv.exit55.i.i.i.i
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i27.i.i.i.i

end_hunk_3
