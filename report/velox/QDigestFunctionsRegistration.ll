Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/QDigestFunctionsRegistration?download=true
inline.NumInlined: 19788
inline.NumDeleted: 5439
loop-unroll.NumCompletelyUnrolled: 213
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 224
begin_hunk_0_@_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE9tryRemoveEi:bb.a
bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %3, align 8, !tbaa !63     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !74
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = sext i32 %1 to i64                       ; 5 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !394
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !87   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !394
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !87   ; 3 uses
  %i.q = icmp eq i32 %i.l, -1
  %i.r = icmp eq i32 %i.p, -1
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !533  ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !509
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = icmp eq i64 %i.aa, %i.i
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -8
  store ptr %i.ac, ptr %i.t, align 8, !tbaa !533
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !534
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -1
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !534
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !535
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !535
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !536
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !536
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !536
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !536
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !666
  store i32 %i.aq, ptr %i.k, align 4, !tbaa !87
  store i32 %1, ptr %i.ap, align 4, !tbaa !666
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !667
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !667
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !665
  %i.aw = icmp eq i32 %1, %i.av
  br i1 %i.aw, label %bb.j, label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit

bb.j:                                             ; preds = %bb.i
  store i32 -1, ptr %i.au, align 8, !tbaa !665
  br label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit

bb.k:                                             ; preds = %bb.e
  %i.ax = icmp ne i32 %i.l, -1                    ; 2 uses
  %i.ay = icmp ne i32 %i.p, -1
  %or.cond3 = select i1 %i.ax, i1 %i.ay, i1 false
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %or.cond3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !509
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.i
  store double 0.000000e+00, ptr %i.bb, align 8, !tbaa !467
  br label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit

bb.m:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !533 ; 2 uses
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !509
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = add nsw i64 %i.bi, -1
  %i.bk = icmp eq i64 %i.bj, %i.i
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds i8, ptr %i.bd, i64 -8
  store ptr %i.bl, ptr %i.bc, align 8, !tbaa !533
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !534
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -1
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !534
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !535
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !535
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !536
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !536
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !536
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !536
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !666
  store i32 %i.bz, ptr %i.k, align 4, !tbaa !87
  store i32 %1, ptr %i.by, align 4, !tbaa !666
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !667
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !667
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !665
  %i.cf = icmp eq i32 %1, %i.ce
  br i1 %i.cf, label %bb.q, label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit13

bb.q:                                             ; preds = %bb.p
  store i32 -1, ptr %i.cd, align 8, !tbaa !665
  br label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit13

_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit13: ; preds = %bb.p, %bb.q
  %i.cg = select i1 %i.ax, i32 %i.l, i32 %i.p
  br label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit

_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit: ; preds = %bb.j, %bb.i, %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit13, %bb.l
  %.0 = phi i32 [ %i.cg, %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit13 ], [ %1, %bb.l ], [ -1, %bb.i ], [ -1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE17postOrderTraverseIZNS5_9serializeEPcEUliE_EEbiT_RKSt6vectorIiSaIiEESE_(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 7 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !394
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !87   ; 2 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !394
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !87   ; 2 uses
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZNK8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE17postOrderTraverseIZNS5_9serializeEPcEUliE_EEbiT_RKSt6vectorIiSaIiEESE_(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %i.e, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not20 = icmp eq i32 %i.h, -1
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef zeroext i1 @_ZNK8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE17postOrderTraverseIZNS5_9serializeEPcEUliE_EEbiT_RKSt6vectorIiSaIiEESE_(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %i.h, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !506
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.b
  %i.n = load i8, ptr %i.m, align 1, !tbaa !74
  %i.o = tail call i8 @llvm.smax.i8(i8 %i.n, i8 1)
  %.sroa.speculated.i.i = shl i8 %i.o, 2
  %6 = add i8 %.sroa.speculated.i.i, -4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !394
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.b
  %i.s = load i32, ptr %i.r, align 4, !tbaa !87
  %.not.i = icmp ne i32 %i.s, -1
  %7 = zext i1 %.not.i to i8
  %spec.select.i = or disjoint i8 %6, %7          ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !394
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.b
  %i.w = load i32, ptr %i.v, align 4, !tbaa !87
  %.not8.i = icmp eq i32 %i.w, -1
  %i.x = or disjoint i8 %spec.select.i, 2
  %.1.i = select i1 %.not8.i, i8 %spec.select.i, i8 %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !509
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.b
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !467
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !503
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.b
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !144
  %i.ag = load ptr, ptr %3, align 8, !tbaa !449
  store i8 %.1.i, ptr %i.ag, align 1
  %i.ah = load ptr, ptr %3, align 8, !tbaa !449
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !449
  store double %i.ab, ptr %i.ai, align 1
  %i.aj = load ptr, ptr %3, align 8, !tbaa !449
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !449
  store i64 %i.af, ptr %i.ak, align 1
  %i.al = load ptr, ptr %3, align 8, !tbaa !449
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.am, ptr %3, align 8, !tbaa !449
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.f ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestDoubleFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_14SimpleQDigestTIdEELb0EEENS0_15ConstantCheckerIJSG_dEEEJSG_dEEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISG_EENSN_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.2310) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.2315, align 8           ; 6 uses
  %6 = alloca %class.anon.2314, align 8           ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestDoubleFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_14SimpleQDigestTIdEELb0EEENS0_15ConstantCheckerIJSH_dEEEJSH_dEEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISH_EENSO_IdEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestDoubleFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_14SimpleQDigestTIdEELb0EEENS0_15ConstantCheckerIJSG_dEEEJSG_dEEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISG_EENSN_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestDoubleFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_14SimpleQDigestTIdEELb0EEENS0_15ConstantCheckerIJSH_dEEEJSH_dEEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISH_EENSO_IdEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestDoubleFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_14SimpleQDigestTIdEELb0EEENS0_15ConstantCheckerIJSG_dEEEJSG_dEEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISG_EENSN_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestDoubleFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_14SimpleQDigestTIdEELb0EEENS0_15ConstantCheckerIJSH_dEEEJSH_dEEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISH_EENSO_IdEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestDoubleFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_14SimpleQDigestTIdEELb0EEENS0_15ConstantCheckerIJSG_dEEEJSG_dEEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISG_EENSN_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5032

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestDoubleFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_14SimpleQDigestTIdEELb0EEENS0_15ConstantCheckerIJSG_dEEEJSG_dEEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISG_EENSN_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestDoubleFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_14SimpleQDigestTIdEELb0EEENS0_15ConstantCheckerIJSH_dEEEJSH_dEEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISH_EENSO_IdEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestDoubleFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_14SimpleQDigestTIdEELb0EEENS0_15ConstantCheckerIJSH_dEEEJSH_dEEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISH_EENSO_IdEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestDoubleFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_14SimpleQDigestTIdEELb0EEENS0_15ConstantCheckerIJSG_dEEEJSG_dEEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISG_EENSN_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator.524", align 1 ; 4 uses
  %4 = alloca %"class.facebook::velox::functions::qdigest::QuantileDigest.1030", align 8 ; 19 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !5043, !range !97, !noundef !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5044
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !144
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit46, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %.noexc23

.noexc23:                                         ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestDoubleFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_14SimpleQDigestTIdEELb0EEENS0_15ConstantCheckerIJSE_dEEEJSE_dEEEE8applyUdfIZNKSI_7iterateIJNS1_20ConstantVectorReaderISE_EENSL_IdEEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit
  %.056 = phi i64 [ %i.k, %.preheader ], [ %i.et, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestDoubleFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_14SimpleQDigestTIdEELb0EEENS0_15ConstantCheckerIJSE_dEEEJSE_dEEEE8applyUdfIZNKSI_7iterateIJNS1_20ConstantVectorReaderISE_EENSL_IdEEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit ] ; 3 uses
  %i.ad = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.056, i1 true)
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = or disjoint i32 %i.m, %i.ae             ; 3 uses
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !1213 ; 2 uses
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !1226, !nonnull !98, !align !181 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1229, !nonnull !98, !align !181
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store i32 %i.af, ptr %i.aj, align 8, !tbaa !1220
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1230, !nonnull !98, !align !181 ; 2 uses
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !1229, !nonnull !98, !align !181 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1233, !noalias !5045, !nonnull !98, !align !181 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1234, !noalias !5045, !nonnull !98, !align !181
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !5046
  %.sroa.0.0.copyload.i = load i64, ptr %i.ap, align 8, !noalias !5046 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !74, !noalias !5046 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8, !noalias !5046
  store ptr %.sroa.2.0.copyload.i, ptr %i.o, align 8, !noalias !5046
  %i.as = load double, ptr %i.ar, align 8, !tbaa !467, !noalias !5047
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE9tryRemoveEi:bb.a
bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %3, align 8, !tbaa !63     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !74
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = sext i32 %1 to i64                       ; 5 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !394
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !87   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !394
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !87   ; 3 uses
  %i.q = icmp eq i32 %i.l, -1
  %i.r = icmp eq i32 %i.p, -1
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !533  ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !509
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = icmp eq i64 %i.aa, %i.i
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -8
  store ptr %i.ac, ptr %i.t, align 8, !tbaa !533
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !534
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -1
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !534
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !535
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !535
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !536
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !536
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !536
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !536
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !529
  store i32 %i.aq, ptr %i.k, align 4, !tbaa !87
  store i32 %1, ptr %i.ap, align 4, !tbaa !529
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !530
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !530
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !528
  %i.aw = icmp eq i32 %1, %i.av
  br i1 %i.aw, label %bb.j, label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE6removeEi.exit

bb.j:                                             ; preds = %bb.i
  store i32 -1, ptr %i.au, align 8, !tbaa !528
  br label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE6removeEi.exit

bb.k:                                             ; preds = %bb.e
  %i.ax = icmp ne i32 %i.l, -1                    ; 2 uses
  %i.ay = icmp ne i32 %i.p, -1
  %or.cond3 = select i1 %i.ax, i1 %i.ay, i1 false
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %or.cond3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !509
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.i
  store double 0.000000e+00, ptr %i.bb, align 8, !tbaa !467
  br label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE6removeEi.exit

bb.m:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !533 ; 2 uses
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !509
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = add nsw i64 %i.bi, -1
  %i.bk = icmp eq i64 %i.bj, %i.i
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds i8, ptr %i.bd, i64 -8
  store ptr %i.bl, ptr %i.bc, align 8, !tbaa !533
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !534
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -1
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !534
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !535
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !535
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !536
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !536
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !536
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !536
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !529
  store i32 %i.bz, ptr %i.k, align 4, !tbaa !87
  store i32 %1, ptr %i.by, align 4, !tbaa !529
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !530
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !530
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !528
  %i.cf = icmp eq i32 %1, %i.ce
  br i1 %i.cf, label %bb.q, label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE6removeEi.exit13

bb.q:                                             ; preds = %bb.p
  store i32 -1, ptr %i.cd, align 8, !tbaa !528
  br label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE6removeEi.exit13

_ZN8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE6removeEi.exit13: ; preds = %bb.p, %bb.q
  %i.cg = select i1 %i.ax, i32 %i.l, i32 %i.p
  br label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE6removeEi.exit

_ZN8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE6removeEi.exit: ; preds = %bb.j, %bb.i, %_ZN8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE6removeEi.exit13, %bb.l
  %.0 = phi i32 [ %i.cg, %_ZN8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE6removeEi.exit13 ], [ %1, %bb.l ], [ -1, %bb.i ], [ -1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE17postOrderTraverseIZNS5_9serializeEPcEUliE_EEbiT_RKSt6vectorIiSaIiEESE_(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 7 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !394
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !87   ; 2 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !394
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !87   ; 2 uses
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZNK8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE17postOrderTraverseIZNS5_9serializeEPcEUliE_EEbiT_RKSt6vectorIiSaIiEESE_(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %i.e, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not20 = icmp eq i32 %i.h, -1
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef zeroext i1 @_ZNK8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE17postOrderTraverseIZNS5_9serializeEPcEUliE_EEbiT_RKSt6vectorIiSaIiEESE_(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %i.h, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !506
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.b
  %i.n = load i8, ptr %i.m, align 1, !tbaa !74
  %i.o = tail call i8 @llvm.smax.i8(i8 %i.n, i8 1)
  %.sroa.speculated.i.i = shl i8 %i.o, 2
  %6 = add i8 %.sroa.speculated.i.i, -4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !394
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.b
  %i.s = load i32, ptr %i.r, align 4, !tbaa !87
  %.not.i = icmp ne i32 %i.s, -1
  %7 = zext i1 %.not.i to i8
  %spec.select.i = or disjoint i8 %6, %7          ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !394
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.b
  %i.w = load i32, ptr %i.v, align 4, !tbaa !87
  %.not8.i = icmp eq i32 %i.w, -1
  %i.x = or disjoint i8 %spec.select.i, 2
  %.1.i = select i1 %.not8.i, i8 %spec.select.i, i8 %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !509
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.b
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !467
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !503
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.b
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !144
  %i.ag = load ptr, ptr %3, align 8, !tbaa !449
  store i8 %.1.i, ptr %i.ag, align 1
  %i.ah = load ptr, ptr %3, align 8, !tbaa !449
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !449
  store double %i.ab, ptr %i.ai, align 1
  %i.aj = load ptr, ptr %3, align 8, !tbaa !449
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !449
  store i64 %i.af, ptr %i.ak, align 1
  %i.al = load ptr, ptr %3, align 8, !tbaa !449
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.am, ptr %3, align 8, !tbaa !449
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.f ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestBigintFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_14SimpleQDigestTIlEELb0EEENS0_15ConstantCheckerIJSG_dEEEJSG_dEEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISG_EENSN_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.2485) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.2489, align 8           ; 6 uses
  %6 = alloca %class.anon.2488, align 8           ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestBigintFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_14SimpleQDigestTIlEELb0EEENS0_15ConstantCheckerIJSH_dEEEJSH_dEEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISH_EENSO_IdEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestBigintFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_14SimpleQDigestTIlEELb0EEENS0_15ConstantCheckerIJSG_dEEEJSG_dEEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISG_EENSN_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestBigintFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_14SimpleQDigestTIlEELb0EEENS0_15ConstantCheckerIJSH_dEEEJSH_dEEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISH_EENSO_IdEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestBigintFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_14SimpleQDigestTIlEELb0EEENS0_15ConstantCheckerIJSG_dEEEJSG_dEEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISG_EENSN_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestBigintFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_14SimpleQDigestTIlEELb0EEENS0_15ConstantCheckerIJSH_dEEEJSH_dEEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISH_EENSO_IdEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestBigintFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_14SimpleQDigestTIlEELb0EEENS0_15ConstantCheckerIJSG_dEEEJSG_dEEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISG_EENSN_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5463

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestBigintFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_14SimpleQDigestTIlEELb0EEENS0_15ConstantCheckerIJSG_dEEEJSG_dEEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISG_EENSN_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestBigintFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_14SimpleQDigestTIlEELb0EEENS0_15ConstantCheckerIJSH_dEEEJSH_dEEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISH_EENSO_IdEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestBigintFunctionINS4_10VectorExecEEESC_NS0_10CustomTypeINS0_14SimpleQDigestTIlEELb0EEENS0_15ConstantCheckerIJSH_dEEEJSH_dEEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISH_EENSO_IdEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestBigintFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_14SimpleQDigestTIlEELb0EEENS0_15ConstantCheckerIJSG_dEEEJSG_dEEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISG_EENSN_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator.519", align 1 ; 4 uses
  %4 = alloca %"class.facebook::velox::functions::qdigest::QuantileDigest", align 8 ; 19 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !5474, !range !97, !noundef !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5475
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !144
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit46, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %.noexc23

.noexc23:                                         ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestBigintFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_14SimpleQDigestTIlEELb0EEENS0_15ConstantCheckerIJSE_dEEEJSE_dEEEE8applyUdfIZNKSI_7iterateIJNS1_20ConstantVectorReaderISE_EENSL_IdEEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit
  %.056 = phi i64 [ %i.k, %.preheader ], [ %i.et, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions26ScaleQDigestBigintFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_14SimpleQDigestTIlEELb0EEENS0_15ConstantCheckerIJSE_dEEEJSE_dEEEE8applyUdfIZNKSI_7iterateIJNS1_20ConstantVectorReaderISE_EENSL_IdEEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit ] ; 3 uses
  %i.ad = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.056, i1 true)
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = or disjoint i32 %i.m, %i.ae             ; 3 uses
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !1291 ; 2 uses
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !1298, !nonnull !98, !align !181 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1301, !nonnull !98, !align !181
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store i32 %i.af, ptr %i.aj, align 8, !tbaa !1220
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1302, !nonnull !98, !align !181 ; 2 uses
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !1301, !nonnull !98, !align !181 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1305, !noalias !5476, !nonnull !98, !align !181 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1306, !noalias !5476, !nonnull !98, !align !181
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !5477
  %.sroa.0.0.copyload.i = load i64, ptr %i.ap, align 8, !noalias !5477 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !74, !noalias !5477 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8, !noalias !5477
  store ptr %.sroa.2.0.copyload.i, ptr %i.o, align 8, !noalias !5477
  %i.as = load double, ptr %i.ar, align 8, !tbaa !467, !noalias !5478
end_hunk_1
