inline.NumInlined: 2840
inline.NumDeleted: 1404
begin_hunk_0_@_ZNK8facebook5velox13LocalReadFile11preadvAsyncEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextE:bb.a

bb.q:                                             ; preds = %.loopexit
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %i.q, align 8, !tbaa !158 ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = load ptr, ptr %i.ai, align 8, !tbaa !218
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cw) #43
  br label %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit: ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.p ], [ %i.cr, %bb.q ], [ %i.cr, %bb.r ]
  call void @_ZN5folly7PromiseImED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.n) #16
  br label %bb.v

bb.s:                                             ; preds = %bb.h
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit22

bb.t:                                             ; preds = %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %i.bf, align 8, !tbaa !228 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i21, label %_ZN5folly8FunctionIFvvEED2Ev.exit22, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = call noundef i64 %i.cz(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef null) #16, !inline_history !231 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit22

_ZN5folly8FunctionIFvvEED2Ev.exit22:              ; preds = %bb.u, %bb.t, %bb.s
  %.pn12 = phi { ptr, i32 } [ %i.cx, %bb.s ], [ %i.cy, %bb.t ], [ %i.cy, %bb.u ]
  call fastcc void @"_ZZNK8facebook5velox13LocalReadFile11preadvAsyncEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextEEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %7) #16
  br label %bb.v

bb.v:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit22, %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZN5folly8FunctionIFvvEED2Ev.exit22 ], [ %.pn, %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit ]
  call void @_ZN5folly19SemiPromiseContractImED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %.pn12.pn

bb.w:                                             ; preds = %_ZN5folly19SemiPromiseContractImED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox8ReadFile11preadvAsyncEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextE(ptr dead_on_unwind noalias writable sret(%"class.folly::SemiFuture") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(49) %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(49) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #45
          to label %bb.c unwind label %bb.d       ; 12 uses

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.g, align 16, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEE10uninitCallES6_SA_SC_RNS1_4DataE, ptr %i.h, align 16, !tbaa !181
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr null, ptr %i.i, align 8, !tbaa !183
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i8 2, ptr %i.j, align 16, !tbaa !184
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 81
  store i8 1, ptr %i.k, align 1, !tbaa !187
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 82
  store i8 0, ptr %i.l, align 2, !tbaa !187
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i32 0, ptr %i.m, align 8, !tbaa !189
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreImEE, i64 16), ptr %i.e, align 16, !tbaa !84
  store i32 0, ptr %i.f, align 8, !tbaa !232
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store i64 %i.d, ptr %i.o, align 16, !tbaa !150
  store ptr %i.e, ptr %0, align 8, !tbaa !192
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.q = extractvalue { ptr, i32 } %i.p, 1
  %i.r = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #16
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.t = extractvalue { ptr, i32 } %i.p, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #16
  invoke void @_ZN5folly14makeSemiFutureImRKSt9exceptionEENSt9enable_ifIXsr3stdE12is_base_of_vIS1_DTclsr6detailE8decay_0_IT0_ELi0EEEEENS_10SemiFutureIT_EEE4typeEOS5_(ptr dead_on_unwind writable sret(%"class.folly::SemiFuture") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_end_catch()
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.c
  ret void

bb.i:                                             ; preds = %bb.g, %bb.d
  %.merged = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.v, %bb.g ]
  resume { ptr, i32 } %.merged

bb.j:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #44
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly7PromiseImED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5folly7PromiseImE6detachEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !214, !range !52, !noundef !50
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #16
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !216
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.e)
          to label %_ZN5folly7PromiseImE6detachEv.exit unwind label %bb.e

_ZN5folly7PromiseImE6detachEv.exit:               ; preds = %bb.d, %bb.a
  ret void

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #44
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZNK8facebook5velox13LocalReadFile11preadvAsyncEmRKSt6vectorIN5folly5RangeIPcEESaIS6_EERKNS0_13FileIoContextEEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN8facebook5velox13FileIoContextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !235
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !237
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !238
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !238
  br label %_ZN8facebook5velox13FileIoContextD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8facebook5velox13FileIoContextD2Ev.exit, !prof !73

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZN8facebook5velox13FileIoContextD2Ev.exit

_ZN8facebook5velox13FileIoContextD2Ev.exit:       ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !158  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN8facebook5velox13FileIoContextD2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #43
  br label %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit: ; preds = %_ZN8facebook5velox13FileIoContextD2Ev.exit, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !216 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZN5folly7PromiseImED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !214, !range !52, !noundef !50
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.aa) #16
  %.pre.i.i = load ptr, ptr %i.z, align 8, !tbaa !216
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = phi ptr [ %.pre.i.i, %bb.j ], [ %i.aa, %bb.i ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.ae)
          to label %_ZN5folly7PromiseImED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #44
  unreachable

_ZN5folly7PromiseImED2Ev.exit:                    ; preds = %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly19SemiPromiseContractImED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192
  invoke void @_ZN5folly10SemiFutureImE23releaseDeferredExecutorEPNS_7futures6detail4CoreImEE(ptr noundef %i.b)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !192  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5folly10SemiFutureImED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.c) #16
  br label %_ZN5folly10SemiFutureImED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #44
  unreachable

_ZN5folly10SemiFutureImED2Ev.exit:                ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !216  ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5folly7PromiseImED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly10SemiFutureImED2Ev.exit
  %i.h = load i8, ptr %0, align 8, !tbaa !214, !range !52, !noundef !50
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.g) #16
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !216
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = phi ptr [ %.pre.i.i, %bb.f ], [ %i.g, %bb.e ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.j)
          to label %_ZN5folly7PromiseImED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #44
  unreachable

_ZN5folly7PromiseImED2Ev.exit:                    ; preds = %_ZN5folly10SemiFutureImED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK8facebook5velox13LocalReadFile4sizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !143
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZNK8facebook5velox13LocalReadFile11memoryUsageEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #20 align 2 {
bb.a:
  ret i64 216
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox14LocalWriteFile10Attributes11cowDisabledERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEE(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.b = invoke noalias noundef nonnull dereferenceable(23) ptr @_Znwm(i64 noundef 23) #45
          to label %bb.b unwind label %bb.i       ; 3 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !35
  store i64 22, ptr %i.a, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.b, ptr noundef nonnull align 1 dereferenceable(22) @.str.79, i64 22, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 22, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i8 0, ptr %i.d, align 1, !tbaa !62
  %i.e = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.a, align 8, !tbaa !62
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br i1 %.not.i.i.not.i, label %_ZN8facebook5velox12_GLOBAL__N_112getAttributeIbEET_RKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEERKSt17basic_string_viewIcS8_ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(23) ptr @_Znwm(i64 noundef 23) #45
          to label %bb.e unwind label %bb.k       ; 3 uses

bb.e:                                             ; preds = %bb.d
  store ptr %i.k, ptr %3, align 8, !tbaa !35
  store i64 22, ptr %i.j, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.k, ptr noundef nonnull align 1 dereferenceable(22) @.str.79, i64 22, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 22, ptr %i.l, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 22
  store i8 0, ptr %i.m, align 1, !tbaa !62
  %i.n = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.l   ; 2 uses

.noexc.i:                                         ; preds = %bb.e
  %.not.i.i21.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i21.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc.i
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.112) #42
          to label %.noexc22.i unwind label %bb.l

.noexc22.i:                                       ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZN5folly6detail16throw_exception_INS_14PromiseInvalidEJEEEvDpT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.8)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly14PromiseInvalidE, i64 16), ptr %0, align 8, !tbaa !84
  invoke void @_ZN5folly15throw_exceptionINS_14PromiseInvalidEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_14PromiseInvalidEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #26 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 2 uses
  tail call void @_ZN5folly14PromiseInvalidC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly14PromiseInvalidE, ptr nonnull @_ZNSt11logic_errorD2Ev) #42
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly14PromiseInvalidC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly14PromiseInvalidE, i64 16), ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly14PromiseInvalidD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly14PromiseInvalid4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @.str.68
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_23PromiseAlreadySatisfiedEJEEEvDpT0_() local_unnamed_addr #26 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::PromiseAlreadySatisfied", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.8)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly23PromiseAlreadySatisfiedE, i64 16), ptr %0, align 8, !tbaa !84
  invoke void @_ZN5folly15throw_exceptionINS_23PromiseAlreadySatisfiedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_23PromiseAlreadySatisfiedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #26 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 2 uses
  tail call void @_ZN5folly23PromiseAlreadySatisfiedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly23PromiseAlreadySatisfiedE, ptr nonnull @_ZNSt11logic_errorD2Ev) #42
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly23PromiseAlreadySatisfiedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly23PromiseAlreadySatisfiedE, i64 16), ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly23PromiseAlreadySatisfiedD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly23PromiseAlreadySatisfied4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @.str.69
}

declare void @_ZN5folly7futures6detail8CoreBase10setResult_EONS_17ExecutorKeepAliveINS_8ExecutorEEE(ptr noundef nonnull align 16 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNR5folly10SemiFutureImE4waitEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::deque", align 8        ; 4 uses
  %2 = alloca %class.anon.183, align 8            ; 4 uses
  %3 = alloca %class.anon.145, align 8            ; 4 uses
  %4 = alloca %"class.folly::Promise", align 8    ; 6 uses
  %5 = alloca %"class.folly::SemiFuture", align 8 ; 5 uses
  %6 = alloca %class.anon.117, align 8            ; 8 uses
  %7 = alloca %"class.folly::ExecutorKeepAlive", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !192    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #27
  unreachable

_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !189
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit, label %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit.thread

_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit: ; preds = %_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i
  %i.e = tail call noundef ptr @_ZNK5folly7futures6detail19KeepAliveOrDeferred19getDeferredExecutorEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #45 ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %i.h, align 16, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEE10uninitCallES6_SA_SC_RNS1_4DataE, ptr %i.i, align 16, !tbaa !181
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr null, ptr %i.j, align 8, !tbaa !183
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i8 1, ptr %i.k, align 16, !tbaa !184
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 81
  store i8 2, ptr %i.l, align 1, !tbaa !187
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 82
  store i8 0, ptr %i.m, align 2, !tbaa !187
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !189
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreImEE, i64 16), ptr %i.g, align 16, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.g, ptr %5, align 8, !tbaa !192, !alias.scope !457
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i8 0, ptr %4, align 8, !tbaa !51
  store i8 1, ptr %6, align 8, !tbaa !214
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !215
  store ptr %i.g, ptr %i.p, align 8, !tbaa !216
  invoke void @_ZN5folly7futures6detail10FutureBaseImE12setCallback_IZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 1)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !216  ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i18, label %_ZZNR5folly10SemiFutureImE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %6, align 8, !tbaa !214, !range !52, !noundef !50
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.q) #16
  %.pre.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !216
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.q, %bb.e ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.t)
          to label %_ZZNR5folly10SemiFutureImE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #44
  unreachable

_ZZNR5folly10SemiFutureImE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit: ; preds = %bb.d, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.w = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #45
          to label %.noexc19 unwind label %bb.n   ; 10 uses

.noexc19:                                         ; preds = %_ZZNR5folly10SemiFutureImE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5folly7futures6detail12WaitExecutorE, i64 16), ptr %i.w, align 8, !tbaa !84, !noalias !460
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.x, i8 0, i64 80, i1 false), !noalias !460
  invoke void @_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(92) %i.x, i64 noundef 0)
          to label %_ZNK5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEE4copyEv.exit unwind label %bb.i, !noalias !460

bb.i:                                             ; preds = %.noexc19
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 120) #43, !noalias !460
  br label %bb.z

_ZNK5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEE4copyEv.exit: ; preds = %.noexc19
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store i8 0, ptr %i.z, align 8, !tbaa !463, !noalias !460
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  store i32 0, ptr %i.aa, align 8, !tbaa !472, !noalias !460
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  store i64 0, ptr %i.ab, align 8, !tbaa !474, !noalias !460
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  store i64 1, ptr %i.ac, align 8, !tbaa !474, !noalias !460
  %i.ad = ptrtoint ptr %i.w to i64                ; 5 uses
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !84, !noalias !476
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !476
  %i.ah = call noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #16, !noalias !476, !inline_history !481
  %not..i.i = xor i1 %i.ah, true
  %i.ai = zext i1 %not..i.i to i64
  %spec.select.i.i = or disjoint i64 %i.ad, %i.ai
  store i64 %spec.select.i.i, ptr %7, align 8, !tbaa !440
  invoke void @_ZN5folly7futures6detail16DeferredExecutor11setExecutorENS_17ExecutorKeepAliveINS_8ExecutorEEEb(ptr noundef nonnull align 16 dereferenceable(112) %i.e, ptr noundef nonnull %7, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNK5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEE4copyEv.exit
  %i.aj = load i64, ptr %7, align 8, !tbaa !440   ; 2 uses
  %i.ak = and i64 %i.aj, -4                       ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %.not.i.i20 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i20, label %.lr.ph, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %7, align 8, !tbaa !150
  %i.am = and i64 %i.aj, 3
  %.not3.i.i = icmp eq i64 %i.am, 0
  br i1 %.not3.i.i, label %bb.l, label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #16, !inline_history !482
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k, %bb.l
  %8 = and i64 %i.ad, -4                          ; 2 uses
  %9 = inttoptr i64 %8 to ptr                     ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.ar = call noundef zeroext i1 @_ZNK5folly7futures6detail8CoreBase9hasResultEv(ptr noundef nonnull align 16 dereferenceable(136) %i.g) #16
  br i1 %i.ar, label %._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph, %_ZN5folly7futures6detail12WaitExecutor5driveEv.exit
  invoke void @_ZN5folly6fibers5Baton4waitEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %.noexc26 unwind label %.loopexit

.noexc26:                                         ; preds = %.lr.ph61
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %9, ptr %3, align 8, !tbaa !483
  invoke void @_ZN5folly6fibers16runInMainContextIZNS_7futures6detail12WaitExecutor5driveEvEUlvE_EENS_13invoke_detail6traitsIT_E6resultIEEOS8_(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5folly7futures6detail12WaitExecutor5driveEv.exit unwind label %.loopexit

_ZN5folly7futures6detail12WaitExecutor5driveEv.exit: ; preds = %.noexc26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.as = call noundef zeroext i1 @_ZNK5folly7futures6detail8CoreBase9hasResultEv(ptr noundef nonnull align 16 dereferenceable(136) %i.g) #16
  br i1 %i.as, label %._crit_edge, label %.lr.ph61

bb.m:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNR5folly10SemiFutureImE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.z

bb.n:                                             ; preds = %_ZZNR5folly10SemiFutureImE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.o:                                             ; preds = %_ZNK5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEE4copyEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aw = load i64, ptr %7, align 8, !tbaa !440   ; 2 uses
  %i.ax = and i64 %i.aw, -4                       ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %.not.i.i28 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i28, label %_ZN5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEED2Ev.exit33, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 0, ptr %7, align 8, !tbaa !150
  %i.az = and i64 %i.aw, 3
  %.not3.i.i29 = icmp eq i64 %i.az, 0
  br i1 %.not3.i.i29, label %bb.q, label %_ZN5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEED2Ev.exit33

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !84
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #16, !inline_history !482
  br label %_ZN5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEED2Ev.exit33

.loopexit:                                        ; preds = %.lr.ph61, %.noexc26
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEED2Ev.exit33

.loopexit.split-lp:                               ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEED2Ev.exit33

._crit_edge:                                      ; preds = %_ZN5folly7futures6detail12WaitExecutor5driveEv.exit, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %9, ptr %2, align 8, !tbaa !486
  invoke void @_ZZN5folly7futures6detail12WaitExecutor6detachEvENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.std::deque") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %._crit_edge
  call void @_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bd = load ptr, ptr %0, align 8, !tbaa !192   ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %_ZN5folly7futures6detail10FutureBaseImE6detachEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.bd) #16
  store ptr null, ptr %0, align 8, !tbaa !192
  br label %_ZN5folly7futures6detail10FutureBaseImE6detachEv.exit

_ZN5folly7futures6detail10FutureBaseImE6detachEv.exit: ; preds = %bb.r, %bb.s
  invoke void @_ZN5folly10SemiFutureImE23releaseDeferredExecutorEPNS_7futures6detail4CoreImEE(ptr noundef null)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseImE6detachEv.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !192   ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i35, label %_ZN5folly10SemiFutureImEaSEOS1_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.be) #16
  store ptr null, ptr %0, align 8, !tbaa !192
  br label %_ZN5folly10SemiFutureImEaSEOS1_.exit

bb.v:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseImE6detachEv.exit
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #44
  unreachable

_ZN5folly10SemiFutureImEaSEOS1_.exit:             ; preds = %bb.t, %bb.u
  store ptr %i.g, ptr %0, align 8, !tbaa !192
  %.not.i.i36 = icmp ne i64 %8, 0
  %10 = and i64 %i.ad, 3
  %.not3.i.i37 = icmp eq i64 %10, 0
  %or.cond = and i1 %.not.i.i36, %.not3.i.i37
  br i1 %or.cond, label %bb.w, label %_ZN5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEED2Ev.exit38

bb.w:                                             ; preds = %_ZN5folly10SemiFutureImEaSEOS1_.exit
  %i.bh = load ptr, ptr %9, align 8, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %9) #16, !inline_history !488
  br label %_ZN5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEED2Ev.exit38

_ZN5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEED2Ev.exit38: ; preds = %_ZN5folly10SemiFutureImEaSEOS1_.exit, %bb.w
  invoke void @_ZN5folly10SemiFutureImE23releaseDeferredExecutorEPNS_7futures6detail4CoreImEE(ptr noundef null)
          to label %_ZN5folly7PromiseImED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %_ZN5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEED2Ev.exit38
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #44
  unreachable

_ZN5folly7PromiseImED2Ev.exit:                    ; preds = %_ZN5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEED2Ev.exit38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.aa

_ZN5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEED2Ev.exit33: ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.p, %bb.o
  %.pn11 = phi { ptr, i32 } [ %i.av, %bb.p ], [ %i.av, %bb.o ], [ %i.av, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %11 = and i64 %i.ad, -4                         ; 2 uses
  %.not.i.i41 = icmp ne i64 %11, 0
  %12 = and i64 %i.ad, 3
  %.not3.i.i42 = icmp eq i64 %12, 0
  %or.cond53 = and i1 %.not.i.i41, %.not3.i.i42
  br i1 %or.cond53, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEED2Ev.exit33
  %13 = inttoptr i64 %11 to ptr                   ; 2 uses
  %i.bm = load ptr, ptr %13, align 8, !tbaa !84
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %13) #16, !inline_history !488
  br label %bb.z

bb.z:                                             ; preds = %bb.m, %bb.y, %_ZN5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEED2Ev.exit33, %bb.n, %bb.i
  %.pn11.pn.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %i.y, %bb.i ], [ %i.au, %bb.n ], [ %.pn11, %_ZN5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEED2Ev.exit33 ], [ %.pn11, %bb.y ]
  call void @_ZN5folly10SemiFutureImED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN5folly7PromiseImED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn11.pn.pn

_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit.thread: ; preds = %_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i, %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit
  tail call void @_ZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit.thread, %_ZN5folly7PromiseImED2Ev.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7futures6detail10FutureBaseImE12setCallback_IZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Function.73", align 16 ; 11 uses
  %4 = alloca %"class.std::shared_ptr.87", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.87") align 8 %4)
  %i.a = load ptr, ptr %0, align 8, !tbaa !192    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load atomic i8, ptr %i.b acquire, align 1
  %i.d = and i8 %i.c, 108
  %.not1.i.i = icmp eq i8 %i.d, 0
  br i1 %.not1.i.i, label %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN5folly6detail16throw_exception_INS_22FutureAlreadyContinuedEJEEEvDpT0_() #27
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i: ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !192    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i

bb.d:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i
  invoke void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #27
          to label %.noexc4 unwind label %bb.p

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i: ; preds = %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.f = load i8, ptr %1, align 8, !tbaa !51, !range !52, !noundef !50
  store i8 0, ptr %1, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !215
  store ptr null, ptr %i.g, align 8, !tbaa !215
  store ptr null, ptr %3, align 16, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store i8 %i.f, ptr %3, align 16, !tbaa !214
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.h, ptr %i.k, align 8, !tbaa !216
  store ptr @_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSF_OSt10shared_ptrINS_14RequestContextEENS4_18InlineContinuationEEUlRNS4_8CoreBaseESD_PNS_17exception_wrapperEE_Lb1ELb0EvJSN_SD_SP_EEET2_DpT3_RNS1_4DataE, ptr %i.i, align 16, !tbaa !181
  store ptr @_ZN5folly6detail8function13DispatchSmall4execIZNS_7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSG_OSt10shared_ptrINS_14RequestContextEENS5_18InlineContinuationEEUlRNS5_8CoreBaseESE_PNS_17exception_wrapperEE_EEmNS1_2OpEPNS1_4DataESU_, ptr %i.j, align 8, !tbaa !183
  invoke void @_ZN5folly7futures6detail8CoreBase12setCallback_EONS_8FunctionIFvRS2_ONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEEEOSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationE(ptr noundef nonnull align 16 dereferenceable(160) %i.e, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !183  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef i64 %i.l(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #16, !inline_history !489 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !183  ; 2 uses
  %.not.i.i5.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i5.i.i, label %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call noundef i64 %i.o(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #16, !inline_history !489 ; 0 uses
  br label %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i

_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %.body

bb.i:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !224  ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.s, align 8, !tbaa !235
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !237
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !84
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #16, !inline_history !490
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #16, !inline_history !490
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i6 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.m ], [ %i.af, %bb.n ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.o, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #16
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.p:                                             ; preds = %bb.d, %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.n, %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i ]
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZNR5folly10SemiFutureImE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5folly7PromiseImED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !214, !range !52, !noundef !50
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #16
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !216
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %.pre.i.i, %bb.c ], [ %i.b, %bb.b ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.e)
          to label %_ZN5folly7PromiseImED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #44
  unreachable

_ZN5folly7PromiseImED2Ev.exit:                    ; preds = %bb.a, %bb.d
  ret void
}

declare void @_ZN5folly7futures6detail16DeferredExecutor11setExecutorENS_17ExecutorKeepAliveINS_8ExecutorEEEb(ptr noundef nonnull align 16 dereferenceable(112), ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::Promise", align 8    ; 6 uses
  %2 = alloca %"class.folly::SemiFuture", align 8 ; 6 uses
  %3 = alloca %"class.folly::fibers::Baton", align 8 ; 6 uses
  %4 = alloca %class.anon.184, align 8            ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !192    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK5folly7futures6detail10FutureBaseImE7isReadyEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #27
  unreachable

_ZNK5folly7futures6detail10FutureBaseImE7isReadyEv.exit: ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK5folly7futures6detail8CoreBase9hasResultEv(ptr noundef nonnull align 16 dereferenceable(136) %i.a) #16
  br i1 %i.b, label %bb.m, label %_ZN5folly10SemiFutureImED2Ev.exit

_ZN5folly10SemiFutureImED2Ev.exit:                ; preds = %_ZNK5folly7futures6detail10FutureBaseImE7isReadyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #45 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.e, align 16, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEE10uninitCallES6_SA_SC_RNS1_4DataE, ptr %i.f, align 16, !tbaa !181
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr null, ptr %i.g, align 8, !tbaa !183
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i8 1, ptr %i.h, align 16, !tbaa !184
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 81
  store i8 2, ptr %i.i, align 1, !tbaa !187
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 82
  store i8 0, ptr %i.j, align 2, !tbaa !187
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i32 0, ptr %i.k, align 8, !tbaa !189
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreImEE, i64 16), ptr %i.d, align 16, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.d, ptr %2, align 8, !tbaa !192, !alias.scope !491
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i64 0, ptr %3, align 8, !tbaa !474
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %3, ptr %4, align 8, !tbaa !494
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !51
  store i8 1, ptr %i.m, align 8, !tbaa !214
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !215
  store ptr %i.d, ptr %i.n, align 8, !tbaa !216
  invoke void @_ZN5folly7futures6detail10FutureBaseImE12setCallback_IZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %_ZN5folly10SemiFutureImED2Ev.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !216  ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i12, label %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.m, align 8, !tbaa !214, !range !52, !noundef !50
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.o) #16
  %.pre.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !216
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.o, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.r)
          to label %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #44
  unreachable

_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev.exit: ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.u = load ptr, ptr %0, align 8, !tbaa !192
  invoke void @_ZN5folly10SemiFutureImE23releaseDeferredExecutorEPNS_7futures6detail4CoreImEE(ptr noundef %i.u)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !192    ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i13, label %_ZN5folly10SemiFutureImEaSEOS1_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.v) #16
  store ptr null, ptr %0, align 8, !tbaa !192
  br label %_ZN5folly10SemiFutureImEaSEOS1_.exit

bb.j:                                             ; preds = %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev.exit
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #44
  unreachable

_ZN5folly10SemiFutureImEaSEOS1_.exit:             ; preds = %bb.h, %bb.i
  store ptr null, ptr %2, align 8, !tbaa !215
  store ptr %i.d, ptr %0, align 8, !tbaa !192
  invoke void @_ZN5folly6fibers5Baton4waitEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZN5folly10SemiFutureImEaSEOS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  invoke void @_ZN5folly10SemiFutureImE23releaseDeferredExecutorEPNS_7futures6detail4CoreImEE(ptr noundef null)
          to label %_ZN5folly7PromiseImED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #44
  unreachable

_ZN5folly7PromiseImED2Ev.exit:                    ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseImE7isReadyEv.exit, %_ZN5folly7PromiseImED2Ev.exit
  ret void

bb.n:                                             ; preds = %_ZN5folly10SemiFutureImED2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.p

bb.o:                                             ; preds = %_ZN5folly10SemiFutureImEaSEOS1_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.aa, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZN5folly10SemiFutureImED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZN5folly7PromiseImED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() local_unnamed_addr #26 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::FutureInvalid", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.8)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly13FutureInvalidE, i64 16), ptr %0, align 8, !tbaa !84
  invoke void @_ZN5folly15throw_exceptionINS_13FutureInvalidEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_13FutureInvalidEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #26 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 2 uses
  tail call void @_ZN5folly13FutureInvalidC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly13FutureInvalidE, ptr nonnull @_ZNSt11logic_errorD2Ev) #42
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly13FutureInvalidC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly13FutureInvalidE, i64 16), ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly13FutureInvalidD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly13FutureInvalid4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @.str.70
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK5folly7futures6detail19KeepAliveOrDeferred19getDeferredExecutorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.87") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !235
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !237
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !496
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !496
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_22FutureAlreadyContinuedEJEEEvDpT0_() local_unnamed_addr #26 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::FutureAlreadyContinued", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.8)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly22FutureAlreadyContinuedE, i64 16), ptr %0, align 8, !tbaa !84
  invoke void @_ZN5folly15throw_exceptionINS_22FutureAlreadyContinuedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_22FutureAlreadyContinuedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #26 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 2 uses
  tail call void @_ZN5folly22FutureAlreadyContinuedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly22FutureAlreadyContinuedE, ptr nonnull @_ZNSt11logic_errorD2Ev) #42
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly22FutureAlreadyContinuedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly22FutureAlreadyContinuedE, i64 16), ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly22FutureAlreadyContinuedD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly22FutureAlreadyContinued4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @.str.72
}

declare void @_ZN5folly7futures6detail8CoreBase12setCallback_EONS_8FunctionIFvRS2_ONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEEEOSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationE(ptr noundef nonnull align 16 dereferenceable(136), ptr noundef nonnull align 16 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSF_OSt10shared_ptrINS_14RequestContextEENS4_18InlineContinuationEEUlRNS4_8CoreBaseESD_PNS_17exception_wrapperEE_Lb1ELb0EvJSN_SD_SP_EEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(48) %3) #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESA_PNS_17exception_wrapperEE_clESK_SA_SM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !497
  store i32 2, ptr %i.a, align 8, !tbaa !497
  %cond.i.i.i.i = icmp eq i32 %i.b, 1
  br i1 %cond.i.i.i.i, label %bb.c, label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i, !prof !439

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !381
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #16
  br label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i

_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.f = load i64, ptr %2, align 8, !noalias !498
  store i64 %i.f, ptr %i.e, align 16, !alias.scope !498
  store i64 0, ptr %2, align 8, !noalias !498
  store i32 1, ptr %i.a, align 8, !tbaa !232
  br label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESA_PNS_17exception_wrapperEE_clESK_SA_SM_.exit

_ZZN5folly7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESA_PNS_17exception_wrapperEE_clESK_SA_SM_.exit: ; preds = %bb.a, %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN5folly7PromiseImE6setTryEONS_3TryImEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function13DispatchSmall4execIZNS_7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSG_OSt10shared_ptrINS_14RequestContextEENS5_18InlineContinuationEEUlRNS5_8CoreBaseESE_PNS_17exception_wrapperEE_EEmNS1_2OpEPNS1_4DataESU_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESA_PNS_17exception_wrapperEE_D2Ev.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !51, !range !52, !noundef !50
  store i8 0, ptr %1, align 1, !tbaa !51
  store i8 %i.a, ptr %2, align 8, !tbaa !214
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !215
  store ptr null, ptr %i.c, align 8, !tbaa !215
  store ptr %i.d, ptr %i.b, align 8, !tbaa !216
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !216  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESA_PNS_17exception_wrapperEE_D2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %1, align 8, !tbaa !214, !range !52, !noundef !50
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.f) #16
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !216
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.f, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.i)
          to label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESA_PNS_17exception_wrapperEE_D2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #44
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @abort() #44
  unreachable

_ZZN5folly7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESA_PNS_17exception_wrapperEE_D2Ev.exit: ; preds = %bb.f, %bb.c, %bb.a
  ret i64 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #33

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !501
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !84
end_hunk_1
begin_hunk_2_@_ZN5folly10SemiFutureImE23releaseDeferredExecutorEPNS_7futures6detail4CoreImEE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load atomic i8, ptr %i.a acquire, align 1
  %i.c = and i8 %i.b, 108
  %.not6 = icmp eq i8 %i.c, 0
  br i1 %.not6, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZN5folly7futures6detail8CoreBase21stealDeferredExecutorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.79") align 8 %1, ptr noundef nonnull align 16 dereferenceable(136) %0)
  %i.d = load ptr, ptr %1, align 8, !tbaa !633
  %.not4 = icmp ne ptr %i.d, null
  %i.e = zext i1 %.not4 to i32
  call void @_ZN5folly13async_tracing20logSemiFutureDiscardENS0_18DiscardHasDeferredE(i32 noundef %i.e) #16
  %i.f = load ptr, ptr %1, align 8, !tbaa !633    ; 2 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly7futures6detail16DeferredExecutor6detachEv(ptr noundef nonnull align 16 dereferenceable(112) %i.f)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.g

bb.f:                                             ; preds = %bb.d
  %.pr = load ptr, ptr %1, align 8, !tbaa !633    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.pr)
          to label %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #44
  unreachable

_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit: ; preds = %bb.c, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit
  ret void
}

declare void @_ZN5folly7futures6detail8CoreBase21stealDeferredExecutorEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.79") align 8, ptr noundef nonnull align 16 dereferenceable(136)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5folly13async_tracing20logSemiFutureDiscardENS0_18DiscardHasDeferredE(i32 noundef) local_unnamed_addr #6

declare void @_ZN5folly7futures6detail16DeferredExecutor6detachEv(ptr noundef nonnull align 16 dereferenceable(112)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !633    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #44
  unreachable
}

declare void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7futures6detail10FutureBaseImE12setCallback_IZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Function.73", align 16 ; 11 uses
  %4 = alloca %"class.std::shared_ptr.87", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.87") align 8 %4)
  %i.a = load ptr, ptr %0, align 8, !tbaa !192    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load atomic i8, ptr %i.b acquire, align 1
  %i.d = and i8 %i.c, 108
  %.not1.i.i = icmp eq i8 %i.d, 0
  br i1 %.not1.i.i, label %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN5folly6detail16throw_exception_INS_22FutureAlreadyContinuedEJEEEvDpT0_() #27
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i: ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !192    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i

bb.d:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i
  invoke void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #27
          to label %.noexc4 unwind label %bb.p

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i: ; preds = %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.f = load ptr, ptr %1, align 8, !tbaa !635, !nonnull !50, !align !175
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !51, !range !52, !noundef !50
  store i8 0, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !215
  store ptr null, ptr %i.i, align 8, !tbaa !215
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr %i.f, ptr %3, align 16, !tbaa !494
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.h, ptr %i.m, align 8, !tbaa !214
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.j, ptr %i.n, align 16, !tbaa !216
  store ptr @_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreImE11setCallbackIZNS4_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOSB_OSt10shared_ptrINS_14RequestContextEENS4_18InlineContinuationEEUlRNS4_8CoreBaseESG_PNS_17exception_wrapperEE_Lb1ELb0EvJSS_SG_SU_EEET2_DpT3_RNS1_4DataE, ptr %i.k, align 16, !tbaa !181
  store ptr @_ZN5folly6detail8function13DispatchSmall4execIZNS_7futures6detail4CoreImE11setCallbackIZNS5_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOSC_OSt10shared_ptrINS_14RequestContextEENS5_18InlineContinuationEEUlRNS5_8CoreBaseESH_PNS_17exception_wrapperEE_EEmNS1_2OpEPNS1_4DataESZ_, ptr %i.l, align 8, !tbaa !183
  invoke void @_ZN5folly7futures6detail8CoreBase12setCallback_EONS_8FunctionIFvRS2_ONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEEEOSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationE(ptr noundef nonnull align 16 dereferenceable(160) %i.e, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !183  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call noundef i64 %i.o(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #16, !inline_history !637 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !183  ; 2 uses
  %.not.i.i5.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i5.i.i, label %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call noundef i64 %i.r(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #16, !inline_history !637 ; 0 uses
  br label %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i

_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %.body

bb.i:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !224  ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.v, align 8, !tbaa !235
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !237
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #16, !inline_history !490
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !84
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #16, !inline_history !490
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i6 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.m ], [ %i.ai, %bb.n ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.o, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #16
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.p:                                             ; preds = %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %i.q, %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i ]
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5folly7PromiseImED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !214, !range !52, !noundef !50
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #16
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !216
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre.i.i, %bb.c ], [ %i.b, %bb.b ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.f)
          to label %_ZN5folly7PromiseImED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #44
  unreachable

_ZN5folly7PromiseImED2Ev.exit:                    ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreImE11setCallbackIZNS4_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOSB_OSt10shared_ptrINS_14RequestContextEENS4_18InlineContinuationEEUlRNS4_8CoreBaseESG_PNS_17exception_wrapperEE_Lb1ELb0EvJSS_SG_SU_EEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(48) %3) #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_clESP_SD_SR_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !497
  store i32 2, ptr %i.a, align 8, !tbaa !497
  %cond.i.i.i.i = icmp eq i32 %i.b, 1
  br i1 %cond.i.i.i.i, label %bb.c, label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i, !prof !439

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !381
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #16
  br label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i

_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.f = load i64, ptr %2, align 8, !noalias !638
  store i64 %i.f, ptr %i.e, align 16, !alias.scope !638
  store i64 0, ptr %2, align 8, !noalias !638
  store i32 1, ptr %i.a, align 8, !tbaa !232
  br label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_clESP_SD_SR_.exit

_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_clESP_SD_SR_.exit: ; preds = %bb.a, %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @_ZN5folly7PromiseImE6setTryEONS_3TryImEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  %i.i = load ptr, ptr %3, align 16, !tbaa !635, !nonnull !50, !align !175
  tail call void @_ZN5folly6fibers5Baton4postEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function13DispatchSmall4execIZNS_7futures6detail4CoreImE11setCallbackIZNS5_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOSC_OSt10shared_ptrINS_14RequestContextEENS5_18InlineContinuationEEUlRNS5_8CoreBaseESH_PNS_17exception_wrapperEE_EEmNS1_2OpEPNS1_4DataESZ_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_D2Ev.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !635, !nonnull !50, !align !175
  store ptr %i.a, ptr %2, align 8, !tbaa !494
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !51, !range !52, !noundef !50
  store i8 0, ptr %i.c, align 8, !tbaa !51
  store i8 %i.d, ptr %i.b, align 8, !tbaa !214
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !215
  store ptr null, ptr %i.f, align 8, !tbaa !215
  store ptr %i.g, ptr %i.e, align 8, !tbaa !216
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !216  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_D2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !214, !range !52, !noundef !50
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.i) #16
  %.pre.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !216
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.i, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.m)
          to label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_D2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #44
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @abort() #44
  unreachable

_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_D2Ev.exit: ; preds = %bb.f, %bb.c, %bb.a
  ret i64 0
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_14FutureNotReadyEJEEEvDpT0_() local_unnamed_addr #26 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::FutureNotReady", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.8)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly14FutureNotReadyE, i64 16), ptr %0, align 8, !tbaa !84
  invoke void @_ZN5folly15throw_exceptionINS_14FutureNotReadyEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_14FutureNotReadyEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #26 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 2 uses
  tail call void @_ZN5folly14FutureNotReadyC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly14FutureNotReadyE, ptr nonnull @_ZNSt11logic_errorD2Ev) #42
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_2
