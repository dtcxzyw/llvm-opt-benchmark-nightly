inline.NumInlined: 1001
inline.NumDeleted: 156
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_Z28BENCHMARK_sinh_novec_double_RN9benchmark5StateE:bb.a
  %.not.i7 = icmp eq ptr %.pr32, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit9, label %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8

_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8: ; preds = %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit.thread, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.i35 = phi { ptr, i32 } [ %i.j, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit.thread ], [ %i.k, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit ]
  %i.ai = phi ptr [ %i.b, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit.thread ], [ %.pr32, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit ]
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #12
  br label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit9

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit9: ; preds = %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit
  %.pn.pn.pn.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i35, %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8 ], [ %i.k, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  %.pr37 = load ptr, ptr %1, align 8, !tbaa !50   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %.not.i10 = icmp eq ptr %.pr37, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit12, label %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i11

_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i11: ; preds = %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit9.thread, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit9
  %.pn.pn.pn.pn.pn.i40 = phi { ptr, i32 } [ %i.i, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit9.thread ], [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit9 ]
  %i.aj = phi ptr [ %i.a, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit9.thread ], [ %.pr37, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit9 ]
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #12
  br label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit12

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit12: ; preds = %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit9, %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i11
  %.pn.pn.pn.pn.pn.i41 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.ph, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit9 ], [ %.pn.pn.pn.pn.pn.i40, %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i41

_ZL18benchmark_fn_novecIdEvRN9benchmark5StateEPFT_S3_E.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.ak = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %.not.i13 = icmp eq ptr %i.ak, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit15, label %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14

_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14: ; preds = %_ZL18benchmark_fn_novecIdEvRN9benchmark5StateEPFT_S3_E.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #12
  br label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit15: ; preds = %_ZL18benchmark_fn_novecIdEvRN9benchmark5StateEPFT_S3_E.exit, %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.al = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %.not.i16 = icmp eq ptr %i.al, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit18, label %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17

_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17: ; preds = %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit15
  call void @_ZdaPv(ptr noundef nonnull %i.al) #12
  br label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit15, %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.am = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %.not.i19 = icmp eq ptr %i.am, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20

_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20: ; preds = %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit18
  call void @_ZdaPv(ptr noundef nonnull %i.am) #12
  br label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit18, %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

declare void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_ZL9init_dataIfEvPT_S1_S1_(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #7 {
bb.a:
  %3 = alloca %"class.std::mersenne_twister_engine", align 8 ; 39 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 12345, ptr %3, align 8, !tbaa !58
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ 12345, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.a ], [ %i.n, %bb.c ] ; 4 uses
  %i.a = getelementptr [8 x i8], ptr %3, i64 %.011.i.i
  %i.b = lshr i64 %store_forwarded, 30
  %i.c = xor i64 %i.b, %store_forwarded
  %i.d = mul nuw nsw i64 %i.c, 1812433253
  %i.e = add nuw i64 %i.d, %.011.i.i              ; 2 uses
  %i.f = and i64 %i.e, 4294967295                 ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !58
  %i.g = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.g, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr [8 x i8], ptr %3, i64 %i.g
  %i.i = lshr i64 %i.f, 30
  %i.j = xor i64 %i.i, %i.e
  %i.k = mul i64 %i.j, 1812433253
  %i.l = add i64 %i.k, %i.g
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !58
  %i.n = add nuw nsw i64 %.011.i.i, 2
  br label %bb.b

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4992 ; 4 uses
  store i64 624, ptr %i.o, align 8, !tbaa !59
  %i.p = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000), !tbaa !4
  %i.q = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !4
  %i.r = fdiv x86_fp80 %i.p, %i.q
  %i.s = fptoui x86_fp80 %i.r to i64              ; 2 uses
  %i.t = add i64 %i.s, 23
  %i.u = udiv i64 %i.t, %i.s
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1) ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 1816 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4984 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 3168 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 1808
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4984
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 1808
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4984
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 1808
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 4984
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void

bb.e:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit22
  %i.ag = phi i64 [ 624, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.ih, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit22 ]
  %indvars.iv = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %indvars.iv.next, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit22 ] ; 4 uses
  br label %select.unfold.i.i.i.i

bb.f:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.ah = fdiv float %i.da, %i.db                 ; 2 uses
  %i.ai = fcmp ult float %i.ah, 1.000000e+00
  br i1 %i.ai, label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit, label %bb.g, !prof !61

select.unfold.i.i.i.i:                            ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %bb.e
  %i.aj = phi i64 [ %i.ag, %bb.e ], [ %i.cl, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ] ; 2 uses
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.e ], [ %i.dc, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  %.01422.i.i.i.i = phi float [ 1.000000e+00, %bb.e ], [ %i.db, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ] ; 2 uses
  %.01521.i.i.i.i = phi float [ 0.000000e+00, %bb.e ], [ %i.da, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  %i.ak = icmp ugt i64 %i.aj, 623
  br i1 %i.ak, label %vector.ph134, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph134:                                     ; preds = %select.unfold.i.i.i.i
  %.pre.i.i = load i64, ptr %3, align 8, !tbaa !58
  %vector.recur.init137 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph134
  %index136 = phi i64 [ 0, %vector.ph134 ], [ %index.next141, %vector.body135 ] ; 3 uses
  %vector.recur138 = phi <2 x i64> [ %vector.recur.init137, %vector.ph134 ], [ %wide.load139, %vector.body135 ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index136 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index136
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %wide.load139 = load <2 x i64>, ptr %i.an, align 8, !tbaa !58 ; 5 uses
  %i.ao = shufflevector <2 x i64> %vector.recur138, <2 x i64> %wide.load139, <2 x i32> <i32 1, i32 2>
  %i.ap = and <2 x i64> %i.ao, splat (i64 -2147483648)
  %i.aq = and <2 x i64> %wide.load139, splat (i64 2147483646)
  %i.ar = or disjoint <2 x i64> %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 3176
  %wide.load140 = load <2 x i64>, ptr %i.as, align 8, !tbaa !58
  %i.at = lshr exact <2 x i64> %i.ar, splat (i64 1)
  %i.au = xor <2 x i64> %i.at, %wide.load140
  %i.av = and <2 x i64> %wide.load139, splat (i64 1)
  %i.aw = icmp eq <2 x i64> %i.av, zeroinitializer
  %i.ax = select <2 x i1> %i.aw, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.ay = xor <2 x i64> %i.au, %i.ax
  store <2 x i64> %i.ay, ptr %i.al, align 8, !tbaa !58
  %index.next141 = add nuw i64 %index136, 2       ; 2 uses
  %i.az = icmp eq i64 %index.next141, 226
  br i1 %i.az, label %vector.ph124, label %vector.body135, !llvm.loop !62

vector.ph124:                                     ; preds = %vector.body135
  %vector.recur.extract143 = extractelement <2 x i64> %wide.load139, i64 1
  %i.ba = and i64 %vector.recur.extract143, -2147483648
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !58  ; 2 uses
  %i.bc = and i64 %i.bb, 2147483646
  %i.bd = or disjoint i64 %i.bc, %i.ba
  %i.be = load i64, ptr %i.z, align 8, !tbaa !58
  %i.bf = lshr exact i64 %i.bd, 1
  %i.bg = xor i64 %i.bf, %i.be
  %i.bh = and i64 %i.bb, 1
  %.not20.i.i = icmp eq i64 %i.bh, 0
  %i.bi = select i1 %.not20.i.i, i64 0, i64 2567483615
  %i.bj = xor i64 %i.bg, %i.bi
  store i64 %i.bj, ptr %i.x, align 8, !tbaa !58
  %.pre24.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58
  %vector.recur.init127 = insertelement <2 x i64> poison, i64 %.pre24.i.i, i64 1
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph124
  %index126 = phi i64 [ 0, %vector.ph124 ], [ %index.next131, %vector.body125 ] ; 3 uses
  %vector.recur128 = phi <2 x i64> [ %vector.recur.init127, %vector.ph124 ], [ %wide.load129, %vector.body125 ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index126 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1816
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index126
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1824
  %wide.load129 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !58 ; 4 uses
  %i.bo = shufflevector <2 x i64> %vector.recur128, <2 x i64> %wide.load129, <2 x i32> <i32 1, i32 2>
  %i.bp = and <2 x i64> %i.bo, splat (i64 -2147483648)
  %i.bq = and <2 x i64> %wide.load129, splat (i64 2147483646)
  %i.br = or disjoint <2 x i64> %i.bq, %i.bp
  %wide.load130 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !58
  %i.bs = lshr exact <2 x i64> %i.br, splat (i64 1)
  %i.bt = xor <2 x i64> %i.bs, %wide.load130
  %i.bu = and <2 x i64> %wide.load129, splat (i64 1)
  %i.bv = icmp eq <2 x i64> %i.bu, zeroinitializer
  %i.bw = select <2 x i1> %i.bv, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.bx = xor <2 x i64> %i.bt, %i.bw
  store <2 x i64> %i.bx, ptr %i.bl, align 8, !tbaa !58
  %index.next131 = add nuw i64 %index126, 2       ; 2 uses
  %i.by = icmp eq i64 %index.next131, 396
  br i1 %i.by, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body125, !llvm.loop !65

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body125
  %i.bz = load i64, ptr %i.v, align 8, !tbaa !58
  %i.ca = and i64 %i.bz, -2147483648
  %i.cb = load i64, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.cc = and i64 %i.cb, 2147483646
  %i.cd = or disjoint i64 %i.cc, %i.ca
  %i.ce = load i64, ptr %i.w, align 8, !tbaa !58
  %i.cf = lshr exact i64 %i.cd, 1
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = and i64 %i.cb, 1
  %.not.i.i = icmp eq i64 %i.ch, 0
  %i.ci = select i1 %.not.i.i, i64 0, i64 2567483615
  %i.cj = xor i64 %i.cg, %i.ci
  store i64 %i.cj, ptr %i.v, align 8, !tbaa !58
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %select.unfold.i.i.i.i, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.ck = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.aj, %select.unfold.i.i.i.i ] ; 2 uses
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 3 uses
  store i64 %i.cl, ptr %i.o, align 8, !tbaa !59
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ck
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !58 ; 2 uses
  %i.co = lshr i64 %i.cn, 11
  %i.cp = and i64 %i.co, 4294967295
  %i.cq = xor i64 %i.cp, %i.cn                    ; 2 uses
  %i.cr = shl i64 %i.cq, 7
  %i.cs = and i64 %i.cr, 2636928640
  %i.ct = xor i64 %i.cs, %i.cq                    ; 2 uses
  %i.cu = shl i64 %i.ct, 15
  %i.cv = and i64 %i.cu, 4022730752
  %i.cw = xor i64 %i.cv, %i.ct                    ; 2 uses
  %i.cx = lshr i64 %i.cw, 18
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = uitofp i64 %i.cy to float
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %.01422.i.i.i.i, float %.01521.i.i.i.i) ; 2 uses
  %i.db = fmul float %.01422.i.i.i.i, f0x4F800000 ; 2 uses
  %i.dc = add i64 %.023.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %select.unfold.i.i.i.i, !llvm.loop !66

bb.g:                                             ; preds = %bb.f
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit: ; preds = %bb.f, %bb.g
  %.016.i.i.i.i = phi float [ f0x3F7FFFFF, %bb.g ], [ %i.ah, %bb.f ]
  %i.dd = tail call noundef float @llvm.fmuladd.f32(float %.016.i.i.i.i, float 2.000000e+02, float -1.000000e+02)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.dd, ptr %i.de, align 4, !tbaa !39
  br label %select.unfold.i.i.i.i8

bb.h:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37
  %i.df = fdiv float %i.fy, %i.fz                 ; 2 uses
  %i.dg = fcmp ult float %i.df, 1.000000e+00
  br i1 %i.dg, label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit14, label %bb.i, !prof !61

select.unfold.i.i.i.i8:                           ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit
  %i.dh = phi i64 [ %i.cl, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit ], [ %i.fj, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37 ] ; 2 uses
  %.023.i.i.i.i9 = phi i64 [ %spec.select.i.i.i.i, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit ], [ %i.ga, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37 ]
  %.01422.i.i.i.i10 = phi float [ 1.000000e+00, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit ], [ %i.fz, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37 ] ; 2 uses
  %.01521.i.i.i.i11 = phi float [ 0.000000e+00, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit ], [ %i.fy, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37 ]
  %i.di = icmp ugt i64 %i.dh, 623
  br i1 %i.di, label %vector.ph113, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37

vector.ph113:                                     ; preds = %select.unfold.i.i.i.i8
  %.pre.i.i24 = load i64, ptr %3, align 8, !tbaa !58
  %vector.recur.init116 = insertelement <2 x i64> poison, i64 %.pre.i.i24, i64 1
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph113
  %index115 = phi i64 [ 0, %vector.ph113 ], [ %index.next120, %vector.body114 ] ; 3 uses
  %vector.recur117 = phi <2 x i64> [ %vector.recur.init116, %vector.ph113 ], [ %wide.load118, %vector.body114 ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index115 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index115
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %wide.load118 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !58 ; 5 uses
  %i.dm = shufflevector <2 x i64> %vector.recur117, <2 x i64> %wide.load118, <2 x i32> <i32 1, i32 2>
  %i.dn = and <2 x i64> %i.dm, splat (i64 -2147483648)
  %i.do = and <2 x i64> %wide.load118, splat (i64 2147483646)
  %i.dp = or disjoint <2 x i64> %i.do, %i.dn
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 3176
  %wide.load119 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !58
  %i.dr = lshr exact <2 x i64> %i.dp, splat (i64 1)
  %i.ds = xor <2 x i64> %i.dr, %wide.load119
  %i.dt = and <2 x i64> %wide.load118, splat (i64 1)
  %i.du = icmp eq <2 x i64> %i.dt, zeroinitializer
  %i.dv = select <2 x i1> %i.du, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.dw = xor <2 x i64> %i.ds, %i.dv
  store <2 x i64> %i.dw, ptr %i.dj, align 8, !tbaa !58
  %index.next120 = add nuw i64 %index115, 2       ; 2 uses
  %i.dx = icmp eq i64 %index.next120, 226
  br i1 %i.dx, label %vector.ph103, label %vector.body114, !llvm.loop !67

vector.ph103:                                     ; preds = %vector.body114
  %vector.recur.extract122 = extractelement <2 x i64> %wide.load118, i64 1
  %i.dy = and i64 %vector.recur.extract122, -2147483648
  %i.dz = load i64, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.ea = and i64 %i.dz, 2147483646
  %i.eb = or disjoint i64 %i.ea, %i.dy
  %i.ec = load i64, ptr %i.ac, align 8, !tbaa !58
  %i.ed = lshr exact i64 %i.eb, 1
  %i.ee = xor i64 %i.ed, %i.ec
  %i.ef = and i64 %i.dz, 1
  %.not20.i.i26 = icmp eq i64 %i.ef, 0
  %i.eg = select i1 %.not20.i.i26, i64 0, i64 2567483615
  %i.eh = xor i64 %i.ee, %i.eg
  store i64 %i.eh, ptr %i.aa, align 8, !tbaa !58
  %.pre24.i.i30 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58
  %vector.recur.init106 = insertelement <2 x i64> poison, i64 %.pre24.i.i30, i64 1
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph103
  %index105 = phi i64 [ 0, %vector.ph103 ], [ %index.next110, %vector.body104 ] ; 3 uses
  %vector.recur107 = phi <2 x i64> [ %vector.recur.init106, %vector.ph103 ], [ %wide.load108, %vector.body104 ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index105 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1816
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index105
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1824
  %wide.load108 = load <2 x i64>, ptr %i.el, align 8, !tbaa !58 ; 4 uses
  %i.em = shufflevector <2 x i64> %vector.recur107, <2 x i64> %wide.load108, <2 x i32> <i32 1, i32 2>
  %i.en = and <2 x i64> %i.em, splat (i64 -2147483648)
  %i.eo = and <2 x i64> %wide.load108, splat (i64 2147483646)
  %i.ep = or disjoint <2 x i64> %i.eo, %i.en
  %wide.load109 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !58
  %i.eq = lshr exact <2 x i64> %i.ep, splat (i64 1)
  %i.er = xor <2 x i64> %i.eq, %wide.load109
  %i.es = and <2 x i64> %wide.load108, splat (i64 1)
  %i.et = icmp eq <2 x i64> %i.es, zeroinitializer
  %i.eu = select <2 x i1> %i.et, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.ev = xor <2 x i64> %i.er, %i.eu
  store <2 x i64> %i.ev, ptr %i.ej, align 8, !tbaa !58
  %index.next110 = add nuw i64 %index105, 2       ; 2 uses
  %i.ew = icmp eq i64 %index.next110, 396
  br i1 %i.ew, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i35, label %vector.body104, !llvm.loop !68

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i35: ; preds = %vector.body104
  %i.ex = load i64, ptr %i.v, align 8, !tbaa !58
  %i.ey = and i64 %i.ex, -2147483648
  %i.ez = load i64, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.fa = and i64 %i.ez, 2147483646
  %i.fb = or disjoint i64 %i.fa, %i.ey
  %i.fc = load i64, ptr %i.w, align 8, !tbaa !58
  %i.fd = lshr exact i64 %i.fb, 1
  %i.fe = xor i64 %i.fd, %i.fc
  %i.ff = and i64 %i.ez, 1
  %.not.i.i36 = icmp eq i64 %i.ff, 0
  %i.fg = select i1 %.not.i.i36, i64 0, i64 2567483615
  %i.fh = xor i64 %i.fe, %i.fg
  store i64 %i.fh, ptr %i.v, align 8, !tbaa !58
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37: ; preds = %select.unfold.i.i.i.i8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i35
  %i.fi = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i35 ], [ %i.dh, %select.unfold.i.i.i.i8 ] ; 2 uses
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 3 uses
  store i64 %i.fj, ptr %i.o, align 8, !tbaa !59
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.fi
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !58 ; 2 uses
  %i.fm = lshr i64 %i.fl, 11
  %i.fn = and i64 %i.fm, 4294967295
  %i.fo = xor i64 %i.fn, %i.fl                    ; 2 uses
  %i.fp = shl i64 %i.fo, 7
  %i.fq = and i64 %i.fp, 2636928640
  %i.fr = xor i64 %i.fq, %i.fo                    ; 2 uses
  %i.fs = shl i64 %i.fr, 15
  %i.ft = and i64 %i.fs, 4022730752
  %i.fu = xor i64 %i.ft, %i.fr                    ; 2 uses
  %i.fv = lshr i64 %i.fu, 18
  %i.fw = xor i64 %i.fv, %i.fu
  %i.fx = uitofp i64 %i.fw to float
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fx, float %.01422.i.i.i.i10, float %.01521.i.i.i.i11) ; 2 uses
  %i.fz = fmul float %.01422.i.i.i.i10, f0x4F800000 ; 2 uses
  %i.ga = add i64 %.023.i.i.i.i9, -1              ; 2 uses
  %.not.i.i.i.i12 = icmp eq i64 %i.ga, 0
  br i1 %.not.i.i.i.i12, label %bb.h, label %select.unfold.i.i.i.i8, !llvm.loop !66

bb.i:                                             ; preds = %bb.h
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit14

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit14: ; preds = %bb.h, %bb.i
  %.016.i.i.i.i13 = phi float [ f0x3F7FFFFF, %bb.i ], [ %i.df, %bb.h ]
  %i.gb = tail call noundef float @llvm.fmuladd.f32(float %.016.i.i.i.i13, float 2.000000e+02, float -1.000000e+02)
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.gb, ptr %i.gc, align 4, !tbaa !39
  br label %select.unfold.i.i.i.i16

bb.j:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51
  %i.gd = fdiv float %i.iw, %i.ix                 ; 2 uses
  %i.ge = fcmp ult float %i.gd, 1.000000e+00
  br i1 %i.ge, label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit22, label %bb.k, !prof !61

select.unfold.i.i.i.i16:                          ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit14
  %i.gf = phi i64 [ %i.fj, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit14 ], [ %i.ih, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51 ] ; 2 uses
  %.023.i.i.i.i17 = phi i64 [ %spec.select.i.i.i.i, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit14 ], [ %i.iy, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51 ]
  %.01422.i.i.i.i18 = phi float [ 1.000000e+00, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit14 ], [ %i.ix, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51 ] ; 2 uses
  %.01521.i.i.i.i19 = phi float [ 0.000000e+00, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit14 ], [ %i.iw, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51 ]
  %i.gg = icmp ugt i64 %i.gf, 623
  br i1 %i.gg, label %vector.ph93, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51

vector.ph93:                                      ; preds = %select.unfold.i.i.i.i16
  %.pre.i.i38 = load i64, ptr %3, align 8, !tbaa !58
  %vector.recur.init96 = insertelement <2 x i64> poison, i64 %.pre.i.i38, i64 1
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph93
  %index95 = phi i64 [ 0, %vector.ph93 ], [ %index.next100, %vector.body94 ] ; 3 uses
  %vector.recur97 = phi <2 x i64> [ %vector.recur.init96, %vector.ph93 ], [ %wide.load98, %vector.body94 ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index95 ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index95
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %wide.load98 = load <2 x i64>, ptr %i.gj, align 8, !tbaa !58 ; 5 uses
  %i.gk = shufflevector <2 x i64> %vector.recur97, <2 x i64> %wide.load98, <2 x i32> <i32 1, i32 2>
  %i.gl = and <2 x i64> %i.gk, splat (i64 -2147483648)
  %i.gm = and <2 x i64> %wide.load98, splat (i64 2147483646)
  %i.gn = or disjoint <2 x i64> %i.gm, %i.gl
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 3176
  %wide.load99 = load <2 x i64>, ptr %i.go, align 8, !tbaa !58
  %i.gp = lshr exact <2 x i64> %i.gn, splat (i64 1)
  %i.gq = xor <2 x i64> %i.gp, %wide.load99
  %i.gr = and <2 x i64> %wide.load98, splat (i64 1)
  %i.gs = icmp eq <2 x i64> %i.gr, zeroinitializer
  %i.gt = select <2 x i1> %i.gs, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.gu = xor <2 x i64> %i.gq, %i.gt
  store <2 x i64> %i.gu, ptr %i.gh, align 8, !tbaa !58
  %index.next100 = add nuw i64 %index95, 2        ; 2 uses
  %i.gv = icmp eq i64 %index.next100, 226
  br i1 %i.gv, label %vector.ph, label %vector.body94, !llvm.loop !69

vector.ph:                                        ; preds = %vector.body94
  %vector.recur.extract = extractelement <2 x i64> %wide.load98, i64 1
  %i.gw = and i64 %vector.recur.extract, -2147483648
  %i.gx = load i64, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.gy = and i64 %i.gx, 2147483646
  %i.gz = or disjoint i64 %i.gy, %i.gw
  %i.ha = load i64, ptr %i.af, align 8, !tbaa !58
  %i.hb = lshr exact i64 %i.gz, 1
  %i.hc = xor i64 %i.hb, %i.ha
  %i.hd = and i64 %i.gx, 1
  %.not20.i.i40 = icmp eq i64 %i.hd, 0
  %i.he = select i1 %.not20.i.i40, i64 0, i64 2567483615
  %i.hf = xor i64 %i.hc, %i.he
  store i64 %i.hf, ptr %i.ad, align 8, !tbaa !58
  %.pre24.i.i44 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i44, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1816
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1824
  %wide.load = load <2 x i64>, ptr %i.hj, align 8, !tbaa !58 ; 4 uses
  %i.hk = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.hl = and <2 x i64> %i.hk, splat (i64 -2147483648)
  %i.hm = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.hn = or disjoint <2 x i64> %i.hm, %i.hl
  %wide.load92 = load <2 x i64>, ptr %i.hg, align 8, !tbaa !58
  %i.ho = lshr exact <2 x i64> %i.hn, splat (i64 1)
  %i.hp = xor <2 x i64> %i.ho, %wide.load92
  %i.hq = and <2 x i64> %wide.load, splat (i64 1)
  %i.hr = icmp eq <2 x i64> %i.hq, zeroinitializer
  %i.hs = select <2 x i1> %i.hr, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.ht = xor <2 x i64> %i.hp, %i.hs
  store <2 x i64> %i.ht, ptr %i.hh, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hu = icmp eq i64 %index.next, 396
  br i1 %i.hu, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i49, label %vector.body, !llvm.loop !70

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i49: ; preds = %vector.body
  %i.hv = load i64, ptr %i.v, align 8, !tbaa !58
  %i.hw = and i64 %i.hv, -2147483648
  %i.hx = load i64, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.hy = and i64 %i.hx, 2147483646
  %i.hz = or disjoint i64 %i.hy, %i.hw
  %i.ia = load i64, ptr %i.w, align 8, !tbaa !58
  %i.ib = lshr exact i64 %i.hz, 1
  %i.ic = xor i64 %i.ib, %i.ia
  %i.id = and i64 %i.hx, 1
  %.not.i.i50 = icmp eq i64 %i.id, 0
  %i.ie = select i1 %.not.i.i50, i64 0, i64 2567483615
  %i.if = xor i64 %i.ic, %i.ie
  store i64 %i.if, ptr %i.v, align 8, !tbaa !58
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51: ; preds = %select.unfold.i.i.i.i16, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i49
  %i.ig = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i49 ], [ %i.gf, %select.unfold.i.i.i.i16 ] ; 2 uses
  %i.ih = add nuw nsw i64 %i.ig, 1                ; 3 uses
  store i64 %i.ih, ptr %i.o, align 8, !tbaa !59
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ig
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !58 ; 2 uses
  %i.ik = lshr i64 %i.ij, 11
  %i.il = and i64 %i.ik, 4294967295
  %i.im = xor i64 %i.il, %i.ij                    ; 2 uses
  %i.in = shl i64 %i.im, 7
  %i.io = and i64 %i.in, 2636928640
  %i.ip = xor i64 %i.io, %i.im                    ; 2 uses
  %i.iq = shl i64 %i.ip, 15
  %i.ir = and i64 %i.iq, 4022730752
  %i.is = xor i64 %i.ir, %i.ip                    ; 2 uses
  %i.it = lshr i64 %i.is, 18
  %i.iu = xor i64 %i.it, %i.is
  %i.iv = uitofp i64 %i.iu to float
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.iv, float %.01422.i.i.i.i18, float %.01521.i.i.i.i19) ; 2 uses
  %i.ix = fmul float %.01422.i.i.i.i18, f0x4F800000 ; 2 uses
  %i.iy = add i64 %.023.i.i.i.i17, -1             ; 2 uses
  %.not.i.i.i.i20 = icmp eq i64 %i.iy, 0
  br i1 %.not.i.i.i.i20, label %bb.j, label %select.unfold.i.i.i.i16, !llvm.loop !66

bb.k:                                             ; preds = %bb.j
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit22

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit22: ; preds = %bb.j, %bb.k
  %.016.i.i.i.i21 = phi float [ f0x3F7FFFFF, %bb.k ], [ %i.gd, %bb.j ]
  %i.iz = tail call noundef float @llvm.fmuladd.f32(float %.016.i.i.i.i21, float 2.000000e+02, float -1.000000e+02)
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.iz, ptr %i.ja, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10000
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !71
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_ZL9init_dataIdEvPT_S1_S1_(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #7 {
bb.a:
  %3 = alloca %"class.std::mersenne_twister_engine", align 8 ; 39 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 12345, ptr %3, align 8, !tbaa !58
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ 12345, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.a ], [ %i.n, %bb.c ] ; 4 uses
  %i.a = getelementptr [8 x i8], ptr %3, i64 %.011.i.i
  %i.b = lshr i64 %store_forwarded, 30
  %i.c = xor i64 %i.b, %store_forwarded
  %i.d = mul nuw nsw i64 %i.c, 1812433253
  %i.e = add nuw i64 %i.d, %.011.i.i              ; 2 uses
  %i.f = and i64 %i.e, 4294967295                 ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !58
  %i.g = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.g, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr [8 x i8], ptr %3, i64 %i.g
  %i.i = lshr i64 %i.f, 30
  %i.j = xor i64 %i.i, %i.e
  %i.k = mul i64 %i.j, 1812433253
  %i.l = add i64 %i.k, %i.g
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !58
  %i.n = add nuw nsw i64 %.011.i.i, 2
  br label %bb.b

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4992 ; 4 uses
  store i64 624, ptr %i.o, align 8, !tbaa !59
  %i.p = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000), !tbaa !4
  %i.q = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !4
  %i.r = fdiv x86_fp80 %i.p, %i.q
  %i.s = fptoui x86_fp80 %i.r to i64              ; 2 uses
  %i.t = add i64 %i.s, 52
  %i.u = udiv i64 %i.t, %i.s
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1) ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 1816 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4984 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 3168 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 1808
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4984
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 1808
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4984
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 1808
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 4984
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void

bb.e:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit22
  %i.ag = phi i64 [ 624, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.il, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit22 ]
  %indvars.iv = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %indvars.iv.next, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit22 ] ; 4 uses
  br label %select.unfold.i.i.i.i

bb.f:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.ah = fdiv double %i.da, %i.dd                ; 2 uses
  %i.ai = fcmp ult double %i.ah, 1.000000e+00
  br i1 %i.ai, label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit, label %bb.g, !prof !61

select.unfold.i.i.i.i:                            ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %bb.e
  %i.aj = phi i64 [ %i.ag, %bb.e ], [ %i.cl, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ] ; 2 uses
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.e ], [ %i.de, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  %.01422.i.i.i.i = phi double [ 1.000000e+00, %bb.e ], [ %i.dd, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ] ; 2 uses
  %.01521.i.i.i.i = phi double [ 0.000000e+00, %bb.e ], [ %i.da, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  %i.ak = icmp ugt i64 %i.aj, 623
  br i1 %i.ak, label %vector.ph134, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph134:                                     ; preds = %select.unfold.i.i.i.i
  %.pre.i.i = load i64, ptr %3, align 8, !tbaa !58
  %vector.recur.init137 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph134
  %index136 = phi i64 [ 0, %vector.ph134 ], [ %index.next141, %vector.body135 ] ; 3 uses
  %vector.recur138 = phi <2 x i64> [ %vector.recur.init137, %vector.ph134 ], [ %wide.load139, %vector.body135 ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index136 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index136
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %wide.load139 = load <2 x i64>, ptr %i.an, align 8, !tbaa !58 ; 5 uses
  %i.ao = shufflevector <2 x i64> %vector.recur138, <2 x i64> %wide.load139, <2 x i32> <i32 1, i32 2>
  %i.ap = and <2 x i64> %i.ao, splat (i64 -2147483648)
  %i.aq = and <2 x i64> %wide.load139, splat (i64 2147483646)
  %i.ar = or disjoint <2 x i64> %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 3176
  %wide.load140 = load <2 x i64>, ptr %i.as, align 8, !tbaa !58
  %i.at = lshr exact <2 x i64> %i.ar, splat (i64 1)
  %i.au = xor <2 x i64> %i.at, %wide.load140
  %i.av = and <2 x i64> %wide.load139, splat (i64 1)
  %i.aw = icmp eq <2 x i64> %i.av, zeroinitializer
  %i.ax = select <2 x i1> %i.aw, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.ay = xor <2 x i64> %i.au, %i.ax
  store <2 x i64> %i.ay, ptr %i.al, align 8, !tbaa !58
  %index.next141 = add nuw i64 %index136, 2       ; 2 uses
  %i.az = icmp eq i64 %index.next141, 226
  br i1 %i.az, label %vector.ph124, label %vector.body135, !llvm.loop !72

vector.ph124:                                     ; preds = %vector.body135
  %vector.recur.extract143 = extractelement <2 x i64> %wide.load139, i64 1
  %i.ba = and i64 %vector.recur.extract143, -2147483648
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !58  ; 2 uses
  %i.bc = and i64 %i.bb, 2147483646
  %i.bd = or disjoint i64 %i.bc, %i.ba
  %i.be = load i64, ptr %i.z, align 8, !tbaa !58
  %i.bf = lshr exact i64 %i.bd, 1
  %i.bg = xor i64 %i.bf, %i.be
  %i.bh = and i64 %i.bb, 1
  %.not20.i.i = icmp eq i64 %i.bh, 0
  %i.bi = select i1 %.not20.i.i, i64 0, i64 2567483615
  %i.bj = xor i64 %i.bg, %i.bi
  store i64 %i.bj, ptr %i.x, align 8, !tbaa !58
  %.pre24.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58
  %vector.recur.init127 = insertelement <2 x i64> poison, i64 %.pre24.i.i, i64 1
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph124
  %index126 = phi i64 [ 0, %vector.ph124 ], [ %index.next131, %vector.body125 ] ; 3 uses
  %vector.recur128 = phi <2 x i64> [ %vector.recur.init127, %vector.ph124 ], [ %wide.load129, %vector.body125 ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index126 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1816
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index126
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1824
  %wide.load129 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !58 ; 4 uses
  %i.bo = shufflevector <2 x i64> %vector.recur128, <2 x i64> %wide.load129, <2 x i32> <i32 1, i32 2>
  %i.bp = and <2 x i64> %i.bo, splat (i64 -2147483648)
  %i.bq = and <2 x i64> %wide.load129, splat (i64 2147483646)
  %i.br = or disjoint <2 x i64> %i.bq, %i.bp
  %wide.load130 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !58
  %i.bs = lshr exact <2 x i64> %i.br, splat (i64 1)
  %i.bt = xor <2 x i64> %i.bs, %wide.load130
  %i.bu = and <2 x i64> %wide.load129, splat (i64 1)
  %i.bv = icmp eq <2 x i64> %i.bu, zeroinitializer
  %i.bw = select <2 x i1> %i.bv, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.bx = xor <2 x i64> %i.bt, %i.bw
  store <2 x i64> %i.bx, ptr %i.bl, align 8, !tbaa !58
  %index.next131 = add nuw i64 %index126, 2       ; 2 uses
  %i.by = icmp eq i64 %index.next131, 396
  br i1 %i.by, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body125, !llvm.loop !73

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body125
  %i.bz = load i64, ptr %i.v, align 8, !tbaa !58
  %i.ca = and i64 %i.bz, -2147483648
  %i.cb = load i64, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.cc = and i64 %i.cb, 2147483646
  %i.cd = or disjoint i64 %i.cc, %i.ca
  %i.ce = load i64, ptr %i.w, align 8, !tbaa !58
  %i.cf = lshr exact i64 %i.cd, 1
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = and i64 %i.cb, 1
  %.not.i.i = icmp eq i64 %i.ch, 0
  %i.ci = select i1 %.not.i.i, i64 0, i64 2567483615
  %i.cj = xor i64 %i.cg, %i.ci
  store i64 %i.cj, ptr %i.v, align 8, !tbaa !58
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %select.unfold.i.i.i.i, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.ck = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.aj, %select.unfold.i.i.i.i ] ; 2 uses
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 3 uses
  store i64 %i.cl, ptr %i.o, align 8, !tbaa !59
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ck
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !58 ; 2 uses
  %i.co = lshr i64 %i.cn, 11
  %i.cp = and i64 %i.co, 4294967295
  %i.cq = xor i64 %i.cp, %i.cn                    ; 2 uses
  %i.cr = shl i64 %i.cq, 7
  %i.cs = and i64 %i.cr, 2636928640
  %i.ct = xor i64 %i.cs, %i.cq                    ; 2 uses
  %i.cu = shl i64 %i.ct, 15
  %i.cv = and i64 %i.cu, 4022730752
  %i.cw = xor i64 %i.cv, %i.ct                    ; 2 uses
  %i.cx = lshr i64 %i.cw, 18
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = uitofp i64 %i.cy to double
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cz, double %.01422.i.i.i.i, double %.01521.i.i.i.i) ; 2 uses
  %i.db = fpext double %.01422.i.i.i.i to x86_fp80
  %i.dc = fmul x86_fp80 %i.db, f0x401F8000000000000000
  %i.dd = fptrunc x86_fp80 %i.dc to double        ; 2 uses
  %i.de = add i64 %.023.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %select.unfold.i.i.i.i, !llvm.loop !74

bb.g:                                             ; preds = %bb.f
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit: ; preds = %bb.f, %bb.g
  %.016.i.i.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.g ], [ %i.ah, %bb.f ]
  %i.df = tail call noundef double @llvm.fmuladd.f64(double %.016.i.i.i.i, double 2.000000e+02, double -1.000000e+02)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store double %i.df, ptr %i.dg, align 8, !tbaa !52
  br label %select.unfold.i.i.i.i8

bb.h:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37
  %i.dh = fdiv double %i.ga, %i.gd                ; 2 uses
  %i.di = fcmp ult double %i.dh, 1.000000e+00
  br i1 %i.di, label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit14, label %bb.i, !prof !61

select.unfold.i.i.i.i8:                           ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit
  %i.dj = phi i64 [ %i.cl, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit ], [ %i.fl, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37 ] ; 2 uses
  %.023.i.i.i.i9 = phi i64 [ %spec.select.i.i.i.i, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit ], [ %i.ge, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37 ]
  %.01422.i.i.i.i10 = phi double [ 1.000000e+00, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit ], [ %i.gd, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37 ] ; 2 uses
  %.01521.i.i.i.i11 = phi double [ 0.000000e+00, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit ], [ %i.ga, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37 ]
  %i.dk = icmp ugt i64 %i.dj, 623
  br i1 %i.dk, label %vector.ph113, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37

vector.ph113:                                     ; preds = %select.unfold.i.i.i.i8
  %.pre.i.i24 = load i64, ptr %3, align 8, !tbaa !58
  %vector.recur.init116 = insertelement <2 x i64> poison, i64 %.pre.i.i24, i64 1
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph113
  %index115 = phi i64 [ 0, %vector.ph113 ], [ %index.next120, %vector.body114 ] ; 3 uses
  %vector.recur117 = phi <2 x i64> [ %vector.recur.init116, %vector.ph113 ], [ %wide.load118, %vector.body114 ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index115 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index115
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %wide.load118 = load <2 x i64>, ptr %i.dn, align 8, !tbaa !58 ; 5 uses
  %i.do = shufflevector <2 x i64> %vector.recur117, <2 x i64> %wide.load118, <2 x i32> <i32 1, i32 2>
  %i.dp = and <2 x i64> %i.do, splat (i64 -2147483648)
  %i.dq = and <2 x i64> %wide.load118, splat (i64 2147483646)
  %i.dr = or disjoint <2 x i64> %i.dq, %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 3176
  %wide.load119 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !58
  %i.dt = lshr exact <2 x i64> %i.dr, splat (i64 1)
  %i.du = xor <2 x i64> %i.dt, %wide.load119
  %i.dv = and <2 x i64> %wide.load118, splat (i64 1)
  %i.dw = icmp eq <2 x i64> %i.dv, zeroinitializer
  %i.dx = select <2 x i1> %i.dw, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.dy = xor <2 x i64> %i.du, %i.dx
  store <2 x i64> %i.dy, ptr %i.dl, align 8, !tbaa !58
  %index.next120 = add nuw i64 %index115, 2       ; 2 uses
  %i.dz = icmp eq i64 %index.next120, 226
  br i1 %i.dz, label %vector.ph103, label %vector.body114, !llvm.loop !75

vector.ph103:                                     ; preds = %vector.body114
  %vector.recur.extract122 = extractelement <2 x i64> %wide.load118, i64 1
  %i.ea = and i64 %vector.recur.extract122, -2147483648
  %i.eb = load i64, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.ec = and i64 %i.eb, 2147483646
  %i.ed = or disjoint i64 %i.ec, %i.ea
  %i.ee = load i64, ptr %i.ac, align 8, !tbaa !58
  %i.ef = lshr exact i64 %i.ed, 1
  %i.eg = xor i64 %i.ef, %i.ee
  %i.eh = and i64 %i.eb, 1
  %.not20.i.i26 = icmp eq i64 %i.eh, 0
  %i.ei = select i1 %.not20.i.i26, i64 0, i64 2567483615
  %i.ej = xor i64 %i.eg, %i.ei
  store i64 %i.ej, ptr %i.aa, align 8, !tbaa !58
  %.pre24.i.i30 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58
  %vector.recur.init106 = insertelement <2 x i64> poison, i64 %.pre24.i.i30, i64 1
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph103
  %index105 = phi i64 [ 0, %vector.ph103 ], [ %index.next110, %vector.body104 ] ; 3 uses
  %vector.recur107 = phi <2 x i64> [ %vector.recur.init106, %vector.ph103 ], [ %wide.load108, %vector.body104 ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index105 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1816
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index105
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1824
  %wide.load108 = load <2 x i64>, ptr %i.en, align 8, !tbaa !58 ; 4 uses
  %i.eo = shufflevector <2 x i64> %vector.recur107, <2 x i64> %wide.load108, <2 x i32> <i32 1, i32 2>
  %i.ep = and <2 x i64> %i.eo, splat (i64 -2147483648)
  %i.eq = and <2 x i64> %wide.load108, splat (i64 2147483646)
  %i.er = or disjoint <2 x i64> %i.eq, %i.ep
  %wide.load109 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !58
  %i.es = lshr exact <2 x i64> %i.er, splat (i64 1)
  %i.et = xor <2 x i64> %i.es, %wide.load109
  %i.eu = and <2 x i64> %wide.load108, splat (i64 1)
  %i.ev = icmp eq <2 x i64> %i.eu, zeroinitializer
  %i.ew = select <2 x i1> %i.ev, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.ex = xor <2 x i64> %i.et, %i.ew
  store <2 x i64> %i.ex, ptr %i.el, align 8, !tbaa !58
  %index.next110 = add nuw i64 %index105, 2       ; 2 uses
  %i.ey = icmp eq i64 %index.next110, 396
  br i1 %i.ey, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i35, label %vector.body104, !llvm.loop !76

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i35: ; preds = %vector.body104
  %i.ez = load i64, ptr %i.v, align 8, !tbaa !58
  %i.fa = and i64 %i.ez, -2147483648
  %i.fb = load i64, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.fc = and i64 %i.fb, 2147483646
  %i.fd = or disjoint i64 %i.fc, %i.fa
  %i.fe = load i64, ptr %i.w, align 8, !tbaa !58
  %i.ff = lshr exact i64 %i.fd, 1
  %i.fg = xor i64 %i.ff, %i.fe
  %i.fh = and i64 %i.fb, 1
  %.not.i.i36 = icmp eq i64 %i.fh, 0
  %i.fi = select i1 %.not.i.i36, i64 0, i64 2567483615
  %i.fj = xor i64 %i.fg, %i.fi
  store i64 %i.fj, ptr %i.v, align 8, !tbaa !58
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit37: ; preds = %select.unfold.i.i.i.i8, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i35
  %i.fk = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i35 ], [ %i.dj, %select.unfold.i.i.i.i8 ] ; 2 uses
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 3 uses
  store i64 %i.fl, ptr %i.o, align 8, !tbaa !59
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.fk
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !58 ; 2 uses
  %i.fo = lshr i64 %i.fn, 11
  %i.fp = and i64 %i.fo, 4294967295
  %i.fq = xor i64 %i.fp, %i.fn                    ; 2 uses
  %i.fr = shl i64 %i.fq, 7
  %i.fs = and i64 %i.fr, 2636928640
  %i.ft = xor i64 %i.fs, %i.fq                    ; 2 uses
  %i.fu = shl i64 %i.ft, 15
  %i.fv = and i64 %i.fu, 4022730752
  %i.fw = xor i64 %i.fv, %i.ft                    ; 2 uses
  %i.fx = lshr i64 %i.fw, 18
  %i.fy = xor i64 %i.fx, %i.fw
  %i.fz = uitofp i64 %i.fy to double
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fz, double %.01422.i.i.i.i10, double %.01521.i.i.i.i11) ; 2 uses
  %i.gb = fpext double %.01422.i.i.i.i10 to x86_fp80
  %i.gc = fmul x86_fp80 %i.gb, f0x401F8000000000000000
  %i.gd = fptrunc x86_fp80 %i.gc to double        ; 2 uses
  %i.ge = add i64 %.023.i.i.i.i9, -1              ; 2 uses
  %.not.i.i.i.i12 = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i.i.i12, label %bb.h, label %select.unfold.i.i.i.i8, !llvm.loop !74

bb.i:                                             ; preds = %bb.h
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit14

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit14: ; preds = %bb.h, %bb.i
  %.016.i.i.i.i13 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.i ], [ %i.dh, %bb.h ]
  %i.gf = tail call noundef double @llvm.fmuladd.f64(double %.016.i.i.i.i13, double 2.000000e+02, double -1.000000e+02)
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store double %i.gf, ptr %i.gg, align 8, !tbaa !52
  br label %select.unfold.i.i.i.i16

bb.j:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51
  %i.gh = fdiv double %i.ja, %i.jd                ; 2 uses
  %i.gi = fcmp ult double %i.gh, 1.000000e+00
  br i1 %i.gi, label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit22, label %bb.k, !prof !61

select.unfold.i.i.i.i16:                          ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit14
  %i.gj = phi i64 [ %i.fl, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit14 ], [ %i.il, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51 ] ; 2 uses
  %.023.i.i.i.i17 = phi i64 [ %spec.select.i.i.i.i, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit14 ], [ %i.je, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51 ]
  %.01422.i.i.i.i18 = phi double [ 1.000000e+00, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit14 ], [ %i.jd, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51 ] ; 2 uses
  %.01521.i.i.i.i19 = phi double [ 0.000000e+00, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit14 ], [ %i.ja, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51 ]
  %i.gk = icmp ugt i64 %i.gj, 623
  br i1 %i.gk, label %vector.ph93, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51

vector.ph93:                                      ; preds = %select.unfold.i.i.i.i16
  %.pre.i.i38 = load i64, ptr %3, align 8, !tbaa !58
  %vector.recur.init96 = insertelement <2 x i64> poison, i64 %.pre.i.i38, i64 1
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph93
  %index95 = phi i64 [ 0, %vector.ph93 ], [ %index.next100, %vector.body94 ] ; 3 uses
  %vector.recur97 = phi <2 x i64> [ %vector.recur.init96, %vector.ph93 ], [ %wide.load98, %vector.body94 ]
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index95 ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index95
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %wide.load98 = load <2 x i64>, ptr %i.gn, align 8, !tbaa !58 ; 5 uses
  %i.go = shufflevector <2 x i64> %vector.recur97, <2 x i64> %wide.load98, <2 x i32> <i32 1, i32 2>
  %i.gp = and <2 x i64> %i.go, splat (i64 -2147483648)
  %i.gq = and <2 x i64> %wide.load98, splat (i64 2147483646)
  %i.gr = or disjoint <2 x i64> %i.gq, %i.gp
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 3176
  %wide.load99 = load <2 x i64>, ptr %i.gs, align 8, !tbaa !58
  %i.gt = lshr exact <2 x i64> %i.gr, splat (i64 1)
  %i.gu = xor <2 x i64> %i.gt, %wide.load99
  %i.gv = and <2 x i64> %wide.load98, splat (i64 1)
  %i.gw = icmp eq <2 x i64> %i.gv, zeroinitializer
  %i.gx = select <2 x i1> %i.gw, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.gy = xor <2 x i64> %i.gu, %i.gx
  store <2 x i64> %i.gy, ptr %i.gl, align 8, !tbaa !58
  %index.next100 = add nuw i64 %index95, 2        ; 2 uses
  %i.gz = icmp eq i64 %index.next100, 226
  br i1 %i.gz, label %vector.ph, label %vector.body94, !llvm.loop !77

vector.ph:                                        ; preds = %vector.body94
  %vector.recur.extract = extractelement <2 x i64> %wide.load98, i64 1
  %i.ha = and i64 %vector.recur.extract, -2147483648
  %i.hb = load i64, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.hc = and i64 %i.hb, 2147483646
  %i.hd = or disjoint i64 %i.hc, %i.ha
  %i.he = load i64, ptr %i.af, align 8, !tbaa !58
  %i.hf = lshr exact i64 %i.hd, 1
  %i.hg = xor i64 %i.hf, %i.he
  %i.hh = and i64 %i.hb, 1
  %.not20.i.i40 = icmp eq i64 %i.hh, 0
  %i.hi = select i1 %.not20.i.i40, i64 0, i64 2567483615
  %i.hj = xor i64 %i.hg, %i.hi
  store i64 %i.hj, ptr %i.ad, align 8, !tbaa !58
  %.pre24.i.i44 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i44, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1816
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 1824
  %wide.load = load <2 x i64>, ptr %i.hn, align 8, !tbaa !58 ; 4 uses
  %i.ho = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.hp = and <2 x i64> %i.ho, splat (i64 -2147483648)
  %i.hq = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.hr = or disjoint <2 x i64> %i.hq, %i.hp
  %wide.load92 = load <2 x i64>, ptr %i.hk, align 8, !tbaa !58
  %i.hs = lshr exact <2 x i64> %i.hr, splat (i64 1)
  %i.ht = xor <2 x i64> %i.hs, %wide.load92
  %i.hu = and <2 x i64> %wide.load, splat (i64 1)
  %i.hv = icmp eq <2 x i64> %i.hu, zeroinitializer
  %i.hw = select <2 x i1> %i.hv, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.hx = xor <2 x i64> %i.ht, %i.hw
  store <2 x i64> %i.hx, ptr %i.hl, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hy = icmp eq i64 %index.next, 396
  br i1 %i.hy, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i49, label %vector.body, !llvm.loop !78

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i49: ; preds = %vector.body
  %i.hz = load i64, ptr %i.v, align 8, !tbaa !58
  %i.ia = and i64 %i.hz, -2147483648
  %i.ib = load i64, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.ic = and i64 %i.ib, 2147483646
  %i.id = or disjoint i64 %i.ic, %i.ia
  %i.ie = load i64, ptr %i.w, align 8, !tbaa !58
  %i.if = lshr exact i64 %i.id, 1
  %i.ig = xor i64 %i.if, %i.ie
  %i.ih = and i64 %i.ib, 1
  %.not.i.i50 = icmp eq i64 %i.ih, 0
  %i.ii = select i1 %.not.i.i50, i64 0, i64 2567483615
  %i.ij = xor i64 %i.ig, %i.ii
  store i64 %i.ij, ptr %i.v, align 8, !tbaa !58
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit51: ; preds = %select.unfold.i.i.i.i16, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i49
  %i.ik = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i49 ], [ %i.gj, %select.unfold.i.i.i.i16 ] ; 2 uses
  %i.il = add nuw nsw i64 %i.ik, 1                ; 3 uses
  store i64 %i.il, ptr %i.o, align 8, !tbaa !59
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ik
  %i.in = load i64, ptr %i.im, align 8, !tbaa !58 ; 2 uses
  %i.io = lshr i64 %i.in, 11
  %i.ip = and i64 %i.io, 4294967295
  %i.iq = xor i64 %i.ip, %i.in                    ; 2 uses
  %i.ir = shl i64 %i.iq, 7
  %i.is = and i64 %i.ir, 2636928640
  %i.it = xor i64 %i.is, %i.iq                    ; 2 uses
  %i.iu = shl i64 %i.it, 15
  %i.iv = and i64 %i.iu, 4022730752
  %i.iw = xor i64 %i.iv, %i.it                    ; 2 uses
  %i.ix = lshr i64 %i.iw, 18
  %i.iy = xor i64 %i.ix, %i.iw
  %i.iz = uitofp i64 %i.iy to double
  %i.ja = tail call double @llvm.fmuladd.f64(double %i.iz, double %.01422.i.i.i.i18, double %.01521.i.i.i.i19) ; 2 uses
  %i.jb = fpext double %.01422.i.i.i.i18 to x86_fp80
  %i.jc = fmul x86_fp80 %i.jb, f0x401F8000000000000000
  %i.jd = fptrunc x86_fp80 %i.jc to double        ; 2 uses
  %i.je = add i64 %.023.i.i.i.i17, -1             ; 2 uses
  %.not.i.i.i.i20 = icmp eq i64 %i.je, 0
  br i1 %.not.i.i.i.i20, label %bb.j, label %select.unfold.i.i.i.i16, !llvm.loop !74

bb.k:                                             ; preds = %bb.j
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit22

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit22: ; preds = %bb.j, %bb.k
  %.016.i.i.i.i21 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.k ], [ %i.gh, %bb.j ]
  %i.jf = tail call noundef double @llvm.fmuladd.f64(double %.016.i.i.i.i21, double 2.000000e+02, double -1.000000e+02)
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.jf, ptr %i.jg, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10000
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !79
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MathFunctions.cpp() #9 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.ab = alloca i64, align 8                     ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.ac = alloca i64, align 8                     ; 5 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.ad = alloca i64, align 8                     ; 5 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.ae = alloca i64, align 8                     ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.af = alloca i64, align 8                     ; 5 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.ag = alloca i64, align 8                     ; 5 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.ah = alloca i64, align 8                     ; 5 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.ai = alloca i64, align 8                     ; 5 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.aj = alloca i64, align 8                     ; 5 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.ak = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() ; 0 uses
  %i.al = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #11 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #10
  %i.am = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.am, ptr %35, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #10
  store i64 29, ptr %i.aj, align 8, !tbaa !58
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i ; 2 uses

.noexc.i:                                         ; preds = %bb.a
  store ptr %i.an, ptr %35, align 8, !tbaa !81
  %i.ao = load i64, ptr %i.aj, align 8, !tbaa !58 ; 3 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.an, ptr noundef nonnull align 1 dereferenceable(29) @.str, i64 29, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !83
  %i.aq = load ptr, ptr %35, align 8, !tbaa !81
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #10
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %.noexc.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.al, align 8, !tbaa !84
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 224
  store ptr @_Z29BENCHMARK_expf_autovec_float_RN9benchmark5StateE, ptr %i.as, align 8, !tbaa !86
  %i.at = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.al)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.au = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.at, i32 noundef 1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = load ptr, ptr %35, align 8, !tbaa !81   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.am
  br i1 %i.aw, label %__cxx_global_var_init.1.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ax = load i64, ptr %i.am, align 8, !tbaa !82
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #12
  br label %__cxx_global_var_init.1.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i: ; preds = %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #10
end_hunk_0
