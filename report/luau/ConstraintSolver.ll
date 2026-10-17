Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ConstraintSolver?download=true
inline.NumInlined: 8088
inline.NumDeleted: 3245
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4Luau6detail14DenseHashTableINS_22InstantiationSignatureESt4pairIS2_PKNS_4TypeEES3_IKS2_S6_ENS0_16ItemInterfaceMapIS2_S6_EENS_26HashInstantiationSignatureESt8equal_toIS2_EE6rehashEv:bb.a
bb.e:                                             ; preds = %.lr.ph, %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit.thread14
  %.01117 = phi i64 [ 0, %.lr.ph ], [ %i.bg, %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit.thread14 ] ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !957
  %i.v = getelementptr inbounds nuw [136 x i8], ptr %i.u, i64 %.01117 ; 6 uses
  %i.w = invoke noundef zeroext i1 @_ZNK4Luau7TypeFuneqERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.e
  br i1 %i.w, label %bb.f, label %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit.thread

bb.f:                                             ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !372  ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !347 ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !372
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !347 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp eq i64 %i.ad, %i.ai
  br i1 %i.aj, label %bb.g, label %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit.thread

bb.g:                                             ; preds = %bb.f
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZSteqIPKN4Luau4TypeESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit.thread.i.i, label %_ZSteqIPKN4Luau4TypeESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit.i.i

_ZSteqIPKN4Luau4TypeESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit.i.i: ; preds = %bb.g
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.aa, ptr %i.af, i64 %i.ad)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZSteqIPKN4Luau4TypeESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit.thread.i.i, label %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit.thread

_ZSteqIPKN4Luau4TypeESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit.thread.i.i: ; preds = %_ZSteqIPKN4Luau4TypeESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit.i.i, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !378 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !345 ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !378
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !345 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp eq i64 %i.aq, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit.thread

bb.h:                                             ; preds = %_ZSteqIPKN4Luau4TypeESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit.thread.i.i
  %.not.not.i.i.i.i.i4.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.not.i.i.i.i.i4.i.i, label %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit.thread14, label %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit

_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit: ; preds = %bb.h
  %bcmp.i.i.i.i.i5.i.i = call i32 @bcmp(ptr %i.an, ptr %i.as, i64 %i.aq)
  %.not9.i.i.i.i.i6.i.i = icmp eq i32 %bcmp.i.i.i.i.i5.i.i, 0
  br i1 %.not9.i.i.i.i.i6.i.i, label %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit.thread14, label %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit.thread

_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit.thread: ; preds = %bb.f, %_ZSteqIPKN4Luau4TypeESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit.thread.i.i, %.noexc, %_ZSteqIPKN4Luau4TypeESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit.i.i, %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit
  %i.ax = invoke noundef ptr @_ZN4Luau6detail14DenseHashTableINS_22InstantiationSignatureESt4pairIS2_PKNS_4TypeEES3_IKS2_S6_ENS0_16ItemInterfaceMapIS2_S6_EENS_26HashInstantiationSignatureESt8equal_toIS2_EE13insert_unsafeERS8_(ptr noundef nonnull align 8 dereferenceable(154) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.v)
          to label %bb.i unwind label %bb.k       ; 2 uses

bb.i:                                             ; preds = %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit.thread
  %i.ay = load ptr, ptr %0, align 8, !tbaa !957
  %i.az = getelementptr inbounds nuw [136 x i8], ptr %i.ay, i64 %.01117 ; 2 uses
  %i.ba = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4Luau22InstantiationSignatureaSEOS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.ax, ptr noundef nonnull align 8 dereferenceable(136) %i.az) #34 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !109
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1528
  br label %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit.thread14

bb.j:                                             ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit.thread
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit.thread14: ; preds = %bb.h, %bb.i, %_ZNKSt8equal_toIN4Luau22InstantiationSignatureEEclERKS1_S4_.exit
  %i.bg = add nuw i64 %.01117, 1                  ; 2 uses
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !804 ; 2 uses
  %i.bi = icmp ult i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.e, label %._crit_edge, !llvm.loop !1525

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.k ], [ %i.be, %bb.j ]
  call void @_ZN4Luau6detail14DenseHashTableINS_22InstantiationSignatureESt4pairIS2_PKNS_4TypeEES3_IKS2_S6_ENS0_16ItemInterfaceMapIS2_S6_EENS_26HashInstantiationSignatureESt8equal_toIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(154) dereferenceable(154) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(128) ptr @_ZN4Luau22InstantiationSignatureaSEOS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !374    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !477
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !438
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !438
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !477
  store ptr %i.f, ptr %i.b, align 8, !tbaa !477
  %.not.i.i.i.i.i.i = icmp eq ptr %i.a, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #36
  br label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i

_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !380  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !476
  %i.o = load <2 x ptr>, ptr %i.k, align 8, !tbaa !375
  store <2 x ptr> %i.o, ptr %i.j, align 8, !tbaa !375
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !476
  store ptr %i.q, ptr %i.m, align 8, !tbaa !476
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.l, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i4.i, label %_ZN4Luau7TypeFunaSEOS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.t) #36
  br label %_ZN4Luau7TypeFunaSEOS0_.exit

_ZN4Luau7TypeFunaSEOS0_.exit:                     ; preds = %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.u, ptr noundef nonnull align 8 dereferenceable(28) %i.v, i64 28, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !347  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !348
  %i.ab = load <2 x ptr>, ptr %i.x, align 8, !tbaa !123
  store <2 x ptr> %i.ab, ptr %i.w, align 8, !tbaa !123
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !348
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !348
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEaSEOS5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau7TypeFunaSEOS0_.exit
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEaSEOS5_.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEaSEOS5_.exit:  ; preds = %_ZN4Luau7TypeFunaSEOS0_.exit, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !345 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !346
  %i.am = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !381
  store <2 x ptr> %i.am, ptr %i.ah, align 8, !tbaa !381
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !346
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !346
  %.not.i.i.i.i.i4 = icmp eq ptr %i.aj, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i4, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EEaSEOS5_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEaSEOS5_.exit
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = ptrtoint ptr %i.aj to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ar) #36
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EEaSEOS5_.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EEaSEOS5_.exit: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEaSEOS5_.exit, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373
  %i.c = load ptr, ptr %1, align 8, !tbaa !374    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !477
  %i.i = load ptr, ptr %0, align 8, !tbaa !374    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !78

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 3 uses
  %i.p = add i64 %i.d, -24
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 24
  %i.s = add i64 %.fr.i, 24
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.t, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !374      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !477
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.x) #36
  br label %_ZNSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !374
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !477
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !373
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 24
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !376

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 24
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, 24
  br i1 %i.af, label %bb.l, label %bb.m, !prof !376

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ac, 24
  br i1 %i.ag, label %bb.n, label %_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !374
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !373 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !374
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !373 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1529

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4Luau21GenericTypeDefinitionES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !374
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !373
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau21GenericTypeDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !379
  %i.c = load ptr, ptr %1, align 8, !tbaa !380    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !476
  %i.i = load ptr, ptr %0, align 8, !tbaa !380    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !78

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 3 uses
  %i.p = add i64 %i.d, -24
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 24
  %i.s = add i64 %.fr.i, 24
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.t, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !380      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !476
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.x) #36
  br label %_ZNSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !380
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !476
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !379
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 24
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !376

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 24
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, 24
  br i1 %i.af, label %bb.l, label %bb.m, !prof !376

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ac, 24
  br i1 %i.ag, label %bb.n, label %_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !380
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !379 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !380
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !379 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1530

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4Luau25GenericTypePackDefinitionES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !380
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !379
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau25GenericTypePackDefinitionESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !808
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !809
  %i.k = load i64, ptr %i.d, align 8, !tbaa !810
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %.sroa.012.0.copyload = load ptr, ptr %i.l, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.413.0.copyload = load i64, ptr %.sroa.413.0..sroa_idx, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %.sroa.012.0.copyload)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !347
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.413.0.copyload
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.q = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.p) ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.q, align 8, !tbaa !516
  %i.s = icmp eq i32 %i.r, 13
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 9 uses
  br i1 %i.s, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.thread

_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.c
  %i.u = load i64, ptr %i.f, align 8, !tbaa !1533 ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.thread18, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !814  ; 3 uses
  %i.x = icmp eq ptr %i.t, %i.w
  %i.y = load i64, ptr %i.h, align 8, !tbaa !1032 ; 7 uses
  br i1 %i.x, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add i64 %i.y, -1                         ; 2 uses
  %i.aa = ptrtoint ptr %i.t to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !819
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i.i = phi i64 [ %i.ad, %bb.e ], [ %i.ak, %bb.h ]
  %.01832.i.i = phi i64 [ 0, %bb.e ], [ %i.aj, %bb.h ]
  %.01933.i.i = and i64 %.pn.i.i, %i.z            ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.01933.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !814 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.t
  br i1 %i.ah, label %_ZNK4Luau12DenseHashSetIPKNS_9UnionTypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp eq ptr %i.ag, %i.w
  br i1 %i.ai, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add i64 %.01832.i.i, 1                  ; 3 uses
  %i.ak = add i64 %i.aj, %.01933.i.i
  %.not.i.i5 = icmp ugt i64 %i.aj, %i.z
  br i1 %.not.i.i5, label %bb.l, label %bb.f, !llvm.loop !1531

_ZNK4Luau12DenseHashSetIPKNS_9UnionTypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit: ; preds = %bb.f
  %i.al = load i64, ptr %i.a, align 8, !tbaa !808
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.thread, label %.lr.ph.i, !llvm.loop !1532

.lr.ph.i:                                         ; preds = %_ZNK4Luau12DenseHashSetIPKNS_9UnionTypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !810
  br label %bb.i

bb.i:                                             ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i, %.lr.ph.i
  %i.an = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.bi, %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i ]
  %i.ao = load ptr, ptr %0, align 8, !tbaa !809
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.an ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !366
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !366
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !814
  %i.au = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %i.at) ; 2 uses
  %i.av = load i64, ptr %i.aq, align 8, !tbaa !366
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !372
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !347
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %.not.i = icmp ult i64 %i.av, %i.bc
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !808 ; 2 uses
  br i1 %.not.i, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit, label %bb.j, !llvm.loop !1532

bb.j:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !810
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  store i64 %i.be, ptr %i.d, align 8, !tbaa !810
  %i.bf = add i64 %.pre.pre, -1                   ; 2 uses
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !808
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !815
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.k, label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.d, align 8, !tbaa !810
  br label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i

_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i: ; preds = %bb.k, %bb.j
end_hunk_0
