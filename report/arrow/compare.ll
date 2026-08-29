Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/compare?download=true
inline.NumInlined: 2996
inline.NumDeleted: 1287
begin_hunk_0_@_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_:bb.a

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn6
}

declare noundef zeroext i1 @_ZNK5arrow6Tensor12is_row_majorEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5arrow6Tensor15is_column_majorEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_133StridedIntegerTensorContentEqualsEilliRKNS_6TensorES3_(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %5) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.b = sext i32 %0 to i64                       ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !281  ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load i64, ptr %i.d, align 8, !tbaa !228  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !281
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.b
  %i.i = load i64, ptr %i.h, align 8, !tbaa !228  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !281
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.b
  %i.m = load i64, ptr %i.l, align 8, !tbaa !228  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !278
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.c to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 3
  %i.t = trunc i64 %i.s to i32
  %i.u = add nsw i32 %i.t, -1
  %i.v = icmp eq i32 %0, %i.u
  %.not4455 = icmp slt i64 %i.e, 1                ; 2 uses
  br i1 %i.v, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.a
  br i1 %.not4455, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader46
  %i.w = add nsw i32 %0, 1
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  br i1 %.not4455, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !174  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !298, !range !39, !noundef !40
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %i.ab, ptr %i.ad, ptr null, !prof !99
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %1
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !174 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !298, !range !39, !noundef !40
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %i.ak, ptr %i.am, ptr null, !prof !99
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %2
  %i.ap = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph57
  %.03756 = phi i64 [ 0, %.lr.ph57 ], [ %i.au, %bb.b ] ; 3 uses
  %i.aq = mul nsw i64 %.03756, %i.i
  %i.ar = getelementptr inbounds i8, ptr %i.af, i64 %i.aq
  %i.as = mul nsw i64 %.03756, %i.m
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  %bcmp = tail call i32 @bcmp(ptr %i.ar, ptr %i.at, i64 %i.ap)
  %.not43 = icmp eq i32 %bcmp, 0                  ; 2 uses
  %i.au = add nuw nsw i64 %.03756, 1              ; 2 uses
  %exitcond63.not = icmp ne i64 %i.au, %i.e
  %or.cond.not = select i1 %.not43, i1 %exitcond63.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.loopexit, !llvm.loop !1229

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.052 = phi i64 [ 0, %.lr.ph ], [ %i.ay, %bb.d ]
  %.04051 = phi i64 [ %1, %.lr.ph ], [ %i.aw, %bb.d ] ; 2 uses
  %.04150 = phi i64 [ %2, %.lr.ph ], [ %i.ax, %bb.d ] ; 2 uses
  %i.av = tail call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_133StridedIntegerTensorContentEqualsEilliRKNS_6TensorES3_(i32 noundef %i.w, i64 noundef %.04051, i64 noundef %.04150, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 8 dereferenceable(112) %5) ; 3 uses
  br i1 %i.av, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.aw = add nsw i64 %.04051, %i.i
  %i.ax = add nsw i64 %.04150, %i.m
  %i.ay = add nuw nsw i64 %.052, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !1230

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.b, %.preheader46, %.preheader
  %.2 = phi i1 [ true, %.preheader46 ], [ true, %.preheader ], [ %.not43, %bb.b ], [ %i.av, %bb.d ], [ %i.av, %bb.c ]
  ret i1 %.2
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6detail15Fingerprintable27LoadMetadataFingerprintSlowB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6detail15Fingerprintable19LoadFingerprintSlowB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !285  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !286
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !288
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !273
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !1231
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !273
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !1231
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !276
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !290

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !275  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !276
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsIdEEbRKSt8optionalIT_ES6_RKNS_12EqualOptionsE(double %.0.val, i8 %.8.val, double %.0.val1, i8 %.8.val3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #20 {
bb.a:
  %i.a = trunc nuw i8 %.8.val to i1
  %i.b = trunc nuw i8 %.8.val3 to i1
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %_ZNKRSt8optionalIdE5valueEv.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %.8.val, %.8.val3
  br label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit

_ZNKRSt8optionalIdE5valueEv.exit8:                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 2, !tbaa !33, !range !39, !noundef !40
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !85, !range !39, !noundef !40
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !798, !range !39, !noundef !40
  %i.k = trunc nuw i8 %i.j to i1                  ; 4 uses
  br i1 %i.e, label %bb.c, label %bb.q

bb.c:                                             ; preds = %_ZNKRSt8optionalIdE5valueEv.exit8
  br i1 %i.h, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i.i.i = load double, ptr %0, align 8, !tbaa !330 ; 2 uses
  %i.l = fcmp oeq double %.0.val, %.0.val1        ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %i.l, label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = fcmp uno double %.0.val, 0.000000e+00
  %i.n = fcmp uno double %.0.val1, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i = and i1 %i.m, %i.n
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = fsub double %.0.val, %.0.val1
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp ole double %i.p, %.val.i.i.i.i.i
  br label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit

bb.h:                                             ; preds = %bb.d
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = bitcast double %.0.val to i64
  %i.s = bitcast double %.0.val1 to i64
  %i.t = xor i64 %i.s, %i.r
  %i.u = icmp sgt i64 %i.t, -1
  br label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit

bb.j:                                             ; preds = %bb.h
  %i.v = fcmp uno double %.0.val, 0.000000e+00
  %i.w = fcmp uno double %.0.val1, 0.000000e+00
  %or.cond.i.i4.i.i.i.i.i = and i1 %i.v, %i.w
  br i1 %or.cond.i.i4.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = fsub double %.0.val, %.0.val1
  %i.y = tail call double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp ole double %i.y, %.val.i.i.i.i.i
  br label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit

bb.l:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.val.i4.i.i.i.i = load double, ptr %0, align 8, !tbaa !330
  %i.aa = fcmp oeq double %.0.val, %.0.val1
  %i.ab = fsub double %.0.val, %.0.val1
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp ole double %i.ac, %.val.i4.i.i.i.i
  %.0.i.i.i5.i.i.i.i = select i1 %i.aa, i1 true, i1 %i.ad
  br label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit

bb.n:                                             ; preds = %bb.l
  %i.ae = fcmp oeq double %.0.val, %.0.val1
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.af = bitcast double %.0.val to i64
  %i.ag = bitcast double %.0.val1 to i64
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = icmp sgt i64 %i.ah, -1
  br label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit

bb.p:                                             ; preds = %bb.n
  %.val1.i.i.i.i.i = load double, ptr %0, align 8, !tbaa !330
  %i.aj = fsub double %.0.val, %.0.val1
  %i.ak = tail call double @llvm.fabs.f64(double %i.aj)
  %i.al = fcmp ole double %i.ak, %.val1.i.i.i.i.i
  br label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit

bb.q:                                             ; preds = %_ZNKRSt8optionalIdE5valueEv.exit8
  %i.am = fcmp oeq double %.0.val, %.0.val1       ; 4 uses
  br i1 %i.h, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  br i1 %i.k, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = fcmp uno double %.0.val, 0.000000e+00
  %i.ao = fcmp uno double %.0.val1, 0.000000e+00
  %or.cond.i.i.i.i4.i.i.i = and i1 %i.an, %i.ao
  %.0.i.i.i.i5.i.i.i = or i1 %i.am, %or.cond.i.i.i.i4.i.i.i
  br label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit

bb.t:                                             ; preds = %bb.r
  br i1 %i.am, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ap = bitcast double %.0.val to i64
  %i.aq = bitcast double %.0.val1 to i64
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = icmp sgt i64 %i.ar, -1
  br label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit

bb.v:                                             ; preds = %bb.t
  %i.at = fcmp uno double %.0.val, 0.000000e+00
  %i.au = fcmp uno double %.0.val1, 0.000000e+00
  %or.cond.i.i2.i.i.i.i.i = and i1 %i.at, %i.au
  br label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit

bb.w:                                             ; preds = %bb.q
  br i1 %i.k, label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = bitcast double %.0.val to i64
  %i.aw = bitcast double %.0.val1 to i64
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = icmp sgt i64 %i.ax, -1
  %.0.i.i.i4.i.i.i.i = and i1 %i.am, %i.ay
  br label %_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit

_ZN5arrow12_GLOBAL__N_112DoubleEqualsERKdS2_RKNS_12EqualOptionsE.exit: ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.s, %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.b
  %.0 = phi i1 [ %.not, %bb.b ], [ %i.al, %bb.p ], [ %i.q, %bb.g ], [ %i.z, %bb.k ], [ true, %bb.f ], [ true, %bb.e ], [ %i.u, %bb.i ], [ true, %bb.j ], [ %.0.i.i.i5.i.i.i.i, %bb.m ], [ %i.ai, %bb.o ], [ %or.cond.i.i2.i.i.i.i.i, %bb.v ], [ %.0.i.i.i.i5.i.i.i, %bb.s ], [ %i.as, %bb.u ], [ %.0.i.i.i4.i.i.i.i, %bb.x ], [ %i.am, %bb.w ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEERZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ESE_RKNS5_12EqualOptionsEEUlRKSB_RKT0_E_RKS9_SQ_EJEEESt16integer_sequenceImJLm0ELm0EEEE14__visit_invokeESO_SQ_SQ_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %2) #20 align 2 {
bb.a:
  %.val = load i64, ptr %1, align 8, !tbaa !228
  %.val3 = load i64, ptr %2, align 8, !tbaa !228
  %i.a = icmp eq i64 %.val, %.val3
  ret i1 %i.a
}

; Function Attrs: mustprogress noreturn uwtable
define internal noundef zeroext i1 @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEERZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ESE_RKNS5_12EqualOptionsEEUlRKSB_RKT0_E_RKS9_SQ_EJEEESt16integer_sequenceImJLm0ELm1EEEE14__visit_invokeESO_SQ_SQ_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #21 align 2 {
bb.a:
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.17) #27
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define internal noundef zeroext i1 @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEERZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ESE_RKNS5_12EqualOptionsEEUlRKSB_RKT0_E_RKS9_SQ_EJEEESt16integer_sequenceImJLm1ELm0EEEE14__visit_invokeESO_SQ_SQ_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #21 align 2 {
bb.a:
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.17) #27
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEERZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ESE_RKNS5_12EqualOptionsEEUlRKSB_RKT0_E_RKS9_SQ_EJEEESt16integer_sequenceImJLm1ELm1EEEE14__visit_invokeESO_SQ_SQ_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %2) #22 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !1232  ; 6 uses
  %.val3 = load double, ptr %1, align 8           ; 16 uses
  %.val4 = load double, ptr %2, align 8           ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 10
  %i.b = load i8, ptr %i.a, align 2, !tbaa !33, !range !39, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !85, !range !39, !noundef !40
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !798, !range !39, !noundef !40
  %i.i = trunc nuw i8 %i.h to i1                  ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i.i.i.i.i.i = load double, ptr %.val, align 8, !tbaa !330 ; 2 uses
  %i.j = fcmp oeq double %.val3, %.val4           ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.j, label %_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = fcmp uno double %.val3, 0.000000e+00
  %i.l = fcmp uno double %.val4, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i.i.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = fsub double %.val3, %.val4
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = fcmp ole double %i.n, %.val.i.i.i.i.i.i.i.i
  br label %_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.g:                                             ; preds = %bb.c
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = bitcast double %.val3 to i64
  %i.q = bitcast double %.val4 to i64
  %i.r = xor i64 %i.q, %i.p
  %i.s = icmp sgt i64 %i.r, -1
  br label %_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.i:                                             ; preds = %bb.g
  %i.t = fcmp uno double %.val3, 0.000000e+00
  %i.u = fcmp uno double %.val4, 0.000000e+00
  %or.cond.i.i4.i.i.i.i.i.i.i.i = and i1 %i.t, %i.u
  br i1 %or.cond.i.i4.i.i.i.i.i.i.i.i, label %_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = fsub double %.val3, %.val4
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp ole double %i.w, %.val.i.i.i.i.i.i.i.i
  br label %_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.k:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.val.i4.i.i.i.i.i.i.i = load double, ptr %.val, align 8, !tbaa !330
  %i.y = fcmp oeq double %.val3, %.val4
  %i.z = fsub double %.val3, %.val4
  %i.aa = tail call double @llvm.fabs.f64(double %i.z)
  %i.ab = fcmp ole double %i.aa, %.val.i4.i.i.i.i.i.i.i
  %.0.i.i.i5.i.i.i.i.i.i.i = select i1 %i.y, i1 true, i1 %i.ab
  br label %_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = fcmp oeq double %.val3, %.val4
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = bitcast double %.val3 to i64
  %i.ae = bitcast double %.val4 to i64
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = icmp sgt i64 %i.af, -1
  br label %_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.o:                                             ; preds = %bb.m
  %.val1.i.i.i.i.i.i.i.i = load double, ptr %.val, align 8, !tbaa !330
  %i.ah = fsub double %.val3, %.val4
  %i.ai = tail call double @llvm.fabs.f64(double %i.ah)
  %i.aj = fcmp ole double %i.ai, %.val1.i.i.i.i.i.i.i.i
  br label %_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.p:                                             ; preds = %bb.a
  %i.ak = fcmp oeq double %.val3, %.val4          ; 4 uses
  br i1 %i.f, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  br i1 %i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.al = fcmp uno double %.val3, 0.000000e+00
  %i.am = fcmp uno double %.val4, 0.000000e+00
  %or.cond.i.i.i.i4.i.i.i.i.i.i = and i1 %i.al, %i.am
  %.0.i.i.i.i5.i.i.i.i.i.i = or i1 %i.ak, %or.cond.i.i.i.i4.i.i.i.i.i.i
  br label %_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.s:                                             ; preds = %bb.q
  br i1 %i.ak, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.an = bitcast double %.val3 to i64
  %i.ao = bitcast double %.val4 to i64
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = icmp sgt i64 %i.ap, -1
  br label %_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.u:                                             ; preds = %bb.s
  %i.ar = fcmp uno double %.val3, 0.000000e+00
  %i.as = fcmp uno double %.val4, 0.000000e+00
  %or.cond.i.i2.i.i.i.i.i.i.i.i = and i1 %i.ar, %i.as
  br label %_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.v:                                             ; preds = %bb.p
  br i1 %i.i, label %_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.at = bitcast double %.val3 to i64
  %i.au = bitcast double %.val4 to i64
  %i.av = xor i64 %i.au, %i.at
  %i.aw = icmp sgt i64 %i.av, -1
  %.0.i.i.i4.i.i.i.i.i.i.i = and i1 %i.ak, %i.aw
  br label %_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

_ZSt8__invokeIRZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJldEEEEbRKSt8optionalIT_ES9_RKNS0_12EqualOptionsEEUlRKS6_RKT0_E_JRKdSL_EENSt15__invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.l, %bb.n, %bb.o, %bb.r, %bb.t, %bb.u, %bb.v, %bb.w
  %.0.shrunk.i.i.i.i = phi i1 [ %i.aj, %bb.o ], [ %i.o, %bb.f ], [ %i.x, %bb.j ], [ true, %bb.e ], [ true, %bb.d ], [ %i.s, %bb.h ], [ true, %bb.i ], [ %.0.i.i.i5.i.i.i.i.i.i.i, %bb.l ], [ %i.ag, %bb.n ], [ %or.cond.i.i2.i.i.i.i.i.i.i.i, %bb.u ], [ %.0.i.i.i.i5.i.i.i.i.i.i, %bb.r ], [ %i.aq, %bb.t ], [ %.0.i.i.i4.i.i.i.i.i.i.i, %bb.w ], [ %i.ak, %bb.v ]
  ret i1 %.0.shrunk.i.i.i.i
}

; Function Attrs: noreturn
declare void @_ZN5arrow11UnreachableEPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEERZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKSt8optionalIT_ESK_RKNS5_12EqualOptionsEEUlRKSH_RKT0_E_RKSF_SW_EJEEESt16integer_sequenceImJLm0ELm0EEEE14__visit_invokeESU_SW_SW_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %2) #20 align 2 {
bb.a:
  %.val = load i8, ptr %1, align 8, !tbaa !119, !range !39, !noundef !40
  %.val3 = load i8, ptr %2, align 8, !tbaa !119, !range !39, !noundef !40
  %i.a = icmp eq i8 %.val, %.val3
  ret i1 %i.a
}

; Function Attrs: mustprogress noreturn uwtable
define internal noundef zeroext i1 @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEERZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKSt8optionalIT_ESK_RKNS5_12EqualOptionsEEUlRKSH_RKT0_E_RKSF_SW_EJEEESt16integer_sequenceImJLm0ELm1EEEE14__visit_invokeESU_SW_SW_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #21 align 2 {
bb.a:
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.17) #27
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define internal noundef zeroext i1 @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEERZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKSt8optionalIT_ESK_RKNS5_12EqualOptionsEEUlRKSH_RKT0_E_RKSF_SW_EJEEESt16integer_sequenceImJLm0ELm2EEEE14__visit_invokeESU_SW_SW_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #21 align 2 {
bb.a:
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.17) #27
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define internal noundef zeroext i1 @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEERZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKSt8optionalIT_ESK_RKNS5_12EqualOptionsEEUlRKSH_RKT0_E_RKSF_SW_EJEEESt16integer_sequenceImJLm0ELm3EEEE14__visit_invokeESU_SW_SW_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #21 align 2 {
bb.a:
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.17) #27
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define internal noundef zeroext i1 @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIbEERZN5arrow12_GLOBAL__N_134ArrayStatisticsOptionalValueEqualsISt7variantIJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEbRKSt8optionalIT_ESK_RKNS5_12EqualOptionsEEUlRKSH_RKT0_E_RKSF_SW_EJEEESt16integer_sequenceImJLm0ELm4EEEE14__visit_invokeESU_SW_SW_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #21 align 2 {
bb.a:
end_hunk_0
